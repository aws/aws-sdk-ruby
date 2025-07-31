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

module Aws::TimestreamInfluxDB
  # An API client for TimestreamInfluxDB.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::TimestreamInfluxDB::Client.new(
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

    @identifier = :timestreaminfluxdb

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
    add_plugin(Aws::TimestreamInfluxDB::Plugins::Endpoints)

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
    #   @option options [Aws::TimestreamInfluxDB::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::TimestreamInfluxDB::EndpointParameters`.
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

    # Creates a new Timestream for InfluxDB cluster.
    #
    # @option params [required, String] :name
    #   The name that uniquely identifies the DB cluster when interacting with
    #   the Amazon Timestream for InfluxDB API and CLI commands. This name
    #   will also be a prefix included in the endpoint. DB cluster names must
    #   be unique per customer and per region.
    #
    # @option params [String] :username
    #   The username of the initial admin user created in InfluxDB. Must start
    #   with a letter and can't end with a hyphen or contain two consecutive
    #   hyphens. For example, my-user1. This username will allow you to access
    #   the InfluxDB UI to perform various administrative tasks and also use
    #   the InfluxDB CLI to create an operator token. These attributes will be
    #   stored in a secret created in Secrets Manager in your account.
    #
    # @option params [required, String] :password
    #   The password of the initial admin user created in InfluxDB. This
    #   password will allow you to access the InfluxDB UI to perform various
    #   administrative tasks and also use the InfluxDB CLI to create an
    #   operator token. These attributes will be stored in a secret created in
    #   Secrets Manager in your account.
    #
    # @option params [String] :organization
    #   The name of the initial organization for the initial admin user in
    #   InfluxDB. An InfluxDB organization is a workspace for a group of
    #   users.
    #
    # @option params [String] :bucket
    #   The name of the initial InfluxDB bucket. All InfluxDB data is stored
    #   in a bucket. A bucket combines the concept of a database and a
    #   retention period (the duration of time that each data point persists).
    #   A bucket belongs to an organization.
    #
    # @option params [Integer] :port
    #   The port number on which InfluxDB accepts connections.
    #
    #   Valid Values: 1024-65535
    #
    #   Default: 8086
    #
    #   Constraints: The value can't be 2375-2376, 7788-7799, 8090, or
    #   51678-51680
    #
    # @option params [String] :db_parameter_group_identifier
    #   The ID of the DB parameter group to assign to your DB cluster. DB
    #   parameter groups specify how the database is configured. For example,
    #   DB parameter groups can specify the limit for query concurrency.
    #
    # @option params [required, String] :db_instance_type
    #   The Timestream for InfluxDB DB instance type to run InfluxDB on.
    #
    # @option params [String] :db_storage_type
    #   The Timestream for InfluxDB DB storage type to read and write InfluxDB
    #   data.
    #
    #   You can choose between three different types of provisioned Influx
    #   IOPS Included storage according to your workload requirements:
    #
    #   * Influx I/O Included 3000 IOPS
    #
    #   * Influx I/O Included 12000 IOPS
    #
    #   * Influx I/O Included 16000 IOPS
    #
    # @option params [required, Integer] :allocated_storage
    #   The amount of storage to allocate for your DB storage type in GiB
    #   (gibibytes).
    #
    # @option params [String] :network_type
    #   Specifies whether the network type of the Timestream for InfluxDB
    #   cluster is IPv4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #
    # @option params [Boolean] :publicly_accessible
    #   Configures the Timestream for InfluxDB cluster with a public IP to
    #   facilitate access from outside the VPC.
    #
    # @option params [required, Array<String>] :vpc_subnet_ids
    #   A list of VPC subnet IDs to associate with the DB cluster. Provide at
    #   least two VPC subnet IDs in different Availability Zones when
    #   deploying with a Multi-AZ standby.
    #
    # @option params [required, Array<String>] :vpc_security_group_ids
    #   A list of VPC security group IDs to associate with the Timestream for
    #   InfluxDB cluster.
    #
    # @option params [required, String] :deployment_type
    #   Specifies the type of cluster to create.
    #
    # @option params [String] :failover_mode
    #   Specifies the behavior of failure recovery when the primary node of
    #   the cluster fails.
    #
    # @option params [Types::LogDeliveryConfiguration] :log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to a specified S3
    #   bucket.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to associate with the DB instance.
    #
    # @return [Types::CreateDbClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDbClusterOutput#db_cluster_id #db_cluster_id} => String
    #   * {Types::CreateDbClusterOutput#db_cluster_status #db_cluster_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster({
    #     name: "DbClusterName", # required
    #     username: "Username",
    #     password: "Password", # required
    #     organization: "Organization",
    #     bucket: "Bucket",
    #     port: 1,
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     db_instance_type: "db.influx.medium", # required, accepts db.influx.medium, db.influx.large, db.influx.xlarge, db.influx.2xlarge, db.influx.4xlarge, db.influx.8xlarge, db.influx.12xlarge, db.influx.16xlarge, db.influx.24xlarge
    #     db_storage_type: "InfluxIOIncludedT1", # accepts InfluxIOIncludedT1, InfluxIOIncludedT2, InfluxIOIncludedT3
    #     allocated_storage: 1, # required
    #     network_type: "IPV4", # accepts IPV4, DUAL
    #     publicly_accessible: false,
    #     vpc_subnet_ids: ["VpcSubnetId"], # required
    #     vpc_security_group_ids: ["VpcSecurityGroupId"], # required
    #     deployment_type: "MULTI_NODE_READ_REPLICAS", # required, accepts MULTI_NODE_READ_REPLICAS
    #     failover_mode: "AUTOMATIC", # accepts AUTOMATIC, NO_FAILOVER
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "S3ConfigurationBucketNameString", # required
    #         enabled: false, # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_id #=> String
    #   resp.db_cluster_status #=> String, one of "CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbCluster AWS API Documentation
    #
    # @overload create_db_cluster(params = {})
    # @param [Hash] params ({})
    def create_db_cluster(params = {}, options = {})
      req = build_request(:create_db_cluster, params)
      req.send_request(options)
    end

    # Creates a new Timestream for InfluxDB DB instance.
    #
    # @option params [required, String] :name
    #   The name that uniquely identifies the DB instance when interacting
    #   with the Amazon Timestream for InfluxDB API and CLI commands. This
    #   name will also be a prefix included in the endpoint. DB instance names
    #   must be unique per customer and per region.
    #
    # @option params [String] :username
    #   The username of the initial admin user created in InfluxDB. Must start
    #   with a letter and can't end with a hyphen or contain two consecutive
    #   hyphens. For example, my-user1. This username will allow you to access
    #   the InfluxDB UI to perform various administrative tasks and also use
    #   the InfluxDB CLI to create an operator token. These attributes will be
    #   stored in a Secret created in Amazon Secrets Manager in your account.
    #
    # @option params [required, String] :password
    #   The password of the initial admin user created in InfluxDB. This
    #   password will allow you to access the InfluxDB UI to perform various
    #   administrative tasks and also use the InfluxDB CLI to create an
    #   operator token. These attributes will be stored in a Secret created in
    #   Secrets Manager in your account.
    #
    # @option params [String] :organization
    #   The name of the initial organization for the initial admin user in
    #   InfluxDB. An InfluxDB organization is a workspace for a group of
    #   users.
    #
    # @option params [String] :bucket
    #   The name of the initial InfluxDB bucket. All InfluxDB data is stored
    #   in a bucket. A bucket combines the concept of a database and a
    #   retention period (the duration of time that each data point persists).
    #   A bucket belongs to an organization.
    #
    # @option params [required, String] :db_instance_type
    #   The Timestream for InfluxDB DB instance type to run InfluxDB on.
    #
    # @option params [required, Array<String>] :vpc_subnet_ids
    #   A list of VPC subnet IDs to associate with the DB instance. Provide at
    #   least two VPC subnet IDs in different availability zones when
    #   deploying with a Multi-AZ standby.
    #
    # @option params [required, Array<String>] :vpc_security_group_ids
    #   A list of VPC security group IDs to associate with the DB instance.
    #
    # @option params [Boolean] :publicly_accessible
    #   Configures the DB instance with a public IP to facilitate access.
    #
    # @option params [String] :db_storage_type
    #   The Timestream for InfluxDB DB storage type to read and write InfluxDB
    #   data.
    #
    #   You can choose between 3 different types of provisioned Influx IOPS
    #   included storage according to your workloads requirements:
    #
    #   * Influx IO Included 3000 IOPS
    #
    #   * Influx IO Included 12000 IOPS
    #
    #   * Influx IO Included 16000 IOPS
    #
    # @option params [required, Integer] :allocated_storage
    #   The amount of storage to allocate for your DB storage type in GiB
    #   (gibibytes).
    #
    # @option params [String] :db_parameter_group_identifier
    #   The id of the DB parameter group to assign to your DB instance. DB
    #   parameter groups specify how the database is configured. For example,
    #   DB parameter groups can specify the limit for query concurrency.
    #
    # @option params [String] :deployment_type
    #   Specifies whether the DB instance will be deployed as a standalone
    #   instance or with a Multi-AZ standby for high availability.
    #
    # @option params [Types::LogDeliveryConfiguration] :log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to a specified S3
    #   bucket.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to associate with the DB instance.
    #
    # @option params [Integer] :port
    #   The port number on which InfluxDB accepts connections.
    #
    #   Valid Values: 1024-65535
    #
    #   Default: 8086
    #
    #   Constraints: The value can't be 2375-2376, 7788-7799, 8090, or
    #   51678-51680
    #
    # @option params [String] :network_type
    #   Specifies whether the networkType of the Timestream for InfluxDB
    #   instance is IPV4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #
    # @return [Types::CreateDbInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDbInstanceOutput#id #id} => String
    #   * {Types::CreateDbInstanceOutput#name #name} => String
    #   * {Types::CreateDbInstanceOutput#arn #arn} => String
    #   * {Types::CreateDbInstanceOutput#status #status} => String
    #   * {Types::CreateDbInstanceOutput#endpoint #endpoint} => String
    #   * {Types::CreateDbInstanceOutput#port #port} => Integer
    #   * {Types::CreateDbInstanceOutput#network_type #network_type} => String
    #   * {Types::CreateDbInstanceOutput#db_instance_type #db_instance_type} => String
    #   * {Types::CreateDbInstanceOutput#db_storage_type #db_storage_type} => String
    #   * {Types::CreateDbInstanceOutput#allocated_storage #allocated_storage} => Integer
    #   * {Types::CreateDbInstanceOutput#deployment_type #deployment_type} => String
    #   * {Types::CreateDbInstanceOutput#vpc_subnet_ids #vpc_subnet_ids} => Array&lt;String&gt;
    #   * {Types::CreateDbInstanceOutput#publicly_accessible #publicly_accessible} => Boolean
    #   * {Types::CreateDbInstanceOutput#vpc_security_group_ids #vpc_security_group_ids} => Array&lt;String&gt;
    #   * {Types::CreateDbInstanceOutput#db_parameter_group_identifier #db_parameter_group_identifier} => String
    #   * {Types::CreateDbInstanceOutput#availability_zone #availability_zone} => String
    #   * {Types::CreateDbInstanceOutput#secondary_availability_zone #secondary_availability_zone} => String
    #   * {Types::CreateDbInstanceOutput#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfiguration
    #   * {Types::CreateDbInstanceOutput#influx_auth_parameters_secret_arn #influx_auth_parameters_secret_arn} => String
    #   * {Types::CreateDbInstanceOutput#db_cluster_id #db_cluster_id} => String
    #   * {Types::CreateDbInstanceOutput#instance_mode #instance_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_instance({
    #     name: "DbInstanceName", # required
    #     username: "Username",
    #     password: "Password", # required
    #     organization: "Organization",
    #     bucket: "Bucket",
    #     db_instance_type: "db.influx.medium", # required, accepts db.influx.medium, db.influx.large, db.influx.xlarge, db.influx.2xlarge, db.influx.4xlarge, db.influx.8xlarge, db.influx.12xlarge, db.influx.16xlarge, db.influx.24xlarge
    #     vpc_subnet_ids: ["VpcSubnetId"], # required
    #     vpc_security_group_ids: ["VpcSecurityGroupId"], # required
    #     publicly_accessible: false,
    #     db_storage_type: "InfluxIOIncludedT1", # accepts InfluxIOIncludedT1, InfluxIOIncludedT2, InfluxIOIncludedT3
    #     allocated_storage: 1, # required
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     deployment_type: "SINGLE_AZ", # accepts SINGLE_AZ, WITH_MULTIAZ_STANDBY
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "S3ConfigurationBucketNameString", # required
    #         enabled: false, # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     port: 1,
    #     network_type: "IPV4", # accepts IPV4, DUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE"
    #   resp.endpoint #=> String
    #   resp.port #=> Integer
    #   resp.network_type #=> String, one of "IPV4", "DUAL"
    #   resp.db_instance_type #=> String, one of "db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"
    #   resp.db_storage_type #=> String, one of "InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"
    #   resp.allocated_storage #=> Integer
    #   resp.deployment_type #=> String, one of "SINGLE_AZ", "WITH_MULTIAZ_STANDBY"
    #   resp.vpc_subnet_ids #=> Array
    #   resp.vpc_subnet_ids[0] #=> String
    #   resp.publicly_accessible #=> Boolean
    #   resp.vpc_security_group_ids #=> Array
    #   resp.vpc_security_group_ids[0] #=> String
    #   resp.db_parameter_group_identifier #=> String
    #   resp.availability_zone #=> String
    #   resp.secondary_availability_zone #=> String
    #   resp.log_delivery_configuration.s3_configuration.bucket_name #=> String
    #   resp.log_delivery_configuration.s3_configuration.enabled #=> Boolean
    #   resp.influx_auth_parameters_secret_arn #=> String
    #   resp.db_cluster_id #=> String
    #   resp.instance_mode #=> String, one of "PRIMARY", "STANDBY", "REPLICA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbInstance AWS API Documentation
    #
    # @overload create_db_instance(params = {})
    # @param [Hash] params ({})
    def create_db_instance(params = {}, options = {})
      req = build_request(:create_db_instance, params)
      req.send_request(options)
    end

    # Creates a new Timestream for InfluxDB DB parameter group to associate
    # with DB instances.
    #
    # @option params [required, String] :name
    #   The name of the DB parameter group. The name must be unique per
    #   customer and per region.
    #
    # @option params [String] :description
    #   A description of the DB parameter group.
    #
    # @option params [Types::Parameters] :parameters
    #   A list of the parameters that comprise the DB parameter group.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to associate with the DB parameter group.
    #
    # @return [Types::CreateDbParameterGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDbParameterGroupOutput#id #id} => String
    #   * {Types::CreateDbParameterGroupOutput#name #name} => String
    #   * {Types::CreateDbParameterGroupOutput#arn #arn} => String
    #   * {Types::CreateDbParameterGroupOutput#description #description} => String
    #   * {Types::CreateDbParameterGroupOutput#parameters #parameters} => Types::Parameters
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_parameter_group({
    #     name: "DbParameterGroupName", # required
    #     description: "CreateDbParameterGroupInputDescriptionString",
    #     parameters: {
    #       influx_d_bv_2: {
    #         flux_log_enabled: false,
    #         log_level: "debug", # accepts debug, info, error
    #         no_tasks: false,
    #         query_concurrency: 1,
    #         query_queue_size: 1,
    #         tracing_type: "log", # accepts log, jaeger
    #         metrics_disabled: false,
    #         http_idle_timeout: {
    #           duration_type: "hours", # required, accepts hours, minutes, seconds, milliseconds
    #           value: 1, # required
    #         },
    #         http_read_header_timeout: {
    #           duration_type: "hours", # required, accepts hours, minutes, seconds, milliseconds
    #           value: 1, # required
    #         },
    #         http_read_timeout: {
    #           duration_type: "hours", # required, accepts hours, minutes, seconds, milliseconds
    #           value: 1, # required
    #         },
    #         http_write_timeout: {
    #           duration_type: "hours", # required, accepts hours, minutes, seconds, milliseconds
    #           value: 1, # required
    #         },
    #         influxql_max_select_buckets: 1,
    #         influxql_max_select_point: 1,
    #         influxql_max_select_series: 1,
    #         pprof_disabled: false,
    #         query_initial_memory_bytes: 1,
    #         query_max_memory_bytes: 1,
    #         query_memory_bytes: 1,
    #         session_length: 1,
    #         session_renew_disabled: false,
    #         storage_cache_max_memory_size: 1,
    #         storage_cache_snapshot_memory_size: 1,
    #         storage_cache_snapshot_write_cold_duration: {
    #           duration_type: "hours", # required, accepts hours, minutes, seconds, milliseconds
    #           value: 1, # required
    #         },
    #         storage_compact_full_write_cold_duration: {
    #           duration_type: "hours", # required, accepts hours, minutes, seconds, milliseconds
    #           value: 1, # required
    #         },
    #         storage_compact_throughput_burst: 1,
    #         storage_max_concurrent_compactions: 1,
    #         storage_max_index_log_file_size: 1,
    #         storage_no_validate_field_size: false,
    #         storage_retention_check_interval: {
    #           duration_type: "hours", # required, accepts hours, minutes, seconds, milliseconds
    #           value: 1, # required
    #         },
    #         storage_series_file_max_concurrent_snapshot_compactions: 1,
    #         storage_series_id_set_cache_size: 1,
    #         storage_wal_max_concurrent_writes: 1,
    #         storage_wal_max_write_delay: {
    #           duration_type: "hours", # required, accepts hours, minutes, seconds, milliseconds
    #           value: 1, # required
    #         },
    #         ui_disabled: false,
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.parameters.influx_d_bv_2.flux_log_enabled #=> Boolean
    #   resp.parameters.influx_d_bv_2.log_level #=> String, one of "debug", "info", "error"
    #   resp.parameters.influx_d_bv_2.no_tasks #=> Boolean
    #   resp.parameters.influx_d_bv_2.query_concurrency #=> Integer
    #   resp.parameters.influx_d_bv_2.query_queue_size #=> Integer
    #   resp.parameters.influx_d_bv_2.tracing_type #=> String, one of "log", "jaeger"
    #   resp.parameters.influx_d_bv_2.metrics_disabled #=> Boolean
    #   resp.parameters.influx_d_bv_2.http_idle_timeout.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.http_idle_timeout.value #=> Integer
    #   resp.parameters.influx_d_bv_2.http_read_header_timeout.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.http_read_header_timeout.value #=> Integer
    #   resp.parameters.influx_d_bv_2.http_read_timeout.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.http_read_timeout.value #=> Integer
    #   resp.parameters.influx_d_bv_2.http_write_timeout.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.http_write_timeout.value #=> Integer
    #   resp.parameters.influx_d_bv_2.influxql_max_select_buckets #=> Integer
    #   resp.parameters.influx_d_bv_2.influxql_max_select_point #=> Integer
    #   resp.parameters.influx_d_bv_2.influxql_max_select_series #=> Integer
    #   resp.parameters.influx_d_bv_2.pprof_disabled #=> Boolean
    #   resp.parameters.influx_d_bv_2.query_initial_memory_bytes #=> Integer
    #   resp.parameters.influx_d_bv_2.query_max_memory_bytes #=> Integer
    #   resp.parameters.influx_d_bv_2.query_memory_bytes #=> Integer
    #   resp.parameters.influx_d_bv_2.session_length #=> Integer
    #   resp.parameters.influx_d_bv_2.session_renew_disabled #=> Boolean
    #   resp.parameters.influx_d_bv_2.storage_cache_max_memory_size #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_cache_snapshot_memory_size #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_cache_snapshot_write_cold_duration.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.storage_cache_snapshot_write_cold_duration.value #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_compact_full_write_cold_duration.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.storage_compact_full_write_cold_duration.value #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_compact_throughput_burst #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_max_concurrent_compactions #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_max_index_log_file_size #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_no_validate_field_size #=> Boolean
    #   resp.parameters.influx_d_bv_2.storage_retention_check_interval.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.storage_retention_check_interval.value #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_series_file_max_concurrent_snapshot_compactions #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_series_id_set_cache_size #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_wal_max_concurrent_writes #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_wal_max_write_delay.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.storage_wal_max_write_delay.value #=> Integer
    #   resp.parameters.influx_d_bv_2.ui_disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbParameterGroup AWS API Documentation
    #
    # @overload create_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_db_parameter_group(params = {}, options = {})
      req = build_request(:create_db_parameter_group, params)
      req.send_request(options)
    end

    # Deletes a Timestream for InfluxDB cluster.
    #
    # @option params [required, String] :db_cluster_id
    #   Service-generated unique identifier of the DB cluster.
    #
    # @return [Types::DeleteDbClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDbClusterOutput#db_cluster_status #db_cluster_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster({
    #     db_cluster_id: "DbClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_status #=> String, one of "CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DeleteDbCluster AWS API Documentation
    #
    # @overload delete_db_cluster(params = {})
    # @param [Hash] params ({})
    def delete_db_cluster(params = {}, options = {})
      req = build_request(:delete_db_cluster, params)
      req.send_request(options)
    end

    # Deletes a Timestream for InfluxDB DB instance.
    #
    # @option params [required, String] :identifier
    #   The id of the DB instance.
    #
    # @return [Types::DeleteDbInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDbInstanceOutput#id #id} => String
    #   * {Types::DeleteDbInstanceOutput#name #name} => String
    #   * {Types::DeleteDbInstanceOutput#arn #arn} => String
    #   * {Types::DeleteDbInstanceOutput#status #status} => String
    #   * {Types::DeleteDbInstanceOutput#endpoint #endpoint} => String
    #   * {Types::DeleteDbInstanceOutput#port #port} => Integer
    #   * {Types::DeleteDbInstanceOutput#network_type #network_type} => String
    #   * {Types::DeleteDbInstanceOutput#db_instance_type #db_instance_type} => String
    #   * {Types::DeleteDbInstanceOutput#db_storage_type #db_storage_type} => String
    #   * {Types::DeleteDbInstanceOutput#allocated_storage #allocated_storage} => Integer
    #   * {Types::DeleteDbInstanceOutput#deployment_type #deployment_type} => String
    #   * {Types::DeleteDbInstanceOutput#vpc_subnet_ids #vpc_subnet_ids} => Array&lt;String&gt;
    #   * {Types::DeleteDbInstanceOutput#publicly_accessible #publicly_accessible} => Boolean
    #   * {Types::DeleteDbInstanceOutput#vpc_security_group_ids #vpc_security_group_ids} => Array&lt;String&gt;
    #   * {Types::DeleteDbInstanceOutput#db_parameter_group_identifier #db_parameter_group_identifier} => String
    #   * {Types::DeleteDbInstanceOutput#availability_zone #availability_zone} => String
    #   * {Types::DeleteDbInstanceOutput#secondary_availability_zone #secondary_availability_zone} => String
    #   * {Types::DeleteDbInstanceOutput#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfiguration
    #   * {Types::DeleteDbInstanceOutput#influx_auth_parameters_secret_arn #influx_auth_parameters_secret_arn} => String
    #   * {Types::DeleteDbInstanceOutput#db_cluster_id #db_cluster_id} => String
    #   * {Types::DeleteDbInstanceOutput#instance_mode #instance_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_instance({
    #     identifier: "DbInstanceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE"
    #   resp.endpoint #=> String
    #   resp.port #=> Integer
    #   resp.network_type #=> String, one of "IPV4", "DUAL"
    #   resp.db_instance_type #=> String, one of "db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"
    #   resp.db_storage_type #=> String, one of "InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"
    #   resp.allocated_storage #=> Integer
    #   resp.deployment_type #=> String, one of "SINGLE_AZ", "WITH_MULTIAZ_STANDBY"
    #   resp.vpc_subnet_ids #=> Array
    #   resp.vpc_subnet_ids[0] #=> String
    #   resp.publicly_accessible #=> Boolean
    #   resp.vpc_security_group_ids #=> Array
    #   resp.vpc_security_group_ids[0] #=> String
    #   resp.db_parameter_group_identifier #=> String
    #   resp.availability_zone #=> String
    #   resp.secondary_availability_zone #=> String
    #   resp.log_delivery_configuration.s3_configuration.bucket_name #=> String
    #   resp.log_delivery_configuration.s3_configuration.enabled #=> Boolean
    #   resp.influx_auth_parameters_secret_arn #=> String
    #   resp.db_cluster_id #=> String
    #   resp.instance_mode #=> String, one of "PRIMARY", "STANDBY", "REPLICA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DeleteDbInstance AWS API Documentation
    #
    # @overload delete_db_instance(params = {})
    # @param [Hash] params ({})
    def delete_db_instance(params = {}, options = {})
      req = build_request(:delete_db_instance, params)
      req.send_request(options)
    end

    # Retrieves information about a Timestream for InfluxDB cluster.
    #
    # @option params [required, String] :db_cluster_id
    #   Service-generated unique identifier of the DB cluster to retrieve.
    #
    # @return [Types::GetDbClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDbClusterOutput#id #id} => String
    #   * {Types::GetDbClusterOutput#name #name} => String
    #   * {Types::GetDbClusterOutput#arn #arn} => String
    #   * {Types::GetDbClusterOutput#status #status} => String
    #   * {Types::GetDbClusterOutput#endpoint #endpoint} => String
    #   * {Types::GetDbClusterOutput#reader_endpoint #reader_endpoint} => String
    #   * {Types::GetDbClusterOutput#port #port} => Integer
    #   * {Types::GetDbClusterOutput#deployment_type #deployment_type} => String
    #   * {Types::GetDbClusterOutput#db_instance_type #db_instance_type} => String
    #   * {Types::GetDbClusterOutput#network_type #network_type} => String
    #   * {Types::GetDbClusterOutput#db_storage_type #db_storage_type} => String
    #   * {Types::GetDbClusterOutput#allocated_storage #allocated_storage} => Integer
    #   * {Types::GetDbClusterOutput#publicly_accessible #publicly_accessible} => Boolean
    #   * {Types::GetDbClusterOutput#db_parameter_group_identifier #db_parameter_group_identifier} => String
    #   * {Types::GetDbClusterOutput#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfiguration
    #   * {Types::GetDbClusterOutput#influx_auth_parameters_secret_arn #influx_auth_parameters_secret_arn} => String
    #   * {Types::GetDbClusterOutput#vpc_subnet_ids #vpc_subnet_ids} => Array&lt;String&gt;
    #   * {Types::GetDbClusterOutput#vpc_security_group_ids #vpc_security_group_ids} => Array&lt;String&gt;
    #   * {Types::GetDbClusterOutput#failover_mode #failover_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_db_cluster({
    #     db_cluster_id: "DbClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED"
    #   resp.endpoint #=> String
    #   resp.reader_endpoint #=> String
    #   resp.port #=> Integer
    #   resp.deployment_type #=> String, one of "MULTI_NODE_READ_REPLICAS"
    #   resp.db_instance_type #=> String, one of "db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"
    #   resp.network_type #=> String, one of "IPV4", "DUAL"
    #   resp.db_storage_type #=> String, one of "InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"
    #   resp.allocated_storage #=> Integer
    #   resp.publicly_accessible #=> Boolean
    #   resp.db_parameter_group_identifier #=> String
    #   resp.log_delivery_configuration.s3_configuration.bucket_name #=> String
    #   resp.log_delivery_configuration.s3_configuration.enabled #=> Boolean
    #   resp.influx_auth_parameters_secret_arn #=> String
    #   resp.vpc_subnet_ids #=> Array
    #   resp.vpc_subnet_ids[0] #=> String
    #   resp.vpc_security_group_ids #=> Array
    #   resp.vpc_security_group_ids[0] #=> String
    #   resp.failover_mode #=> String, one of "AUTOMATIC", "NO_FAILOVER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbCluster AWS API Documentation
    #
    # @overload get_db_cluster(params = {})
    # @param [Hash] params ({})
    def get_db_cluster(params = {}, options = {})
      req = build_request(:get_db_cluster, params)
      req.send_request(options)
    end

    # Returns a Timestream for InfluxDB DB instance.
    #
    # @option params [required, String] :identifier
    #   The id of the DB instance.
    #
    # @return [Types::GetDbInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDbInstanceOutput#id #id} => String
    #   * {Types::GetDbInstanceOutput#name #name} => String
    #   * {Types::GetDbInstanceOutput#arn #arn} => String
    #   * {Types::GetDbInstanceOutput#status #status} => String
    #   * {Types::GetDbInstanceOutput#endpoint #endpoint} => String
    #   * {Types::GetDbInstanceOutput#port #port} => Integer
    #   * {Types::GetDbInstanceOutput#network_type #network_type} => String
    #   * {Types::GetDbInstanceOutput#db_instance_type #db_instance_type} => String
    #   * {Types::GetDbInstanceOutput#db_storage_type #db_storage_type} => String
    #   * {Types::GetDbInstanceOutput#allocated_storage #allocated_storage} => Integer
    #   * {Types::GetDbInstanceOutput#deployment_type #deployment_type} => String
    #   * {Types::GetDbInstanceOutput#vpc_subnet_ids #vpc_subnet_ids} => Array&lt;String&gt;
    #   * {Types::GetDbInstanceOutput#publicly_accessible #publicly_accessible} => Boolean
    #   * {Types::GetDbInstanceOutput#vpc_security_group_ids #vpc_security_group_ids} => Array&lt;String&gt;
    #   * {Types::GetDbInstanceOutput#db_parameter_group_identifier #db_parameter_group_identifier} => String
    #   * {Types::GetDbInstanceOutput#availability_zone #availability_zone} => String
    #   * {Types::GetDbInstanceOutput#secondary_availability_zone #secondary_availability_zone} => String
    #   * {Types::GetDbInstanceOutput#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfiguration
    #   * {Types::GetDbInstanceOutput#influx_auth_parameters_secret_arn #influx_auth_parameters_secret_arn} => String
    #   * {Types::GetDbInstanceOutput#db_cluster_id #db_cluster_id} => String
    #   * {Types::GetDbInstanceOutput#instance_mode #instance_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_db_instance({
    #     identifier: "DbInstanceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE"
    #   resp.endpoint #=> String
    #   resp.port #=> Integer
    #   resp.network_type #=> String, one of "IPV4", "DUAL"
    #   resp.db_instance_type #=> String, one of "db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"
    #   resp.db_storage_type #=> String, one of "InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"
    #   resp.allocated_storage #=> Integer
    #   resp.deployment_type #=> String, one of "SINGLE_AZ", "WITH_MULTIAZ_STANDBY"
    #   resp.vpc_subnet_ids #=> Array
    #   resp.vpc_subnet_ids[0] #=> String
    #   resp.publicly_accessible #=> Boolean
    #   resp.vpc_security_group_ids #=> Array
    #   resp.vpc_security_group_ids[0] #=> String
    #   resp.db_parameter_group_identifier #=> String
    #   resp.availability_zone #=> String
    #   resp.secondary_availability_zone #=> String
    #   resp.log_delivery_configuration.s3_configuration.bucket_name #=> String
    #   resp.log_delivery_configuration.s3_configuration.enabled #=> Boolean
    #   resp.influx_auth_parameters_secret_arn #=> String
    #   resp.db_cluster_id #=> String
    #   resp.instance_mode #=> String, one of "PRIMARY", "STANDBY", "REPLICA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbInstance AWS API Documentation
    #
    # @overload get_db_instance(params = {})
    # @param [Hash] params ({})
    def get_db_instance(params = {}, options = {})
      req = build_request(:get_db_instance, params)
      req.send_request(options)
    end

    # Returns a Timestream for InfluxDB DB parameter group.
    #
    # @option params [required, String] :identifier
    #   The id of the DB parameter group.
    #
    # @return [Types::GetDbParameterGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDbParameterGroupOutput#id #id} => String
    #   * {Types::GetDbParameterGroupOutput#name #name} => String
    #   * {Types::GetDbParameterGroupOutput#arn #arn} => String
    #   * {Types::GetDbParameterGroupOutput#description #description} => String
    #   * {Types::GetDbParameterGroupOutput#parameters #parameters} => Types::Parameters
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_db_parameter_group({
    #     identifier: "DbParameterGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.parameters.influx_d_bv_2.flux_log_enabled #=> Boolean
    #   resp.parameters.influx_d_bv_2.log_level #=> String, one of "debug", "info", "error"
    #   resp.parameters.influx_d_bv_2.no_tasks #=> Boolean
    #   resp.parameters.influx_d_bv_2.query_concurrency #=> Integer
    #   resp.parameters.influx_d_bv_2.query_queue_size #=> Integer
    #   resp.parameters.influx_d_bv_2.tracing_type #=> String, one of "log", "jaeger"
    #   resp.parameters.influx_d_bv_2.metrics_disabled #=> Boolean
    #   resp.parameters.influx_d_bv_2.http_idle_timeout.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.http_idle_timeout.value #=> Integer
    #   resp.parameters.influx_d_bv_2.http_read_header_timeout.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.http_read_header_timeout.value #=> Integer
    #   resp.parameters.influx_d_bv_2.http_read_timeout.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.http_read_timeout.value #=> Integer
    #   resp.parameters.influx_d_bv_2.http_write_timeout.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.http_write_timeout.value #=> Integer
    #   resp.parameters.influx_d_bv_2.influxql_max_select_buckets #=> Integer
    #   resp.parameters.influx_d_bv_2.influxql_max_select_point #=> Integer
    #   resp.parameters.influx_d_bv_2.influxql_max_select_series #=> Integer
    #   resp.parameters.influx_d_bv_2.pprof_disabled #=> Boolean
    #   resp.parameters.influx_d_bv_2.query_initial_memory_bytes #=> Integer
    #   resp.parameters.influx_d_bv_2.query_max_memory_bytes #=> Integer
    #   resp.parameters.influx_d_bv_2.query_memory_bytes #=> Integer
    #   resp.parameters.influx_d_bv_2.session_length #=> Integer
    #   resp.parameters.influx_d_bv_2.session_renew_disabled #=> Boolean
    #   resp.parameters.influx_d_bv_2.storage_cache_max_memory_size #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_cache_snapshot_memory_size #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_cache_snapshot_write_cold_duration.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.storage_cache_snapshot_write_cold_duration.value #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_compact_full_write_cold_duration.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.storage_compact_full_write_cold_duration.value #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_compact_throughput_burst #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_max_concurrent_compactions #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_max_index_log_file_size #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_no_validate_field_size #=> Boolean
    #   resp.parameters.influx_d_bv_2.storage_retention_check_interval.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.storage_retention_check_interval.value #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_series_file_max_concurrent_snapshot_compactions #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_series_id_set_cache_size #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_wal_max_concurrent_writes #=> Integer
    #   resp.parameters.influx_d_bv_2.storage_wal_max_write_delay.duration_type #=> String, one of "hours", "minutes", "seconds", "milliseconds"
    #   resp.parameters.influx_d_bv_2.storage_wal_max_write_delay.value #=> Integer
    #   resp.parameters.influx_d_bv_2.ui_disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbParameterGroup AWS API Documentation
    #
    # @overload get_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def get_db_parameter_group(params = {}, options = {})
      req = build_request(:get_db_parameter_group, params)
      req.send_request(options)
    end

    # Returns a list of Timestream for InfluxDB DB clusters.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the nextToken
    #   value as an argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   nextToken is provided in the output. To resume pagination, provide the
    #   nextToken value as an argument of a subsequent API invocation.
    #
    # @return [Types::ListDbClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbClustersOutput#items #items} => Array&lt;Types::DbClusterSummary&gt;
    #   * {Types::ListDbClustersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_clusters({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED"
    #   resp.items[0].endpoint #=> String
    #   resp.items[0].reader_endpoint #=> String
    #   resp.items[0].port #=> Integer
    #   resp.items[0].deployment_type #=> String, one of "MULTI_NODE_READ_REPLICAS"
    #   resp.items[0].db_instance_type #=> String, one of "db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"
    #   resp.items[0].network_type #=> String, one of "IPV4", "DUAL"
    #   resp.items[0].db_storage_type #=> String, one of "InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"
    #   resp.items[0].allocated_storage #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbClusters AWS API Documentation
    #
    # @overload list_db_clusters(params = {})
    # @param [Hash] params ({})
    def list_db_clusters(params = {}, options = {})
      req = build_request(:list_db_clusters, params)
      req.send_request(options)
    end

    # Returns a list of Timestream for InfluxDB DB instances.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   NextToken is provided in the output. To resume pagination, provide the
    #   NextToken value as argument of a subsequent API invocation.
    #
    # @return [Types::ListDbInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbInstancesOutput#items #items} => Array&lt;Types::DbInstanceSummary&gt;
    #   * {Types::ListDbInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_instances({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE"
    #   resp.items[0].endpoint #=> String
    #   resp.items[0].port #=> Integer
    #   resp.items[0].network_type #=> String, one of "IPV4", "DUAL"
    #   resp.items[0].db_instance_type #=> String, one of "db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"
    #   resp.items[0].db_storage_type #=> String, one of "InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"
    #   resp.items[0].allocated_storage #=> Integer
    #   resp.items[0].deployment_type #=> String, one of "SINGLE_AZ", "WITH_MULTIAZ_STANDBY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbInstances AWS API Documentation
    #
    # @overload list_db_instances(params = {})
    # @param [Hash] params ({})
    def list_db_instances(params = {}, options = {})
      req = build_request(:list_db_instances, params)
      req.send_request(options)
    end

    # Returns a list of Timestream for InfluxDB clusters.
    #
    # @option params [required, String] :db_cluster_id
    #   Service-generated unique identifier of the DB cluster.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the nextToken
    #   value as an argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   nextToken is provided in the output. To resume pagination, provide the
    #   nextToken value as an argument of a subsequent API invocation.
    #
    # @return [Types::ListDbInstancesForClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbInstancesForClusterOutput#items #items} => Array&lt;Types::DbInstanceForClusterSummary&gt;
    #   * {Types::ListDbInstancesForClusterOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_instances_for_cluster({
    #     db_cluster_id: "DbClusterId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE"
    #   resp.items[0].endpoint #=> String
    #   resp.items[0].port #=> Integer
    #   resp.items[0].network_type #=> String, one of "IPV4", "DUAL"
    #   resp.items[0].db_instance_type #=> String, one of "db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"
    #   resp.items[0].db_storage_type #=> String, one of "InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"
    #   resp.items[0].allocated_storage #=> Integer
    #   resp.items[0].deployment_type #=> String, one of "SINGLE_AZ", "WITH_MULTIAZ_STANDBY"
    #   resp.items[0].instance_mode #=> String, one of "PRIMARY", "STANDBY", "REPLICA"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbInstancesForCluster AWS API Documentation
    #
    # @overload list_db_instances_for_cluster(params = {})
    # @param [Hash] params ({})
    def list_db_instances_for_cluster(params = {}, options = {})
      req = build_request(:list_db_instances_for_cluster, params)
      req.send_request(options)
    end

    # Returns a list of Timestream for InfluxDB DB parameter groups.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   NextToken is provided in the output. To resume pagination, provide the
    #   NextToken value as argument of a subsequent API invocation.
    #
    # @return [Types::ListDbParameterGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbParameterGroupsOutput#items #items} => Array&lt;Types::DbParameterGroupSummary&gt;
    #   * {Types::ListDbParameterGroupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_parameter_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbParameterGroups AWS API Documentation
    #
    # @overload list_db_parameter_groups(params = {})
    # @param [Hash] params ({})
    def list_db_parameter_groups(params = {}, options = {})
      req = build_request(:list_db_parameter_groups, params)
      req.send_request(options)
    end

    # A list of tags applied to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the tagged resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Tags are composed of a Key/Value pairs. You can use tags to categorize
    # and track your Timestream for InfluxDB resources.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the tagged resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags used to categorize and track resources.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the tag from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the tagged resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys used to identify the tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a Timestream for InfluxDB cluster.
    #
    # @option params [required, String] :db_cluster_id
    #   Service-generated unique identifier of the DB cluster to update.
    #
    # @option params [Types::LogDeliveryConfiguration] :log_delivery_configuration
    #   The log delivery configuration to apply to the DB cluster.
    #
    # @option params [String] :db_parameter_group_identifier
    #   Update the DB cluster to use the specified DB parameter group.
    #
    # @option params [Integer] :port
    #   Update the DB cluster to use the specified port.
    #
    # @option params [String] :db_instance_type
    #   Update the DB cluster to use the specified DB instance Type.
    #
    # @option params [String] :failover_mode
    #   Update the DB cluster's failover behavior.
    #
    # @return [Types::UpdateDbClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDbClusterOutput#db_cluster_status #db_cluster_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_db_cluster({
    #     db_cluster_id: "DbClusterId", # required
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "S3ConfigurationBucketNameString", # required
    #         enabled: false, # required
    #       },
    #     },
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     port: 1,
    #     db_instance_type: "db.influx.medium", # accepts db.influx.medium, db.influx.large, db.influx.xlarge, db.influx.2xlarge, db.influx.4xlarge, db.influx.8xlarge, db.influx.12xlarge, db.influx.16xlarge, db.influx.24xlarge
    #     failover_mode: "AUTOMATIC", # accepts AUTOMATIC, NO_FAILOVER
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_status #=> String, one of "CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UpdateDbCluster AWS API Documentation
    #
    # @overload update_db_cluster(params = {})
    # @param [Hash] params ({})
    def update_db_cluster(params = {}, options = {})
      req = build_request(:update_db_cluster, params)
      req.send_request(options)
    end

    # Updates a Timestream for InfluxDB DB instance.
    #
    # @option params [required, String] :identifier
    #   The id of the DB instance.
    #
    # @option params [Types::LogDeliveryConfiguration] :log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to send to specified S3
    #   bucket.
    #
    # @option params [String] :db_parameter_group_identifier
    #   The id of the DB parameter group to assign to your DB instance. DB
    #   parameter groups specify how the database is configured. For example,
    #   DB parameter groups can specify the limit for query concurrency.
    #
    # @option params [Integer] :port
    #   The port number on which InfluxDB accepts connections.
    #
    #   If you change the Port value, your database restarts immediately.
    #
    #   Valid Values: 1024-65535
    #
    #   Default: 8086
    #
    #   Constraints: The value can't be 2375-2376, 7788-7799, 8090, or
    #   51678-51680
    #
    # @option params [String] :db_instance_type
    #   The Timestream for InfluxDB DB instance type to run InfluxDB on.
    #
    # @option params [String] :deployment_type
    #   Specifies whether the DB instance will be deployed as a standalone
    #   instance or with a Multi-AZ standby for high availability.
    #
    # @option params [String] :db_storage_type
    #   The Timestream for InfluxDB DB storage type that InfluxDB stores data
    #   on.
    #
    # @option params [Integer] :allocated_storage
    #   The amount of storage to allocate for your DB storage type (in
    #   gibibytes).
    #
    # @return [Types::UpdateDbInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDbInstanceOutput#id #id} => String
    #   * {Types::UpdateDbInstanceOutput#name #name} => String
    #   * {Types::UpdateDbInstanceOutput#arn #arn} => String
    #   * {Types::UpdateDbInstanceOutput#status #status} => String
    #   * {Types::UpdateDbInstanceOutput#endpoint #endpoint} => String
    #   * {Types::UpdateDbInstanceOutput#port #port} => Integer
    #   * {Types::UpdateDbInstanceOutput#network_type #network_type} => String
    #   * {Types::UpdateDbInstanceOutput#db_instance_type #db_instance_type} => String
    #   * {Types::UpdateDbInstanceOutput#db_storage_type #db_storage_type} => String
    #   * {Types::UpdateDbInstanceOutput#allocated_storage #allocated_storage} => Integer
    #   * {Types::UpdateDbInstanceOutput#deployment_type #deployment_type} => String
    #   * {Types::UpdateDbInstanceOutput#vpc_subnet_ids #vpc_subnet_ids} => Array&lt;String&gt;
    #   * {Types::UpdateDbInstanceOutput#publicly_accessible #publicly_accessible} => Boolean
    #   * {Types::UpdateDbInstanceOutput#vpc_security_group_ids #vpc_security_group_ids} => Array&lt;String&gt;
    #   * {Types::UpdateDbInstanceOutput#db_parameter_group_identifier #db_parameter_group_identifier} => String
    #   * {Types::UpdateDbInstanceOutput#availability_zone #availability_zone} => String
    #   * {Types::UpdateDbInstanceOutput#secondary_availability_zone #secondary_availability_zone} => String
    #   * {Types::UpdateDbInstanceOutput#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfiguration
    #   * {Types::UpdateDbInstanceOutput#influx_auth_parameters_secret_arn #influx_auth_parameters_secret_arn} => String
    #   * {Types::UpdateDbInstanceOutput#db_cluster_id #db_cluster_id} => String
    #   * {Types::UpdateDbInstanceOutput#instance_mode #instance_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_db_instance({
    #     identifier: "DbInstanceIdentifier", # required
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "S3ConfigurationBucketNameString", # required
    #         enabled: false, # required
    #       },
    #     },
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     port: 1,
    #     db_instance_type: "db.influx.medium", # accepts db.influx.medium, db.influx.large, db.influx.xlarge, db.influx.2xlarge, db.influx.4xlarge, db.influx.8xlarge, db.influx.12xlarge, db.influx.16xlarge, db.influx.24xlarge
    #     deployment_type: "SINGLE_AZ", # accepts SINGLE_AZ, WITH_MULTIAZ_STANDBY
    #     db_storage_type: "InfluxIOIncludedT1", # accepts InfluxIOIncludedT1, InfluxIOIncludedT2, InfluxIOIncludedT3
    #     allocated_storage: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE"
    #   resp.endpoint #=> String
    #   resp.port #=> Integer
    #   resp.network_type #=> String, one of "IPV4", "DUAL"
    #   resp.db_instance_type #=> String, one of "db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"
    #   resp.db_storage_type #=> String, one of "InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"
    #   resp.allocated_storage #=> Integer
    #   resp.deployment_type #=> String, one of "SINGLE_AZ", "WITH_MULTIAZ_STANDBY"
    #   resp.vpc_subnet_ids #=> Array
    #   resp.vpc_subnet_ids[0] #=> String
    #   resp.publicly_accessible #=> Boolean
    #   resp.vpc_security_group_ids #=> Array
    #   resp.vpc_security_group_ids[0] #=> String
    #   resp.db_parameter_group_identifier #=> String
    #   resp.availability_zone #=> String
    #   resp.secondary_availability_zone #=> String
    #   resp.log_delivery_configuration.s3_configuration.bucket_name #=> String
    #   resp.log_delivery_configuration.s3_configuration.enabled #=> Boolean
    #   resp.influx_auth_parameters_secret_arn #=> String
    #   resp.db_cluster_id #=> String
    #   resp.instance_mode #=> String, one of "PRIMARY", "STANDBY", "REPLICA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UpdateDbInstance AWS API Documentation
    #
    # @overload update_db_instance(params = {})
    # @param [Hash] params ({})
    def update_db_instance(params = {}, options = {})
      req = build_request(:update_db_instance, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::TimestreamInfluxDB')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-timestreaminfluxdb'
      context[:gem_version] = '1.27.0'
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
