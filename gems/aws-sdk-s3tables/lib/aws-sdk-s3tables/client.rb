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

module Aws::S3Tables
  # An API client for S3Tables.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::S3Tables::Client.new(
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

    @identifier = :s3tables

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
    add_plugin(Aws::S3Tables::Plugins::Endpoints)

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
    #   @option options [Aws::S3Tables::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::S3Tables::EndpointParameters`.
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

    # Creates a namespace. A namespace is a logical grouping of tables
    # within your table bucket, which you can use to organize tables. For
    # more information, see [Create a namespace][1] in the *Amazon Simple
    # Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:CreateNamespace` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-create.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket to create the
    #   namespace in.
    #
    # @option params [required, Array<String>] :namespace
    #   A name for the namespace.
    #
    # @return [Types::CreateNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNamespaceResponse#table_bucket_arn #table_bucket_arn} => String
    #   * {Types::CreateNamespaceResponse#namespace #namespace} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_namespace({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: ["NamespaceName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_bucket_arn #=> String
    #   resp.namespace #=> Array
    #   resp.namespace[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateNamespace AWS API Documentation
    #
    # @overload create_namespace(params = {})
    # @param [Hash] params ({})
    def create_namespace(params = {}, options = {})
      req = build_request(:create_namespace, params)
      req.send_request(options)
    end

    # Creates a new table associated with the given namespace in a table
    # bucket. For more information, see [Creating an Amazon S3 table][1] in
    # the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    # : * You must have the `s3tables:CreateTable` permission to use this
    #     operation.
    #
    #   * If you use this operation with the optional `metadata` request
    #     parameter you must have the `s3tables:PutTableData` permission.
    #
    #   * If you use this operation with the optional
    #     `encryptionConfiguration` request parameter you must have the
    #     `s3tables:PutTableEncryption` permission.
    #
    #   <note markdown="1"> Additionally, If you choose SSE-KMS encryption you must grant the S3
    #   Tables maintenance principal access to your KMS key. For more
    #   information, see [Permissions requirements for S3 Tables SSE-KMS
    #   encryption][2].
    #
    #    </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-create.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket to create the table
    #   in.
    #
    # @option params [required, String] :namespace
    #   The namespace to associated with the table.
    #
    # @option params [required, String] :name
    #   The name for the table.
    #
    # @option params [required, String] :format
    #   The format for the table.
    #
    # @option params [Types::TableMetadata] :metadata
    #   The metadata for the table.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration to use for the table. This configuration
    #   specifies the encryption algorithm and, if using SSE-KMS, the KMS key
    #   to use for encrypting the table.
    #
    #   <note markdown="1"> If you choose SSE-KMS encryption you must grant the S3 Tables
    #   maintenance principal access to your KMS key. For more information,
    #   see [Permissions requirements for S3 Tables SSE-KMS encryption][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html
    #
    # @return [Types::CreateTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTableResponse#table_arn #table_arn} => String
    #   * {Types::CreateTableResponse#version_token #version_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     format: "ICEBERG", # required, accepts ICEBERG
    #     metadata: {
    #       iceberg: {
    #         schema: { # required
    #           fields: [ # required
    #             {
    #               name: "String", # required
    #               type: "String", # required
    #               required: false,
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     encryption_configuration: {
    #       sse_algorithm: "AES256", # required, accepts AES256, aws:kms
    #       kms_key_arn: "EncryptionConfigurationKmsKeyArnString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table_arn #=> String
    #   resp.version_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateTable AWS API Documentation
    #
    # @overload create_table(params = {})
    # @param [Hash] params ({})
    def create_table(params = {}, options = {})
      req = build_request(:create_table, params)
      req.send_request(options)
    end

    # Creates a table bucket. For more information, see [Creating a table
    # bucket][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    # : * You must have the `s3tables:CreateTableBucket` permission to use
    #     this operation.
    #
    #   * If you use this operation with the optional
    #     `encryptionConfiguration` parameter you must have the
    #     `s3tables:PutTableBucketEncryption` permission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-create.html
    #
    # @option params [required, String] :name
    #   The name for the table bucket.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration to use for the table bucket. This
    #   configuration specifies the default encryption settings that will be
    #   applied to all tables created in this bucket unless overridden at the
    #   table level. The configuration includes the encryption algorithm and,
    #   if using SSE-KMS, the KMS key to use.
    #
    # @return [Types::CreateTableBucketResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTableBucketResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table_bucket({
    #     name: "TableBucketName", # required
    #     encryption_configuration: {
    #       sse_algorithm: "AES256", # required, accepts AES256, aws:kms
    #       kms_key_arn: "EncryptionConfigurationKmsKeyArnString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateTableBucket AWS API Documentation
    #
    # @overload create_table_bucket(params = {})
    # @param [Hash] params ({})
    def create_table_bucket(params = {}, options = {})
      req = build_request(:create_table_bucket, params)
      req.send_request(options)
    end

    # Deletes a namespace. For more information, see [Delete a namespace][1]
    # in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:DeleteNamespace` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-delete.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with the
    #   namespace.
    #
    # @option params [required, String] :namespace
    #   The name of the namespace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteNamespace AWS API Documentation
    #
    # @overload delete_namespace(params = {})
    # @param [Hash] params ({})
    def delete_namespace(params = {}, options = {})
      req = build_request(:delete_namespace, params)
      req.send_request(options)
    end

    # Deletes a table. For more information, see [Deleting an Amazon S3
    # table][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:DeleteTable` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-delete.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #
    # @option params [required, String] :namespace
    #   The namespace associated with the table.
    #
    # @option params [required, String] :name
    #   The name of the table.
    #
    # @option params [String] :version_token
    #   The version token of the table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     version_token: "VersionToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTable AWS API Documentation
    #
    # @overload delete_table(params = {})
    # @param [Hash] params ({})
    def delete_table(params = {}, options = {})
      req = build_request(:delete_table, params)
      req.send_request(options)
    end

    # Deletes a table bucket. For more information, see [Deleting a table
    # bucket][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:DeleteTableBucket` permission to use
    #   this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-delete.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table_bucket({
    #     table_bucket_arn: "TableBucketARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableBucket AWS API Documentation
    #
    # @overload delete_table_bucket(params = {})
    # @param [Hash] params ({})
    def delete_table_bucket(params = {}, options = {})
      req = build_request(:delete_table_bucket, params)
      req.send_request(options)
    end

    # Deletes the encryption configuration for a table bucket.
    #
    # Permissions
    #
    # : You must have the `s3tables:DeleteTableBucketEncryption` permission
    #   to use this operation.
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table_bucket_encryption({
    #     table_bucket_arn: "TableBucketARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableBucketEncryption AWS API Documentation
    #
    # @overload delete_table_bucket_encryption(params = {})
    # @param [Hash] params ({})
    def delete_table_bucket_encryption(params = {}, options = {})
      req = build_request(:delete_table_bucket_encryption, params)
      req.send_request(options)
    end

    # Deletes a table bucket policy. For more information, see [Deleting a
    # table bucket policy][1] in the *Amazon Simple Storage Service User
    # Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:DeleteTableBucketPolicy` permission to
    #   use this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-delete
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table_bucket_policy({
    #     table_bucket_arn: "TableBucketARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableBucketPolicy AWS API Documentation
    #
    # @overload delete_table_bucket_policy(params = {})
    # @param [Hash] params ({})
    def delete_table_bucket_policy(params = {}, options = {})
      req = build_request(:delete_table_bucket_policy, params)
      req.send_request(options)
    end

    # Deletes a table policy. For more information, see [Deleting a table
    # policy][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:DeleteTablePolicy` permission to use
    #   this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-delete
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #
    # @option params [required, String] :namespace
    #   The namespace associated with the table.
    #
    # @option params [required, String] :name
    #   The table name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table_policy({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTablePolicy AWS API Documentation
    #
    # @overload delete_table_policy(params = {})
    # @param [Hash] params ({})
    def delete_table_policy(params = {}, options = {})
      req = build_request(:delete_table_policy, params)
      req.send_request(options)
    end

    # Gets details about a namespace. For more information, see [Table
    # namespaces][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetNamespace` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [required, String] :namespace
    #   The name of the namespace.
    #
    # @return [Types::GetNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNamespaceResponse#namespace #namespace} => Array&lt;String&gt;
    #   * {Types::GetNamespaceResponse#created_at #created_at} => Time
    #   * {Types::GetNamespaceResponse#created_by #created_by} => String
    #   * {Types::GetNamespaceResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetNamespaceResponse#namespace_id #namespace_id} => String
    #   * {Types::GetNamespaceResponse#table_bucket_id #table_bucket_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_namespace({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace #=> Array
    #   resp.namespace[0] #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.owner_account_id #=> String
    #   resp.namespace_id #=> String
    #   resp.table_bucket_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetNamespace AWS API Documentation
    #
    # @overload get_namespace(params = {})
    # @param [Hash] params ({})
    def get_namespace(params = {}, options = {})
      req = build_request(:get_namespace, params)
      req.send_request(options)
    end

    # Gets details about a table. For more information, see [S3 Tables][1]
    # in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTable` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
    #
    # @option params [String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with the
    #   table.
    #
    # @option params [String] :namespace
    #   The name of the namespace the table is associated with.
    #
    # @option params [String] :name
    #   The name of the table.
    #
    # @option params [String] :table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #
    # @return [Types::GetTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableResponse#name #name} => String
    #   * {Types::GetTableResponse#type #type} => String
    #   * {Types::GetTableResponse#table_arn #table_arn} => String
    #   * {Types::GetTableResponse#namespace #namespace} => Array&lt;String&gt;
    #   * {Types::GetTableResponse#namespace_id #namespace_id} => String
    #   * {Types::GetTableResponse#version_token #version_token} => String
    #   * {Types::GetTableResponse#metadata_location #metadata_location} => String
    #   * {Types::GetTableResponse#warehouse_location #warehouse_location} => String
    #   * {Types::GetTableResponse#created_at #created_at} => Time
    #   * {Types::GetTableResponse#created_by #created_by} => String
    #   * {Types::GetTableResponse#managed_by_service #managed_by_service} => String
    #   * {Types::GetTableResponse#modified_at #modified_at} => Time
    #   * {Types::GetTableResponse#modified_by #modified_by} => String
    #   * {Types::GetTableResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetTableResponse#format #format} => String
    #   * {Types::GetTableResponse#table_bucket_id #table_bucket_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table({
    #     table_bucket_arn: "TableBucketARN",
    #     namespace: "NamespaceName",
    #     name: "TableName",
    #     table_arn: "TableARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "customer", "aws"
    #   resp.table_arn #=> String
    #   resp.namespace #=> Array
    #   resp.namespace[0] #=> String
    #   resp.namespace_id #=> String
    #   resp.version_token #=> String
    #   resp.metadata_location #=> String
    #   resp.warehouse_location #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.managed_by_service #=> String
    #   resp.modified_at #=> Time
    #   resp.modified_by #=> String
    #   resp.owner_account_id #=> String
    #   resp.format #=> String, one of "ICEBERG"
    #   resp.table_bucket_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTable AWS API Documentation
    #
    # @overload get_table(params = {})
    # @param [Hash] params ({})
    def get_table(params = {}, options = {})
      req = build_request(:get_table, params)
      req.send_request(options)
    end

    # Gets details on a table bucket. For more information, see [Viewing
    # details about an Amazon S3 table bucket][1] in the *Amazon Simple
    # Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTableBucket` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-details.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @return [Types::GetTableBucketResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableBucketResponse#arn #arn} => String
    #   * {Types::GetTableBucketResponse#name #name} => String
    #   * {Types::GetTableBucketResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetTableBucketResponse#created_at #created_at} => Time
    #   * {Types::GetTableBucketResponse#table_bucket_id #table_bucket_id} => String
    #   * {Types::GetTableBucketResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_bucket({
    #     table_bucket_arn: "TableBucketARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.owner_account_id #=> String
    #   resp.created_at #=> Time
    #   resp.table_bucket_id #=> String
    #   resp.type #=> String, one of "customer", "aws"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucket AWS API Documentation
    #
    # @overload get_table_bucket(params = {})
    # @param [Hash] params ({})
    def get_table_bucket(params = {}, options = {})
      req = build_request(:get_table_bucket, params)
      req.send_request(options)
    end

    # Gets the encryption configuration for a table bucket.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTableBucketEncryption` permission to
    #   use this operation.
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @return [Types::GetTableBucketEncryptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableBucketEncryptionResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_bucket_encryption({
    #     table_bucket_arn: "TableBucketARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.encryption_configuration.sse_algorithm #=> String, one of "AES256", "aws:kms"
    #   resp.encryption_configuration.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketEncryption AWS API Documentation
    #
    # @overload get_table_bucket_encryption(params = {})
    # @param [Hash] params ({})
    def get_table_bucket_encryption(params = {}, options = {})
      req = build_request(:get_table_bucket_encryption, params)
      req.send_request(options)
    end

    # Gets details about a maintenance configuration for a given table
    # bucket. For more information, see [Amazon S3 table bucket
    # maintenance][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTableBucketMaintenanceConfiguration`
    #   permission to use this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with the
    #   maintenance configuration.
    #
    # @return [Types::GetTableBucketMaintenanceConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableBucketMaintenanceConfigurationResponse#table_bucket_arn #table_bucket_arn} => String
    #   * {Types::GetTableBucketMaintenanceConfigurationResponse#configuration #configuration} => Hash&lt;String,Types::TableBucketMaintenanceConfigurationValue&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_bucket_maintenance_configuration({
    #     table_bucket_arn: "TableBucketARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_bucket_arn #=> String
    #   resp.configuration #=> Hash
    #   resp.configuration["TableBucketMaintenanceType"].status #=> String, one of "enabled", "disabled"
    #   resp.configuration["TableBucketMaintenanceType"].settings.iceberg_unreferenced_file_removal.unreferenced_days #=> Integer
    #   resp.configuration["TableBucketMaintenanceType"].settings.iceberg_unreferenced_file_removal.non_current_days #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketMaintenanceConfiguration AWS API Documentation
    #
    # @overload get_table_bucket_maintenance_configuration(params = {})
    # @param [Hash] params ({})
    def get_table_bucket_maintenance_configuration(params = {}, options = {})
      req = build_request(:get_table_bucket_maintenance_configuration, params)
      req.send_request(options)
    end

    # Gets details about a table bucket policy. For more information, see
    # [Viewing a table bucket policy][1] in the *Amazon Simple Storage
    # Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTableBucketPolicy` permission to use
    #   this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-get
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @return [Types::GetTableBucketPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableBucketPolicyResponse#resource_policy #resource_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_bucket_policy({
    #     table_bucket_arn: "TableBucketARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketPolicy AWS API Documentation
    #
    # @overload get_table_bucket_policy(params = {})
    # @param [Hash] params ({})
    def get_table_bucket_policy(params = {}, options = {})
      req = build_request(:get_table_bucket_policy, params)
      req.send_request(options)
    end

    # Gets the encryption configuration for a table.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTableEncryption` permission to use
    #   this operation.
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket containing the
    #   table.
    #
    # @option params [required, String] :namespace
    #   The namespace associated with the table.
    #
    # @option params [required, String] :name
    #   The name of the table.
    #
    # @return [Types::GetTableEncryptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableEncryptionResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_encryption({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.encryption_configuration.sse_algorithm #=> String, one of "AES256", "aws:kms"
    #   resp.encryption_configuration.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableEncryption AWS API Documentation
    #
    # @overload get_table_encryption(params = {})
    # @param [Hash] params ({})
    def get_table_encryption(params = {}, options = {})
      req = build_request(:get_table_encryption, params)
      req.send_request(options)
    end

    # Gets details about the maintenance configuration of a table. For more
    # information, see [S3 Tables maintenance][1] in the *Amazon Simple
    # Storage Service User Guide*.
    #
    # Permissions
    # : * You must have the `s3tables:GetTableMaintenanceConfiguration`
    #     permission to use this operation.
    #
    #   * You must have the `s3tables:GetTableData` permission to use set
    #     the compaction strategy to `sort` or `zorder`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [required, String] :namespace
    #   The namespace associated with the table.
    #
    # @option params [required, String] :name
    #   The name of the table.
    #
    # @return [Types::GetTableMaintenanceConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableMaintenanceConfigurationResponse#table_arn #table_arn} => String
    #   * {Types::GetTableMaintenanceConfigurationResponse#configuration #configuration} => Hash&lt;String,Types::TableMaintenanceConfigurationValue&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_maintenance_configuration({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_arn #=> String
    #   resp.configuration #=> Hash
    #   resp.configuration["TableMaintenanceType"].status #=> String, one of "enabled", "disabled"
    #   resp.configuration["TableMaintenanceType"].settings.iceberg_compaction.target_file_size_mb #=> Integer
    #   resp.configuration["TableMaintenanceType"].settings.iceberg_compaction.strategy #=> String, one of "auto", "binpack", "sort", "z-order"
    #   resp.configuration["TableMaintenanceType"].settings.iceberg_snapshot_management.min_snapshots_to_keep #=> Integer
    #   resp.configuration["TableMaintenanceType"].settings.iceberg_snapshot_management.max_snapshot_age_hours #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMaintenanceConfiguration AWS API Documentation
    #
    # @overload get_table_maintenance_configuration(params = {})
    # @param [Hash] params ({})
    def get_table_maintenance_configuration(params = {}, options = {})
      req = build_request(:get_table_maintenance_configuration, params)
      req.send_request(options)
    end

    # Gets the status of a maintenance job for a table. For more
    # information, see [S3 Tables maintenance][1] in the *Amazon Simple
    # Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTableMaintenanceJobStatus` permission
    #   to use this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [required, String] :namespace
    #   The name of the namespace the table is associated with.
    #
    # @option params [required, String] :name
    #   The name of the maintenance job.
    #
    # @return [Types::GetTableMaintenanceJobStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableMaintenanceJobStatusResponse#table_arn #table_arn} => String
    #   * {Types::GetTableMaintenanceJobStatusResponse#status #status} => Hash&lt;String,Types::TableMaintenanceJobStatusValue&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_maintenance_job_status({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_arn #=> String
    #   resp.status #=> Hash
    #   resp.status["TableMaintenanceJobType"].status #=> String, one of "Not_Yet_Run", "Successful", "Failed", "Disabled"
    #   resp.status["TableMaintenanceJobType"].last_run_timestamp #=> Time
    #   resp.status["TableMaintenanceJobType"].failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMaintenanceJobStatus AWS API Documentation
    #
    # @overload get_table_maintenance_job_status(params = {})
    # @param [Hash] params ({})
    def get_table_maintenance_job_status(params = {}, options = {})
      req = build_request(:get_table_maintenance_job_status, params)
      req.send_request(options)
    end

    # Gets the location of the table metadata.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTableMetadataLocation` permission to
    #   use this operation.
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [required, String] :namespace
    #   The namespace of the table.
    #
    # @option params [required, String] :name
    #   The name of the table.
    #
    # @return [Types::GetTableMetadataLocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableMetadataLocationResponse#version_token #version_token} => String
    #   * {Types::GetTableMetadataLocationResponse#metadata_location #metadata_location} => String
    #   * {Types::GetTableMetadataLocationResponse#warehouse_location #warehouse_location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_metadata_location({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.version_token #=> String
    #   resp.metadata_location #=> String
    #   resp.warehouse_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMetadataLocation AWS API Documentation
    #
    # @overload get_table_metadata_location(params = {})
    # @param [Hash] params ({})
    def get_table_metadata_location(params = {}, options = {})
      req = build_request(:get_table_metadata_location, params)
      req.send_request(options)
    end

    # Gets details about a table policy. For more information, see [Viewing
    # a table policy][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:GetTablePolicy` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-get
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #
    # @option params [required, String] :namespace
    #   The namespace associated with the table.
    #
    # @option params [required, String] :name
    #   The name of the table.
    #
    # @return [Types::GetTablePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTablePolicyResponse#resource_policy #resource_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_policy({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTablePolicy AWS API Documentation
    #
    # @overload get_table_policy(params = {})
    # @param [Hash] params ({})
    def get_table_policy(params = {}, options = {})
      req = build_request(:get_table_policy, params)
      req.send_request(options)
    end

    # Lists the namespaces within a table bucket. For more information, see
    # [Table namespaces][1] in the *Amazon Simple Storage Service User
    # Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:ListNamespaces` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [String] :prefix
    #   The prefix of the namespaces.
    #
    # @option params [String] :continuation_token
    #   `ContinuationToken` indicates to Amazon S3 that the list is being
    #   continued on this bucket with a token. `ContinuationToken` is
    #   obfuscated and is not a real key. You can use this `ContinuationToken`
    #   for pagination of the list results.
    #
    # @option params [Integer] :max_namespaces
    #   The maximum number of namespaces to return in the list.
    #
    # @return [Types::ListNamespacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamespacesResponse#namespaces #namespaces} => Array&lt;Types::NamespaceSummary&gt;
    #   * {Types::ListNamespacesResponse#continuation_token #continuation_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_namespaces({
    #     table_bucket_arn: "TableBucketARN", # required
    #     prefix: "ListNamespacesRequestPrefixString",
    #     continuation_token: "NextToken",
    #     max_namespaces: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.namespaces #=> Array
    #   resp.namespaces[0].namespace #=> Array
    #   resp.namespaces[0].namespace[0] #=> String
    #   resp.namespaces[0].created_at #=> Time
    #   resp.namespaces[0].created_by #=> String
    #   resp.namespaces[0].owner_account_id #=> String
    #   resp.namespaces[0].namespace_id #=> String
    #   resp.namespaces[0].table_bucket_id #=> String
    #   resp.continuation_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListNamespaces AWS API Documentation
    #
    # @overload list_namespaces(params = {})
    # @param [Hash] params ({})
    def list_namespaces(params = {}, options = {})
      req = build_request(:list_namespaces, params)
      req.send_request(options)
    end

    # Lists table buckets for your account. For more information, see [S3
    # Table buckets][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:ListTableBuckets` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html
    #
    # @option params [String] :prefix
    #   The prefix of the table buckets.
    #
    # @option params [String] :continuation_token
    #   `ContinuationToken` indicates to Amazon S3 that the list is being
    #   continued on this bucket with a token. `ContinuationToken` is
    #   obfuscated and is not a real key. You can use this `ContinuationToken`
    #   for pagination of the list results.
    #
    # @option params [Integer] :max_buckets
    #   The maximum number of table buckets to return in the list.
    #
    # @option params [String] :type
    #   The type of table buckets to filter by in the list.
    #
    # @return [Types::ListTableBucketsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTableBucketsResponse#table_buckets #table_buckets} => Array&lt;Types::TableBucketSummary&gt;
    #   * {Types::ListTableBucketsResponse#continuation_token #continuation_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_buckets({
    #     prefix: "ListTableBucketsRequestPrefixString",
    #     continuation_token: "NextToken",
    #     max_buckets: 1,
    #     type: "customer", # accepts customer, aws
    #   })
    #
    # @example Response structure
    #
    #   resp.table_buckets #=> Array
    #   resp.table_buckets[0].arn #=> String
    #   resp.table_buckets[0].name #=> String
    #   resp.table_buckets[0].owner_account_id #=> String
    #   resp.table_buckets[0].created_at #=> Time
    #   resp.table_buckets[0].table_bucket_id #=> String
    #   resp.table_buckets[0].type #=> String, one of "customer", "aws"
    #   resp.continuation_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTableBuckets AWS API Documentation
    #
    # @overload list_table_buckets(params = {})
    # @param [Hash] params ({})
    def list_table_buckets(params = {}, options = {})
      req = build_request(:list_table_buckets, params)
      req.send_request(options)
    end

    # List tables in the given table bucket. For more information, see [S3
    # Tables][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:ListTables` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon resource Name (ARN) of the table bucket.
    #
    # @option params [String] :namespace
    #   The namespace of the tables.
    #
    # @option params [String] :prefix
    #   The prefix of the tables.
    #
    # @option params [String] :continuation_token
    #   `ContinuationToken` indicates to Amazon S3 that the list is being
    #   continued on this bucket with a token. `ContinuationToken` is
    #   obfuscated and is not a real key. You can use this `ContinuationToken`
    #   for pagination of the list results.
    #
    # @option params [Integer] :max_tables
    #   The maximum number of tables to return.
    #
    # @return [Types::ListTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesResponse#tables #tables} => Array&lt;Types::TableSummary&gt;
    #   * {Types::ListTablesResponse#continuation_token #continuation_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName",
    #     prefix: "ListTablesRequestPrefixString",
    #     continuation_token: "NextToken",
    #     max_tables: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tables #=> Array
    #   resp.tables[0].namespace #=> Array
    #   resp.tables[0].namespace[0] #=> String
    #   resp.tables[0].name #=> String
    #   resp.tables[0].type #=> String, one of "customer", "aws"
    #   resp.tables[0].table_arn #=> String
    #   resp.tables[0].created_at #=> Time
    #   resp.tables[0].modified_at #=> Time
    #   resp.tables[0].namespace_id #=> String
    #   resp.tables[0].table_bucket_id #=> String
    #   resp.continuation_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
      req.send_request(options)
    end

    # Sets the encryption configuration for a table bucket.
    #
    # Permissions
    #
    # : You must have the `s3tables:PutTableBucketEncryption` permission to
    #   use this operation.
    #
    #   <note markdown="1"> If you choose SSE-KMS encryption you must grant the S3 Tables
    #   maintenance principal access to your KMS key. For more information,
    #   see [Permissions requirements for S3 Tables SSE-KMS encryption][1]
    #   in the *Amazon Simple Storage Service User Guide*.
    #
    #    </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [required, Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration to apply to the table bucket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_table_bucket_encryption({
    #     table_bucket_arn: "TableBucketARN", # required
    #     encryption_configuration: { # required
    #       sse_algorithm: "AES256", # required, accepts AES256, aws:kms
    #       kms_key_arn: "EncryptionConfigurationKmsKeyArnString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketEncryption AWS API Documentation
    #
    # @overload put_table_bucket_encryption(params = {})
    # @param [Hash] params ({})
    def put_table_bucket_encryption(params = {}, options = {})
      req = build_request(:put_table_bucket_encryption, params)
      req.send_request(options)
    end

    # Creates a new maintenance configuration or replaces an existing
    # maintenance configuration for a table bucket. For more information,
    # see [Amazon S3 table bucket maintenance][1] in the *Amazon Simple
    # Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:PutTableBucketMaintenanceConfiguration`
    #   permission to use this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with the
    #   maintenance configuration.
    #
    # @option params [required, String] :type
    #   The type of the maintenance configuration.
    #
    # @option params [required, Types::TableBucketMaintenanceConfigurationValue] :value
    #   Defines the values of the maintenance configuration for the table
    #   bucket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_table_bucket_maintenance_configuration({
    #     table_bucket_arn: "TableBucketARN", # required
    #     type: "icebergUnreferencedFileRemoval", # required, accepts icebergUnreferencedFileRemoval
    #     value: { # required
    #       status: "enabled", # accepts enabled, disabled
    #       settings: {
    #         iceberg_unreferenced_file_removal: {
    #           unreferenced_days: 1,
    #           non_current_days: 1,
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketMaintenanceConfiguration AWS API Documentation
    #
    # @overload put_table_bucket_maintenance_configuration(params = {})
    # @param [Hash] params ({})
    def put_table_bucket_maintenance_configuration(params = {}, options = {})
      req = build_request(:put_table_bucket_maintenance_configuration, params)
      req.send_request(options)
    end

    # Creates a new maintenance configuration or replaces an existing table
    # bucket policy for a table bucket. For more information, see [Adding a
    # table bucket policy][1] in the *Amazon Simple Storage Service User
    # Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:PutTableBucketPolicy` permission to use
    #   this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-add
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [required, String] :resource_policy
    #   The `JSON` that defines the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_table_bucket_policy({
    #     table_bucket_arn: "TableBucketARN", # required
    #     resource_policy: "ResourcePolicy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketPolicy AWS API Documentation
    #
    # @overload put_table_bucket_policy(params = {})
    # @param [Hash] params ({})
    def put_table_bucket_policy(params = {}, options = {})
      req = build_request(:put_table_bucket_policy, params)
      req.send_request(options)
    end

    # Creates a new maintenance configuration or replaces an existing
    # maintenance configuration for a table. For more information, see [S3
    # Tables maintenance][1] in the *Amazon Simple Storage Service User
    # Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:PutTableMaintenanceConfiguration`
    #   permission to use this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table associated with the
    #   maintenance configuration.
    #
    # @option params [required, String] :namespace
    #   The namespace of the table.
    #
    # @option params [required, String] :name
    #   The name of the maintenance configuration.
    #
    # @option params [required, String] :type
    #   The type of the maintenance configuration.
    #
    # @option params [required, Types::TableMaintenanceConfigurationValue] :value
    #   Defines the values of the maintenance configuration for the table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_table_maintenance_configuration({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     type: "icebergCompaction", # required, accepts icebergCompaction, icebergSnapshotManagement
    #     value: { # required
    #       status: "enabled", # accepts enabled, disabled
    #       settings: {
    #         iceberg_compaction: {
    #           target_file_size_mb: 1,
    #           strategy: "auto", # accepts auto, binpack, sort, z-order
    #         },
    #         iceberg_snapshot_management: {
    #           min_snapshots_to_keep: 1,
    #           max_snapshot_age_hours: 1,
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableMaintenanceConfiguration AWS API Documentation
    #
    # @overload put_table_maintenance_configuration(params = {})
    # @param [Hash] params ({})
    def put_table_maintenance_configuration(params = {}, options = {})
      req = build_request(:put_table_maintenance_configuration, params)
      req.send_request(options)
    end

    # Creates a new maintenance configuration or replaces an existing table
    # policy for a table. For more information, see [Adding a table
    # policy][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:PutTablePolicy` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-add
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #
    # @option params [required, String] :namespace
    #   The namespace associated with the table.
    #
    # @option params [required, String] :name
    #   The name of the table.
    #
    # @option params [required, String] :resource_policy
    #   The `JSON` that defines the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_table_policy({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     resource_policy: "ResourcePolicy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTablePolicy AWS API Documentation
    #
    # @overload put_table_policy(params = {})
    # @param [Hash] params ({})
    def put_table_policy(params = {}, options = {})
      req = build_request(:put_table_policy, params)
      req.send_request(options)
    end

    # Renames a table or a namespace. For more information, see [S3
    # Tables][1] in the *Amazon Simple Storage Service User Guide*.
    #
    # Permissions
    #
    # : You must have the `s3tables:RenameTable` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [required, String] :namespace
    #   The namespace associated with the table.
    #
    # @option params [required, String] :name
    #   The current name of the table.
    #
    # @option params [String] :new_namespace_name
    #   The new name for the namespace.
    #
    # @option params [String] :new_name
    #   The new name for the table.
    #
    # @option params [String] :version_token
    #   The version token of the table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rename_table({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     new_namespace_name: "NamespaceName",
    #     new_name: "TableName",
    #     version_token: "VersionToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/RenameTable AWS API Documentation
    #
    # @overload rename_table(params = {})
    # @param [Hash] params ({})
    def rename_table(params = {}, options = {})
      req = build_request(:rename_table, params)
      req.send_request(options)
    end

    # Updates the metadata location for a table. The metadata location of a
    # table must be an S3 URI that begins with the table's warehouse
    # location. The metadata location for an Apache Iceberg table must end
    # with `.metadata.json`, or if the metadata file is Gzip-compressed,
    # `.metadata.json.gz`.
    #
    # Permissions
    #
    # : You must have the `s3tables:UpdateTableMetadataLocation` permission
    #   to use this operation.
    #
    # @option params [required, String] :table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #
    # @option params [required, String] :namespace
    #   The namespace of the table.
    #
    # @option params [required, String] :name
    #   The name of the table.
    #
    # @option params [required, String] :version_token
    #   The version token of the table.
    #
    # @option params [required, String] :metadata_location
    #   The new metadata location for the table.
    #
    # @return [Types::UpdateTableMetadataLocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTableMetadataLocationResponse#name #name} => String
    #   * {Types::UpdateTableMetadataLocationResponse#table_arn #table_arn} => String
    #   * {Types::UpdateTableMetadataLocationResponse#namespace #namespace} => Array&lt;String&gt;
    #   * {Types::UpdateTableMetadataLocationResponse#version_token #version_token} => String
    #   * {Types::UpdateTableMetadataLocationResponse#metadata_location #metadata_location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table_metadata_location({
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     version_token: "VersionToken", # required
    #     metadata_location: "MetadataLocation", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.table_arn #=> String
    #   resp.namespace #=> Array
    #   resp.namespace[0] #=> String
    #   resp.version_token #=> String
    #   resp.metadata_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/UpdateTableMetadataLocation AWS API Documentation
    #
    # @overload update_table_metadata_location(params = {})
    # @param [Hash] params ({})
    def update_table_metadata_location(params = {}, options = {})
      req = build_request(:update_table_metadata_location, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::S3Tables')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-s3tables'
      context[:gem_version] = '1.13.0'
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
