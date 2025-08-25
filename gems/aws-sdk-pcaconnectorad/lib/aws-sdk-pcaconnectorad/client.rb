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

module Aws::PcaConnectorAd
  # An API client for PcaConnectorAd.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PcaConnectorAd::Client.new(
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

    @identifier = :pcaconnectorad

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
    add_plugin(Aws::PcaConnectorAd::Plugins::Endpoints)

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
    #   @option options [Aws::PcaConnectorAd::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PcaConnectorAd::EndpointParameters`.
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

    # Creates a connector between Amazon Web Services Private CA and an
    # Active Directory. You must specify the private CA, directory ID, and
    # security groups.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the certificate authority being
    #   used.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier of the Active Directory.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata assigned to a connector consisting of a key-value pair.
    #
    # @option params [required, Types::VpcInformation] :vpc_information
    #   Information about your VPC and security groups used with the
    #   connector.
    #
    # @return [Types::CreateConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectorResponse#connector_arn #connector_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector({
    #     certificate_authority_arn: "CertificateAuthorityArn", # required
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #     vpc_information: { # required
    #       ip_address_type: "IPV4", # accepts IPV4, DUALSTACK
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateConnector AWS API Documentation
    #
    # @overload create_connector(params = {})
    # @param [Hash] params ({})
    def create_connector(params = {}, options = {})
      req = build_request(:create_connector, params)
      req.send_request(options)
    end

    # Creates a directory registration that authorizes communication between
    # Amazon Web Services Private CA and an Active Directory
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier of the Active Directory.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata assigned to a directory registration consisting of a
    #   key-value pair.
    #
    # @return [Types::CreateDirectoryRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectoryRegistrationResponse#directory_registration_arn #directory_registration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_directory_registration({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_registration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateDirectoryRegistration AWS API Documentation
    #
    # @overload create_directory_registration(params = {})
    # @param [Hash] params ({})
    def create_directory_registration(params = {}, options = {})
      req = build_request(:create_directory_registration, params)
      req.send_request(options)
    end

    # Creates a service principal name (SPN) for the service account in
    # Active Directory. Kerberos authentication uses SPNs to associate a
    # service instance with a service sign-in account.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #
    # @option params [required, String] :directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_principal_name({
    #     client_token: "ClientToken",
    #     connector_arn: "ConnectorArn", # required
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateServicePrincipalName AWS API Documentation
    #
    # @overload create_service_principal_name(params = {})
    # @param [Hash] params ({})
    def create_service_principal_name(params = {}, options = {})
      req = build_request(:create_service_principal_name, params)
      req.send_request(options)
    end

    # Creates an Active Directory compatible certificate template. The
    # connectors issues certificates using these templates based on the
    # requester’s Active Directory group membership.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #
    # @option params [required, Types::TemplateDefinition] :definition
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #
    # @option params [required, String] :name
    #   Name of the template. The template name must be unique.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata assigned to a template consisting of a key-value pair.
    #
    # @return [Types::CreateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateResponse#template_arn #template_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template({
    #     client_token: "ClientToken",
    #     connector_arn: "ConnectorArn", # required
    #     definition: { # required
    #       template_v2: {
    #         certificate_validity: { # required
    #           renewal_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #           validity_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #         },
    #         enrollment_flags: { # required
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false,
    #           include_symmetric_algorithms: false,
    #           no_security_extension: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           user_interaction_required: false,
    #         },
    #         extensions: { # required
    #           application_policies: {
    #             critical: false,
    #             policies: [ # required
    #               {
    #                 policy_object_identifier: "CustomObjectIdentifier",
    #                 policy_type: "ALL_APPLICATION_POLICIES", # accepts ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE
    #               },
    #             ],
    #           },
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               data_encipherment: false,
    #               digital_signature: false,
    #               key_agreement: false,
    #               key_encipherment: false,
    #               non_repudiation: false,
    #             },
    #           },
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false,
    #         },
    #         private_key_attributes: { # required
    #           crypto_providers: ["CryptoProvidersListMemberString"],
    #           key_spec: "KEY_EXCHANGE", # required, accepts KEY_EXCHANGE, SIGNATURE
    #           minimal_key_length: 1, # required
    #         },
    #         private_key_flags: { # required
    #           client_version: "WINDOWS_SERVER_2003", # required, accepts WINDOWS_SERVER_2003, WINDOWS_SERVER_2008, WINDOWS_SERVER_2008_R2, WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
    #           exportable_key: false,
    #           strong_key_protection_required: false,
    #         },
    #         subject_name_flags: { # required
    #           require_common_name: false,
    #           require_directory_path: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           san_require_directory_guid: false,
    #           san_require_dns: false,
    #           san_require_domain_dns: false,
    #           san_require_email: false,
    #           san_require_spn: false,
    #           san_require_upn: false,
    #         },
    #         superseded_templates: ["TemplateName"],
    #       },
    #       template_v3: {
    #         certificate_validity: { # required
    #           renewal_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #           validity_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #         },
    #         enrollment_flags: { # required
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false,
    #           include_symmetric_algorithms: false,
    #           no_security_extension: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           user_interaction_required: false,
    #         },
    #         extensions: { # required
    #           application_policies: {
    #             critical: false,
    #             policies: [ # required
    #               {
    #                 policy_object_identifier: "CustomObjectIdentifier",
    #                 policy_type: "ALL_APPLICATION_POLICIES", # accepts ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE
    #               },
    #             ],
    #           },
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               data_encipherment: false,
    #               digital_signature: false,
    #               key_agreement: false,
    #               key_encipherment: false,
    #               non_repudiation: false,
    #             },
    #           },
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false,
    #         },
    #         hash_algorithm: "SHA256", # required, accepts SHA256, SHA384, SHA512
    #         private_key_attributes: { # required
    #           algorithm: "RSA", # required, accepts RSA, ECDH_P256, ECDH_P384, ECDH_P521
    #           crypto_providers: ["CryptoProvidersListMemberString"],
    #           key_spec: "KEY_EXCHANGE", # required, accepts KEY_EXCHANGE, SIGNATURE
    #           key_usage_property: { # required
    #             property_flags: {
    #               decrypt: false,
    #               key_agreement: false,
    #               sign: false,
    #             },
    #             property_type: "ALL", # accepts ALL
    #           },
    #           minimal_key_length: 1, # required
    #         },
    #         private_key_flags: { # required
    #           client_version: "WINDOWS_SERVER_2008", # required, accepts WINDOWS_SERVER_2008, WINDOWS_SERVER_2008_R2, WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
    #           exportable_key: false,
    #           require_alternate_signature_algorithm: false,
    #           strong_key_protection_required: false,
    #         },
    #         subject_name_flags: { # required
    #           require_common_name: false,
    #           require_directory_path: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           san_require_directory_guid: false,
    #           san_require_dns: false,
    #           san_require_domain_dns: false,
    #           san_require_email: false,
    #           san_require_spn: false,
    #           san_require_upn: false,
    #         },
    #         superseded_templates: ["TemplateName"],
    #       },
    #       template_v4: {
    #         certificate_validity: { # required
    #           renewal_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #           validity_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #         },
    #         enrollment_flags: { # required
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false,
    #           include_symmetric_algorithms: false,
    #           no_security_extension: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           user_interaction_required: false,
    #         },
    #         extensions: { # required
    #           application_policies: {
    #             critical: false,
    #             policies: [ # required
    #               {
    #                 policy_object_identifier: "CustomObjectIdentifier",
    #                 policy_type: "ALL_APPLICATION_POLICIES", # accepts ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE
    #               },
    #             ],
    #           },
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               data_encipherment: false,
    #               digital_signature: false,
    #               key_agreement: false,
    #               key_encipherment: false,
    #               non_repudiation: false,
    #             },
    #           },
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false,
    #         },
    #         hash_algorithm: "SHA256", # accepts SHA256, SHA384, SHA512
    #         private_key_attributes: { # required
    #           algorithm: "RSA", # accepts RSA, ECDH_P256, ECDH_P384, ECDH_P521
    #           crypto_providers: ["CryptoProvidersListMemberString"],
    #           key_spec: "KEY_EXCHANGE", # required, accepts KEY_EXCHANGE, SIGNATURE
    #           key_usage_property: {
    #             property_flags: {
    #               decrypt: false,
    #               key_agreement: false,
    #               sign: false,
    #             },
    #             property_type: "ALL", # accepts ALL
    #           },
    #           minimal_key_length: 1, # required
    #         },
    #         private_key_flags: { # required
    #           client_version: "WINDOWS_SERVER_2012", # required, accepts WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
    #           exportable_key: false,
    #           require_alternate_signature_algorithm: false,
    #           require_same_key_renewal: false,
    #           strong_key_protection_required: false,
    #           use_legacy_provider: false,
    #         },
    #         subject_name_flags: { # required
    #           require_common_name: false,
    #           require_directory_path: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           san_require_directory_guid: false,
    #           san_require_dns: false,
    #           san_require_domain_dns: false,
    #           san_require_email: false,
    #           san_require_spn: false,
    #           san_require_upn: false,
    #         },
    #         superseded_templates: ["TemplateName"],
    #       },
    #     },
    #     name: "TemplateName", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.template_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateTemplate AWS API Documentation
    #
    # @overload create_template(params = {})
    # @param [Hash] params ({})
    def create_template(params = {}, options = {})
      req = build_request(:create_template, params)
      req.send_request(options)
    end

    # Create a group access control entry. Allow or deny Active Directory
    # groups from enrolling and/or autoenrolling with the template based on
    # the group security identifiers (SIDs).
    #
    # @option params [required, Types::AccessRights] :access_rights
    #   Allow or deny permissions for an Active Directory group to enroll or
    #   autoenroll certificates for a template.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :group_display_name
    #   Name of the Active Directory group. This name does not need to match
    #   the group name in Active Directory.
    #
    # @option params [required, String] :group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #
    # @option params [required, String] :template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template_group_access_control_entry({
    #     access_rights: { # required
    #       auto_enroll: "ALLOW", # accepts ALLOW, DENY
    #       enroll: "ALLOW", # accepts ALLOW, DENY
    #     },
    #     client_token: "ClientToken",
    #     group_display_name: "DisplayName", # required
    #     group_security_identifier: "GroupSecurityIdentifier", # required
    #     template_arn: "TemplateArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateTemplateGroupAccessControlEntry AWS API Documentation
    #
    # @overload create_template_group_access_control_entry(params = {})
    # @param [Hash] params ({})
    def create_template_group_access_control_entry(params = {}, options = {})
      req = build_request(:create_template_group_access_control_entry, params)
      req.send_request(options)
    end

    # Deletes a connector for Active Directory. You must provide the Amazon
    # Resource Name (ARN) of the connector that you want to delete. You can
    # find the ARN by calling the
    # [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API\_ListConnectors][1]
    # action. Deleting a connector does not deregister your directory with
    # Amazon Web Services Private CA. You can deregister your directory by
    # calling the
    # [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API\_DeleteDirectoryRegistration][2]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors
    # [2]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector({
    #     connector_arn: "ConnectorArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteConnector AWS API Documentation
    #
    # @overload delete_connector(params = {})
    # @param [Hash] params ({})
    def delete_connector(params = {}, options = {})
      req = build_request(:delete_connector, params)
      req.send_request(options)
    end

    # Deletes a directory registration. Deleting a directory registration
    # deauthorizes Amazon Web Services Private CA with the directory.
    #
    # @option params [required, String] :directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_directory_registration({
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteDirectoryRegistration AWS API Documentation
    #
    # @overload delete_directory_registration(params = {})
    # @param [Hash] params ({})
    def delete_directory_registration(params = {}, options = {})
      req = build_request(:delete_directory_registration, params)
      req.send_request(options)
    end

    # Deletes the service principal name (SPN) used by a connector to
    # authenticate with your Active Directory.
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #
    # @option params [required, String] :directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_principal_name({
    #     connector_arn: "ConnectorArn", # required
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteServicePrincipalName AWS API Documentation
    #
    # @overload delete_service_principal_name(params = {})
    # @param [Hash] params ({})
    def delete_service_principal_name(params = {}, options = {})
      req = build_request(:delete_service_principal_name, params)
      req.send_request(options)
    end

    # Deletes a template. Certificates issued using the template are still
    # valid until they are revoked or expired.
    #
    # @option params [required, String] :template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template({
    #     template_arn: "TemplateArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteTemplate AWS API Documentation
    #
    # @overload delete_template(params = {})
    # @param [Hash] params ({})
    def delete_template(params = {}, options = {})
      req = build_request(:delete_template, params)
      req.send_request(options)
    end

    # Deletes a group access control entry.
    #
    # @option params [required, String] :group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #
    # @option params [required, String] :template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template_group_access_control_entry({
    #     group_security_identifier: "GroupSecurityIdentifier", # required
    #     template_arn: "TemplateArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteTemplateGroupAccessControlEntry AWS API Documentation
    #
    # @overload delete_template_group_access_control_entry(params = {})
    # @param [Hash] params ({})
    def delete_template_group_access_control_entry(params = {}, options = {})
      req = build_request(:delete_template_group_access_control_entry, params)
      req.send_request(options)
    end

    # Lists information about your connector. You specify the connector on
    # input by its ARN (Amazon Resource Name).
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #
    # @return [Types::GetConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectorResponse#connector #connector} => Types::Connector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connector({
    #     connector_arn: "ConnectorArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector.arn #=> String
    #   resp.connector.certificate_authority_arn #=> String
    #   resp.connector.certificate_enrollment_policy_server_endpoint #=> String
    #   resp.connector.created_at #=> Time
    #   resp.connector.directory_id #=> String
    #   resp.connector.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.connector.status_reason #=> String, one of "CA_CERTIFICATE_REGISTRATION_FAILED", "DIRECTORY_ACCESS_DENIED", "INTERNAL_FAILURE", "INSUFFICIENT_FREE_ADDRESSES", "INVALID_SUBNET_IP_PROTOCOL", "PRIVATECA_ACCESS_DENIED", "PRIVATECA_RESOURCE_NOT_FOUND", "SECURITY_GROUP_NOT_IN_VPC", "VPC_ACCESS_DENIED", "VPC_ENDPOINT_LIMIT_EXCEEDED", "VPC_RESOURCE_NOT_FOUND"
    #   resp.connector.updated_at #=> Time
    #   resp.connector.vpc_information.ip_address_type #=> String, one of "IPV4", "DUALSTACK"
    #   resp.connector.vpc_information.security_group_ids #=> Array
    #   resp.connector.vpc_information.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetConnector AWS API Documentation
    #
    # @overload get_connector(params = {})
    # @param [Hash] params ({})
    def get_connector(params = {}, options = {})
      req = build_request(:get_connector, params)
      req.send_request(options)
    end

    # A structure that contains information about your directory
    # registration.
    #
    # @option params [required, String] :directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #
    # @return [Types::GetDirectoryRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDirectoryRegistrationResponse#directory_registration #directory_registration} => Types::DirectoryRegistration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_directory_registration({
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_registration.arn #=> String
    #   resp.directory_registration.created_at #=> Time
    #   resp.directory_registration.directory_id #=> String
    #   resp.directory_registration.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.directory_registration.status_reason #=> String, one of "DIRECTORY_ACCESS_DENIED", "DIRECTORY_RESOURCE_NOT_FOUND", "DIRECTORY_NOT_ACTIVE", "DIRECTORY_NOT_REACHABLE", "DIRECTORY_TYPE_NOT_SUPPORTED", "INTERNAL_FAILURE"
    #   resp.directory_registration.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetDirectoryRegistration AWS API Documentation
    #
    # @overload get_directory_registration(params = {})
    # @param [Hash] params ({})
    def get_directory_registration(params = {}, options = {})
      req = build_request(:get_directory_registration, params)
      req.send_request(options)
    end

    # Lists the service principal name that the connector uses to
    # authenticate with Active Directory.
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #
    # @option params [required, String] :directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #
    # @return [Types::GetServicePrincipalNameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServicePrincipalNameResponse#service_principal_name #service_principal_name} => Types::ServicePrincipalName
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_principal_name({
    #     connector_arn: "ConnectorArn", # required
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_principal_name.connector_arn #=> String
    #   resp.service_principal_name.created_at #=> Time
    #   resp.service_principal_name.directory_registration_arn #=> String
    #   resp.service_principal_name.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.service_principal_name.status_reason #=> String, one of "DIRECTORY_ACCESS_DENIED", "DIRECTORY_NOT_REACHABLE", "DIRECTORY_RESOURCE_NOT_FOUND", "SPN_EXISTS_ON_DIFFERENT_AD_OBJECT", "SPN_LIMIT_EXCEEDED", "INTERNAL_FAILURE"
    #   resp.service_principal_name.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetServicePrincipalName AWS API Documentation
    #
    # @overload get_service_principal_name(params = {})
    # @param [Hash] params ({})
    def get_service_principal_name(params = {}, options = {})
      req = build_request(:get_service_principal_name, params)
      req.send_request(options)
    end

    # Retrieves a certificate template that the connector uses to issue
    # certificates from a private CA.
    #
    # @option params [required, String] :template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #
    # @return [Types::GetTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateResponse#template #template} => Types::Template
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     template_arn: "TemplateArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template.arn #=> String
    #   resp.template.connector_arn #=> String
    #   resp.template.created_at #=> Time
    #   resp.template.definition.template_v2.certificate_validity.renewal_period.period #=> Integer
    #   resp.template.definition.template_v2.certificate_validity.renewal_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.template.definition.template_v2.certificate_validity.validity_period.period #=> Integer
    #   resp.template.definition.template_v2.certificate_validity.validity_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.template.definition.template_v2.enrollment_flags.enable_key_reuse_on_nt_token_keyset_storage_full #=> Boolean
    #   resp.template.definition.template_v2.enrollment_flags.include_symmetric_algorithms #=> Boolean
    #   resp.template.definition.template_v2.enrollment_flags.no_security_extension #=> Boolean
    #   resp.template.definition.template_v2.enrollment_flags.remove_invalid_certificate_from_personal_store #=> Boolean
    #   resp.template.definition.template_v2.enrollment_flags.user_interaction_required #=> Boolean
    #   resp.template.definition.template_v2.extensions.application_policies.critical #=> Boolean
    #   resp.template.definition.template_v2.extensions.application_policies.policies #=> Array
    #   resp.template.definition.template_v2.extensions.application_policies.policies[0].policy_object_identifier #=> String
    #   resp.template.definition.template_v2.extensions.application_policies.policies[0].policy_type #=> String, one of "ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"
    #   resp.template.definition.template_v2.extensions.key_usage.critical #=> Boolean
    #   resp.template.definition.template_v2.extensions.key_usage.usage_flags.data_encipherment #=> Boolean
    #   resp.template.definition.template_v2.extensions.key_usage.usage_flags.digital_signature #=> Boolean
    #   resp.template.definition.template_v2.extensions.key_usage.usage_flags.key_agreement #=> Boolean
    #   resp.template.definition.template_v2.extensions.key_usage.usage_flags.key_encipherment #=> Boolean
    #   resp.template.definition.template_v2.extensions.key_usage.usage_flags.non_repudiation #=> Boolean
    #   resp.template.definition.template_v2.general_flags.auto_enrollment #=> Boolean
    #   resp.template.definition.template_v2.general_flags.machine_type #=> Boolean
    #   resp.template.definition.template_v2.private_key_attributes.crypto_providers #=> Array
    #   resp.template.definition.template_v2.private_key_attributes.crypto_providers[0] #=> String
    #   resp.template.definition.template_v2.private_key_attributes.key_spec #=> String, one of "KEY_EXCHANGE", "SIGNATURE"
    #   resp.template.definition.template_v2.private_key_attributes.minimal_key_length #=> Integer
    #   resp.template.definition.template_v2.private_key_flags.client_version #=> String, one of "WINDOWS_SERVER_2003", "WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"
    #   resp.template.definition.template_v2.private_key_flags.exportable_key #=> Boolean
    #   resp.template.definition.template_v2.private_key_flags.strong_key_protection_required #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.require_common_name #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.require_directory_path #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.require_dns_as_cn #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.require_email #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.san_require_directory_guid #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.san_require_dns #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.san_require_domain_dns #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.san_require_email #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.san_require_spn #=> Boolean
    #   resp.template.definition.template_v2.subject_name_flags.san_require_upn #=> Boolean
    #   resp.template.definition.template_v2.superseded_templates #=> Array
    #   resp.template.definition.template_v2.superseded_templates[0] #=> String
    #   resp.template.definition.template_v3.certificate_validity.renewal_period.period #=> Integer
    #   resp.template.definition.template_v3.certificate_validity.renewal_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.template.definition.template_v3.certificate_validity.validity_period.period #=> Integer
    #   resp.template.definition.template_v3.certificate_validity.validity_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.template.definition.template_v3.enrollment_flags.enable_key_reuse_on_nt_token_keyset_storage_full #=> Boolean
    #   resp.template.definition.template_v3.enrollment_flags.include_symmetric_algorithms #=> Boolean
    #   resp.template.definition.template_v3.enrollment_flags.no_security_extension #=> Boolean
    #   resp.template.definition.template_v3.enrollment_flags.remove_invalid_certificate_from_personal_store #=> Boolean
    #   resp.template.definition.template_v3.enrollment_flags.user_interaction_required #=> Boolean
    #   resp.template.definition.template_v3.extensions.application_policies.critical #=> Boolean
    #   resp.template.definition.template_v3.extensions.application_policies.policies #=> Array
    #   resp.template.definition.template_v3.extensions.application_policies.policies[0].policy_object_identifier #=> String
    #   resp.template.definition.template_v3.extensions.application_policies.policies[0].policy_type #=> String, one of "ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"
    #   resp.template.definition.template_v3.extensions.key_usage.critical #=> Boolean
    #   resp.template.definition.template_v3.extensions.key_usage.usage_flags.data_encipherment #=> Boolean
    #   resp.template.definition.template_v3.extensions.key_usage.usage_flags.digital_signature #=> Boolean
    #   resp.template.definition.template_v3.extensions.key_usage.usage_flags.key_agreement #=> Boolean
    #   resp.template.definition.template_v3.extensions.key_usage.usage_flags.key_encipherment #=> Boolean
    #   resp.template.definition.template_v3.extensions.key_usage.usage_flags.non_repudiation #=> Boolean
    #   resp.template.definition.template_v3.general_flags.auto_enrollment #=> Boolean
    #   resp.template.definition.template_v3.general_flags.machine_type #=> Boolean
    #   resp.template.definition.template_v3.hash_algorithm #=> String, one of "SHA256", "SHA384", "SHA512"
    #   resp.template.definition.template_v3.private_key_attributes.algorithm #=> String, one of "RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"
    #   resp.template.definition.template_v3.private_key_attributes.crypto_providers #=> Array
    #   resp.template.definition.template_v3.private_key_attributes.crypto_providers[0] #=> String
    #   resp.template.definition.template_v3.private_key_attributes.key_spec #=> String, one of "KEY_EXCHANGE", "SIGNATURE"
    #   resp.template.definition.template_v3.private_key_attributes.key_usage_property.property_flags.decrypt #=> Boolean
    #   resp.template.definition.template_v3.private_key_attributes.key_usage_property.property_flags.key_agreement #=> Boolean
    #   resp.template.definition.template_v3.private_key_attributes.key_usage_property.property_flags.sign #=> Boolean
    #   resp.template.definition.template_v3.private_key_attributes.key_usage_property.property_type #=> String, one of "ALL"
    #   resp.template.definition.template_v3.private_key_attributes.minimal_key_length #=> Integer
    #   resp.template.definition.template_v3.private_key_flags.client_version #=> String, one of "WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"
    #   resp.template.definition.template_v3.private_key_flags.exportable_key #=> Boolean
    #   resp.template.definition.template_v3.private_key_flags.require_alternate_signature_algorithm #=> Boolean
    #   resp.template.definition.template_v3.private_key_flags.strong_key_protection_required #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.require_common_name #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.require_directory_path #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.require_dns_as_cn #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.require_email #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.san_require_directory_guid #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.san_require_dns #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.san_require_domain_dns #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.san_require_email #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.san_require_spn #=> Boolean
    #   resp.template.definition.template_v3.subject_name_flags.san_require_upn #=> Boolean
    #   resp.template.definition.template_v3.superseded_templates #=> Array
    #   resp.template.definition.template_v3.superseded_templates[0] #=> String
    #   resp.template.definition.template_v4.certificate_validity.renewal_period.period #=> Integer
    #   resp.template.definition.template_v4.certificate_validity.renewal_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.template.definition.template_v4.certificate_validity.validity_period.period #=> Integer
    #   resp.template.definition.template_v4.certificate_validity.validity_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.template.definition.template_v4.enrollment_flags.enable_key_reuse_on_nt_token_keyset_storage_full #=> Boolean
    #   resp.template.definition.template_v4.enrollment_flags.include_symmetric_algorithms #=> Boolean
    #   resp.template.definition.template_v4.enrollment_flags.no_security_extension #=> Boolean
    #   resp.template.definition.template_v4.enrollment_flags.remove_invalid_certificate_from_personal_store #=> Boolean
    #   resp.template.definition.template_v4.enrollment_flags.user_interaction_required #=> Boolean
    #   resp.template.definition.template_v4.extensions.application_policies.critical #=> Boolean
    #   resp.template.definition.template_v4.extensions.application_policies.policies #=> Array
    #   resp.template.definition.template_v4.extensions.application_policies.policies[0].policy_object_identifier #=> String
    #   resp.template.definition.template_v4.extensions.application_policies.policies[0].policy_type #=> String, one of "ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"
    #   resp.template.definition.template_v4.extensions.key_usage.critical #=> Boolean
    #   resp.template.definition.template_v4.extensions.key_usage.usage_flags.data_encipherment #=> Boolean
    #   resp.template.definition.template_v4.extensions.key_usage.usage_flags.digital_signature #=> Boolean
    #   resp.template.definition.template_v4.extensions.key_usage.usage_flags.key_agreement #=> Boolean
    #   resp.template.definition.template_v4.extensions.key_usage.usage_flags.key_encipherment #=> Boolean
    #   resp.template.definition.template_v4.extensions.key_usage.usage_flags.non_repudiation #=> Boolean
    #   resp.template.definition.template_v4.general_flags.auto_enrollment #=> Boolean
    #   resp.template.definition.template_v4.general_flags.machine_type #=> Boolean
    #   resp.template.definition.template_v4.hash_algorithm #=> String, one of "SHA256", "SHA384", "SHA512"
    #   resp.template.definition.template_v4.private_key_attributes.algorithm #=> String, one of "RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"
    #   resp.template.definition.template_v4.private_key_attributes.crypto_providers #=> Array
    #   resp.template.definition.template_v4.private_key_attributes.crypto_providers[0] #=> String
    #   resp.template.definition.template_v4.private_key_attributes.key_spec #=> String, one of "KEY_EXCHANGE", "SIGNATURE"
    #   resp.template.definition.template_v4.private_key_attributes.key_usage_property.property_flags.decrypt #=> Boolean
    #   resp.template.definition.template_v4.private_key_attributes.key_usage_property.property_flags.key_agreement #=> Boolean
    #   resp.template.definition.template_v4.private_key_attributes.key_usage_property.property_flags.sign #=> Boolean
    #   resp.template.definition.template_v4.private_key_attributes.key_usage_property.property_type #=> String, one of "ALL"
    #   resp.template.definition.template_v4.private_key_attributes.minimal_key_length #=> Integer
    #   resp.template.definition.template_v4.private_key_flags.client_version #=> String, one of "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"
    #   resp.template.definition.template_v4.private_key_flags.exportable_key #=> Boolean
    #   resp.template.definition.template_v4.private_key_flags.require_alternate_signature_algorithm #=> Boolean
    #   resp.template.definition.template_v4.private_key_flags.require_same_key_renewal #=> Boolean
    #   resp.template.definition.template_v4.private_key_flags.strong_key_protection_required #=> Boolean
    #   resp.template.definition.template_v4.private_key_flags.use_legacy_provider #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.require_common_name #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.require_directory_path #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.require_dns_as_cn #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.require_email #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.san_require_directory_guid #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.san_require_dns #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.san_require_domain_dns #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.san_require_email #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.san_require_spn #=> Boolean
    #   resp.template.definition.template_v4.subject_name_flags.san_require_upn #=> Boolean
    #   resp.template.definition.template_v4.superseded_templates #=> Array
    #   resp.template.definition.template_v4.superseded_templates[0] #=> String
    #   resp.template.name #=> String
    #   resp.template.object_identifier #=> String
    #   resp.template.policy_schema #=> Integer
    #   resp.template.revision.major_revision #=> Integer
    #   resp.template.revision.minor_revision #=> Integer
    #   resp.template.status #=> String, one of "ACTIVE", "DELETING"
    #   resp.template.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Retrieves the group access control entries for a template.
    #
    # @option params [required, String] :group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #
    # @option params [required, String] :template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #
    # @return [Types::GetTemplateGroupAccessControlEntryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateGroupAccessControlEntryResponse#access_control_entry #access_control_entry} => Types::AccessControlEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_group_access_control_entry({
    #     group_security_identifier: "GroupSecurityIdentifier", # required
    #     template_arn: "TemplateArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_control_entry.access_rights.auto_enroll #=> String, one of "ALLOW", "DENY"
    #   resp.access_control_entry.access_rights.enroll #=> String, one of "ALLOW", "DENY"
    #   resp.access_control_entry.created_at #=> Time
    #   resp.access_control_entry.group_display_name #=> String
    #   resp.access_control_entry.group_security_identifier #=> String
    #   resp.access_control_entry.template_arn #=> String
    #   resp.access_control_entry.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetTemplateGroupAccessControlEntry AWS API Documentation
    #
    # @overload get_template_group_access_control_entry(params = {})
    # @param [Hash] params ({})
    def get_template_group_access_control_entry(params = {}, options = {})
      req = build_request(:get_template_group_access_control_entry, params)
      req.send_request(options)
    end

    # Lists the connectors that you created by using the
    # [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API\_CreateConnector][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If additional
    #   items exist beyond the number you specify, the `NextToken` element is
    #   sent in the response. Use this `NextToken` value in a subsequent
    #   request to retrieve additional items.
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #
    # @return [Types::ListConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectorsResponse#connectors #connectors} => Array&lt;Types::ConnectorSummary&gt;
    #   * {Types::ListConnectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connectors({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connectors #=> Array
    #   resp.connectors[0].arn #=> String
    #   resp.connectors[0].certificate_authority_arn #=> String
    #   resp.connectors[0].certificate_enrollment_policy_server_endpoint #=> String
    #   resp.connectors[0].created_at #=> Time
    #   resp.connectors[0].directory_id #=> String
    #   resp.connectors[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.connectors[0].status_reason #=> String, one of "CA_CERTIFICATE_REGISTRATION_FAILED", "DIRECTORY_ACCESS_DENIED", "INTERNAL_FAILURE", "INSUFFICIENT_FREE_ADDRESSES", "INVALID_SUBNET_IP_PROTOCOL", "PRIVATECA_ACCESS_DENIED", "PRIVATECA_RESOURCE_NOT_FOUND", "SECURITY_GROUP_NOT_IN_VPC", "VPC_ACCESS_DENIED", "VPC_ENDPOINT_LIMIT_EXCEEDED", "VPC_RESOURCE_NOT_FOUND"
    #   resp.connectors[0].updated_at #=> Time
    #   resp.connectors[0].vpc_information.ip_address_type #=> String, one of "IPV4", "DUALSTACK"
    #   resp.connectors[0].vpc_information.security_group_ids #=> Array
    #   resp.connectors[0].vpc_information.security_group_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListConnectors AWS API Documentation
    #
    # @overload list_connectors(params = {})
    # @param [Hash] params ({})
    def list_connectors(params = {}, options = {})
      req = build_request(:list_connectors, params)
      req.send_request(options)
    end

    # Lists the directory registrations that you created by using the
    # [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API\_CreateDirectoryRegistration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If additional
    #   items exist beyond the number you specify, the `NextToken` element is
    #   sent in the response. Use this `NextToken` value in a subsequent
    #   request to retrieve additional items.
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #
    # @return [Types::ListDirectoryRegistrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDirectoryRegistrationsResponse#directory_registrations #directory_registrations} => Array&lt;Types::DirectoryRegistrationSummary&gt;
    #   * {Types::ListDirectoryRegistrationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_directory_registrations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_registrations #=> Array
    #   resp.directory_registrations[0].arn #=> String
    #   resp.directory_registrations[0].created_at #=> Time
    #   resp.directory_registrations[0].directory_id #=> String
    #   resp.directory_registrations[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.directory_registrations[0].status_reason #=> String, one of "DIRECTORY_ACCESS_DENIED", "DIRECTORY_RESOURCE_NOT_FOUND", "DIRECTORY_NOT_ACTIVE", "DIRECTORY_NOT_REACHABLE", "DIRECTORY_TYPE_NOT_SUPPORTED", "INTERNAL_FAILURE"
    #   resp.directory_registrations[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListDirectoryRegistrations AWS API Documentation
    #
    # @overload list_directory_registrations(params = {})
    # @param [Hash] params ({})
    def list_directory_registrations(params = {}, options = {})
      req = build_request(:list_directory_registrations, params)
      req.send_request(options)
    end

    # Lists the service principal names that the connector uses to
    # authenticate with Active Directory.
    #
    # @option params [required, String] :directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If additional
    #   items exist beyond the number you specify, the `NextToken` element is
    #   sent in the response. Use this `NextToken` value in a subsequent
    #   request to retrieve additional items.
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #
    # @return [Types::ListServicePrincipalNamesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicePrincipalNamesResponse#next_token #next_token} => String
    #   * {Types::ListServicePrincipalNamesResponse#service_principal_names #service_principal_names} => Array&lt;Types::ServicePrincipalNameSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_principal_names({
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.service_principal_names #=> Array
    #   resp.service_principal_names[0].connector_arn #=> String
    #   resp.service_principal_names[0].created_at #=> Time
    #   resp.service_principal_names[0].directory_registration_arn #=> String
    #   resp.service_principal_names[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.service_principal_names[0].status_reason #=> String, one of "DIRECTORY_ACCESS_DENIED", "DIRECTORY_NOT_REACHABLE", "DIRECTORY_RESOURCE_NOT_FOUND", "SPN_EXISTS_ON_DIFFERENT_AD_OBJECT", "SPN_LIMIT_EXCEEDED", "INTERNAL_FAILURE"
    #   resp.service_principal_names[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListServicePrincipalNames AWS API Documentation
    #
    # @overload list_service_principal_names(params = {})
    # @param [Hash] params ({})
    def list_service_principal_names(params = {}, options = {})
      req = build_request(:list_service_principal_names, params)
      req.send_request(options)
    end

    # Lists the tags, if any, that are associated with your resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that was returned when you created the
    #   resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists group access control entries you created.
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If additional
    #   items exist beyond the number you specify, the `NextToken` element is
    #   sent in the response. Use this `NextToken` value in a subsequent
    #   request to retrieve additional items.
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #
    # @option params [required, String] :template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #
    # @return [Types::ListTemplateGroupAccessControlEntriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateGroupAccessControlEntriesResponse#access_control_entries #access_control_entries} => Array&lt;Types::AccessControlEntrySummary&gt;
    #   * {Types::ListTemplateGroupAccessControlEntriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_group_access_control_entries({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_arn: "TemplateArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_control_entries #=> Array
    #   resp.access_control_entries[0].access_rights.auto_enroll #=> String, one of "ALLOW", "DENY"
    #   resp.access_control_entries[0].access_rights.enroll #=> String, one of "ALLOW", "DENY"
    #   resp.access_control_entries[0].created_at #=> Time
    #   resp.access_control_entries[0].group_display_name #=> String
    #   resp.access_control_entries[0].group_security_identifier #=> String
    #   resp.access_control_entries[0].template_arn #=> String
    #   resp.access_control_entries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTemplateGroupAccessControlEntries AWS API Documentation
    #
    # @overload list_template_group_access_control_entries(params = {})
    # @param [Hash] params ({})
    def list_template_group_access_control_entries(params = {}, options = {})
      req = build_request(:list_template_group_access_control_entries, params)
      req.send_request(options)
    end

    # Lists the templates, if any, that are associated with a connector.
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If additional
    #   items exist beyond the number you specify, the `NextToken` element is
    #   sent in the response. Use this `NextToken` value in a subsequent
    #   request to retrieve additional items.
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #
    # @return [Types::ListTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesResponse#next_token #next_token} => String
    #   * {Types::ListTemplatesResponse#templates #templates} => Array&lt;Types::TemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     connector_arn: "ConnectorArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.templates #=> Array
    #   resp.templates[0].arn #=> String
    #   resp.templates[0].connector_arn #=> String
    #   resp.templates[0].created_at #=> Time
    #   resp.templates[0].definition.template_v2.certificate_validity.renewal_period.period #=> Integer
    #   resp.templates[0].definition.template_v2.certificate_validity.renewal_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.templates[0].definition.template_v2.certificate_validity.validity_period.period #=> Integer
    #   resp.templates[0].definition.template_v2.certificate_validity.validity_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.templates[0].definition.template_v2.enrollment_flags.enable_key_reuse_on_nt_token_keyset_storage_full #=> Boolean
    #   resp.templates[0].definition.template_v2.enrollment_flags.include_symmetric_algorithms #=> Boolean
    #   resp.templates[0].definition.template_v2.enrollment_flags.no_security_extension #=> Boolean
    #   resp.templates[0].definition.template_v2.enrollment_flags.remove_invalid_certificate_from_personal_store #=> Boolean
    #   resp.templates[0].definition.template_v2.enrollment_flags.user_interaction_required #=> Boolean
    #   resp.templates[0].definition.template_v2.extensions.application_policies.critical #=> Boolean
    #   resp.templates[0].definition.template_v2.extensions.application_policies.policies #=> Array
    #   resp.templates[0].definition.template_v2.extensions.application_policies.policies[0].policy_object_identifier #=> String
    #   resp.templates[0].definition.template_v2.extensions.application_policies.policies[0].policy_type #=> String, one of "ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"
    #   resp.templates[0].definition.template_v2.extensions.key_usage.critical #=> Boolean
    #   resp.templates[0].definition.template_v2.extensions.key_usage.usage_flags.data_encipherment #=> Boolean
    #   resp.templates[0].definition.template_v2.extensions.key_usage.usage_flags.digital_signature #=> Boolean
    #   resp.templates[0].definition.template_v2.extensions.key_usage.usage_flags.key_agreement #=> Boolean
    #   resp.templates[0].definition.template_v2.extensions.key_usage.usage_flags.key_encipherment #=> Boolean
    #   resp.templates[0].definition.template_v2.extensions.key_usage.usage_flags.non_repudiation #=> Boolean
    #   resp.templates[0].definition.template_v2.general_flags.auto_enrollment #=> Boolean
    #   resp.templates[0].definition.template_v2.general_flags.machine_type #=> Boolean
    #   resp.templates[0].definition.template_v2.private_key_attributes.crypto_providers #=> Array
    #   resp.templates[0].definition.template_v2.private_key_attributes.crypto_providers[0] #=> String
    #   resp.templates[0].definition.template_v2.private_key_attributes.key_spec #=> String, one of "KEY_EXCHANGE", "SIGNATURE"
    #   resp.templates[0].definition.template_v2.private_key_attributes.minimal_key_length #=> Integer
    #   resp.templates[0].definition.template_v2.private_key_flags.client_version #=> String, one of "WINDOWS_SERVER_2003", "WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"
    #   resp.templates[0].definition.template_v2.private_key_flags.exportable_key #=> Boolean
    #   resp.templates[0].definition.template_v2.private_key_flags.strong_key_protection_required #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.require_common_name #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.require_directory_path #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.require_dns_as_cn #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.require_email #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.san_require_directory_guid #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.san_require_dns #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.san_require_domain_dns #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.san_require_email #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.san_require_spn #=> Boolean
    #   resp.templates[0].definition.template_v2.subject_name_flags.san_require_upn #=> Boolean
    #   resp.templates[0].definition.template_v2.superseded_templates #=> Array
    #   resp.templates[0].definition.template_v2.superseded_templates[0] #=> String
    #   resp.templates[0].definition.template_v3.certificate_validity.renewal_period.period #=> Integer
    #   resp.templates[0].definition.template_v3.certificate_validity.renewal_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.templates[0].definition.template_v3.certificate_validity.validity_period.period #=> Integer
    #   resp.templates[0].definition.template_v3.certificate_validity.validity_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.templates[0].definition.template_v3.enrollment_flags.enable_key_reuse_on_nt_token_keyset_storage_full #=> Boolean
    #   resp.templates[0].definition.template_v3.enrollment_flags.include_symmetric_algorithms #=> Boolean
    #   resp.templates[0].definition.template_v3.enrollment_flags.no_security_extension #=> Boolean
    #   resp.templates[0].definition.template_v3.enrollment_flags.remove_invalid_certificate_from_personal_store #=> Boolean
    #   resp.templates[0].definition.template_v3.enrollment_flags.user_interaction_required #=> Boolean
    #   resp.templates[0].definition.template_v3.extensions.application_policies.critical #=> Boolean
    #   resp.templates[0].definition.template_v3.extensions.application_policies.policies #=> Array
    #   resp.templates[0].definition.template_v3.extensions.application_policies.policies[0].policy_object_identifier #=> String
    #   resp.templates[0].definition.template_v3.extensions.application_policies.policies[0].policy_type #=> String, one of "ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"
    #   resp.templates[0].definition.template_v3.extensions.key_usage.critical #=> Boolean
    #   resp.templates[0].definition.template_v3.extensions.key_usage.usage_flags.data_encipherment #=> Boolean
    #   resp.templates[0].definition.template_v3.extensions.key_usage.usage_flags.digital_signature #=> Boolean
    #   resp.templates[0].definition.template_v3.extensions.key_usage.usage_flags.key_agreement #=> Boolean
    #   resp.templates[0].definition.template_v3.extensions.key_usage.usage_flags.key_encipherment #=> Boolean
    #   resp.templates[0].definition.template_v3.extensions.key_usage.usage_flags.non_repudiation #=> Boolean
    #   resp.templates[0].definition.template_v3.general_flags.auto_enrollment #=> Boolean
    #   resp.templates[0].definition.template_v3.general_flags.machine_type #=> Boolean
    #   resp.templates[0].definition.template_v3.hash_algorithm #=> String, one of "SHA256", "SHA384", "SHA512"
    #   resp.templates[0].definition.template_v3.private_key_attributes.algorithm #=> String, one of "RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"
    #   resp.templates[0].definition.template_v3.private_key_attributes.crypto_providers #=> Array
    #   resp.templates[0].definition.template_v3.private_key_attributes.crypto_providers[0] #=> String
    #   resp.templates[0].definition.template_v3.private_key_attributes.key_spec #=> String, one of "KEY_EXCHANGE", "SIGNATURE"
    #   resp.templates[0].definition.template_v3.private_key_attributes.key_usage_property.property_flags.decrypt #=> Boolean
    #   resp.templates[0].definition.template_v3.private_key_attributes.key_usage_property.property_flags.key_agreement #=> Boolean
    #   resp.templates[0].definition.template_v3.private_key_attributes.key_usage_property.property_flags.sign #=> Boolean
    #   resp.templates[0].definition.template_v3.private_key_attributes.key_usage_property.property_type #=> String, one of "ALL"
    #   resp.templates[0].definition.template_v3.private_key_attributes.minimal_key_length #=> Integer
    #   resp.templates[0].definition.template_v3.private_key_flags.client_version #=> String, one of "WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"
    #   resp.templates[0].definition.template_v3.private_key_flags.exportable_key #=> Boolean
    #   resp.templates[0].definition.template_v3.private_key_flags.require_alternate_signature_algorithm #=> Boolean
    #   resp.templates[0].definition.template_v3.private_key_flags.strong_key_protection_required #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.require_common_name #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.require_directory_path #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.require_dns_as_cn #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.require_email #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.san_require_directory_guid #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.san_require_dns #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.san_require_domain_dns #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.san_require_email #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.san_require_spn #=> Boolean
    #   resp.templates[0].definition.template_v3.subject_name_flags.san_require_upn #=> Boolean
    #   resp.templates[0].definition.template_v3.superseded_templates #=> Array
    #   resp.templates[0].definition.template_v3.superseded_templates[0] #=> String
    #   resp.templates[0].definition.template_v4.certificate_validity.renewal_period.period #=> Integer
    #   resp.templates[0].definition.template_v4.certificate_validity.renewal_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.templates[0].definition.template_v4.certificate_validity.validity_period.period #=> Integer
    #   resp.templates[0].definition.template_v4.certificate_validity.validity_period.period_type #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.templates[0].definition.template_v4.enrollment_flags.enable_key_reuse_on_nt_token_keyset_storage_full #=> Boolean
    #   resp.templates[0].definition.template_v4.enrollment_flags.include_symmetric_algorithms #=> Boolean
    #   resp.templates[0].definition.template_v4.enrollment_flags.no_security_extension #=> Boolean
    #   resp.templates[0].definition.template_v4.enrollment_flags.remove_invalid_certificate_from_personal_store #=> Boolean
    #   resp.templates[0].definition.template_v4.enrollment_flags.user_interaction_required #=> Boolean
    #   resp.templates[0].definition.template_v4.extensions.application_policies.critical #=> Boolean
    #   resp.templates[0].definition.template_v4.extensions.application_policies.policies #=> Array
    #   resp.templates[0].definition.template_v4.extensions.application_policies.policies[0].policy_object_identifier #=> String
    #   resp.templates[0].definition.template_v4.extensions.application_policies.policies[0].policy_type #=> String, one of "ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"
    #   resp.templates[0].definition.template_v4.extensions.key_usage.critical #=> Boolean
    #   resp.templates[0].definition.template_v4.extensions.key_usage.usage_flags.data_encipherment #=> Boolean
    #   resp.templates[0].definition.template_v4.extensions.key_usage.usage_flags.digital_signature #=> Boolean
    #   resp.templates[0].definition.template_v4.extensions.key_usage.usage_flags.key_agreement #=> Boolean
    #   resp.templates[0].definition.template_v4.extensions.key_usage.usage_flags.key_encipherment #=> Boolean
    #   resp.templates[0].definition.template_v4.extensions.key_usage.usage_flags.non_repudiation #=> Boolean
    #   resp.templates[0].definition.template_v4.general_flags.auto_enrollment #=> Boolean
    #   resp.templates[0].definition.template_v4.general_flags.machine_type #=> Boolean
    #   resp.templates[0].definition.template_v4.hash_algorithm #=> String, one of "SHA256", "SHA384", "SHA512"
    #   resp.templates[0].definition.template_v4.private_key_attributes.algorithm #=> String, one of "RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"
    #   resp.templates[0].definition.template_v4.private_key_attributes.crypto_providers #=> Array
    #   resp.templates[0].definition.template_v4.private_key_attributes.crypto_providers[0] #=> String
    #   resp.templates[0].definition.template_v4.private_key_attributes.key_spec #=> String, one of "KEY_EXCHANGE", "SIGNATURE"
    #   resp.templates[0].definition.template_v4.private_key_attributes.key_usage_property.property_flags.decrypt #=> Boolean
    #   resp.templates[0].definition.template_v4.private_key_attributes.key_usage_property.property_flags.key_agreement #=> Boolean
    #   resp.templates[0].definition.template_v4.private_key_attributes.key_usage_property.property_flags.sign #=> Boolean
    #   resp.templates[0].definition.template_v4.private_key_attributes.key_usage_property.property_type #=> String, one of "ALL"
    #   resp.templates[0].definition.template_v4.private_key_attributes.minimal_key_length #=> Integer
    #   resp.templates[0].definition.template_v4.private_key_flags.client_version #=> String, one of "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"
    #   resp.templates[0].definition.template_v4.private_key_flags.exportable_key #=> Boolean
    #   resp.templates[0].definition.template_v4.private_key_flags.require_alternate_signature_algorithm #=> Boolean
    #   resp.templates[0].definition.template_v4.private_key_flags.require_same_key_renewal #=> Boolean
    #   resp.templates[0].definition.template_v4.private_key_flags.strong_key_protection_required #=> Boolean
    #   resp.templates[0].definition.template_v4.private_key_flags.use_legacy_provider #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.require_common_name #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.require_directory_path #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.require_dns_as_cn #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.require_email #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.san_require_directory_guid #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.san_require_dns #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.san_require_domain_dns #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.san_require_email #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.san_require_spn #=> Boolean
    #   resp.templates[0].definition.template_v4.subject_name_flags.san_require_upn #=> Boolean
    #   resp.templates[0].definition.template_v4.superseded_templates #=> Array
    #   resp.templates[0].definition.template_v4.superseded_templates[0] #=> String
    #   resp.templates[0].name #=> String
    #   resp.templates[0].object_identifier #=> String
    #   resp.templates[0].policy_schema #=> Integer
    #   resp.templates[0].revision.major_revision #=> Integer
    #   resp.templates[0].revision.minor_revision #=> Integer
    #   resp.templates[0].status #=> String, one of "ACTIVE", "DELETING"
    #   resp.templates[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # Adds one or more tags to your resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that was returned when you created the
    #   resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Metadata assigned to a directory registration consisting of a
    #   key-value pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from your resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that was returned when you created the
    #   resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies a list of tag keys that you want to remove from the
    #   specified resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update template configuration to define the information included in
    # certificates.
    #
    # @option params [Types::TemplateDefinition] :definition
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #
    # @option params [Boolean] :reenroll_all_certificate_holders
    #   This setting allows the major version of a template to be increased
    #   automatically. All members of Active Directory groups that are allowed
    #   to enroll with a template will receive a new certificate issued using
    #   that template.
    #
    # @option params [required, String] :template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template({
    #     definition: {
    #       template_v2: {
    #         certificate_validity: { # required
    #           renewal_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #           validity_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #         },
    #         enrollment_flags: { # required
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false,
    #           include_symmetric_algorithms: false,
    #           no_security_extension: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           user_interaction_required: false,
    #         },
    #         extensions: { # required
    #           application_policies: {
    #             critical: false,
    #             policies: [ # required
    #               {
    #                 policy_object_identifier: "CustomObjectIdentifier",
    #                 policy_type: "ALL_APPLICATION_POLICIES", # accepts ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE
    #               },
    #             ],
    #           },
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               data_encipherment: false,
    #               digital_signature: false,
    #               key_agreement: false,
    #               key_encipherment: false,
    #               non_repudiation: false,
    #             },
    #           },
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false,
    #         },
    #         private_key_attributes: { # required
    #           crypto_providers: ["CryptoProvidersListMemberString"],
    #           key_spec: "KEY_EXCHANGE", # required, accepts KEY_EXCHANGE, SIGNATURE
    #           minimal_key_length: 1, # required
    #         },
    #         private_key_flags: { # required
    #           client_version: "WINDOWS_SERVER_2003", # required, accepts WINDOWS_SERVER_2003, WINDOWS_SERVER_2008, WINDOWS_SERVER_2008_R2, WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
    #           exportable_key: false,
    #           strong_key_protection_required: false,
    #         },
    #         subject_name_flags: { # required
    #           require_common_name: false,
    #           require_directory_path: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           san_require_directory_guid: false,
    #           san_require_dns: false,
    #           san_require_domain_dns: false,
    #           san_require_email: false,
    #           san_require_spn: false,
    #           san_require_upn: false,
    #         },
    #         superseded_templates: ["TemplateName"],
    #       },
    #       template_v3: {
    #         certificate_validity: { # required
    #           renewal_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #           validity_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #         },
    #         enrollment_flags: { # required
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false,
    #           include_symmetric_algorithms: false,
    #           no_security_extension: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           user_interaction_required: false,
    #         },
    #         extensions: { # required
    #           application_policies: {
    #             critical: false,
    #             policies: [ # required
    #               {
    #                 policy_object_identifier: "CustomObjectIdentifier",
    #                 policy_type: "ALL_APPLICATION_POLICIES", # accepts ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE
    #               },
    #             ],
    #           },
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               data_encipherment: false,
    #               digital_signature: false,
    #               key_agreement: false,
    #               key_encipherment: false,
    #               non_repudiation: false,
    #             },
    #           },
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false,
    #         },
    #         hash_algorithm: "SHA256", # required, accepts SHA256, SHA384, SHA512
    #         private_key_attributes: { # required
    #           algorithm: "RSA", # required, accepts RSA, ECDH_P256, ECDH_P384, ECDH_P521
    #           crypto_providers: ["CryptoProvidersListMemberString"],
    #           key_spec: "KEY_EXCHANGE", # required, accepts KEY_EXCHANGE, SIGNATURE
    #           key_usage_property: { # required
    #             property_flags: {
    #               decrypt: false,
    #               key_agreement: false,
    #               sign: false,
    #             },
    #             property_type: "ALL", # accepts ALL
    #           },
    #           minimal_key_length: 1, # required
    #         },
    #         private_key_flags: { # required
    #           client_version: "WINDOWS_SERVER_2008", # required, accepts WINDOWS_SERVER_2008, WINDOWS_SERVER_2008_R2, WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
    #           exportable_key: false,
    #           require_alternate_signature_algorithm: false,
    #           strong_key_protection_required: false,
    #         },
    #         subject_name_flags: { # required
    #           require_common_name: false,
    #           require_directory_path: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           san_require_directory_guid: false,
    #           san_require_dns: false,
    #           san_require_domain_dns: false,
    #           san_require_email: false,
    #           san_require_spn: false,
    #           san_require_upn: false,
    #         },
    #         superseded_templates: ["TemplateName"],
    #       },
    #       template_v4: {
    #         certificate_validity: { # required
    #           renewal_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #           validity_period: { # required
    #             period: 1, # required
    #             period_type: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS, YEARS
    #           },
    #         },
    #         enrollment_flags: { # required
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false,
    #           include_symmetric_algorithms: false,
    #           no_security_extension: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           user_interaction_required: false,
    #         },
    #         extensions: { # required
    #           application_policies: {
    #             critical: false,
    #             policies: [ # required
    #               {
    #                 policy_object_identifier: "CustomObjectIdentifier",
    #                 policy_type: "ALL_APPLICATION_POLICIES", # accepts ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE
    #               },
    #             ],
    #           },
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               data_encipherment: false,
    #               digital_signature: false,
    #               key_agreement: false,
    #               key_encipherment: false,
    #               non_repudiation: false,
    #             },
    #           },
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false,
    #         },
    #         hash_algorithm: "SHA256", # accepts SHA256, SHA384, SHA512
    #         private_key_attributes: { # required
    #           algorithm: "RSA", # accepts RSA, ECDH_P256, ECDH_P384, ECDH_P521
    #           crypto_providers: ["CryptoProvidersListMemberString"],
    #           key_spec: "KEY_EXCHANGE", # required, accepts KEY_EXCHANGE, SIGNATURE
    #           key_usage_property: {
    #             property_flags: {
    #               decrypt: false,
    #               key_agreement: false,
    #               sign: false,
    #             },
    #             property_type: "ALL", # accepts ALL
    #           },
    #           minimal_key_length: 1, # required
    #         },
    #         private_key_flags: { # required
    #           client_version: "WINDOWS_SERVER_2012", # required, accepts WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
    #           exportable_key: false,
    #           require_alternate_signature_algorithm: false,
    #           require_same_key_renewal: false,
    #           strong_key_protection_required: false,
    #           use_legacy_provider: false,
    #         },
    #         subject_name_flags: { # required
    #           require_common_name: false,
    #           require_directory_path: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           san_require_directory_guid: false,
    #           san_require_dns: false,
    #           san_require_domain_dns: false,
    #           san_require_email: false,
    #           san_require_spn: false,
    #           san_require_upn: false,
    #         },
    #         superseded_templates: ["TemplateName"],
    #       },
    #     },
    #     reenroll_all_certificate_holders: false,
    #     template_arn: "TemplateArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/UpdateTemplate AWS API Documentation
    #
    # @overload update_template(params = {})
    # @param [Hash] params ({})
    def update_template(params = {}, options = {})
      req = build_request(:update_template, params)
      req.send_request(options)
    end

    # Update a group access control entry you created using
    # [CreateTemplateGroupAccessControlEntry][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplateGroupAccessControlEntry.html
    #
    # @option params [Types::AccessRights] :access_rights
    #   Allow or deny permissions for an Active Directory group to enroll or
    #   autoenroll certificates for a template.
    #
    # @option params [String] :group_display_name
    #   Name of the Active Directory group. This name does not need to match
    #   the group name in Active Directory.
    #
    # @option params [required, String] :group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #
    # @option params [required, String] :template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_group_access_control_entry({
    #     access_rights: {
    #       auto_enroll: "ALLOW", # accepts ALLOW, DENY
    #       enroll: "ALLOW", # accepts ALLOW, DENY
    #     },
    #     group_display_name: "DisplayName",
    #     group_security_identifier: "GroupSecurityIdentifier", # required
    #     template_arn: "TemplateArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/UpdateTemplateGroupAccessControlEntry AWS API Documentation
    #
    # @overload update_template_group_access_control_entry(params = {})
    # @param [Hash] params ({})
    def update_template_group_access_control_entry(params = {}, options = {})
      req = build_request(:update_template_group_access_control_entry, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PcaConnectorAd')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-pcaconnectorad'
      context[:gem_version] = '1.28.0'
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
