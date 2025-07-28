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

module Aws::Keyspaces
  # An API client for Keyspaces.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Keyspaces::Client.new(
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

    @identifier = :keyspaces

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
    add_plugin(Aws::Keyspaces::Plugins::Endpoints)

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
    #   @option options [Aws::Keyspaces::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Keyspaces::EndpointParameters`.
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

    # The `CreateKeyspace` operation adds a new keyspace to your account. In
    # an Amazon Web Services account, keyspace names must be unique within
    # each Region.
    #
    # `CreateKeyspace` is an asynchronous operation. You can monitor the
    # creation status of the new keyspace by using the `GetKeyspace`
    # operation.
    #
    # For more information, see [Create a keyspace][1] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.keyspaces.html
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace to be created.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pair tags to be attached to the keyspace.
    #
    #   For more information, see [Adding tags and labels to Amazon Keyspaces
    #   resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #
    # @option params [Types::ReplicationSpecification] :replication_specification
    #   The replication specification of the keyspace includes:
    #
    #   * `replicationStrategy` - the required value is `SINGLE_REGION` or
    #     `MULTI_REGION`.
    #
    #   * `regionList` - if the `replicationStrategy` is `MULTI_REGION`, the
    #     `regionList` requires the current Region and at least one additional
    #     Amazon Web Services Region where the keyspace is going to be
    #     replicated in.
    #
    # @return [Types::CreateKeyspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyspaceResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_keyspace({
    #     keyspace_name: "KeyspaceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     replication_specification: {
    #       replication_strategy: "SINGLE_REGION", # required, accepts SINGLE_REGION, MULTI_REGION
    #       region_list: ["region"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateKeyspace AWS API Documentation
    #
    # @overload create_keyspace(params = {})
    # @param [Hash] params ({})
    def create_keyspace(params = {}, options = {})
      req = build_request(:create_keyspace, params)
      req.send_request(options)
    end

    # The `CreateTable` operation adds a new table to the specified
    # keyspace. Within a keyspace, table names must be unique.
    #
    # `CreateTable` is an asynchronous operation. When the request is
    # received, the status of the table is set to `CREATING`. You can
    # monitor the creation status of the new table by using the `GetTable`
    # operation, which returns the current `status` of the table. You can
    # start using a table when the status is `ACTIVE`.
    #
    # For more information, see [Create a table][1] in the *Amazon Keyspaces
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.tables.html
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace that the table is going to be created in.
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @option params [required, Types::SchemaDefinition] :schema_definition
    #   The `schemaDefinition` consists of the following parameters.
    #
    #   For each column to be created:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type. For more information, see
    #     [Data types][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #   The primary key of the table consists of the following columns:
    #
    #   * `partitionKeys` - The partition key can be a single column, or it
    #     can be a compound value composed of two or more columns. The
    #     partition key portion of the primary key is required and determines
    #     how Amazon Keyspaces stores your data.
    #
    #   * `name` - The name of each partition key column.
    #
    #   * `clusteringKeys` - The optional clustering column portion of your
    #     primary key determines how the data is clustered and sorted within
    #     each partition.
    #
    #   * `name` - The name of the clustering column.
    #
    #   * `orderBy` - Sets the ascendant (`ASC`) or descendant (`DESC`) order
    #     modifier.
    #
    #     To define a column as static use `staticColumns` - Static columns
    #     store values that are shared by all rows in the same partition:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types
    #
    # @option params [Types::Comment] :comment
    #   This parameter allows to enter a description of the table.
    #
    # @option params [Types::CapacitySpecification] :capacity_specification
    #   Specifies the read/write throughput capacity mode for the table. The
    #   options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST` and
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #
    # @option params [Types::EncryptionSpecification] :encryption_specification
    #   Specifies how the encryption key for encryption at rest is managed for
    #   the table. You can choose one of the following KMS key (KMS key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your account
    #     and is created, owned, and managed by you. This option requires the
    #     `kms_key_identifier` of the KMS key in Amazon Resource Name (ARN)
    #     format as input.
    #
    #   The default is `type:AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery
    #   Specifies if `pointInTimeRecovery` is enabled or disabled for the
    #   table. The options are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #
    # @option params [Types::TimeToLive] :ttl
    #   Enables Time to Live custom settings for the table. The options are:
    #
    #   * `status:enabled`
    #
    #   * `status:disabled`
    #
    #   The default is `status:disabled`. After `ttl` is enabled, you can't
    #   disable it for the table.
    #
    #   For more information, see [Expiring data by using Amazon Keyspaces
    #   Time to Live (TTL)][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html
    #
    # @option params [Integer] :default_time_to_live
    #   The default Time to Live setting in seconds for the table.
    #
    #   For more information, see [Setting the default TTL value for a
    #   table][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pair tags to be attached to the resource.
    #
    #   For more information, see [Adding tags and labels to Amazon Keyspaces
    #   resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #
    # @option params [Types::ClientSideTimestamps] :client_side_timestamps
    #   Enables client-side timestamps for the table. By default, the setting
    #   is disabled. You can enable client-side timestamps with the following
    #   option:
    #
    #   * `status: "enabled"`
    #
    #   ^
    #
    #   Once client-side timestamps are enabled for a table, this setting
    #   cannot be disabled.
    #
    # @option params [Types::AutoScalingSpecification] :auto_scaling_specification
    #   The optional auto scaling settings for a table in provisioned capacity
    #   mode. Specifies if the service can manage throughput capacity
    #   automatically on your behalf.
    #
    #   Auto scaling helps you provision throughput capacity for variable
    #   workloads efficiently by increasing and decreasing your table's read
    #   and write capacity automatically in response to application traffic.
    #   For more information, see [Managing throughput capacity automatically
    #   with Amazon Keyspaces auto scaling][1] in the *Amazon Keyspaces
    #   Developer Guide*.
    #
    #   By default, auto scaling is disabled for a table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html
    #
    # @option params [Array<Types::ReplicaSpecification>] :replica_specifications
    #   The optional Amazon Web Services Region specific settings of a
    #   multi-Region table. These settings overwrite the general settings of
    #   the table for the specified Region.
    #
    #   For a multi-Region table in provisioned capacity mode, you can
    #   configure the table's read capacity differently for each Region's
    #   replica. The write capacity, however, remains synchronized between all
    #   replicas to ensure that there's enough capacity to replicate writes
    #   across all Regions. To define the read capacity for a table replica in
    #   a specific Region, you can do so by configuring the following
    #   parameters.
    #
    #   * `region`: The Region where these settings are applied. (Required)
    #
    #   * `readCapacityUnits`: The provisioned read capacity units. (Optional)
    #
    #   * `readCapacityAutoScaling`: The read capacity auto scaling settings
    #     for the table. (Optional)
    #
    # @option params [Types::CdcSpecification] :cdc_specification
    #   The CDC stream settings of the table.
    #
    # @return [Types::CreateTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTableResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     schema_definition: { # required
    #       all_columns: [ # required
    #         {
    #           name: "GenericString", # required
    #           type: "GenericString", # required
    #         },
    #       ],
    #       partition_keys: [ # required
    #         {
    #           name: "GenericString", # required
    #         },
    #       ],
    #       clustering_keys: [
    #         {
    #           name: "GenericString", # required
    #           order_by: "ASC", # required, accepts ASC, DESC
    #         },
    #       ],
    #       static_columns: [
    #         {
    #           name: "GenericString", # required
    #         },
    #       ],
    #     },
    #     comment: {
    #       message: "String", # required
    #     },
    #     capacity_specification: {
    #       throughput_mode: "PAY_PER_REQUEST", # required, accepts PAY_PER_REQUEST, PROVISIONED
    #       read_capacity_units: 1,
    #       write_capacity_units: 1,
    #     },
    #     encryption_specification: {
    #       type: "CUSTOMER_MANAGED_KMS_KEY", # required, accepts CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
    #       kms_key_identifier: "kmsKeyARN",
    #     },
    #     point_in_time_recovery: {
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     ttl: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #     default_time_to_live: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_side_timestamps: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #     auto_scaling_specification: {
    #       write_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           },
    #         },
    #       },
    #       read_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           },
    #         },
    #       },
    #     },
    #     replica_specifications: [
    #       {
    #         region: "region", # required
    #         read_capacity_units: 1,
    #         read_capacity_auto_scaling: {
    #           auto_scaling_disabled: false,
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           scaling_policy: {
    #             target_tracking_scaling_policy_configuration: {
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     cdc_specification: {
    #       status: "ENABLED", # required, accepts ENABLED, ENABLING, DISABLED, DISABLING
    #       view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, KEYS_ONLY, NEW_AND_OLD_IMAGES
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         },
    #       ],
    #       propagate_tags: "TABLE", # accepts TABLE, NONE
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateTable AWS API Documentation
    #
    # @overload create_table(params = {})
    # @param [Hash] params ({})
    def create_table(params = {}, options = {})
      req = build_request(:create_table, params)
      req.send_request(options)
    end

    # The `CreateType` operation creates a new user-defined type in the
    # specified keyspace.
    #
    # To configure the required permissions, see [Permissions to create a
    # UDT][1] in the *Amazon Keyspaces Developer Guide*.
    #
    # For more information, see [User-defined types (UDTs)][2] in the
    # *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-create
    # [2]: https://docs.aws.amazon.com/keyspaces/latest/devguide/udts.html
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace.
    #
    # @option params [required, String] :type_name
    #   The name of the user-defined type.
    #
    #   UDT names must contain 48 characters or less, must begin with an
    #   alphabetic character, and can only contain alpha-numeric characters
    #   and underscores. Amazon Keyspaces converts upper case characters
    #   automatically into lower case characters.
    #
    #   Alternatively, you can declare a UDT name in double quotes. When
    #   declaring a UDT name inside double quotes, Amazon Keyspaces preserves
    #   upper casing and allows special characters.
    #
    #   You can also use double quotes as part of the name when you create the
    #   UDT, but you must escape each double quote character with an
    #   additional double quote character.
    #
    # @option params [required, Array<Types::FieldDefinition>] :field_definitions
    #   The field definitions, consisting of names and types, that define this
    #   type.
    #
    # @return [Types::CreateTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTypeResponse#keyspace_arn #keyspace_arn} => String
    #   * {Types::CreateTypeResponse#type_name #type_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_type({
    #     keyspace_name: "KeyspaceName", # required
    #     type_name: "TypeName", # required
    #     field_definitions: [ # required
    #       {
    #         name: "FieldDefinitionNameString", # required
    #         type: "GenericString", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.keyspace_arn #=> String
    #   resp.type_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateType AWS API Documentation
    #
    # @overload create_type(params = {})
    # @param [Hash] params ({})
    def create_type(params = {}, options = {})
      req = build_request(:create_type, params)
      req.send_request(options)
    end

    # The `DeleteKeyspace` operation deletes a keyspace and all of its
    # tables.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_keyspace({
    #     keyspace_name: "KeyspaceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteKeyspace AWS API Documentation
    #
    # @overload delete_keyspace(params = {})
    # @param [Hash] params ({})
    def delete_keyspace(params = {}, options = {})
      req = build_request(:delete_keyspace, params)
      req.send_request(options)
    end

    # The `DeleteTable` operation deletes a table and all of its data. After
    # a `DeleteTable` request is received, the specified table is in the
    # `DELETING` state until Amazon Keyspaces completes the deletion. If the
    # table is in the `ACTIVE` state, you can delete it. If a table is
    # either in the `CREATING` or `UPDATING` states, then Amazon Keyspaces
    # returns a `ResourceInUseException`. If the specified table does not
    # exist, Amazon Keyspaces returns a `ResourceNotFoundException`. If the
    # table is already in the `DELETING` state, no error is returned.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace of the to be deleted table.
    #
    # @option params [required, String] :table_name
    #   The name of the table to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteTable AWS API Documentation
    #
    # @overload delete_table(params = {})
    # @param [Hash] params ({})
    def delete_table(params = {}, options = {})
      req = build_request(:delete_table, params)
      req.send_request(options)
    end

    # The `DeleteType` operation deletes a user-defined type (UDT). You can
    # only delete a type that is not used in a table or another UDT.
    #
    # To configure the required permissions, see [Permissions to delete a
    # UDT][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-drop
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace of the to be deleted type.
    #
    # @option params [required, String] :type_name
    #   The name of the type to be deleted.
    #
    # @return [Types::DeleteTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTypeResponse#keyspace_arn #keyspace_arn} => String
    #   * {Types::DeleteTypeResponse#type_name #type_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_type({
    #     keyspace_name: "KeyspaceName", # required
    #     type_name: "TypeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.keyspace_arn #=> String
    #   resp.type_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteType AWS API Documentation
    #
    # @overload delete_type(params = {})
    # @param [Hash] params ({})
    def delete_type(params = {}, options = {})
      req = build_request(:delete_type, params)
      req.send_request(options)
    end

    # Returns the name of the specified keyspace, the Amazon Resource Name
    # (ARN), the replication strategy, the Amazon Web Services Regions of a
    # multi-Region keyspace, and the status of newly added Regions after an
    # `UpdateKeyspace` operation.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace.
    #
    # @return [Types::GetKeyspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyspaceResponse#keyspace_name #keyspace_name} => String
    #   * {Types::GetKeyspaceResponse#resource_arn #resource_arn} => String
    #   * {Types::GetKeyspaceResponse#replication_strategy #replication_strategy} => String
    #   * {Types::GetKeyspaceResponse#replication_regions #replication_regions} => Array&lt;String&gt;
    #   * {Types::GetKeyspaceResponse#replication_group_statuses #replication_group_statuses} => Array&lt;Types::ReplicationGroupStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_keyspace({
    #     keyspace_name: "KeyspaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.keyspace_name #=> String
    #   resp.resource_arn #=> String
    #   resp.replication_strategy #=> String, one of "SINGLE_REGION", "MULTI_REGION"
    #   resp.replication_regions #=> Array
    #   resp.replication_regions[0] #=> String
    #   resp.replication_group_statuses #=> Array
    #   resp.replication_group_statuses[0].region #=> String
    #   resp.replication_group_statuses[0].keyspace_status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING"
    #   resp.replication_group_statuses[0].tables_replication_progress #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetKeyspace AWS API Documentation
    #
    # @overload get_keyspace(params = {})
    # @param [Hash] params ({})
    def get_keyspace(params = {}, options = {})
      req = build_request(:get_keyspace, params)
      req.send_request(options)
    end

    # Returns information about the table, including the table's name and
    # current status, the keyspace name, configuration settings, and
    # metadata.
    #
    # To read table metadata using `GetTable`, the IAM principal needs
    # `Select` action permissions for the table and the system keyspace.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace that the table is stored in.
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @return [Types::GetTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableResponse#keyspace_name #keyspace_name} => String
    #   * {Types::GetTableResponse#table_name #table_name} => String
    #   * {Types::GetTableResponse#resource_arn #resource_arn} => String
    #   * {Types::GetTableResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::GetTableResponse#status #status} => String
    #   * {Types::GetTableResponse#schema_definition #schema_definition} => Types::SchemaDefinition
    #   * {Types::GetTableResponse#capacity_specification #capacity_specification} => Types::CapacitySpecificationSummary
    #   * {Types::GetTableResponse#encryption_specification #encryption_specification} => Types::EncryptionSpecification
    #   * {Types::GetTableResponse#point_in_time_recovery #point_in_time_recovery} => Types::PointInTimeRecoverySummary
    #   * {Types::GetTableResponse#ttl #ttl} => Types::TimeToLive
    #   * {Types::GetTableResponse#default_time_to_live #default_time_to_live} => Integer
    #   * {Types::GetTableResponse#comment #comment} => Types::Comment
    #   * {Types::GetTableResponse#client_side_timestamps #client_side_timestamps} => Types::ClientSideTimestamps
    #   * {Types::GetTableResponse#replica_specifications #replica_specifications} => Array&lt;Types::ReplicaSpecificationSummary&gt;
    #   * {Types::GetTableResponse#latest_stream_arn #latest_stream_arn} => String
    #   * {Types::GetTableResponse#cdc_specification #cdc_specification} => Types::CdcSpecificationSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.keyspace_name #=> String
    #   resp.table_name #=> String
    #   resp.resource_arn #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "DELETED", "RESTORING", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
    #   resp.schema_definition.all_columns #=> Array
    #   resp.schema_definition.all_columns[0].name #=> String
    #   resp.schema_definition.all_columns[0].type #=> String
    #   resp.schema_definition.partition_keys #=> Array
    #   resp.schema_definition.partition_keys[0].name #=> String
    #   resp.schema_definition.clustering_keys #=> Array
    #   resp.schema_definition.clustering_keys[0].name #=> String
    #   resp.schema_definition.clustering_keys[0].order_by #=> String, one of "ASC", "DESC"
    #   resp.schema_definition.static_columns #=> Array
    #   resp.schema_definition.static_columns[0].name #=> String
    #   resp.capacity_specification.throughput_mode #=> String, one of "PAY_PER_REQUEST", "PROVISIONED"
    #   resp.capacity_specification.read_capacity_units #=> Integer
    #   resp.capacity_specification.write_capacity_units #=> Integer
    #   resp.capacity_specification.last_update_to_pay_per_request_timestamp #=> Time
    #   resp.encryption_specification.type #=> String, one of "CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"
    #   resp.encryption_specification.kms_key_identifier #=> String
    #   resp.point_in_time_recovery.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.point_in_time_recovery.earliest_restorable_timestamp #=> Time
    #   resp.ttl.status #=> String, one of "ENABLED"
    #   resp.default_time_to_live #=> Integer
    #   resp.comment.message #=> String
    #   resp.client_side_timestamps.status #=> String, one of "ENABLED"
    #   resp.replica_specifications #=> Array
    #   resp.replica_specifications[0].region #=> String
    #   resp.replica_specifications[0].status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "DELETED", "RESTORING", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
    #   resp.replica_specifications[0].capacity_specification.throughput_mode #=> String, one of "PAY_PER_REQUEST", "PROVISIONED"
    #   resp.replica_specifications[0].capacity_specification.read_capacity_units #=> Integer
    #   resp.replica_specifications[0].capacity_specification.write_capacity_units #=> Integer
    #   resp.replica_specifications[0].capacity_specification.last_update_to_pay_per_request_timestamp #=> Time
    #   resp.latest_stream_arn #=> String
    #   resp.cdc_specification.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.cdc_specification.view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "KEYS_ONLY", "NEW_AND_OLD_IMAGES"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetTable AWS API Documentation
    #
    # @overload get_table(params = {})
    # @param [Hash] params ({})
    def get_table(params = {}, options = {})
      req = build_request(:get_table, params)
      req.send_request(options)
    end

    # Returns auto scaling related settings of the specified table in JSON
    # format. If the table is a multi-Region table, the Amazon Web Services
    # Region specific auto scaling settings of the table are included.
    #
    # Amazon Keyspaces auto scaling helps you provision throughput capacity
    # for variable workloads efficiently by increasing and decreasing your
    # table's read and write capacity automatically in response to
    # application traffic. For more information, see [Managing throughput
    # capacity automatically with Amazon Keyspaces auto scaling][1] in the
    # *Amazon Keyspaces Developer Guide*.
    #
    # `GetTableAutoScalingSettings` can't be used as an action in an IAM
    # policy.
    #
    # To define permissions for `GetTableAutoScalingSettings`, you must
    # allow the following two actions in the IAM policy statement's
    # `Action` element:
    #
    # * `application-autoscaling:DescribeScalableTargets`
    #
    # * `application-autoscaling:DescribeScalingPolicies`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace.
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @return [Types::GetTableAutoScalingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableAutoScalingSettingsResponse#keyspace_name #keyspace_name} => String
    #   * {Types::GetTableAutoScalingSettingsResponse#table_name #table_name} => String
    #   * {Types::GetTableAutoScalingSettingsResponse#resource_arn #resource_arn} => String
    #   * {Types::GetTableAutoScalingSettingsResponse#auto_scaling_specification #auto_scaling_specification} => Types::AutoScalingSpecification
    #   * {Types::GetTableAutoScalingSettingsResponse#replica_specifications #replica_specifications} => Array&lt;Types::ReplicaAutoScalingSpecification&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_auto_scaling_settings({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.keyspace_name #=> String
    #   resp.table_name #=> String
    #   resp.resource_arn #=> String
    #   resp.auto_scaling_specification.write_capacity_auto_scaling.auto_scaling_disabled #=> Boolean
    #   resp.auto_scaling_specification.write_capacity_auto_scaling.minimum_units #=> Integer
    #   resp.auto_scaling_specification.write_capacity_auto_scaling.maximum_units #=> Integer
    #   resp.auto_scaling_specification.write_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.auto_scaling_specification.write_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.auto_scaling_specification.write_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.auto_scaling_specification.write_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.auto_scaling_specification.read_capacity_auto_scaling.auto_scaling_disabled #=> Boolean
    #   resp.auto_scaling_specification.read_capacity_auto_scaling.minimum_units #=> Integer
    #   resp.auto_scaling_specification.read_capacity_auto_scaling.maximum_units #=> Integer
    #   resp.auto_scaling_specification.read_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.auto_scaling_specification.read_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.auto_scaling_specification.read_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.auto_scaling_specification.read_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_specifications #=> Array
    #   resp.replica_specifications[0].region #=> String
    #   resp.replica_specifications[0].auto_scaling_specification.write_capacity_auto_scaling.auto_scaling_disabled #=> Boolean
    #   resp.replica_specifications[0].auto_scaling_specification.write_capacity_auto_scaling.minimum_units #=> Integer
    #   resp.replica_specifications[0].auto_scaling_specification.write_capacity_auto_scaling.maximum_units #=> Integer
    #   resp.replica_specifications[0].auto_scaling_specification.write_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_specifications[0].auto_scaling_specification.write_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_specifications[0].auto_scaling_specification.write_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_specifications[0].auto_scaling_specification.write_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_specifications[0].auto_scaling_specification.read_capacity_auto_scaling.auto_scaling_disabled #=> Boolean
    #   resp.replica_specifications[0].auto_scaling_specification.read_capacity_auto_scaling.minimum_units #=> Integer
    #   resp.replica_specifications[0].auto_scaling_specification.read_capacity_auto_scaling.maximum_units #=> Integer
    #   resp.replica_specifications[0].auto_scaling_specification.read_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_specifications[0].auto_scaling_specification.read_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_specifications[0].auto_scaling_specification.read_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_specifications[0].auto_scaling_specification.read_capacity_auto_scaling.scaling_policy.target_tracking_scaling_policy_configuration.target_value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetTableAutoScalingSettings AWS API Documentation
    #
    # @overload get_table_auto_scaling_settings(params = {})
    # @param [Hash] params ({})
    def get_table_auto_scaling_settings(params = {}, options = {})
      req = build_request(:get_table_auto_scaling_settings, params)
      req.send_request(options)
    end

    # The `GetType` operation returns information about the type, for
    # example the field definitions, the timestamp when the type was last
    # modified, the level of nesting, the status, and details about if the
    # type is used in other types and tables.
    #
    # To read keyspace metadata using `GetType`, the IAM principal needs
    # `Select` action permissions for the system keyspace. To configure the
    # required permissions, see [Permissions to view a UDT][1] in the
    # *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace that contains this type.
    #
    # @option params [required, String] :type_name
    #   The formatted name of the type. For example, if the name of the type
    #   was created without double quotes, Amazon Keyspaces saved the name in
    #   lower-case characters. If the name was created in double quotes, you
    #   must use double quotes to specify the type name.
    #
    # @return [Types::GetTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTypeResponse#keyspace_name #keyspace_name} => String
    #   * {Types::GetTypeResponse#type_name #type_name} => String
    #   * {Types::GetTypeResponse#field_definitions #field_definitions} => Array&lt;Types::FieldDefinition&gt;
    #   * {Types::GetTypeResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetTypeResponse#status #status} => String
    #   * {Types::GetTypeResponse#direct_referring_tables #direct_referring_tables} => Array&lt;String&gt;
    #   * {Types::GetTypeResponse#direct_parent_types #direct_parent_types} => Array&lt;String&gt;
    #   * {Types::GetTypeResponse#max_nesting_depth #max_nesting_depth} => Integer
    #   * {Types::GetTypeResponse#keyspace_arn #keyspace_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_type({
    #     keyspace_name: "KeyspaceName", # required
    #     type_name: "TypeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.keyspace_name #=> String
    #   resp.type_name #=> String
    #   resp.field_definitions #=> Array
    #   resp.field_definitions[0].name #=> String
    #   resp.field_definitions[0].type #=> String
    #   resp.last_modified_timestamp #=> Time
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "RESTORING"
    #   resp.direct_referring_tables #=> Array
    #   resp.direct_referring_tables[0] #=> String
    #   resp.direct_parent_types #=> Array
    #   resp.direct_parent_types[0] #=> String
    #   resp.max_nesting_depth #=> Integer
    #   resp.keyspace_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetType AWS API Documentation
    #
    # @overload get_type(params = {})
    # @param [Hash] params ({})
    def get_type(params = {}, options = {})
      req = build_request(:get_type, params)
      req.send_request(options)
    end

    # The `ListKeyspaces` operation returns a list of keyspaces.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of keyspaces to return in the output. If the total
    #   number of keyspaces available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as an argument of a subsequent API invocation.
    #
    # @return [Types::ListKeyspacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeyspacesResponse#next_token #next_token} => String
    #   * {Types::ListKeyspacesResponse#keyspaces #keyspaces} => Array&lt;Types::KeyspaceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keyspaces({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.keyspaces #=> Array
    #   resp.keyspaces[0].keyspace_name #=> String
    #   resp.keyspaces[0].resource_arn #=> String
    #   resp.keyspaces[0].replication_strategy #=> String, one of "SINGLE_REGION", "MULTI_REGION"
    #   resp.keyspaces[0].replication_regions #=> Array
    #   resp.keyspaces[0].replication_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListKeyspaces AWS API Documentation
    #
    # @overload list_keyspaces(params = {})
    # @param [Hash] params ({})
    def list_keyspaces(params = {}, options = {})
      req = build_request(:list_keyspaces, params)
      req.send_request(options)
    end

    # The `ListTables` operation returns a list of tables for a specified
    # keyspace.
    #
    # To read keyspace metadata using `ListTables`, the IAM principal needs
    # `Select` action permissions for the system keyspace.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as an argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of tables to return in the output. If the total
    #   number of tables available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as an argument of a subsequent API invocation.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace.
    #
    # @return [Types::ListTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesResponse#next_token #next_token} => String
    #   * {Types::ListTablesResponse#tables #tables} => Array&lt;Types::TableSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     keyspace_name: "KeyspaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tables #=> Array
    #   resp.tables[0].keyspace_name #=> String
    #   resp.tables[0].table_name #=> String
    #   resp.tables[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
      req.send_request(options)
    end

    # Returns a list of all tags associated with the specified Amazon
    # Keyspaces resource.
    #
    # To read keyspace metadata using `ListTagsForResource`, the IAM
    # principal needs `Select` action permissions for the specified resource
    # and the system keyspace.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of tags to return in the output. If the total number
    #   of tags available is more than the value specified, a `NextToken` is
    #   provided in the output. To resume pagination, provide the `NextToken`
    #   value as an argument of a subsequent API invocation.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ARN", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # The `ListTypes` operation returns a list of types for a specified
    # keyspace.
    #
    # To read keyspace metadata using `ListTypes`, the IAM principal needs
    # `Select` action permissions for the system keyspace. To configure the
    # required permissions, see [Permissions to view a UDT][1] in the
    # *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as an argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of types to return in the output. If the total number
    #   of types available is more than the value specified, a `NextToken` is
    #   provided in the output. To resume pagination, provide the `NextToken`
    #   value as an argument of a subsequent API invocation.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace that contains the listed types.
    #
    # @return [Types::ListTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTypesResponse#next_token #next_token} => String
    #   * {Types::ListTypesResponse#types #types} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_types({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     keyspace_name: "KeyspaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.types #=> Array
    #   resp.types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTypes AWS API Documentation
    #
    # @overload list_types(params = {})
    # @param [Hash] params ({})
    def list_types(params = {}, options = {})
      req = build_request(:list_types, params)
      req.send_request(options)
    end

    # Restores the table to the specified point in time within the
    # `earliest_restorable_timestamp` and the current time. For more
    # information about restore points, see [ Time window for PITR
    # continuous backups][1] in the *Amazon Keyspaces Developer Guide*.
    #
    # Any number of users can execute up to 4 concurrent restores (any type
    # of restore) in a given account.
    #
    # When you restore using point in time recovery, Amazon Keyspaces
    # restores your source table's schema and data to the state based on
    # the selected timestamp `(day:hour:minute:second)` to a new table. The
    # Time to Live (TTL) settings are also restored to the state based on
    # the selected timestamp.
    #
    # In addition to the table's schema, data, and TTL settings,
    # `RestoreTable` restores the capacity mode, auto scaling settings,
    # encryption settings, and point-in-time recovery settings from the
    # source table. Unlike the table's schema data and TTL settings, which
    # are restored based on the selected timestamp, these settings are
    # always restored based on the table's settings as of the current time
    # or when the table was deleted.
    #
    # You can also overwrite these settings during restore:
    #
    # * Read/write capacity mode
    #
    # * Provisioned throughput capacity units
    #
    # * Auto scaling settings
    #
    # * Point-in-time (PITR) settings
    #
    # * Tags
    #
    # For more information, see [PITR restore settings][2] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    # Note that the following settings are not restored, and you must
    # configure them manually for the new table:
    #
    # * Identity and Access Management (IAM) policies
    #
    # * Amazon CloudWatch metrics and alarms
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window
    # [2]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings
    #
    # @option params [required, String] :source_keyspace_name
    #   The keyspace name of the source table.
    #
    # @option params [required, String] :source_table_name
    #   The name of the source table.
    #
    # @option params [required, String] :target_keyspace_name
    #   The name of the target keyspace.
    #
    # @option params [required, String] :target_table_name
    #   The name of the target table.
    #
    # @option params [Time,DateTime,Date,Integer,String] :restore_timestamp
    #   The restore timestamp in ISO 8601 format.
    #
    # @option params [Types::CapacitySpecification] :capacity_specification_override
    #   Specifies the read/write throughput capacity mode for the target
    #   table. The options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST`
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #
    # @option params [Types::EncryptionSpecification] :encryption_specification_override
    #   Specifies the encryption settings for the target table. You can choose
    #   one of the following KMS key (KMS key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your account
    #     and is created, owned, and managed by you. This option requires the
    #     `kms_key_identifier` of the KMS key in Amazon Resource Name (ARN)
    #     format as input.
    #
    #   The default is `type:AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery_override
    #   Specifies the `pointInTimeRecovery` settings for the target table. The
    #   options are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #
    # @option params [Array<Types::Tag>] :tags_override
    #   A list of key-value pair tags to be attached to the restored table.
    #
    #   For more information, see [Adding tags and labels to Amazon Keyspaces
    #   resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #
    # @option params [Types::AutoScalingSpecification] :auto_scaling_specification
    #   The optional auto scaling settings for the restored table in
    #   provisioned capacity mode. Specifies if the service can manage
    #   throughput capacity of a provisioned table automatically on your
    #   behalf. Amazon Keyspaces auto scaling helps you provision throughput
    #   capacity for variable workloads efficiently by increasing and
    #   decreasing your table's read and write capacity automatically in
    #   response to application traffic.
    #
    #   For more information, see [Managing throughput capacity automatically
    #   with Amazon Keyspaces auto scaling][1] in the *Amazon Keyspaces
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html
    #
    # @option params [Array<Types::ReplicaSpecification>] :replica_specifications
    #   The optional Region specific settings of a multi-Regional table.
    #
    # @return [Types::RestoreTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableResponse#restored_table_arn #restored_table_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table({
    #     source_keyspace_name: "KeyspaceName", # required
    #     source_table_name: "TableName", # required
    #     target_keyspace_name: "KeyspaceName", # required
    #     target_table_name: "TableName", # required
    #     restore_timestamp: Time.now,
    #     capacity_specification_override: {
    #       throughput_mode: "PAY_PER_REQUEST", # required, accepts PAY_PER_REQUEST, PROVISIONED
    #       read_capacity_units: 1,
    #       write_capacity_units: 1,
    #     },
    #     encryption_specification_override: {
    #       type: "CUSTOMER_MANAGED_KMS_KEY", # required, accepts CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
    #       kms_key_identifier: "kmsKeyARN",
    #     },
    #     point_in_time_recovery_override: {
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     tags_override: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     auto_scaling_specification: {
    #       write_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           },
    #         },
    #       },
    #       read_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           },
    #         },
    #       },
    #     },
    #     replica_specifications: [
    #       {
    #         region: "region", # required
    #         read_capacity_units: 1,
    #         read_capacity_auto_scaling: {
    #           auto_scaling_disabled: false,
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           scaling_policy: {
    #             target_tracking_scaling_policy_configuration: {
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.restored_table_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/RestoreTable AWS API Documentation
    #
    # @overload restore_table(params = {})
    # @param [Hash] params ({})
    def restore_table(params = {}, options = {})
      req = build_request(:restore_table, params)
      req.send_request(options)
    end

    # Associates a set of tags with a Amazon Keyspaces resource. You can
    # then activate these user-defined tags so that they appear on the Cost
    # Management Console for cost allocation tracking. For more information,
    # see [Adding tags and labels to Amazon Keyspaces resources][1] in the
    # *Amazon Keyspaces Developer Guide*.
    #
    # For IAM policy examples that show how to control access to Amazon
    # Keyspaces resources based on tags, see [Amazon Keyspaces resource
    # access based on tags][2] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    # [2]: https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-tags
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to
    #   which to add tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Amazon Keyspaces resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the association of tags from a Amazon Keyspaces resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Keyspaces resource that the tags will be removed from. This
    #   value is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of existing tags to be removed from the Amazon Keyspaces
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Adds a new Amazon Web Services Region to the keyspace. You can add a
    # new Region to a keyspace that is either a single or a multi-Region
    # keyspace. Amazon Keyspaces is going to replicate all tables in the
    # keyspace to the new Region. To successfully replicate all tables to
    # the new Region, they must use client-side timestamps for conflict
    # resolution. To enable client-side timestamps, specify
    # `clientSideTimestamps.status = enabled` when invoking the API. For
    # more information about client-side timestamps, see [Client-side
    # timestamps in Amazon Keyspaces][1] in the *Amazon Keyspaces Developer
    # Guide*.
    #
    # To add a Region to a keyspace using the `UpdateKeyspace` API, the IAM
    # principal needs permissions for the following IAM actions:
    #
    # * `cassandra:Alter`
    #
    # * `cassandra:AlterMultiRegionResource`
    #
    # * `cassandra:Create`
    #
    # * `cassandra:CreateMultiRegionResource`
    #
    # * `cassandra:Select`
    #
    # * `cassandra:SelectMultiRegionResource`
    #
    # * `cassandra:Modify`
    #
    # * `cassandra:ModifyMultiRegionResource`
    #
    # If the keyspace contains a table that is configured in provisioned
    # mode with auto scaling enabled, the following additional IAM actions
    # need to be allowed.
    #
    # * `application-autoscaling:RegisterScalableTarget`
    #
    # * `application-autoscaling:DeregisterScalableTarget`
    #
    # * `application-autoscaling:DescribeScalableTargets`
    #
    # * `application-autoscaling:PutScalingPolicy`
    #
    # * `application-autoscaling:DescribeScalingPolicies`
    #
    # To use the `UpdateKeyspace` API, the IAM principal also needs
    # permissions to create a service-linked role with the following
    # elements:
    #
    # * `iam:CreateServiceLinkedRole` - The **action** the principal can
    #   perform.
    #
    # * `arn:aws:iam::*:role/aws-service-role/replication.cassandra.amazonaws.com/AWSServiceRoleForKeyspacesReplication`
    #   - The **resource** that the action can be performed on.
    #
    # * `iam:AWSServiceName: replication.cassandra.amazonaws.com` - The only
    #   Amazon Web Services service that this role can be attached to is
    #   Amazon Keyspaces.
    #
    # For more information, see [Configure the IAM permissions required to
    # add an Amazon Web Services Region to a keyspace][2] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps.html
    # [2]: https://docs.aws.amazon.com/keyspaces/latest/devguide/howitworks_replication_permissions_addReplica.html
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace.
    #
    # @option params [required, Types::ReplicationSpecification] :replication_specification
    #   The replication specification of the keyspace includes:
    #
    #   * `regionList` - the Amazon Web Services Regions where the keyspace is
    #     replicated in.
    #
    #   * `replicationStrategy` - the required value is `SINGLE_REGION` or
    #     `MULTI_REGION`.
    #
    # @option params [Types::ClientSideTimestamps] :client_side_timestamps
    #   The client-side timestamp setting of the table.
    #
    #   For more information, see [How it works: Amazon Keyspaces client-side
    #   timestamps][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps-how-it-works.html
    #
    # @return [Types::UpdateKeyspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKeyspaceResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_keyspace({
    #     keyspace_name: "KeyspaceName", # required
    #     replication_specification: { # required
    #       replication_strategy: "SINGLE_REGION", # required, accepts SINGLE_REGION, MULTI_REGION
    #       region_list: ["region"],
    #     },
    #     client_side_timestamps: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UpdateKeyspace AWS API Documentation
    #
    # @overload update_keyspace(params = {})
    # @param [Hash] params ({})
    def update_keyspace(params = {}, options = {})
      req = build_request(:update_keyspace, params)
      req.send_request(options)
    end

    # Adds new columns to the table or updates one of the table's settings,
    # for example capacity mode, auto scaling, encryption, point-in-time
    # recovery, or ttl settings. Note that you can only update one specific
    # table setting per update operation.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace the specified table is stored in.
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @option params [Array<Types::ColumnDefinition>] :add_columns
    #   For each column to be added to the specified table:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type. For more information, see
    #     [Data types][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types
    #
    # @option params [Types::CapacitySpecification] :capacity_specification
    #   Modifies the read/write throughput capacity mode for the table. The
    #   options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST` and
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #
    # @option params [Types::EncryptionSpecification] :encryption_specification
    #   Modifies the encryption settings of the table. You can choose one of
    #   the following KMS key (KMS key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your account
    #     and is created, owned, and managed by you. This option requires the
    #     `kms_key_identifier` of the KMS key in Amazon Resource Name (ARN)
    #     format as input.
    #
    #   The default is `AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery
    #   Modifies the `pointInTimeRecovery` settings of the table. The options
    #   are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #
    # @option params [Types::TimeToLive] :ttl
    #   Modifies Time to Live custom settings for the table. The options are:
    #
    #   * `status:enabled`
    #
    #   * `status:disabled`
    #
    #   The default is `status:disabled`. After `ttl` is enabled, you can't
    #   disable it for the table.
    #
    #   For more information, see [Expiring data by using Amazon Keyspaces
    #   Time to Live (TTL)][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html
    #
    # @option params [Integer] :default_time_to_live
    #   The default Time to Live setting in seconds for the table.
    #
    #   For more information, see [Setting the default TTL value for a
    #   table][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl
    #
    # @option params [Types::ClientSideTimestamps] :client_side_timestamps
    #   Enables client-side timestamps for the table. By default, the setting
    #   is disabled. You can enable client-side timestamps with the following
    #   option:
    #
    #   * `status: "enabled"`
    #
    #   ^
    #
    #   Once client-side timestamps are enabled for a table, this setting
    #   cannot be disabled.
    #
    # @option params [Types::AutoScalingSpecification] :auto_scaling_specification
    #   The optional auto scaling settings to update for a table in
    #   provisioned capacity mode. Specifies if the service can manage
    #   throughput capacity of a provisioned table automatically on your
    #   behalf. Amazon Keyspaces auto scaling helps you provision throughput
    #   capacity for variable workloads efficiently by increasing and
    #   decreasing your table's read and write capacity automatically in
    #   response to application traffic.
    #
    #   If auto scaling is already enabled for the table, you can use
    #   `UpdateTable` to update the minimum and maximum values or the auto
    #   scaling policy settings independently.
    #
    #   For more information, see [Managing throughput capacity automatically
    #   with Amazon Keyspaces auto scaling][1] in the *Amazon Keyspaces
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html
    #
    # @option params [Array<Types::ReplicaSpecification>] :replica_specifications
    #   The Region specific settings of a multi-Regional table.
    #
    # @option params [Types::CdcSpecification] :cdc_specification
    #   The CDC stream settings of the table.
    #
    # @return [Types::UpdateTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTableResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     add_columns: [
    #       {
    #         name: "GenericString", # required
    #         type: "GenericString", # required
    #       },
    #     ],
    #     capacity_specification: {
    #       throughput_mode: "PAY_PER_REQUEST", # required, accepts PAY_PER_REQUEST, PROVISIONED
    #       read_capacity_units: 1,
    #       write_capacity_units: 1,
    #     },
    #     encryption_specification: {
    #       type: "CUSTOMER_MANAGED_KMS_KEY", # required, accepts CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
    #       kms_key_identifier: "kmsKeyARN",
    #     },
    #     point_in_time_recovery: {
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     ttl: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #     default_time_to_live: 1,
    #     client_side_timestamps: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #     auto_scaling_specification: {
    #       write_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           },
    #         },
    #       },
    #       read_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           },
    #         },
    #       },
    #     },
    #     replica_specifications: [
    #       {
    #         region: "region", # required
    #         read_capacity_units: 1,
    #         read_capacity_auto_scaling: {
    #           auto_scaling_disabled: false,
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           scaling_policy: {
    #             target_tracking_scaling_policy_configuration: {
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     cdc_specification: {
    #       status: "ENABLED", # required, accepts ENABLED, ENABLING, DISABLED, DISABLING
    #       view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, KEYS_ONLY, NEW_AND_OLD_IMAGES
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         },
    #       ],
    #       propagate_tags: "TABLE", # accepts TABLE, NONE
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UpdateTable AWS API Documentation
    #
    # @overload update_table(params = {})
    # @param [Hash] params ({})
    def update_table(params = {}, options = {})
      req = build_request(:update_table, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Keyspaces')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-keyspaces'
      context[:gem_version] = '1.43.0'
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
