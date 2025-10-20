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
require 'aws-sdk-finspace/plugins/content_type'

module Aws::Finspace
  # An API client for Finspace.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Finspace::Client.new(
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

    @identifier = :finspace

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
    add_plugin(Aws::Finspace::Plugins::ContentType)
    add_plugin(Aws::Finspace::Plugins::Endpoints)

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
    #   @option options [Aws::Finspace::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Finspace::EndpointParameters`.
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

    # Create a new FinSpace environment.
    #
    # @option params [required, String] :name
    #   The name of the FinSpace environment to be created.
    #
    # @option params [String] :description
    #   The description of the FinSpace environment to be created.
    #
    # @option params [String] :kms_key_id
    #   The KMS key id to encrypt your data in the FinSpace environment.
    #
    # @option params [Hash<String,String>] :tags
    #   Add tags to your FinSpace environment.
    #
    # @option params [String] :federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO) via
    #     your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #
    # @option params [Types::FederationParameters] :federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #
    # @option params [Types::SuperuserParameters] :superuser_parameters
    #   Configuration information for the superuser.
    #
    # @option params [Array<String>] :data_bundles
    #   The list of Amazon Resource Names (ARN) of the data bundles to
    #   install. Currently supported data bundle ARNs:
    #
    #   * `arn:aws:finspace:${Region}::data-bundle/capital-markets-sample` -
    #     Contains sample Capital Markets datasets, categories and controlled
    #     vocabularies.
    #
    #   * `arn:aws:finspace:${Region}::data-bundle/taq` (default) - Contains
    #     trades and quotes data in addition to sample Capital Markets data.
    #
    # @return [Types::CreateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::CreateEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::CreateEnvironmentResponse#environment_url #environment_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     name: "EnvironmentName", # required
    #     description: "Description",
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     federation_mode: "FEDERATED", # accepts FEDERATED, LOCAL
    #     federation_parameters: {
    #       saml_metadata_document: "SamlMetadataDocument",
    #       saml_metadata_url: "url",
    #       application_call_back_url: "url",
    #       federation_urn: "urn",
    #       federation_provider_name: "FederationProviderName",
    #       attribute_map: {
    #         "FederationAttributeKey" => "FederationAttributeValue",
    #       },
    #     },
    #     superuser_parameters: {
    #       email_address: "EmailId", # required
    #       first_name: "NameString", # required
    #       last_name: "NameString", # required
    #     },
    #     data_bundles: ["DataBundleArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.environment_arn #=> String
    #   resp.environment_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates a changeset for a kdb database. A changeset allows you to add
    # and delete existing files by using an ordered list of change requests.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier of the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [required, Array<Types::ChangeRequest>] :change_requests
    #   A list of change request objects that are run in order. A change
    #   request object consists of `changeType` , `s3Path`, and `dbPath`. A
    #   changeType can have the following values:
    #
    #   * PUT – Adds or updates files in a database.
    #
    #   * DELETE – Deletes files in a database.
    #
    #   All the change requests require a mandatory `dbPath` attribute that
    #   defines the path within the database directory. All database paths
    #   must start with a leading / and end with a trailing /. The `s3Path`
    #   attribute defines the s3 source file path and is required for a PUT
    #   change type. The `s3path` must end with a trailing / if it is a
    #   directory and must end without a trailing / if it is a file.
    #
    #   Here are few examples of how you can use the change request object:
    #
    #   1.  This request adds a single sym file at database root location.
    #
    #       `{ "changeType": "PUT", "s3Path":"s3://bucket/db/sym",
    #       "dbPath":"/"}`
    #
    #   2.  This request adds files in the given `s3Path` under the 2020.01.02
    #       partition of the database.
    #
    #       `{ "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/",
    #       "dbPath":"/2020.01.02/"}`
    #
    #   3.  This request adds files in the given `s3Path` under the *taq*
    #       table partition of the database.
    #
    #       `[ { "changeType": "PUT",
    #       "s3Path":"s3://bucket/db/2020.01.02/taq/",
    #       "dbPath":"/2020.01.02/taq/"}]`
    #
    #   4.  This request deletes the 2020.01.02 partition of the database.
    #
    #       `[{ "changeType": "DELETE", "dbPath": "/2020.01.02/"} ]`
    #
    #   5.  The *DELETE* request allows you to delete the existing files under
    #       the 2020.01.02 partition of the database, and the *PUT* request
    #       adds a new taq table under it.
    #
    #       `[ {"changeType": "DELETE", "dbPath":"/2020.01.02/"},
    #       {"changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/taq/",
    #       "dbPath":"/2020.01.02/taq/"}]`
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateKxChangesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxChangesetResponse#changeset_id #changeset_id} => String
    #   * {Types::CreateKxChangesetResponse#database_name #database_name} => String
    #   * {Types::CreateKxChangesetResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxChangesetResponse#change_requests #change_requests} => Array&lt;Types::ChangeRequest&gt;
    #   * {Types::CreateKxChangesetResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateKxChangesetResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::CreateKxChangesetResponse#status #status} => String
    #   * {Types::CreateKxChangesetResponse#error_info #error_info} => Types::ErrorInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_changeset({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     change_requests: [ # required
    #       {
    #         change_type: "PUT", # required, accepts PUT, DELETE
    #         s3_path: "S3Path",
    #         db_path: "DbPath", # required
    #       },
    #     ],
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.changeset_id #=> String
    #   resp.database_name #=> String
    #   resp.environment_id #=> String
    #   resp.change_requests #=> Array
    #   resp.change_requests[0].change_type #=> String, one of "PUT", "DELETE"
    #   resp.change_requests[0].s3_path #=> String
    #   resp.change_requests[0].db_path #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.status #=> String, one of "PENDING", "PROCESSING", "FAILED", "COMPLETED"
    #   resp.error_info.error_message #=> String
    #   resp.error_info.error_type #=> String, one of "The inputs to this request are invalid.", "Service limits have been exceeded.", "Missing required permission to perform this request.", "One or more inputs to this request were not found.", "The system temporarily lacks sufficient resources to process the request.", "An internal error has occurred.", "Cancelled", "A user recoverable error has occurred"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxChangeset AWS API Documentation
    #
    # @overload create_kx_changeset(params = {})
    # @param [Hash] params ({})
    def create_kx_changeset(params = {}, options = {})
      req = build_request(:create_kx_changeset, params)
      req.send_request(options)
    end

    # Creates a new kdb cluster.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   A unique name for the cluster that you want to create.
    #
    # @option params [required, String] :cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb databases
    #     mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads the
    #     HDB. This cluster type requires local storage for temporary storage
    #     of data during the savedown process. If you specify this field in
    #     your request, you must provide the `savedownStorageConfiguration`
    #     parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type of
    #     cluster does not require a writable local storage.
    #
    #   * GP – A general purpose cluster allows you to quickly iterate on code
    #     during development by granting greater access to system commands and
    #     enabling a fast reload of custom code. This cluster type can
    #     optionally mount databases including cache and savedown storage. For
    #     this cluster type, the node count is fixed at 1. It does not support
    #     autoscaling and supports only `SINGLE` AZ mode.
    #
    #   * Tickerplant – A tickerplant cluster allows you to subscribe to feed
    #     handlers based on IAM permissions. It can publish to RDBs, other
    #     Tickerplants, and real-time subscribers (RTS). Tickerplants can
    #     persist messages to log, which is readable by any RDB environment.
    #     It supports only single-node that is only one kdb process.
    #
    # @option params [Types::TickerplantLogConfiguration] :tickerplant_log_configuration
    #   A configuration to store Tickerplant logs. It consists of a list of
    #   volumes that will be mounted to your cluster. For the cluster type
    #   `Tickerplant`, the location of the TP volume on the cluster will be
    #   available by using the global variable `.aws.tp_log_path`.
    #
    # @option params [Array<Types::KxDatabaseConfiguration>] :databases
    #   A list of databases that will be available for querying.
    #
    # @option params [Array<Types::KxCacheStorageConfiguration>] :cache_storage_configurations
    #   The configurations for a read only cache storage associated with a
    #   cluster. This cache will be stored as an FSx Lustre that reads from
    #   the S3 store.
    #
    # @option params [Types::AutoScalingConfiguration] :auto_scaling_configuration
    #   The configuration based on which FinSpace will scale in or scale out
    #   nodes in your cluster.
    #
    # @option params [String] :cluster_description
    #   A description of the cluster.
    #
    # @option params [Types::CapacityConfiguration] :capacity_configuration
    #   A structure for the metadata of a cluster. It includes information
    #   like the CPUs needed, memory of instances, and number of instances.
    #
    # @option params [required, String] :release_label
    #   The version of FinSpace managed kdb to run.
    #
    # @option params [required, Types::VpcConfiguration] :vpc_configuration
    #   Configuration details about the network where the Privatelink endpoint
    #   of the cluster resides.
    #
    # @option params [String] :initialization_script
    #   Specifies a Q program that will be run at launch of a cluster. It is a
    #   relative path within *.zip* file that contains the custom code, which
    #   will be loaded on the cluster. It must include the file name itself.
    #   For example, `somedir/init.q`.
    #
    # @option params [Array<Types::KxCommandLineArgument>] :command_line_arguments
    #   Defines the key-value pairs to make them available inside the cluster.
    #
    # @option params [Types::CodeConfiguration] :code
    #   The details of the custom code that you want to use inside a cluster
    #   when analyzing a data. It consists of the S3 source bucket, location,
    #   S3 object version, and the relative path from where the custom code is
    #   loaded into the cluster.
    #
    # @option params [String] :execution_role
    #   An IAM role that defines a set of permissions associated with a
    #   cluster. These permissions are assumed when a cluster attempts to
    #   access another cluster.
    #
    # @option params [Types::KxSavedownStorageConfiguration] :savedown_storage_configuration
    #   The size and type of the temporary storage that is used to hold data
    #   during the savedown process. This parameter is required when you
    #   choose `clusterType` as RDB. All the data written to this storage
    #   space is lost when the cluster node is restarted.
    #
    # @option params [required, String] :az_mode
    #   The number of availability zones you want to assign per cluster. This
    #   can be one of the following
    #
    #   * `SINGLE` – Assigns one availability zone per cluster.
    #
    #   * `MULTI` – Assigns all the availability zones per cluster.
    #
    # @option params [String] :availability_zone_id
    #   The availability zone identifiers for the requested regions.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the cluster. You can add up to 50
    #   tags to a cluster.
    #
    # @option params [Types::KxScalingGroupConfiguration] :scaling_group_configuration
    #   The structure that stores the configuration details of a scaling
    #   group.
    #
    # @return [Types::CreateKxClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxClusterResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxClusterResponse#status #status} => String
    #   * {Types::CreateKxClusterResponse#status_reason #status_reason} => String
    #   * {Types::CreateKxClusterResponse#cluster_name #cluster_name} => String
    #   * {Types::CreateKxClusterResponse#cluster_type #cluster_type} => String
    #   * {Types::CreateKxClusterResponse#tickerplant_log_configuration #tickerplant_log_configuration} => Types::TickerplantLogConfiguration
    #   * {Types::CreateKxClusterResponse#volumes #volumes} => Array&lt;Types::Volume&gt;
    #   * {Types::CreateKxClusterResponse#databases #databases} => Array&lt;Types::KxDatabaseConfiguration&gt;
    #   * {Types::CreateKxClusterResponse#cache_storage_configurations #cache_storage_configurations} => Array&lt;Types::KxCacheStorageConfiguration&gt;
    #   * {Types::CreateKxClusterResponse#auto_scaling_configuration #auto_scaling_configuration} => Types::AutoScalingConfiguration
    #   * {Types::CreateKxClusterResponse#cluster_description #cluster_description} => String
    #   * {Types::CreateKxClusterResponse#capacity_configuration #capacity_configuration} => Types::CapacityConfiguration
    #   * {Types::CreateKxClusterResponse#release_label #release_label} => String
    #   * {Types::CreateKxClusterResponse#vpc_configuration #vpc_configuration} => Types::VpcConfiguration
    #   * {Types::CreateKxClusterResponse#initialization_script #initialization_script} => String
    #   * {Types::CreateKxClusterResponse#command_line_arguments #command_line_arguments} => Array&lt;Types::KxCommandLineArgument&gt;
    #   * {Types::CreateKxClusterResponse#code #code} => Types::CodeConfiguration
    #   * {Types::CreateKxClusterResponse#execution_role #execution_role} => String
    #   * {Types::CreateKxClusterResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::CreateKxClusterResponse#savedown_storage_configuration #savedown_storage_configuration} => Types::KxSavedownStorageConfiguration
    #   * {Types::CreateKxClusterResponse#az_mode #az_mode} => String
    #   * {Types::CreateKxClusterResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::CreateKxClusterResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateKxClusterResponse#scaling_group_configuration #scaling_group_configuration} => Types::KxScalingGroupConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_cluster({
    #     client_token: "ClientToken",
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     cluster_type: "HDB", # required, accepts HDB, RDB, GATEWAY, GP, TICKERPLANT
    #     tickerplant_log_configuration: {
    #       tickerplant_log_volumes: ["VolumeName"],
    #     },
    #     databases: [
    #       {
    #         database_name: "DatabaseName", # required
    #         cache_configurations: [
    #           {
    #             cache_type: "KxCacheStorageType", # required
    #             db_paths: ["DbPath"], # required
    #             dataview_name: "KxDataviewName",
    #           },
    #         ],
    #         changeset_id: "ChangesetId",
    #         dataview_name: "KxDataviewName",
    #         dataview_configuration: {
    #           dataview_name: "KxDataviewName",
    #           dataview_version_id: "VersionId",
    #           changeset_id: "ChangesetId",
    #           segment_configurations: [
    #             {
    #               db_paths: ["DbPath"], # required
    #               volume_name: "KxVolumeName", # required
    #               on_demand: false,
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     cache_storage_configurations: [
    #       {
    #         type: "KxCacheStorageType", # required
    #         size: 1, # required
    #       },
    #     ],
    #     auto_scaling_configuration: {
    #       min_node_count: 1,
    #       max_node_count: 1,
    #       auto_scaling_metric: "CPU_UTILIZATION_PERCENTAGE", # accepts CPU_UTILIZATION_PERCENTAGE
    #       metric_target: 1.0,
    #       scale_in_cooldown_seconds: 1.0,
    #       scale_out_cooldown_seconds: 1.0,
    #     },
    #     cluster_description: "KxClusterDescription",
    #     capacity_configuration: {
    #       node_type: "NodeType",
    #       node_count: 1,
    #     },
    #     release_label: "ReleaseLabel", # required
    #     vpc_configuration: { # required
    #       vpc_id: "VpcIdString",
    #       security_group_ids: ["SecurityGroupIdString"],
    #       subnet_ids: ["SubnetIdString"],
    #       ip_address_type: "IP_V4", # accepts IP_V4
    #     },
    #     initialization_script: "InitializationScriptFilePath",
    #     command_line_arguments: [
    #       {
    #         key: "KxCommandLineArgumentKey",
    #         value: "KxCommandLineArgumentValue",
    #       },
    #     ],
    #     code: {
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #     },
    #     execution_role: "ExecutionRoleArn",
    #     savedown_storage_configuration: {
    #       type: "SDS01", # accepts SDS01
    #       size: 1,
    #       volume_name: "KxVolumeName",
    #     },
    #     az_mode: "SINGLE", # required, accepts SINGLE, MULTI
    #     availability_zone_id: "AvailabilityZoneId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     scaling_group_configuration: {
    #       scaling_group_name: "KxScalingGroupName", # required
    #       memory_limit: 1,
    #       memory_reservation: 1, # required
    #       node_count: 1, # required
    #       cpu: 1.0,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.status #=> String, one of "PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.cluster_name #=> String
    #   resp.cluster_type #=> String, one of "HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"
    #   resp.tickerplant_log_configuration.tickerplant_log_volumes #=> Array
    #   resp.tickerplant_log_configuration.tickerplant_log_volumes[0] #=> String
    #   resp.volumes #=> Array
    #   resp.volumes[0].volume_name #=> String
    #   resp.volumes[0].volume_type #=> String, one of "NAS_1"
    #   resp.databases #=> Array
    #   resp.databases[0].database_name #=> String
    #   resp.databases[0].cache_configurations #=> Array
    #   resp.databases[0].cache_configurations[0].cache_type #=> String
    #   resp.databases[0].cache_configurations[0].db_paths #=> Array
    #   resp.databases[0].cache_configurations[0].db_paths[0] #=> String
    #   resp.databases[0].cache_configurations[0].dataview_name #=> String
    #   resp.databases[0].changeset_id #=> String
    #   resp.databases[0].dataview_name #=> String
    #   resp.databases[0].dataview_configuration.dataview_name #=> String
    #   resp.databases[0].dataview_configuration.dataview_version_id #=> String
    #   resp.databases[0].dataview_configuration.changeset_id #=> String
    #   resp.databases[0].dataview_configuration.segment_configurations #=> Array
    #   resp.databases[0].dataview_configuration.segment_configurations[0].db_paths #=> Array
    #   resp.databases[0].dataview_configuration.segment_configurations[0].db_paths[0] #=> String
    #   resp.databases[0].dataview_configuration.segment_configurations[0].volume_name #=> String
    #   resp.databases[0].dataview_configuration.segment_configurations[0].on_demand #=> Boolean
    #   resp.cache_storage_configurations #=> Array
    #   resp.cache_storage_configurations[0].type #=> String
    #   resp.cache_storage_configurations[0].size #=> Integer
    #   resp.auto_scaling_configuration.min_node_count #=> Integer
    #   resp.auto_scaling_configuration.max_node_count #=> Integer
    #   resp.auto_scaling_configuration.auto_scaling_metric #=> String, one of "CPU_UTILIZATION_PERCENTAGE"
    #   resp.auto_scaling_configuration.metric_target #=> Float
    #   resp.auto_scaling_configuration.scale_in_cooldown_seconds #=> Float
    #   resp.auto_scaling_configuration.scale_out_cooldown_seconds #=> Float
    #   resp.cluster_description #=> String
    #   resp.capacity_configuration.node_type #=> String
    #   resp.capacity_configuration.node_count #=> Integer
    #   resp.release_label #=> String
    #   resp.vpc_configuration.vpc_id #=> String
    #   resp.vpc_configuration.security_group_ids #=> Array
    #   resp.vpc_configuration.security_group_ids[0] #=> String
    #   resp.vpc_configuration.subnet_ids #=> Array
    #   resp.vpc_configuration.subnet_ids[0] #=> String
    #   resp.vpc_configuration.ip_address_type #=> String, one of "IP_V4"
    #   resp.initialization_script #=> String
    #   resp.command_line_arguments #=> Array
    #   resp.command_line_arguments[0].key #=> String
    #   resp.command_line_arguments[0].value #=> String
    #   resp.code.s3_bucket #=> String
    #   resp.code.s3_key #=> String
    #   resp.code.s3_object_version #=> String
    #   resp.execution_role #=> String
    #   resp.last_modified_timestamp #=> Time
    #   resp.savedown_storage_configuration.type #=> String, one of "SDS01"
    #   resp.savedown_storage_configuration.size #=> Integer
    #   resp.savedown_storage_configuration.volume_name #=> String
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_id #=> String
    #   resp.created_timestamp #=> Time
    #   resp.scaling_group_configuration.scaling_group_name #=> String
    #   resp.scaling_group_configuration.memory_limit #=> Integer
    #   resp.scaling_group_configuration.memory_reservation #=> Integer
    #   resp.scaling_group_configuration.node_count #=> Integer
    #   resp.scaling_group_configuration.cpu #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxCluster AWS API Documentation
    #
    # @overload create_kx_cluster(params = {})
    # @param [Hash] params ({})
    def create_kx_cluster(params = {}, options = {})
      req = build_request(:create_kx_cluster, params)
      req.send_request(options)
    end

    # Creates a new kdb database in the environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [String] :description
    #   A description of the database.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the kdb database. You can add up to
    #   50 tags to your kdb database
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateKxDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxDatabaseResponse#database_name #database_name} => String
    #   * {Types::CreateKxDatabaseResponse#database_arn #database_arn} => String
    #   * {Types::CreateKxDatabaseResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxDatabaseResponse#description #description} => String
    #   * {Types::CreateKxDatabaseResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateKxDatabaseResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_database({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database_name #=> String
    #   resp.database_arn #=> String
    #   resp.environment_id #=> String
    #   resp.description #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxDatabase AWS API Documentation
    #
    # @overload create_kx_database(params = {})
    # @param [Hash] params ({})
    def create_kx_database(params = {}, options = {})
      req = build_request(:create_kx_database, params)
      req.send_request(options)
    end

    # Creates a snapshot of kdb database with tiered storage capabilities
    # and a pre-warmed cache, ready for mounting on kdb clusters. Dataviews
    # are only available for clusters running on a scaling group. They are
    # not supported on dedicated clusters.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, where you want to create
    #   the dataview.
    #
    # @option params [required, String] :database_name
    #   The name of the database where you want to create a dataview.
    #
    # @option params [required, String] :dataview_name
    #   A unique identifier for the dataview.
    #
    # @option params [required, String] :az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #
    # @option params [String] :availability_zone_id
    #   The identifier of the availability zones.
    #
    # @option params [String] :changeset_id
    #   A unique identifier of the changeset that you want to use to ingest
    #   data.
    #
    # @option params [Array<Types::KxDataviewSegmentConfiguration>] :segment_configurations
    #   The configuration that contains the database path of the data that you
    #   want to place on each selected volume. Each segment must have a unique
    #   database path for each volume. If you do not explicitly specify any
    #   database path for a volume, they are accessible from the cluster
    #   through the default S3/object store segment.
    #
    # @option params [Boolean] :auto_update
    #   The option to specify whether you want to apply all the future
    #   additions and corrections automatically to the dataview, when you
    #   ingest new changesets. The default value is false.
    #
    # @option params [Boolean] :read_write
    #   The option to specify whether you want to make the dataview writable
    #   to perform database maintenance. The following are some considerations
    #   related to writable dataviews.  
    #
    #   * You cannot create partial writable dataviews. When you create
    #     writeable dataviews you must provide the entire database path.
    #
    #   * You cannot perform updates on a writeable dataview. Hence,
    #     `autoUpdate` must be set as **False** if `readWrite` is **True** for
    #     a dataview.
    #
    #   * You must also use a unique volume for creating a writeable dataview.
    #     So, if you choose a volume that is already in use by another
    #     dataview, the dataview creation fails.
    #
    #   * Once you create a dataview as writeable, you cannot change it to
    #     read-only. So, you cannot update the `readWrite` parameter later.
    #
    # @option params [String] :description
    #   A description of the dataview.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the dataview. You can add up to 50
    #   tags to a dataview.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateKxDataviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxDataviewResponse#dataview_name #dataview_name} => String
    #   * {Types::CreateKxDataviewResponse#database_name #database_name} => String
    #   * {Types::CreateKxDataviewResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxDataviewResponse#az_mode #az_mode} => String
    #   * {Types::CreateKxDataviewResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::CreateKxDataviewResponse#changeset_id #changeset_id} => String
    #   * {Types::CreateKxDataviewResponse#segment_configurations #segment_configurations} => Array&lt;Types::KxDataviewSegmentConfiguration&gt;
    #   * {Types::CreateKxDataviewResponse#description #description} => String
    #   * {Types::CreateKxDataviewResponse#auto_update #auto_update} => Boolean
    #   * {Types::CreateKxDataviewResponse#read_write #read_write} => Boolean
    #   * {Types::CreateKxDataviewResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateKxDataviewResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::CreateKxDataviewResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_dataview({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     dataview_name: "KxDataviewName", # required
    #     az_mode: "SINGLE", # required, accepts SINGLE, MULTI
    #     availability_zone_id: "AvailabilityZoneId",
    #     changeset_id: "ChangesetId",
    #     segment_configurations: [
    #       {
    #         db_paths: ["DbPath"], # required
    #         volume_name: "KxVolumeName", # required
    #         on_demand: false,
    #       },
    #     ],
    #     auto_update: false,
    #     read_write: false,
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataview_name #=> String
    #   resp.database_name #=> String
    #   resp.environment_id #=> String
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_id #=> String
    #   resp.changeset_id #=> String
    #   resp.segment_configurations #=> Array
    #   resp.segment_configurations[0].db_paths #=> Array
    #   resp.segment_configurations[0].db_paths[0] #=> String
    #   resp.segment_configurations[0].volume_name #=> String
    #   resp.segment_configurations[0].on_demand #=> Boolean
    #   resp.description #=> String
    #   resp.auto_update #=> Boolean
    #   resp.read_write #=> Boolean
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "FAILED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxDataview AWS API Documentation
    #
    # @overload create_kx_dataview(params = {})
    # @param [Hash] params ({})
    def create_kx_dataview(params = {}, options = {})
      req = build_request(:create_kx_dataview, params)
      req.send_request(options)
    end

    # Creates a managed kdb environment for the account.
    #
    # @option params [required, String] :name
    #   The name of the kdb environment that you want to create.
    #
    # @option params [String] :description
    #   A description for the kdb environment.
    #
    # @option params [required, String] :kms_key_id
    #   The KMS key ID to encrypt your data in the FinSpace environment.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the kdb environment. You can add up
    #   to 50 tags to your kdb environment.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateKxEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxEnvironmentResponse#name #name} => String
    #   * {Types::CreateKxEnvironmentResponse#status #status} => String
    #   * {Types::CreateKxEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxEnvironmentResponse#description #description} => String
    #   * {Types::CreateKxEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::CreateKxEnvironmentResponse#kms_key_id #kms_key_id} => String
    #   * {Types::CreateKxEnvironmentResponse#creation_timestamp #creation_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_environment({
    #     name: "KxEnvironmentName", # required
    #     description: "Description",
    #     kms_key_id: "KmsKeyARN", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environment_id #=> String
    #   resp.description #=> String
    #   resp.environment_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.creation_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxEnvironment AWS API Documentation
    #
    # @overload create_kx_environment(params = {})
    # @param [Hash] params ({})
    def create_kx_environment(params = {}, options = {})
      req = build_request(:create_kx_environment, params)
      req.send_request(options)
    end

    # Creates a new scaling group.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, where you want to create
    #   the scaling group.
    #
    # @option params [required, String] :scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #
    # @option params [required, String] :host_type
    #   The memory and CPU capabilities of the scaling group host on which
    #   FinSpace Managed kdb clusters will be placed.
    #
    #   You can add one of the following values:
    #
    #   * `kx.sg.large` – The host type with a configuration of 16 GiB memory
    #     and 2 vCPUs.
    #
    #   * `kx.sg.xlarge` – The host type with a configuration of 32 GiB memory
    #     and 4 vCPUs.
    #
    #   * `kx.sg.2xlarge` – The host type with a configuration of 64 GiB
    #     memory and 8 vCPUs.
    #
    #   * `kx.sg.4xlarge` – The host type with a configuration of 108 GiB
    #     memory and 16 vCPUs.
    #
    #   * `kx.sg.8xlarge` – The host type with a configuration of 216 GiB
    #     memory and 32 vCPUs.
    #
    #   * `kx.sg.16xlarge` – The host type with a configuration of 432 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.sg.32xlarge` – The host type with a configuration of 864 GiB
    #     memory and 128 vCPUs.
    #
    #   * `kx.sg1.16xlarge` – The host type with a configuration of 1949 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.sg1.24xlarge` – The host type with a configuration of 2948 GiB
    #     memory and 96 vCPUs.
    #
    # @option params [required, String] :availability_zone_id
    #   The identifier of the availability zones.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the scaling group. You can add up
    #   to 50 tags to a scaling group.
    #
    # @return [Types::CreateKxScalingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxScalingGroupResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxScalingGroupResponse#scaling_group_name #scaling_group_name} => String
    #   * {Types::CreateKxScalingGroupResponse#host_type #host_type} => String
    #   * {Types::CreateKxScalingGroupResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::CreateKxScalingGroupResponse#status #status} => String
    #   * {Types::CreateKxScalingGroupResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::CreateKxScalingGroupResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_scaling_group({
    #     client_token: "ClientToken", # required
    #     environment_id: "KxEnvironmentId", # required
    #     scaling_group_name: "KxScalingGroupName", # required
    #     host_type: "KxHostType", # required
    #     availability_zone_id: "AvailabilityZoneId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.scaling_group_name #=> String
    #   resp.host_type #=> String
    #   resp.availability_zone_id #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.last_modified_timestamp #=> Time
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxScalingGroup AWS API Documentation
    #
    # @overload create_kx_scaling_group(params = {})
    # @param [Hash] params ({})
    def create_kx_scaling_group(params = {}, options = {})
      req = build_request(:create_kx_scaling_group, params)
      req.send_request(options)
    end

    # Creates a user in FinSpace kdb environment with an associated IAM
    # role.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment where you want to create a
    #   user.
    #
    # @option params [required, String] :user_name
    #   A unique identifier for the user.
    #
    # @option params [required, String] :iam_role
    #   The IAM role ARN that will be associated with the user.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the user. You can add up to 50 tags
    #   to a user.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateKxUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxUserResponse#user_name #user_name} => String
    #   * {Types::CreateKxUserResponse#user_arn #user_arn} => String
    #   * {Types::CreateKxUserResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxUserResponse#iam_role #iam_role} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_user({
    #     environment_id: "IdType", # required
    #     user_name: "KxUserNameString", # required
    #     iam_role: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.user_arn #=> String
    #   resp.environment_id #=> String
    #   resp.iam_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxUser AWS API Documentation
    #
    # @overload create_kx_user(params = {})
    # @param [Hash] params ({})
    def create_kx_user(params = {}, options = {})
      req = build_request(:create_kx_user, params)
      req.send_request(options)
    end

    # Creates a new volume with a specific amount of throughput and storage
    # capacity.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, whose clusters can attach
    #   to the volume.
    #
    # @option params [required, String] :volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type. When you select `NAS_1` volume type, you must
    #   also provide `nas1Configuration`.
    #
    # @option params [required, String] :volume_name
    #   A unique identifier for the volume.
    #
    # @option params [String] :description
    #   A description of the volume.
    #
    # @option params [Types::KxNAS1Configuration] :nas1_configuration
    #   Specifies the configuration for the Network attached storage (NAS\_1)
    #   file system volume. This parameter is required when you choose
    #   `volumeType` as *NAS\_1*.
    #
    # @option params [required, String] :az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #
    # @option params [required, Array<String>] :availability_zone_ids
    #   The identifier of the availability zones.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the volume. You can add up to 50
    #   tags to a volume.
    #
    # @return [Types::CreateKxVolumeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxVolumeResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxVolumeResponse#volume_name #volume_name} => String
    #   * {Types::CreateKxVolumeResponse#volume_type #volume_type} => String
    #   * {Types::CreateKxVolumeResponse#volume_arn #volume_arn} => String
    #   * {Types::CreateKxVolumeResponse#nas1_configuration #nas1_configuration} => Types::KxNAS1Configuration
    #   * {Types::CreateKxVolumeResponse#status #status} => String
    #   * {Types::CreateKxVolumeResponse#status_reason #status_reason} => String
    #   * {Types::CreateKxVolumeResponse#az_mode #az_mode} => String
    #   * {Types::CreateKxVolumeResponse#description #description} => String
    #   * {Types::CreateKxVolumeResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #   * {Types::CreateKxVolumeResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_volume({
    #     client_token: "ClientToken",
    #     environment_id: "KxEnvironmentId", # required
    #     volume_type: "NAS_1", # required, accepts NAS_1
    #     volume_name: "KxVolumeName", # required
    #     description: "Description",
    #     nas1_configuration: {
    #       type: "SSD_1000", # accepts SSD_1000, SSD_250, HDD_12
    #       size: 1,
    #     },
    #     az_mode: "SINGLE", # required, accepts SINGLE, MULTI
    #     availability_zone_ids: ["AvailabilityZoneId"], # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.volume_name #=> String
    #   resp.volume_type #=> String, one of "NAS_1"
    #   resp.volume_arn #=> String
    #   resp.nas1_configuration.type #=> String, one of "SSD_1000", "SSD_250", "HDD_12"
    #   resp.nas1_configuration.size #=> Integer
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.description #=> String
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxVolume AWS API Documentation
    #
    # @overload create_kx_volume(params = {})
    # @param [Hash] params ({})
    def create_kx_volume(params = {}, options = {})
      req = build_request(:create_kx_volume, params)
      req.send_request(options)
    end

    # Delete an FinSpace environment.
    #
    # @option params [required, String] :environment_id
    #   The identifier for the FinSpace environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes a kdb cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster that you want to delete.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_cluster({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     client_token: "ClientTokenString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxCluster AWS API Documentation
    #
    # @overload delete_kx_cluster(params = {})
    # @param [Hash] params ({})
    def delete_kx_cluster(params = {}, options = {})
      req = build_request(:delete_kx_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified nodes from a cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster, for which you want to delete the nodes.
    #
    # @option params [required, String] :node_id
    #   A unique identifier for the node that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_cluster_node({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     node_id: "KxClusterNodeIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxClusterNode AWS API Documentation
    #
    # @overload delete_kx_cluster_node(params = {})
    # @param [Hash] params ({})
    def delete_kx_cluster_node(params = {}, options = {})
      req = build_request(:delete_kx_cluster_node, params)
      req.send_request(options)
    end

    # Deletes the specified database and all of its associated data. This
    # action is irreversible. You must copy any data out of the database
    # before deleting it if the data is to be retained.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database that you want to delete.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_database({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxDatabase AWS API Documentation
    #
    # @overload delete_kx_database(params = {})
    # @param [Hash] params ({})
    def delete_kx_database(params = {}, options = {})
      req = build_request(:delete_kx_database, params)
      req.send_request(options)
    end

    # Deletes the specified dataview. Before deleting a dataview, make sure
    # that it is not in use by any cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, from where you want to
    #   delete the dataview.
    #
    # @option params [required, String] :database_name
    #   The name of the database whose dataview you want to delete.
    #
    # @option params [required, String] :dataview_name
    #   The name of the dataview that you want to delete.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_dataview({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     dataview_name: "KxDataviewName", # required
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxDataview AWS API Documentation
    #
    # @overload delete_kx_dataview(params = {})
    # @param [Hash] params ({})
    def delete_kx_dataview(params = {}, options = {})
      req = build_request(:delete_kx_dataview, params)
      req.send_request(options)
    end

    # Deletes the kdb environment. This action is irreversible. Deleting a
    # kdb environment will remove all the associated data and any services
    # running in it.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_environment({
    #     environment_id: "IdType", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxEnvironment AWS API Documentation
    #
    # @overload delete_kx_environment(params = {})
    # @param [Hash] params ({})
    def delete_kx_environment(params = {}, options = {})
      req = build_request(:delete_kx_environment, params)
      req.send_request(options)
    end

    # Deletes the specified scaling group. This action is irreversible. You
    # cannot delete a scaling group until all the clusters running on it
    # have been deleted.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, from where you want to
    #   delete the dataview.
    #
    # @option params [required, String] :scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_scaling_group({
    #     environment_id: "KxEnvironmentId", # required
    #     scaling_group_name: "KxScalingGroupName", # required
    #     client_token: "ClientTokenString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxScalingGroup AWS API Documentation
    #
    # @overload delete_kx_scaling_group(params = {})
    # @param [Hash] params ({})
    def delete_kx_scaling_group(params = {}, options = {})
      req = build_request(:delete_kx_scaling_group, params)
      req.send_request(options)
    end

    # Deletes a user in the specified kdb environment.
    #
    # @option params [required, String] :user_name
    #   A unique identifier for the user that you want to delete.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_user({
    #     user_name: "KxUserNameString", # required
    #     environment_id: "IdType", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxUser AWS API Documentation
    #
    # @overload delete_kx_user(params = {})
    # @param [Hash] params ({})
    def delete_kx_user(params = {}, options = {})
      req = build_request(:delete_kx_user, params)
      req.send_request(options)
    end

    # Deletes a volume. You can only delete a volume if it's not attached
    # to a cluster or a dataview. When a volume is deleted, any data on the
    # volume is lost. This action is irreversible.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, whose clusters can attach
    #   to the volume.
    #
    # @option params [required, String] :volume_name
    #   The name of the volume that you want to delete.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_volume({
    #     environment_id: "KxEnvironmentId", # required
    #     volume_name: "KxVolumeName", # required
    #     client_token: "ClientTokenString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxVolume AWS API Documentation
    #
    # @overload delete_kx_volume(params = {})
    # @param [Hash] params ({})
    def delete_kx_volume(params = {}, options = {})
      req = build_request(:delete_kx_volume, params)
      req.send_request(options)
    end

    # Returns the FinSpace environment object.
    #
    # @option params [required, String] :environment_id
    #   The identifier of the FinSpace environment.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.name #=> String
    #   resp.environment.environment_id #=> String
    #   resp.environment.aws_account_id #=> String
    #   resp.environment.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environment.environment_url #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_arn #=> String
    #   resp.environment.sage_maker_studio_domain_url #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.dedicated_service_account_id #=> String
    #   resp.environment.federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environment.federation_parameters.saml_metadata_document #=> String
    #   resp.environment.federation_parameters.saml_metadata_url #=> String
    #   resp.environment.federation_parameters.application_call_back_url #=> String
    #   resp.environment.federation_parameters.federation_urn #=> String
    #   resp.environment.federation_parameters.federation_provider_name #=> String
    #   resp.environment.federation_parameters.attribute_map #=> Hash
    #   resp.environment.federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Returns information about a kdb changeset.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [required, String] :changeset_id
    #   A unique identifier of the changeset for which you want to retrieve
    #   data.
    #
    # @return [Types::GetKxChangesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxChangesetResponse#changeset_id #changeset_id} => String
    #   * {Types::GetKxChangesetResponse#database_name #database_name} => String
    #   * {Types::GetKxChangesetResponse#environment_id #environment_id} => String
    #   * {Types::GetKxChangesetResponse#change_requests #change_requests} => Array&lt;Types::ChangeRequest&gt;
    #   * {Types::GetKxChangesetResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetKxChangesetResponse#active_from_timestamp #active_from_timestamp} => Time
    #   * {Types::GetKxChangesetResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxChangesetResponse#status #status} => String
    #   * {Types::GetKxChangesetResponse#error_info #error_info} => Types::ErrorInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_changeset({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     changeset_id: "ChangesetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.changeset_id #=> String
    #   resp.database_name #=> String
    #   resp.environment_id #=> String
    #   resp.change_requests #=> Array
    #   resp.change_requests[0].change_type #=> String, one of "PUT", "DELETE"
    #   resp.change_requests[0].s3_path #=> String
    #   resp.change_requests[0].db_path #=> String
    #   resp.created_timestamp #=> Time
    #   resp.active_from_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.status #=> String, one of "PENDING", "PROCESSING", "FAILED", "COMPLETED"
    #   resp.error_info.error_message #=> String
    #   resp.error_info.error_type #=> String, one of "The inputs to this request are invalid.", "Service limits have been exceeded.", "Missing required permission to perform this request.", "One or more inputs to this request were not found.", "The system temporarily lacks sufficient resources to process the request.", "An internal error has occurred.", "Cancelled", "A user recoverable error has occurred"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxChangeset AWS API Documentation
    #
    # @overload get_kx_changeset(params = {})
    # @param [Hash] params ({})
    def get_kx_changeset(params = {}, options = {})
      req = build_request(:get_kx_changeset, params)
      req.send_request(options)
    end

    # Retrieves information about a kdb cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster that you want to retrieve.
    #
    # @return [Types::GetKxClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxClusterResponse#status #status} => String
    #   * {Types::GetKxClusterResponse#status_reason #status_reason} => String
    #   * {Types::GetKxClusterResponse#cluster_name #cluster_name} => String
    #   * {Types::GetKxClusterResponse#cluster_type #cluster_type} => String
    #   * {Types::GetKxClusterResponse#tickerplant_log_configuration #tickerplant_log_configuration} => Types::TickerplantLogConfiguration
    #   * {Types::GetKxClusterResponse#volumes #volumes} => Array&lt;Types::Volume&gt;
    #   * {Types::GetKxClusterResponse#databases #databases} => Array&lt;Types::KxDatabaseConfiguration&gt;
    #   * {Types::GetKxClusterResponse#cache_storage_configurations #cache_storage_configurations} => Array&lt;Types::KxCacheStorageConfiguration&gt;
    #   * {Types::GetKxClusterResponse#auto_scaling_configuration #auto_scaling_configuration} => Types::AutoScalingConfiguration
    #   * {Types::GetKxClusterResponse#cluster_description #cluster_description} => String
    #   * {Types::GetKxClusterResponse#capacity_configuration #capacity_configuration} => Types::CapacityConfiguration
    #   * {Types::GetKxClusterResponse#release_label #release_label} => String
    #   * {Types::GetKxClusterResponse#vpc_configuration #vpc_configuration} => Types::VpcConfiguration
    #   * {Types::GetKxClusterResponse#initialization_script #initialization_script} => String
    #   * {Types::GetKxClusterResponse#command_line_arguments #command_line_arguments} => Array&lt;Types::KxCommandLineArgument&gt;
    #   * {Types::GetKxClusterResponse#code #code} => Types::CodeConfiguration
    #   * {Types::GetKxClusterResponse#execution_role #execution_role} => String
    #   * {Types::GetKxClusterResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxClusterResponse#savedown_storage_configuration #savedown_storage_configuration} => Types::KxSavedownStorageConfiguration
    #   * {Types::GetKxClusterResponse#az_mode #az_mode} => String
    #   * {Types::GetKxClusterResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::GetKxClusterResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetKxClusterResponse#scaling_group_configuration #scaling_group_configuration} => Types::KxScalingGroupConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_cluster({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.cluster_name #=> String
    #   resp.cluster_type #=> String, one of "HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"
    #   resp.tickerplant_log_configuration.tickerplant_log_volumes #=> Array
    #   resp.tickerplant_log_configuration.tickerplant_log_volumes[0] #=> String
    #   resp.volumes #=> Array
    #   resp.volumes[0].volume_name #=> String
    #   resp.volumes[0].volume_type #=> String, one of "NAS_1"
    #   resp.databases #=> Array
    #   resp.databases[0].database_name #=> String
    #   resp.databases[0].cache_configurations #=> Array
    #   resp.databases[0].cache_configurations[0].cache_type #=> String
    #   resp.databases[0].cache_configurations[0].db_paths #=> Array
    #   resp.databases[0].cache_configurations[0].db_paths[0] #=> String
    #   resp.databases[0].cache_configurations[0].dataview_name #=> String
    #   resp.databases[0].changeset_id #=> String
    #   resp.databases[0].dataview_name #=> String
    #   resp.databases[0].dataview_configuration.dataview_name #=> String
    #   resp.databases[0].dataview_configuration.dataview_version_id #=> String
    #   resp.databases[0].dataview_configuration.changeset_id #=> String
    #   resp.databases[0].dataview_configuration.segment_configurations #=> Array
    #   resp.databases[0].dataview_configuration.segment_configurations[0].db_paths #=> Array
    #   resp.databases[0].dataview_configuration.segment_configurations[0].db_paths[0] #=> String
    #   resp.databases[0].dataview_configuration.segment_configurations[0].volume_name #=> String
    #   resp.databases[0].dataview_configuration.segment_configurations[0].on_demand #=> Boolean
    #   resp.cache_storage_configurations #=> Array
    #   resp.cache_storage_configurations[0].type #=> String
    #   resp.cache_storage_configurations[0].size #=> Integer
    #   resp.auto_scaling_configuration.min_node_count #=> Integer
    #   resp.auto_scaling_configuration.max_node_count #=> Integer
    #   resp.auto_scaling_configuration.auto_scaling_metric #=> String, one of "CPU_UTILIZATION_PERCENTAGE"
    #   resp.auto_scaling_configuration.metric_target #=> Float
    #   resp.auto_scaling_configuration.scale_in_cooldown_seconds #=> Float
    #   resp.auto_scaling_configuration.scale_out_cooldown_seconds #=> Float
    #   resp.cluster_description #=> String
    #   resp.capacity_configuration.node_type #=> String
    #   resp.capacity_configuration.node_count #=> Integer
    #   resp.release_label #=> String
    #   resp.vpc_configuration.vpc_id #=> String
    #   resp.vpc_configuration.security_group_ids #=> Array
    #   resp.vpc_configuration.security_group_ids[0] #=> String
    #   resp.vpc_configuration.subnet_ids #=> Array
    #   resp.vpc_configuration.subnet_ids[0] #=> String
    #   resp.vpc_configuration.ip_address_type #=> String, one of "IP_V4"
    #   resp.initialization_script #=> String
    #   resp.command_line_arguments #=> Array
    #   resp.command_line_arguments[0].key #=> String
    #   resp.command_line_arguments[0].value #=> String
    #   resp.code.s3_bucket #=> String
    #   resp.code.s3_key #=> String
    #   resp.code.s3_object_version #=> String
    #   resp.execution_role #=> String
    #   resp.last_modified_timestamp #=> Time
    #   resp.savedown_storage_configuration.type #=> String, one of "SDS01"
    #   resp.savedown_storage_configuration.size #=> Integer
    #   resp.savedown_storage_configuration.volume_name #=> String
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_id #=> String
    #   resp.created_timestamp #=> Time
    #   resp.scaling_group_configuration.scaling_group_name #=> String
    #   resp.scaling_group_configuration.memory_limit #=> Integer
    #   resp.scaling_group_configuration.memory_reservation #=> Integer
    #   resp.scaling_group_configuration.node_count #=> Integer
    #   resp.scaling_group_configuration.cpu #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxCluster AWS API Documentation
    #
    # @overload get_kx_cluster(params = {})
    # @param [Hash] params ({})
    def get_kx_cluster(params = {}, options = {})
      req = build_request(:get_kx_cluster, params)
      req.send_request(options)
    end

    # Retrieves a connection string for a user to connect to a kdb cluster.
    # You must call this API using the same role that you have defined while
    # creating a user.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   A name of the kdb cluster.
    #
    # @return [Types::GetKxConnectionStringResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxConnectionStringResponse#signed_connection_string #signed_connection_string} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_connection_string({
    #     user_arn: "KxUserArn", # required
    #     environment_id: "IdType", # required
    #     cluster_name: "KxClusterName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.signed_connection_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxConnectionString AWS API Documentation
    #
    # @overload get_kx_connection_string(params = {})
    # @param [Hash] params ({})
    def get_kx_connection_string(params = {}, options = {})
      req = build_request(:get_kx_connection_string, params)
      req.send_request(options)
    end

    # Returns database information for the specified environment ID.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @return [Types::GetKxDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxDatabaseResponse#database_name #database_name} => String
    #   * {Types::GetKxDatabaseResponse#database_arn #database_arn} => String
    #   * {Types::GetKxDatabaseResponse#environment_id #environment_id} => String
    #   * {Types::GetKxDatabaseResponse#description #description} => String
    #   * {Types::GetKxDatabaseResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetKxDatabaseResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxDatabaseResponse#last_completed_changeset_id #last_completed_changeset_id} => String
    #   * {Types::GetKxDatabaseResponse#num_bytes #num_bytes} => Integer
    #   * {Types::GetKxDatabaseResponse#num_changesets #num_changesets} => Integer
    #   * {Types::GetKxDatabaseResponse#num_files #num_files} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_database({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database_name #=> String
    #   resp.database_arn #=> String
    #   resp.environment_id #=> String
    #   resp.description #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.last_completed_changeset_id #=> String
    #   resp.num_bytes #=> Integer
    #   resp.num_changesets #=> Integer
    #   resp.num_files #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxDatabase AWS API Documentation
    #
    # @overload get_kx_database(params = {})
    # @param [Hash] params ({})
    def get_kx_database(params = {}, options = {})
      req = build_request(:get_kx_database, params)
      req.send_request(options)
    end

    # Retrieves details of the dataview.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, from where you want to
    #   retrieve the dataview details.
    #
    # @option params [required, String] :database_name
    #   The name of the database where you created the dataview.
    #
    # @option params [required, String] :dataview_name
    #   A unique identifier for the dataview.
    #
    # @return [Types::GetKxDataviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxDataviewResponse#database_name #database_name} => String
    #   * {Types::GetKxDataviewResponse#dataview_name #dataview_name} => String
    #   * {Types::GetKxDataviewResponse#az_mode #az_mode} => String
    #   * {Types::GetKxDataviewResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::GetKxDataviewResponse#changeset_id #changeset_id} => String
    #   * {Types::GetKxDataviewResponse#segment_configurations #segment_configurations} => Array&lt;Types::KxDataviewSegmentConfiguration&gt;
    #   * {Types::GetKxDataviewResponse#active_versions #active_versions} => Array&lt;Types::KxDataviewActiveVersion&gt;
    #   * {Types::GetKxDataviewResponse#description #description} => String
    #   * {Types::GetKxDataviewResponse#auto_update #auto_update} => Boolean
    #   * {Types::GetKxDataviewResponse#read_write #read_write} => Boolean
    #   * {Types::GetKxDataviewResponse#environment_id #environment_id} => String
    #   * {Types::GetKxDataviewResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetKxDataviewResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxDataviewResponse#status #status} => String
    #   * {Types::GetKxDataviewResponse#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_dataview({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     dataview_name: "KxDataviewName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database_name #=> String
    #   resp.dataview_name #=> String
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_id #=> String
    #   resp.changeset_id #=> String
    #   resp.segment_configurations #=> Array
    #   resp.segment_configurations[0].db_paths #=> Array
    #   resp.segment_configurations[0].db_paths[0] #=> String
    #   resp.segment_configurations[0].volume_name #=> String
    #   resp.segment_configurations[0].on_demand #=> Boolean
    #   resp.active_versions #=> Array
    #   resp.active_versions[0].changeset_id #=> String
    #   resp.active_versions[0].segment_configurations #=> Array
    #   resp.active_versions[0].segment_configurations[0].db_paths #=> Array
    #   resp.active_versions[0].segment_configurations[0].db_paths[0] #=> String
    #   resp.active_versions[0].segment_configurations[0].volume_name #=> String
    #   resp.active_versions[0].segment_configurations[0].on_demand #=> Boolean
    #   resp.active_versions[0].attached_clusters #=> Array
    #   resp.active_versions[0].attached_clusters[0] #=> String
    #   resp.active_versions[0].created_timestamp #=> Time
    #   resp.active_versions[0].version_id #=> String
    #   resp.description #=> String
    #   resp.auto_update #=> Boolean
    #   resp.read_write #=> Boolean
    #   resp.environment_id #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "FAILED", "DELETING"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxDataview AWS API Documentation
    #
    # @overload get_kx_dataview(params = {})
    # @param [Hash] params ({})
    def get_kx_dataview(params = {}, options = {})
      req = build_request(:get_kx_dataview, params)
      req.send_request(options)
    end

    # Retrieves all the information for the specified kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @return [Types::GetKxEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxEnvironmentResponse#name #name} => String
    #   * {Types::GetKxEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::GetKxEnvironmentResponse#aws_account_id #aws_account_id} => String
    #   * {Types::GetKxEnvironmentResponse#status #status} => String
    #   * {Types::GetKxEnvironmentResponse#tgw_status #tgw_status} => String
    #   * {Types::GetKxEnvironmentResponse#dns_status #dns_status} => String
    #   * {Types::GetKxEnvironmentResponse#error_message #error_message} => String
    #   * {Types::GetKxEnvironmentResponse#description #description} => String
    #   * {Types::GetKxEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::GetKxEnvironmentResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetKxEnvironmentResponse#dedicated_service_account_id #dedicated_service_account_id} => String
    #   * {Types::GetKxEnvironmentResponse#transit_gateway_configuration #transit_gateway_configuration} => Types::TransitGatewayConfiguration
    #   * {Types::GetKxEnvironmentResponse#custom_dns_configuration #custom_dns_configuration} => Array&lt;Types::CustomDNSServer&gt;
    #   * {Types::GetKxEnvironmentResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::GetKxEnvironmentResponse#update_timestamp #update_timestamp} => Time
    #   * {Types::GetKxEnvironmentResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #   * {Types::GetKxEnvironmentResponse#certificate_authority_arn #certificate_authority_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.environment_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.tgw_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.dns_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.error_message #=> String
    #   resp.description #=> String
    #   resp.environment_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.dedicated_service_account_id #=> String
    #   resp.transit_gateway_configuration.transit_gateway_id #=> String
    #   resp.transit_gateway_configuration.routable_cidr_space #=> String
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration #=> Array
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].rule_number #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].protocol #=> String
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].rule_action #=> String, one of "allow", "deny"
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].port_range.from #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].port_range.to #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].icmp_type_code.type #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].icmp_type_code.code #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].cidr_block #=> String
    #   resp.custom_dns_configuration #=> Array
    #   resp.custom_dns_configuration[0].custom_dns_server_name #=> String
    #   resp.custom_dns_configuration[0].custom_dns_server_ip #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.update_timestamp #=> Time
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #   resp.certificate_authority_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxEnvironment AWS API Documentation
    #
    # @overload get_kx_environment(params = {})
    # @param [Hash] params ({})
    def get_kx_environment(params = {}, options = {})
      req = build_request(:get_kx_environment, params)
      req.send_request(options)
    end

    # Retrieves details of a scaling group.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #
    # @return [Types::GetKxScalingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxScalingGroupResponse#scaling_group_name #scaling_group_name} => String
    #   * {Types::GetKxScalingGroupResponse#scaling_group_arn #scaling_group_arn} => String
    #   * {Types::GetKxScalingGroupResponse#host_type #host_type} => String
    #   * {Types::GetKxScalingGroupResponse#clusters #clusters} => Array&lt;String&gt;
    #   * {Types::GetKxScalingGroupResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::GetKxScalingGroupResponse#status #status} => String
    #   * {Types::GetKxScalingGroupResponse#status_reason #status_reason} => String
    #   * {Types::GetKxScalingGroupResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxScalingGroupResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_scaling_group({
    #     environment_id: "KxEnvironmentId", # required
    #     scaling_group_name: "KxScalingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_group_name #=> String
    #   resp.scaling_group_arn #=> String
    #   resp.host_type #=> String
    #   resp.clusters #=> Array
    #   resp.clusters[0] #=> String
    #   resp.availability_zone_id #=> String
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.last_modified_timestamp #=> Time
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxScalingGroup AWS API Documentation
    #
    # @overload get_kx_scaling_group(params = {})
    # @param [Hash] params ({})
    def get_kx_scaling_group(params = {}, options = {})
      req = build_request(:get_kx_scaling_group, params)
      req.send_request(options)
    end

    # Retrieves information about the specified kdb user.
    #
    # @option params [required, String] :user_name
    #   A unique identifier for the user.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @return [Types::GetKxUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxUserResponse#user_name #user_name} => String
    #   * {Types::GetKxUserResponse#user_arn #user_arn} => String
    #   * {Types::GetKxUserResponse#environment_id #environment_id} => String
    #   * {Types::GetKxUserResponse#iam_role #iam_role} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_user({
    #     user_name: "KxUserNameString", # required
    #     environment_id: "IdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.user_arn #=> String
    #   resp.environment_id #=> String
    #   resp.iam_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxUser AWS API Documentation
    #
    # @overload get_kx_user(params = {})
    # @param [Hash] params ({})
    def get_kx_user(params = {}, options = {})
      req = build_request(:get_kx_user, params)
      req.send_request(options)
    end

    # Retrieves the information about the volume.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, whose clusters can attach
    #   to the volume.
    #
    # @option params [required, String] :volume_name
    #   A unique identifier for the volume.
    #
    # @return [Types::GetKxVolumeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxVolumeResponse#environment_id #environment_id} => String
    #   * {Types::GetKxVolumeResponse#volume_name #volume_name} => String
    #   * {Types::GetKxVolumeResponse#volume_type #volume_type} => String
    #   * {Types::GetKxVolumeResponse#volume_arn #volume_arn} => String
    #   * {Types::GetKxVolumeResponse#nas1_configuration #nas1_configuration} => Types::KxNAS1Configuration
    #   * {Types::GetKxVolumeResponse#status #status} => String
    #   * {Types::GetKxVolumeResponse#status_reason #status_reason} => String
    #   * {Types::GetKxVolumeResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetKxVolumeResponse#description #description} => String
    #   * {Types::GetKxVolumeResponse#az_mode #az_mode} => String
    #   * {Types::GetKxVolumeResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #   * {Types::GetKxVolumeResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxVolumeResponse#attached_clusters #attached_clusters} => Array&lt;Types::KxAttachedCluster&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_volume({
    #     environment_id: "KxEnvironmentId", # required
    #     volume_name: "KxVolumeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.volume_name #=> String
    #   resp.volume_type #=> String, one of "NAS_1"
    #   resp.volume_arn #=> String
    #   resp.nas1_configuration.type #=> String, one of "SSD_1000", "SSD_250", "HDD_12"
    #   resp.nas1_configuration.size #=> Integer
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.created_timestamp #=> Time
    #   resp.description #=> String
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #   resp.last_modified_timestamp #=> Time
    #   resp.attached_clusters #=> Array
    #   resp.attached_clusters[0].cluster_name #=> String
    #   resp.attached_clusters[0].cluster_type #=> String, one of "HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"
    #   resp.attached_clusters[0].cluster_status #=> String, one of "PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxVolume AWS API Documentation
    #
    # @overload get_kx_volume(params = {})
    # @param [Hash] params ({})
    def get_kx_volume(params = {}, options = {})
      req = build_request(:get_kx_volume, params)
      req.send_request(options)
    end

    # A list of all of your FinSpace environments.
    #
    # @option params [String] :next_token
    #   A token generated by FinSpace that specifies where to continue
    #   pagination if a previous request was truncated. To get the next set of
    #   pages, pass in the `nextToken`nextToken value from the response object
    #   of the previous page call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#environments #environments} => Array&lt;Types::Environment&gt;
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].name #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].aws_account_id #=> String
    #   resp.environments[0].status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environments[0].environment_url #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].environment_arn #=> String
    #   resp.environments[0].sage_maker_studio_domain_url #=> String
    #   resp.environments[0].kms_key_id #=> String
    #   resp.environments[0].dedicated_service_account_id #=> String
    #   resp.environments[0].federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environments[0].federation_parameters.saml_metadata_document #=> String
    #   resp.environments[0].federation_parameters.saml_metadata_url #=> String
    #   resp.environments[0].federation_parameters.application_call_back_url #=> String
    #   resp.environments[0].federation_parameters.federation_urn #=> String
    #   resp.environments[0].federation_parameters.federation_provider_name #=> String
    #   resp.environments[0].federation_parameters.attribute_map #=> Hash
    #   resp.environments[0].federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Returns a list of all the changesets for a database.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxChangesetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxChangesetsResponse#kx_changesets #kx_changesets} => Array&lt;Types::KxChangesetListEntry&gt;
    #   * {Types::ListKxChangesetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_changesets({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.kx_changesets #=> Array
    #   resp.kx_changesets[0].changeset_id #=> String
    #   resp.kx_changesets[0].created_timestamp #=> Time
    #   resp.kx_changesets[0].active_from_timestamp #=> Time
    #   resp.kx_changesets[0].last_modified_timestamp #=> Time
    #   resp.kx_changesets[0].status #=> String, one of "PENDING", "PROCESSING", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxChangesets AWS API Documentation
    #
    # @overload list_kx_changesets(params = {})
    # @param [Hash] params ({})
    def list_kx_changesets(params = {}, options = {})
      req = build_request(:list_kx_changesets, params)
      req.send_request(options)
    end

    # Lists all the nodes in a kdb cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   A unique name for the cluster.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxClusterNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxClusterNodesResponse#nodes #nodes} => Array&lt;Types::KxNode&gt;
    #   * {Types::ListKxClusterNodesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_cluster_nodes({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.nodes #=> Array
    #   resp.nodes[0].node_id #=> String
    #   resp.nodes[0].availability_zone_id #=> String
    #   resp.nodes[0].launch_time #=> Time
    #   resp.nodes[0].status #=> String, one of "RUNNING", "PROVISIONING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxClusterNodes AWS API Documentation
    #
    # @overload list_kx_cluster_nodes(params = {})
    # @param [Hash] params ({})
    def list_kx_cluster_nodes(params = {}, options = {})
      req = build_request(:list_kx_cluster_nodes, params)
      req.send_request(options)
    end

    # Returns a list of clusters.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb databases
    #     mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads the
    #     HDB. This cluster type requires local storage for temporary storage
    #     of data during the savedown process. If you specify this field in
    #     your request, you must provide the `savedownStorageConfiguration`
    #     parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type of
    #     cluster does not require a writable local storage.
    #
    #   * GP – A general purpose cluster allows you to quickly iterate on code
    #     during development by granting greater access to system commands and
    #     enabling a fast reload of custom code. This cluster type can
    #     optionally mount databases including cache and savedown storage. For
    #     this cluster type, the node count is fixed at 1. It does not support
    #     autoscaling and supports only `SINGLE` AZ mode.
    #
    #   * Tickerplant – A tickerplant cluster allows you to subscribe to feed
    #     handlers based on IAM permissions. It can publish to RDBs, other
    #     Tickerplants, and real-time subscribers (RTS). Tickerplants can
    #     persist messages to log, which is readable by any RDB environment.
    #     It supports only single-node that is only one kdb process.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @return [Types::ListKxClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxClustersResponse#kx_cluster_summaries #kx_cluster_summaries} => Array&lt;Types::KxCluster&gt;
    #   * {Types::ListKxClustersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_clusters({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_type: "HDB", # accepts HDB, RDB, GATEWAY, GP, TICKERPLANT
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.kx_cluster_summaries #=> Array
    #   resp.kx_cluster_summaries[0].status #=> String, one of "PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.kx_cluster_summaries[0].status_reason #=> String
    #   resp.kx_cluster_summaries[0].cluster_name #=> String
    #   resp.kx_cluster_summaries[0].cluster_type #=> String, one of "HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"
    #   resp.kx_cluster_summaries[0].cluster_description #=> String
    #   resp.kx_cluster_summaries[0].release_label #=> String
    #   resp.kx_cluster_summaries[0].volumes #=> Array
    #   resp.kx_cluster_summaries[0].volumes[0].volume_name #=> String
    #   resp.kx_cluster_summaries[0].volumes[0].volume_type #=> String, one of "NAS_1"
    #   resp.kx_cluster_summaries[0].initialization_script #=> String
    #   resp.kx_cluster_summaries[0].execution_role #=> String
    #   resp.kx_cluster_summaries[0].az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.kx_cluster_summaries[0].availability_zone_id #=> String
    #   resp.kx_cluster_summaries[0].last_modified_timestamp #=> Time
    #   resp.kx_cluster_summaries[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxClusters AWS API Documentation
    #
    # @overload list_kx_clusters(params = {})
    # @param [Hash] params ({})
    def list_kx_clusters(params = {}, options = {})
      req = build_request(:list_kx_clusters, params)
      req.send_request(options)
    end

    # Returns a list of all the databases in the kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxDatabasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxDatabasesResponse#kx_databases #kx_databases} => Array&lt;Types::KxDatabaseListEntry&gt;
    #   * {Types::ListKxDatabasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_databases({
    #     environment_id: "EnvironmentId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.kx_databases #=> Array
    #   resp.kx_databases[0].database_name #=> String
    #   resp.kx_databases[0].created_timestamp #=> Time
    #   resp.kx_databases[0].last_modified_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxDatabases AWS API Documentation
    #
    # @overload list_kx_databases(params = {})
    # @param [Hash] params ({})
    def list_kx_databases(params = {}, options = {})
      req = build_request(:list_kx_databases, params)
      req.send_request(options)
    end

    # Returns a list of all the dataviews in the database.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, for which you want to
    #   retrieve a list of dataviews.
    #
    # @option params [required, String] :database_name
    #   The name of the database where the dataviews were created.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxDataviewsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxDataviewsResponse#kx_dataviews #kx_dataviews} => Array&lt;Types::KxDataviewListEntry&gt;
    #   * {Types::ListKxDataviewsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_dataviews({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.kx_dataviews #=> Array
    #   resp.kx_dataviews[0].environment_id #=> String
    #   resp.kx_dataviews[0].database_name #=> String
    #   resp.kx_dataviews[0].dataview_name #=> String
    #   resp.kx_dataviews[0].az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.kx_dataviews[0].availability_zone_id #=> String
    #   resp.kx_dataviews[0].changeset_id #=> String
    #   resp.kx_dataviews[0].segment_configurations #=> Array
    #   resp.kx_dataviews[0].segment_configurations[0].db_paths #=> Array
    #   resp.kx_dataviews[0].segment_configurations[0].db_paths[0] #=> String
    #   resp.kx_dataviews[0].segment_configurations[0].volume_name #=> String
    #   resp.kx_dataviews[0].segment_configurations[0].on_demand #=> Boolean
    #   resp.kx_dataviews[0].active_versions #=> Array
    #   resp.kx_dataviews[0].active_versions[0].changeset_id #=> String
    #   resp.kx_dataviews[0].active_versions[0].segment_configurations #=> Array
    #   resp.kx_dataviews[0].active_versions[0].segment_configurations[0].db_paths #=> Array
    #   resp.kx_dataviews[0].active_versions[0].segment_configurations[0].db_paths[0] #=> String
    #   resp.kx_dataviews[0].active_versions[0].segment_configurations[0].volume_name #=> String
    #   resp.kx_dataviews[0].active_versions[0].segment_configurations[0].on_demand #=> Boolean
    #   resp.kx_dataviews[0].active_versions[0].attached_clusters #=> Array
    #   resp.kx_dataviews[0].active_versions[0].attached_clusters[0] #=> String
    #   resp.kx_dataviews[0].active_versions[0].created_timestamp #=> Time
    #   resp.kx_dataviews[0].active_versions[0].version_id #=> String
    #   resp.kx_dataviews[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "FAILED", "DELETING"
    #   resp.kx_dataviews[0].description #=> String
    #   resp.kx_dataviews[0].auto_update #=> Boolean
    #   resp.kx_dataviews[0].read_write #=> Boolean
    #   resp.kx_dataviews[0].created_timestamp #=> Time
    #   resp.kx_dataviews[0].last_modified_timestamp #=> Time
    #   resp.kx_dataviews[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxDataviews AWS API Documentation
    #
    # @overload list_kx_dataviews(params = {})
    # @param [Hash] params ({})
    def list_kx_dataviews(params = {}, options = {})
      req = build_request(:list_kx_dataviews, params)
      req.send_request(options)
    end

    # Returns a list of kdb environments created in an account.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxEnvironmentsResponse#environments #environments} => Array&lt;Types::KxEnvironment&gt;
    #   * {Types::ListKxEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_environments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].name #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].aws_account_id #=> String
    #   resp.environments[0].status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environments[0].tgw_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.environments[0].dns_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.environments[0].error_message #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].environment_arn #=> String
    #   resp.environments[0].kms_key_id #=> String
    #   resp.environments[0].dedicated_service_account_id #=> String
    #   resp.environments[0].transit_gateway_configuration.transit_gateway_id #=> String
    #   resp.environments[0].transit_gateway_configuration.routable_cidr_space #=> String
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration #=> Array
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration[0].rule_number #=> Integer
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration[0].protocol #=> String
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration[0].rule_action #=> String, one of "allow", "deny"
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration[0].port_range.from #=> Integer
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration[0].port_range.to #=> Integer
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration[0].icmp_type_code.type #=> Integer
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration[0].icmp_type_code.code #=> Integer
    #   resp.environments[0].transit_gateway_configuration.attachment_network_acl_configuration[0].cidr_block #=> String
    #   resp.environments[0].custom_dns_configuration #=> Array
    #   resp.environments[0].custom_dns_configuration[0].custom_dns_server_name #=> String
    #   resp.environments[0].custom_dns_configuration[0].custom_dns_server_ip #=> String
    #   resp.environments[0].creation_timestamp #=> Time
    #   resp.environments[0].update_timestamp #=> Time
    #   resp.environments[0].availability_zone_ids #=> Array
    #   resp.environments[0].availability_zone_ids[0] #=> String
    #   resp.environments[0].certificate_authority_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxEnvironments AWS API Documentation
    #
    # @overload list_kx_environments(params = {})
    # @param [Hash] params ({})
    def list_kx_environments(params = {}, options = {})
      req = build_request(:list_kx_environments, params)
      req.send_request(options)
    end

    # Returns a list of scaling groups in a kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, for which you want to
    #   retrieve a list of scaling groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @return [Types::ListKxScalingGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxScalingGroupsResponse#scaling_groups #scaling_groups} => Array&lt;Types::KxScalingGroup&gt;
    #   * {Types::ListKxScalingGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_scaling_groups({
    #     environment_id: "KxEnvironmentId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_groups #=> Array
    #   resp.scaling_groups[0].scaling_group_name #=> String
    #   resp.scaling_groups[0].host_type #=> String
    #   resp.scaling_groups[0].clusters #=> Array
    #   resp.scaling_groups[0].clusters[0] #=> String
    #   resp.scaling_groups[0].availability_zone_id #=> String
    #   resp.scaling_groups[0].status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.scaling_groups[0].status_reason #=> String
    #   resp.scaling_groups[0].last_modified_timestamp #=> Time
    #   resp.scaling_groups[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxScalingGroups AWS API Documentation
    #
    # @overload list_kx_scaling_groups(params = {})
    # @param [Hash] params ({})
    def list_kx_scaling_groups(params = {}, options = {})
      req = build_request(:list_kx_scaling_groups, params)
      req.send_request(options)
    end

    # Lists all the users in a kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxUsersResponse#users #users} => Array&lt;Types::KxUser&gt;
    #   * {Types::ListKxUsersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_users({
    #     environment_id: "IdType", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_arn #=> String
    #   resp.users[0].user_name #=> String
    #   resp.users[0].iam_role #=> String
    #   resp.users[0].create_timestamp #=> Time
    #   resp.users[0].update_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxUsers AWS API Documentation
    #
    # @overload list_kx_users(params = {})
    # @param [Hash] params ({})
    def list_kx_users(params = {}, options = {})
      req = build_request(:list_kx_users, params)
      req.send_request(options)
    end

    # Lists all the volumes in a kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, whose clusters can attach
    #   to the volume.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [String] :volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type.
    #
    # @return [Types::ListKxVolumesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxVolumesResponse#kx_volume_summaries #kx_volume_summaries} => Array&lt;Types::KxVolume&gt;
    #   * {Types::ListKxVolumesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_volumes({
    #     environment_id: "KxEnvironmentId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     volume_type: "NAS_1", # accepts NAS_1
    #   })
    #
    # @example Response structure
    #
    #   resp.kx_volume_summaries #=> Array
    #   resp.kx_volume_summaries[0].volume_name #=> String
    #   resp.kx_volume_summaries[0].volume_type #=> String, one of "NAS_1"
    #   resp.kx_volume_summaries[0].status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.kx_volume_summaries[0].description #=> String
    #   resp.kx_volume_summaries[0].status_reason #=> String
    #   resp.kx_volume_summaries[0].az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.kx_volume_summaries[0].availability_zone_ids #=> Array
    #   resp.kx_volume_summaries[0].availability_zone_ids[0] #=> String
    #   resp.kx_volume_summaries[0].created_timestamp #=> Time
    #   resp.kx_volume_summaries[0].last_modified_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxVolumes AWS API Documentation
    #
    # @overload list_kx_volumes(params = {})
    # @param [Hash] params ({})
    def list_kx_volumes(params = {}, options = {})
      req = build_request(:list_kx_volumes, params)
      req.send_request(options)
    end

    # A list of all tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "FinSpaceTaggableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds metadata tags to a FinSpace resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags to be assigned to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "FinSpaceTaggableArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags from a FinSpace resource.
    #
    # @option params [required, String] :resource_arn
    #   A FinSpace resource from which you want to remove a tag or tags. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys (names) of one or more tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "FinSpaceTaggableArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update your FinSpace environment.
    #
    # @option params [required, String] :environment_id
    #   The identifier of the FinSpace environment.
    #
    # @option params [String] :name
    #   The name of the environment.
    #
    # @option params [String] :description
    #   The description of the environment.
    #
    # @option params [String] :federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO) via
    #     your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #
    # @option params [Types::FederationParameters] :federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #
    # @return [Types::UpdateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     environment_id: "IdType", # required
    #     name: "EnvironmentName",
    #     description: "Description",
    #     federation_mode: "FEDERATED", # accepts FEDERATED, LOCAL
    #     federation_parameters: {
    #       saml_metadata_document: "SamlMetadataDocument",
    #       saml_metadata_url: "url",
    #       application_call_back_url: "url",
    #       federation_urn: "urn",
    #       federation_provider_name: "FederationProviderName",
    #       attribute_map: {
    #         "FederationAttributeKey" => "FederationAttributeValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.name #=> String
    #   resp.environment.environment_id #=> String
    #   resp.environment.aws_account_id #=> String
    #   resp.environment.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environment.environment_url #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_arn #=> String
    #   resp.environment.sage_maker_studio_domain_url #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.dedicated_service_account_id #=> String
    #   resp.environment.federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environment.federation_parameters.saml_metadata_document #=> String
    #   resp.environment.federation_parameters.saml_metadata_url #=> String
    #   resp.environment.federation_parameters.application_call_back_url #=> String
    #   resp.environment.federation_parameters.federation_urn #=> String
    #   resp.environment.federation_parameters.federation_provider_name #=> String
    #   resp.environment.federation_parameters.attribute_map #=> Hash
    #   resp.environment.federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Allows you to update code configuration on a running cluster. By using
    # this API you can update the code, the initialization script path, and
    # the command line arguments for a specific cluster. The configuration
    # that you want to update will override any existing configurations on
    # the cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier of the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::CodeConfiguration] :code
    #   The structure of the customer code available within the running
    #   cluster.
    #
    # @option params [String] :initialization_script
    #   Specifies a Q program that will be run at launch of a cluster. It is a
    #   relative path within *.zip* file that contains the custom code, which
    #   will be loaded on the cluster. It must include the file name itself.
    #   For example, `somedir/init.q`.
    #
    #   You cannot update this parameter for a `NO_RESTART` deployment.
    #
    # @option params [Array<Types::KxCommandLineArgument>] :command_line_arguments
    #   Specifies the key-value pairs to make them available inside the
    #   cluster.
    #
    #   You cannot update this parameter for a `NO_RESTART` deployment.
    #
    # @option params [Types::KxClusterCodeDeploymentConfiguration] :deployment_configuration
    #   The configuration that allows you to choose how you want to update the
    #   code on a cluster.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_cluster_code_configuration({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     client_token: "ClientTokenString",
    #     code: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #     },
    #     initialization_script: "InitializationScriptFilePath",
    #     command_line_arguments: [
    #       {
    #         key: "KxCommandLineArgumentKey",
    #         value: "KxCommandLineArgumentValue",
    #       },
    #     ],
    #     deployment_configuration: {
    #       deployment_strategy: "NO_RESTART", # required, accepts NO_RESTART, ROLLING, FORCE
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxClusterCodeConfiguration AWS API Documentation
    #
    # @overload update_kx_cluster_code_configuration(params = {})
    # @param [Hash] params ({})
    def update_kx_cluster_code_configuration(params = {}, options = {})
      req = build_request(:update_kx_cluster_code_configuration, params)
      req.send_request(options)
    end

    # Updates the databases mounted on a kdb cluster, which includes the
    # `changesetId` and all the dbPaths to be cached. This API does not
    # allow you to change a database name or add a database if you created a
    # cluster without one.
    #
    # Using this API you can point a cluster to a different changeset and
    # modify a list of partitions being cached.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of a kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   A unique name for the cluster that you want to modify.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<Types::KxDatabaseConfiguration>] :databases
    #   The structure of databases mounted on the cluster.
    #
    # @option params [Types::KxDeploymentConfiguration] :deployment_configuration
    #   The configuration that allows you to choose how you want to update the
    #   databases on a cluster.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_cluster_databases({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     client_token: "ClientTokenString",
    #     databases: [ # required
    #       {
    #         database_name: "DatabaseName", # required
    #         cache_configurations: [
    #           {
    #             cache_type: "KxCacheStorageType", # required
    #             db_paths: ["DbPath"], # required
    #             dataview_name: "KxDataviewName",
    #           },
    #         ],
    #         changeset_id: "ChangesetId",
    #         dataview_name: "KxDataviewName",
    #         dataview_configuration: {
    #           dataview_name: "KxDataviewName",
    #           dataview_version_id: "VersionId",
    #           changeset_id: "ChangesetId",
    #           segment_configurations: [
    #             {
    #               db_paths: ["DbPath"], # required
    #               volume_name: "KxVolumeName", # required
    #               on_demand: false,
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     deployment_configuration: {
    #       deployment_strategy: "NO_RESTART", # required, accepts NO_RESTART, ROLLING
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxClusterDatabases AWS API Documentation
    #
    # @overload update_kx_cluster_databases(params = {})
    # @param [Hash] params ({})
    def update_kx_cluster_databases(params = {}, options = {})
      req = build_request(:update_kx_cluster_databases, params)
      req.send_request(options)
    end

    # Updates information for the given kdb database.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [String] :description
    #   A description of the database.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateKxDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxDatabaseResponse#database_name #database_name} => String
    #   * {Types::UpdateKxDatabaseResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxDatabaseResponse#description #description} => String
    #   * {Types::UpdateKxDatabaseResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_database({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     description: "Description",
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database_name #=> String
    #   resp.environment_id #=> String
    #   resp.description #=> String
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxDatabase AWS API Documentation
    #
    # @overload update_kx_database(params = {})
    # @param [Hash] params ({})
    def update_kx_database(params = {}, options = {})
      req = build_request(:update_kx_database, params)
      req.send_request(options)
    end

    # Updates the specified dataview. The dataviews get automatically
    # updated when any new changesets are ingested. Each update of the
    # dataview creates a new version, including changeset details and cache
    # configurations
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment, where you want to update
    #   the dataview.
    #
    # @option params [required, String] :database_name
    #   The name of the database.
    #
    # @option params [required, String] :dataview_name
    #   The name of the dataview that you want to update.
    #
    # @option params [String] :description
    #   The description for a dataview.
    #
    # @option params [String] :changeset_id
    #   A unique identifier for the changeset.
    #
    # @option params [Array<Types::KxDataviewSegmentConfiguration>] :segment_configurations
    #   The configuration that contains the database path of the data that you
    #   want to place on each selected volume. Each segment must have a unique
    #   database path for each volume. If you do not explicitly specify any
    #   database path for a volume, they are accessible from the cluster
    #   through the default S3/object store segment.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateKxDataviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxDataviewResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxDataviewResponse#database_name #database_name} => String
    #   * {Types::UpdateKxDataviewResponse#dataview_name #dataview_name} => String
    #   * {Types::UpdateKxDataviewResponse#az_mode #az_mode} => String
    #   * {Types::UpdateKxDataviewResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::UpdateKxDataviewResponse#changeset_id #changeset_id} => String
    #   * {Types::UpdateKxDataviewResponse#segment_configurations #segment_configurations} => Array&lt;Types::KxDataviewSegmentConfiguration&gt;
    #   * {Types::UpdateKxDataviewResponse#active_versions #active_versions} => Array&lt;Types::KxDataviewActiveVersion&gt;
    #   * {Types::UpdateKxDataviewResponse#status #status} => String
    #   * {Types::UpdateKxDataviewResponse#auto_update #auto_update} => Boolean
    #   * {Types::UpdateKxDataviewResponse#read_write #read_write} => Boolean
    #   * {Types::UpdateKxDataviewResponse#description #description} => String
    #   * {Types::UpdateKxDataviewResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::UpdateKxDataviewResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_dataview({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     dataview_name: "KxDataviewName", # required
    #     description: "Description",
    #     changeset_id: "ChangesetId",
    #     segment_configurations: [
    #       {
    #         db_paths: ["DbPath"], # required
    #         volume_name: "KxVolumeName", # required
    #         on_demand: false,
    #       },
    #     ],
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.database_name #=> String
    #   resp.dataview_name #=> String
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_id #=> String
    #   resp.changeset_id #=> String
    #   resp.segment_configurations #=> Array
    #   resp.segment_configurations[0].db_paths #=> Array
    #   resp.segment_configurations[0].db_paths[0] #=> String
    #   resp.segment_configurations[0].volume_name #=> String
    #   resp.segment_configurations[0].on_demand #=> Boolean
    #   resp.active_versions #=> Array
    #   resp.active_versions[0].changeset_id #=> String
    #   resp.active_versions[0].segment_configurations #=> Array
    #   resp.active_versions[0].segment_configurations[0].db_paths #=> Array
    #   resp.active_versions[0].segment_configurations[0].db_paths[0] #=> String
    #   resp.active_versions[0].segment_configurations[0].volume_name #=> String
    #   resp.active_versions[0].segment_configurations[0].on_demand #=> Boolean
    #   resp.active_versions[0].attached_clusters #=> Array
    #   resp.active_versions[0].attached_clusters[0] #=> String
    #   resp.active_versions[0].created_timestamp #=> Time
    #   resp.active_versions[0].version_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "FAILED", "DELETING"
    #   resp.auto_update #=> Boolean
    #   resp.read_write #=> Boolean
    #   resp.description #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxDataview AWS API Documentation
    #
    # @overload update_kx_dataview(params = {})
    # @param [Hash] params ({})
    def update_kx_dataview(params = {}, options = {})
      req = build_request(:update_kx_dataview, params)
      req.send_request(options)
    end

    # Updates information for the given kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :name
    #   The name of the kdb environment.
    #
    # @option params [String] :description
    #   A description of the kdb environment.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateKxEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxEnvironmentResponse#name #name} => String
    #   * {Types::UpdateKxEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxEnvironmentResponse#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateKxEnvironmentResponse#status #status} => String
    #   * {Types::UpdateKxEnvironmentResponse#tgw_status #tgw_status} => String
    #   * {Types::UpdateKxEnvironmentResponse#dns_status #dns_status} => String
    #   * {Types::UpdateKxEnvironmentResponse#error_message #error_message} => String
    #   * {Types::UpdateKxEnvironmentResponse#description #description} => String
    #   * {Types::UpdateKxEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::UpdateKxEnvironmentResponse#kms_key_id #kms_key_id} => String
    #   * {Types::UpdateKxEnvironmentResponse#dedicated_service_account_id #dedicated_service_account_id} => String
    #   * {Types::UpdateKxEnvironmentResponse#transit_gateway_configuration #transit_gateway_configuration} => Types::TransitGatewayConfiguration
    #   * {Types::UpdateKxEnvironmentResponse#custom_dns_configuration #custom_dns_configuration} => Array&lt;Types::CustomDNSServer&gt;
    #   * {Types::UpdateKxEnvironmentResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::UpdateKxEnvironmentResponse#update_timestamp #update_timestamp} => Time
    #   * {Types::UpdateKxEnvironmentResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_environment({
    #     environment_id: "IdType", # required
    #     name: "KxEnvironmentName",
    #     description: "Description",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.environment_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.tgw_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.dns_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.error_message #=> String
    #   resp.description #=> String
    #   resp.environment_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.dedicated_service_account_id #=> String
    #   resp.transit_gateway_configuration.transit_gateway_id #=> String
    #   resp.transit_gateway_configuration.routable_cidr_space #=> String
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration #=> Array
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].rule_number #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].protocol #=> String
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].rule_action #=> String, one of "allow", "deny"
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].port_range.from #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].port_range.to #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].icmp_type_code.type #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].icmp_type_code.code #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].cidr_block #=> String
    #   resp.custom_dns_configuration #=> Array
    #   resp.custom_dns_configuration[0].custom_dns_server_name #=> String
    #   resp.custom_dns_configuration[0].custom_dns_server_ip #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.update_timestamp #=> Time
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxEnvironment AWS API Documentation
    #
    # @overload update_kx_environment(params = {})
    # @param [Hash] params ({})
    def update_kx_environment(params = {}, options = {})
      req = build_request(:update_kx_environment, params)
      req.send_request(options)
    end

    # Updates environment network to connect to your internal network by
    # using a transit gateway. This API supports request to create a transit
    # gateway attachment from FinSpace VPC to your transit gateway ID and
    # create a custom Route-53 outbound resolvers.
    #
    # Once you send a request to update a network, you cannot change it
    # again. Network update might require termination of any clusters that
    # are running in the existing network.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [Types::TransitGatewayConfiguration] :transit_gateway_configuration
    #   Specifies the transit gateway and network configuration to connect the
    #   kdb environment to an internal network.
    #
    # @option params [Array<Types::CustomDNSServer>] :custom_dns_configuration
    #   A list of DNS server name and server IP. This is used to set up
    #   Route-53 outbound resolvers.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateKxEnvironmentNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxEnvironmentNetworkResponse#name #name} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#status #status} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#tgw_status #tgw_status} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#dns_status #dns_status} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#error_message #error_message} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#description #description} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#environment_arn #environment_arn} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#kms_key_id #kms_key_id} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#dedicated_service_account_id #dedicated_service_account_id} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#transit_gateway_configuration #transit_gateway_configuration} => Types::TransitGatewayConfiguration
    #   * {Types::UpdateKxEnvironmentNetworkResponse#custom_dns_configuration #custom_dns_configuration} => Array&lt;Types::CustomDNSServer&gt;
    #   * {Types::UpdateKxEnvironmentNetworkResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::UpdateKxEnvironmentNetworkResponse#update_timestamp #update_timestamp} => Time
    #   * {Types::UpdateKxEnvironmentNetworkResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_environment_network({
    #     environment_id: "IdType", # required
    #     transit_gateway_configuration: {
    #       transit_gateway_id: "TransitGatewayID", # required
    #       routable_cidr_space: "ValidCIDRSpace", # required
    #       attachment_network_acl_configuration: [
    #         {
    #           rule_number: 1, # required
    #           protocol: "Protocol", # required
    #           rule_action: "allow", # required, accepts allow, deny
    #           port_range: {
    #             from: 1, # required
    #             to: 1, # required
    #           },
    #           icmp_type_code: {
    #             type: 1, # required
    #             code: 1, # required
    #           },
    #           cidr_block: "ValidCIDRBlock", # required
    #         },
    #       ],
    #     },
    #     custom_dns_configuration: [
    #       {
    #         custom_dns_server_name: "ValidHostname", # required
    #         custom_dns_server_ip: "ValidIPAddress", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.environment_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.tgw_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.dns_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.error_message #=> String
    #   resp.description #=> String
    #   resp.environment_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.dedicated_service_account_id #=> String
    #   resp.transit_gateway_configuration.transit_gateway_id #=> String
    #   resp.transit_gateway_configuration.routable_cidr_space #=> String
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration #=> Array
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].rule_number #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].protocol #=> String
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].rule_action #=> String, one of "allow", "deny"
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].port_range.from #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].port_range.to #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].icmp_type_code.type #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].icmp_type_code.code #=> Integer
    #   resp.transit_gateway_configuration.attachment_network_acl_configuration[0].cidr_block #=> String
    #   resp.custom_dns_configuration #=> Array
    #   resp.custom_dns_configuration[0].custom_dns_server_name #=> String
    #   resp.custom_dns_configuration[0].custom_dns_server_ip #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.update_timestamp #=> Time
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxEnvironmentNetwork AWS API Documentation
    #
    # @overload update_kx_environment_network(params = {})
    # @param [Hash] params ({})
    def update_kx_environment_network(params = {}, options = {})
      req = build_request(:update_kx_environment_network, params)
      req.send_request(options)
    end

    # Updates the user details. You can only update the IAM role associated
    # with a user.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :user_name
    #   A unique identifier for the user.
    #
    # @option params [required, String] :iam_role
    #   The IAM role ARN that is associated with the user.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateKxUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxUserResponse#user_name #user_name} => String
    #   * {Types::UpdateKxUserResponse#user_arn #user_arn} => String
    #   * {Types::UpdateKxUserResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxUserResponse#iam_role #iam_role} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_user({
    #     environment_id: "IdType", # required
    #     user_name: "KxUserNameString", # required
    #     iam_role: "RoleArn", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.user_arn #=> String
    #   resp.environment_id #=> String
    #   resp.iam_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxUser AWS API Documentation
    #
    # @overload update_kx_user(params = {})
    # @param [Hash] params ({})
    def update_kx_user(params = {}, options = {})
      req = build_request(:update_kx_user, params)
      req.send_request(options)
    end

    # Updates the throughput or capacity of a volume. During the update
    # process, the filesystem might be unavailable for a few minutes. You
    # can retry any operations after the update is complete.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment where you created the
    #   storage volume.
    #
    # @option params [required, String] :volume_name
    #   A unique identifier for the volume.
    #
    # @option params [String] :description
    #   A description of the volume.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::KxNAS1Configuration] :nas1_configuration
    #   Specifies the configuration for the Network attached storage (NAS\_1)
    #   file system volume.
    #
    # @return [Types::UpdateKxVolumeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxVolumeResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxVolumeResponse#volume_name #volume_name} => String
    #   * {Types::UpdateKxVolumeResponse#volume_type #volume_type} => String
    #   * {Types::UpdateKxVolumeResponse#volume_arn #volume_arn} => String
    #   * {Types::UpdateKxVolumeResponse#nas1_configuration #nas1_configuration} => Types::KxNAS1Configuration
    #   * {Types::UpdateKxVolumeResponse#status #status} => String
    #   * {Types::UpdateKxVolumeResponse#description #description} => String
    #   * {Types::UpdateKxVolumeResponse#status_reason #status_reason} => String
    #   * {Types::UpdateKxVolumeResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::UpdateKxVolumeResponse#az_mode #az_mode} => String
    #   * {Types::UpdateKxVolumeResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #   * {Types::UpdateKxVolumeResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::UpdateKxVolumeResponse#attached_clusters #attached_clusters} => Array&lt;Types::KxAttachedCluster&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_volume({
    #     environment_id: "KxEnvironmentId", # required
    #     volume_name: "KxVolumeName", # required
    #     description: "Description",
    #     client_token: "ClientTokenString",
    #     nas1_configuration: {
    #       type: "SSD_1000", # accepts SSD_1000, SSD_250, HDD_12
    #       size: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.volume_name #=> String
    #   resp.volume_type #=> String, one of "NAS_1"
    #   resp.volume_arn #=> String
    #   resp.nas1_configuration.type #=> String, one of "SSD_1000", "SSD_250", "HDD_12"
    #   resp.nas1_configuration.size #=> Integer
    #   resp.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.description #=> String
    #   resp.status_reason #=> String
    #   resp.created_timestamp #=> Time
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #   resp.last_modified_timestamp #=> Time
    #   resp.attached_clusters #=> Array
    #   resp.attached_clusters[0].cluster_name #=> String
    #   resp.attached_clusters[0].cluster_type #=> String, one of "HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"
    #   resp.attached_clusters[0].cluster_status #=> String, one of "PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxVolume AWS API Documentation
    #
    # @overload update_kx_volume(params = {})
    # @param [Hash] params ({})
    def update_kx_volume(params = {}, options = {})
      req = build_request(:update_kx_volume, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Finspace')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-finspace'
      context[:gem_version] = '1.59.0'
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
