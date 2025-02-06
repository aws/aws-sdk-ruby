# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/telemetry.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

module Aws::KafkaConnect
  # An API client for KafkaConnect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::KafkaConnect::Client.new(
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

    @identifier = :kafkaconnect

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
    add_plugin(Aws::KafkaConnect::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
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
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'],
    #       ENV['AWS_SESSION_TOKEN'], and ENV['AWS_ACCOUNT_ID']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
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
    #     A Bearer Token Provider. This can be an instance of any one of the
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
    #   @option options [Aws::KafkaConnect::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::KafkaConnect::EndpointParameters`.
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

    # Creates a connector using the specified properties.
    #
    # @option params [required, Types::Capacity] :capacity
    #   Information about the capacity allocated to the connector. Exactly one
    #   of the two properties must be specified.
    #
    # @option params [required, Hash<String,String>] :connector_configuration
    #   A map of keys to values that represent the configuration for the
    #   connector.
    #
    # @option params [String] :connector_description
    #   A summary description of the connector.
    #
    # @option params [required, String] :connector_name
    #   The name of the connector.
    #
    # @option params [required, Types::KafkaCluster] :kafka_cluster
    #   Specifies which Apache Kafka cluster to connect to.
    #
    # @option params [required, Types::KafkaClusterClientAuthentication] :kafka_cluster_client_authentication
    #   Details of the client authentication used by the Apache Kafka cluster.
    #
    # @option params [required, Types::KafkaClusterEncryptionInTransit] :kafka_cluster_encryption_in_transit
    #   Details of encryption in transit to the Apache Kafka cluster.
    #
    # @option params [required, String] :kafka_connect_version
    #   The version of Kafka Connect. It has to be compatible with both the
    #   Apache Kafka cluster's version and the plugins.
    #
    # @option params [Types::LogDelivery] :log_delivery
    #   Details about log delivery.
    #
    # @option params [required, Array<Types::Plugin>] :plugins
    #   Amazon MSK Connect does not currently support specifying multiple
    #   plugins as a list. To use more than one plugin for your connector, you
    #   can create a single custom plugin using a ZIP file that bundles
    #   multiple plugins together.
    #
    #   Specifies which plugin to use for the connector. You must specify a
    #   single-element list containing one `customPlugin` object.
    #
    # @option params [required, String] :service_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used by the connector
    #   to access the Amazon Web Services resources that it needs. The types
    #   of resources depends on the logic of the connector. For example, a
    #   connector that has Amazon S3 as a destination must have permissions
    #   that allow it to write to the S3 destination bucket.
    #
    # @option params [Types::WorkerConfiguration] :worker_configuration
    #   Specifies which worker configuration to use with the connector.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags you want to attach to the connector.
    #
    # @return [Types::CreateConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectorResponse#connector_arn #connector_arn} => String
    #   * {Types::CreateConnectorResponse#connector_name #connector_name} => String
    #   * {Types::CreateConnectorResponse#connector_state #connector_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector({
    #     capacity: { # required
    #       auto_scaling: {
    #         max_worker_count: 1, # required
    #         mcu_count: 1, # required
    #         min_worker_count: 1, # required
    #         scale_in_policy: {
    #           cpu_utilization_percentage: 1, # required
    #         },
    #         scale_out_policy: {
    #           cpu_utilization_percentage: 1, # required
    #         },
    #       },
    #       provisioned_capacity: {
    #         mcu_count: 1, # required
    #         worker_count: 1, # required
    #       },
    #     },
    #     connector_configuration: { # required
    #       "__string" => "__string",
    #     },
    #     connector_description: "__stringMax1024",
    #     connector_name: "__stringMin1Max128", # required
    #     kafka_cluster: { # required
    #       apache_kafka_cluster: { # required
    #         bootstrap_servers: "__string", # required
    #         vpc: { # required
    #           security_groups: ["__string"],
    #           subnets: ["__string"], # required
    #         },
    #       },
    #     },
    #     kafka_cluster_client_authentication: { # required
    #       authentication_type: "NONE", # required, accepts NONE, IAM
    #     },
    #     kafka_cluster_encryption_in_transit: { # required
    #       encryption_type: "PLAINTEXT", # required, accepts PLAINTEXT, TLS
    #     },
    #     kafka_connect_version: "__string", # required
    #     log_delivery: {
    #       worker_log_delivery: { # required
    #         cloud_watch_logs: {
    #           enabled: false, # required
    #           log_group: "__string",
    #         },
    #         firehose: {
    #           delivery_stream: "__string",
    #           enabled: false, # required
    #         },
    #         s3: {
    #           bucket: "__string",
    #           enabled: false, # required
    #           prefix: "__string",
    #         },
    #       },
    #     },
    #     plugins: [ # required
    #       {
    #         custom_plugin: { # required
    #           custom_plugin_arn: "__string", # required
    #           revision: 1, # required
    #         },
    #       },
    #     ],
    #     service_execution_role_arn: "__string", # required
    #     worker_configuration: {
    #       revision: 1, # required
    #       worker_configuration_arn: "__string", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #   resp.connector_name #=> String
    #   resp.connector_state #=> String, one of "RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateConnector AWS API Documentation
    #
    # @overload create_connector(params = {})
    # @param [Hash] params ({})
    def create_connector(params = {}, options = {})
      req = build_request(:create_connector, params)
      req.send_request(options)
    end

    # Creates a custom plugin using the specified properties.
    #
    # @option params [required, String] :content_type
    #   The type of the plugin file.
    #
    # @option params [String] :description
    #   A summary description of the custom plugin.
    #
    # @option params [required, Types::CustomPluginLocation] :location
    #   Information about the location of a custom plugin.
    #
    # @option params [required, String] :name
    #   The name of the custom plugin.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags you want to attach to the custom plugin.
    #
    # @return [Types::CreateCustomPluginResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomPluginResponse#custom_plugin_arn #custom_plugin_arn} => String
    #   * {Types::CreateCustomPluginResponse#custom_plugin_state #custom_plugin_state} => String
    #   * {Types::CreateCustomPluginResponse#name #name} => String
    #   * {Types::CreateCustomPluginResponse#revision #revision} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_plugin({
    #     content_type: "JAR", # required, accepts JAR, ZIP
    #     description: "__stringMax1024",
    #     location: { # required
    #       s3_location: { # required
    #         bucket_arn: "__string", # required
    #         file_key: "__string", # required
    #         object_version: "__string",
    #       },
    #     },
    #     name: "__stringMin1Max128", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_plugin_arn #=> String
    #   resp.custom_plugin_state #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"
    #   resp.name #=> String
    #   resp.revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateCustomPlugin AWS API Documentation
    #
    # @overload create_custom_plugin(params = {})
    # @param [Hash] params ({})
    def create_custom_plugin(params = {}, options = {})
      req = build_request(:create_custom_plugin, params)
      req.send_request(options)
    end

    # Creates a worker configuration using the specified properties.
    #
    # @option params [String] :description
    #   A summary description of the worker configuration.
    #
    # @option params [required, String] :name
    #   The name of the worker configuration.
    #
    # @option params [required, String] :properties_file_content
    #   Base64 encoded contents of connect-distributed.properties file.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags you want to attach to the worker configuration.
    #
    # @return [Types::CreateWorkerConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkerConfigurationResponse#creation_time #creation_time} => Time
    #   * {Types::CreateWorkerConfigurationResponse#latest_revision #latest_revision} => Types::WorkerConfigurationRevisionSummary
    #   * {Types::CreateWorkerConfigurationResponse#name #name} => String
    #   * {Types::CreateWorkerConfigurationResponse#worker_configuration_arn #worker_configuration_arn} => String
    #   * {Types::CreateWorkerConfigurationResponse#worker_configuration_state #worker_configuration_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_worker_configuration({
    #     description: "__stringMax1024",
    #     name: "__stringMin1Max128", # required
    #     properties_file_content: "__sensitiveString", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.latest_revision.creation_time #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #   resp.worker_configuration_arn #=> String
    #   resp.worker_configuration_state #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateWorkerConfiguration AWS API Documentation
    #
    # @overload create_worker_configuration(params = {})
    # @param [Hash] params ({})
    def create_worker_configuration(params = {}, options = {})
      req = build_request(:create_worker_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified connector.
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you want to
    #   delete.
    #
    # @option params [String] :current_version
    #   The current version of the connector that you want to delete.
    #
    # @return [Types::DeleteConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConnectorResponse#connector_arn #connector_arn} => String
    #   * {Types::DeleteConnectorResponse#connector_state #connector_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector({
    #     connector_arn: "__string", # required
    #     current_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #   resp.connector_state #=> String, one of "RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DeleteConnector AWS API Documentation
    #
    # @overload delete_connector(params = {})
    # @param [Hash] params ({})
    def delete_connector(params = {}, options = {})
      req = build_request(:delete_connector, params)
      req.send_request(options)
    end

    # Deletes a custom plugin.
    #
    # @option params [required, String] :custom_plugin_arn
    #   The Amazon Resource Name (ARN) of the custom plugin that you want to
    #   delete.
    #
    # @return [Types::DeleteCustomPluginResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCustomPluginResponse#custom_plugin_arn #custom_plugin_arn} => String
    #   * {Types::DeleteCustomPluginResponse#custom_plugin_state #custom_plugin_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_plugin({
    #     custom_plugin_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_plugin_arn #=> String
    #   resp.custom_plugin_state #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DeleteCustomPlugin AWS API Documentation
    #
    # @overload delete_custom_plugin(params = {})
    # @param [Hash] params ({})
    def delete_custom_plugin(params = {}, options = {})
      req = build_request(:delete_custom_plugin, params)
      req.send_request(options)
    end

    # Deletes the specified worker configuration.
    #
    # @option params [required, String] :worker_configuration_arn
    #   The Amazon Resource Name (ARN) of the worker configuration that you
    #   want to delete.
    #
    # @return [Types::DeleteWorkerConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkerConfigurationResponse#worker_configuration_arn #worker_configuration_arn} => String
    #   * {Types::DeleteWorkerConfigurationResponse#worker_configuration_state #worker_configuration_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_worker_configuration({
    #     worker_configuration_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.worker_configuration_arn #=> String
    #   resp.worker_configuration_state #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DeleteWorkerConfiguration AWS API Documentation
    #
    # @overload delete_worker_configuration(params = {})
    # @param [Hash] params ({})
    def delete_worker_configuration(params = {}, options = {})
      req = build_request(:delete_worker_configuration, params)
      req.send_request(options)
    end

    # Returns summary information about the connector.
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you want to
    #   describe.
    #
    # @return [Types::DescribeConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectorResponse#capacity #capacity} => Types::CapacityDescription
    #   * {Types::DescribeConnectorResponse#connector_arn #connector_arn} => String
    #   * {Types::DescribeConnectorResponse#connector_configuration #connector_configuration} => Hash&lt;String,String&gt;
    #   * {Types::DescribeConnectorResponse#connector_description #connector_description} => String
    #   * {Types::DescribeConnectorResponse#connector_name #connector_name} => String
    #   * {Types::DescribeConnectorResponse#connector_state #connector_state} => String
    #   * {Types::DescribeConnectorResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeConnectorResponse#current_version #current_version} => String
    #   * {Types::DescribeConnectorResponse#kafka_cluster #kafka_cluster} => Types::KafkaClusterDescription
    #   * {Types::DescribeConnectorResponse#kafka_cluster_client_authentication #kafka_cluster_client_authentication} => Types::KafkaClusterClientAuthenticationDescription
    #   * {Types::DescribeConnectorResponse#kafka_cluster_encryption_in_transit #kafka_cluster_encryption_in_transit} => Types::KafkaClusterEncryptionInTransitDescription
    #   * {Types::DescribeConnectorResponse#kafka_connect_version #kafka_connect_version} => String
    #   * {Types::DescribeConnectorResponse#log_delivery #log_delivery} => Types::LogDeliveryDescription
    #   * {Types::DescribeConnectorResponse#plugins #plugins} => Array&lt;Types::PluginDescription&gt;
    #   * {Types::DescribeConnectorResponse#service_execution_role_arn #service_execution_role_arn} => String
    #   * {Types::DescribeConnectorResponse#worker_configuration #worker_configuration} => Types::WorkerConfigurationDescription
    #   * {Types::DescribeConnectorResponse#state_description #state_description} => Types::StateDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector({
    #     connector_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity.auto_scaling.max_worker_count #=> Integer
    #   resp.capacity.auto_scaling.mcu_count #=> Integer
    #   resp.capacity.auto_scaling.min_worker_count #=> Integer
    #   resp.capacity.auto_scaling.scale_in_policy.cpu_utilization_percentage #=> Integer
    #   resp.capacity.auto_scaling.scale_out_policy.cpu_utilization_percentage #=> Integer
    #   resp.capacity.provisioned_capacity.mcu_count #=> Integer
    #   resp.capacity.provisioned_capacity.worker_count #=> Integer
    #   resp.connector_arn #=> String
    #   resp.connector_configuration #=> Hash
    #   resp.connector_configuration["__string"] #=> String
    #   resp.connector_description #=> String
    #   resp.connector_name #=> String
    #   resp.connector_state #=> String, one of "RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"
    #   resp.creation_time #=> Time
    #   resp.current_version #=> String
    #   resp.kafka_cluster.apache_kafka_cluster.bootstrap_servers #=> String
    #   resp.kafka_cluster.apache_kafka_cluster.vpc.security_groups #=> Array
    #   resp.kafka_cluster.apache_kafka_cluster.vpc.security_groups[0] #=> String
    #   resp.kafka_cluster.apache_kafka_cluster.vpc.subnets #=> Array
    #   resp.kafka_cluster.apache_kafka_cluster.vpc.subnets[0] #=> String
    #   resp.kafka_cluster_client_authentication.authentication_type #=> String, one of "NONE", "IAM"
    #   resp.kafka_cluster_encryption_in_transit.encryption_type #=> String, one of "PLAINTEXT", "TLS"
    #   resp.kafka_connect_version #=> String
    #   resp.log_delivery.worker_log_delivery.cloud_watch_logs.enabled #=> Boolean
    #   resp.log_delivery.worker_log_delivery.cloud_watch_logs.log_group #=> String
    #   resp.log_delivery.worker_log_delivery.firehose.delivery_stream #=> String
    #   resp.log_delivery.worker_log_delivery.firehose.enabled #=> Boolean
    #   resp.log_delivery.worker_log_delivery.s3.bucket #=> String
    #   resp.log_delivery.worker_log_delivery.s3.enabled #=> Boolean
    #   resp.log_delivery.worker_log_delivery.s3.prefix #=> String
    #   resp.plugins #=> Array
    #   resp.plugins[0].custom_plugin.custom_plugin_arn #=> String
    #   resp.plugins[0].custom_plugin.revision #=> Integer
    #   resp.service_execution_role_arn #=> String
    #   resp.worker_configuration.revision #=> Integer
    #   resp.worker_configuration.worker_configuration_arn #=> String
    #   resp.state_description.code #=> String
    #   resp.state_description.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeConnector AWS API Documentation
    #
    # @overload describe_connector(params = {})
    # @param [Hash] params ({})
    def describe_connector(params = {}, options = {})
      req = build_request(:describe_connector, params)
      req.send_request(options)
    end

    # Returns information about the specified connector's operations.
    #
    # @option params [required, String] :connector_operation_arn
    #   ARN of the connector operation to be described.
    #
    # @return [Types::DescribeConnectorOperationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectorOperationResponse#connector_arn #connector_arn} => String
    #   * {Types::DescribeConnectorOperationResponse#connector_operation_arn #connector_operation_arn} => String
    #   * {Types::DescribeConnectorOperationResponse#connector_operation_state #connector_operation_state} => String
    #   * {Types::DescribeConnectorOperationResponse#connector_operation_type #connector_operation_type} => String
    #   * {Types::DescribeConnectorOperationResponse#operation_steps #operation_steps} => Array&lt;Types::ConnectorOperationStep&gt;
    #   * {Types::DescribeConnectorOperationResponse#origin_worker_setting #origin_worker_setting} => Types::WorkerSetting
    #   * {Types::DescribeConnectorOperationResponse#origin_connector_configuration #origin_connector_configuration} => Hash&lt;String,String&gt;
    #   * {Types::DescribeConnectorOperationResponse#target_worker_setting #target_worker_setting} => Types::WorkerSetting
    #   * {Types::DescribeConnectorOperationResponse#target_connector_configuration #target_connector_configuration} => Hash&lt;String,String&gt;
    #   * {Types::DescribeConnectorOperationResponse#error_info #error_info} => Types::StateDescription
    #   * {Types::DescribeConnectorOperationResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeConnectorOperationResponse#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector_operation({
    #     connector_operation_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #   resp.connector_operation_arn #=> String
    #   resp.connector_operation_state #=> String, one of "PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE"
    #   resp.connector_operation_type #=> String, one of "UPDATE_WORKER_SETTING", "UPDATE_CONNECTOR_CONFIGURATION", "ISOLATE_CONNECTOR", "RESTORE_CONNECTOR"
    #   resp.operation_steps #=> Array
    #   resp.operation_steps[0].step_type #=> String, one of "INITIALIZE_UPDATE", "FINALIZE_UPDATE", "UPDATE_WORKER_SETTING", "UPDATE_CONNECTOR_CONFIGURATION", "VALIDATE_UPDATE"
    #   resp.operation_steps[0].step_state #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.origin_worker_setting.capacity.auto_scaling.max_worker_count #=> Integer
    #   resp.origin_worker_setting.capacity.auto_scaling.mcu_count #=> Integer
    #   resp.origin_worker_setting.capacity.auto_scaling.min_worker_count #=> Integer
    #   resp.origin_worker_setting.capacity.auto_scaling.scale_in_policy.cpu_utilization_percentage #=> Integer
    #   resp.origin_worker_setting.capacity.auto_scaling.scale_out_policy.cpu_utilization_percentage #=> Integer
    #   resp.origin_worker_setting.capacity.provisioned_capacity.mcu_count #=> Integer
    #   resp.origin_worker_setting.capacity.provisioned_capacity.worker_count #=> Integer
    #   resp.origin_connector_configuration #=> Hash
    #   resp.origin_connector_configuration["__string"] #=> String
    #   resp.target_worker_setting.capacity.auto_scaling.max_worker_count #=> Integer
    #   resp.target_worker_setting.capacity.auto_scaling.mcu_count #=> Integer
    #   resp.target_worker_setting.capacity.auto_scaling.min_worker_count #=> Integer
    #   resp.target_worker_setting.capacity.auto_scaling.scale_in_policy.cpu_utilization_percentage #=> Integer
    #   resp.target_worker_setting.capacity.auto_scaling.scale_out_policy.cpu_utilization_percentage #=> Integer
    #   resp.target_worker_setting.capacity.provisioned_capacity.mcu_count #=> Integer
    #   resp.target_worker_setting.capacity.provisioned_capacity.worker_count #=> Integer
    #   resp.target_connector_configuration #=> Hash
    #   resp.target_connector_configuration["__string"] #=> String
    #   resp.error_info.code #=> String
    #   resp.error_info.message #=> String
    #   resp.creation_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeConnectorOperation AWS API Documentation
    #
    # @overload describe_connector_operation(params = {})
    # @param [Hash] params ({})
    def describe_connector_operation(params = {}, options = {})
      req = build_request(:describe_connector_operation, params)
      req.send_request(options)
    end

    # A summary description of the custom plugin.
    #
    # @option params [required, String] :custom_plugin_arn
    #   Returns information about a custom plugin.
    #
    # @return [Types::DescribeCustomPluginResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomPluginResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeCustomPluginResponse#custom_plugin_arn #custom_plugin_arn} => String
    #   * {Types::DescribeCustomPluginResponse#custom_plugin_state #custom_plugin_state} => String
    #   * {Types::DescribeCustomPluginResponse#description #description} => String
    #   * {Types::DescribeCustomPluginResponse#latest_revision #latest_revision} => Types::CustomPluginRevisionSummary
    #   * {Types::DescribeCustomPluginResponse#name #name} => String
    #   * {Types::DescribeCustomPluginResponse#state_description #state_description} => Types::StateDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_plugin({
    #     custom_plugin_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.custom_plugin_arn #=> String
    #   resp.custom_plugin_state #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"
    #   resp.description #=> String
    #   resp.latest_revision.content_type #=> String, one of "JAR", "ZIP"
    #   resp.latest_revision.creation_time #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.file_description.file_md_5 #=> String
    #   resp.latest_revision.file_description.file_size #=> Integer
    #   resp.latest_revision.location.s3_location.bucket_arn #=> String
    #   resp.latest_revision.location.s3_location.file_key #=> String
    #   resp.latest_revision.location.s3_location.object_version #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #   resp.state_description.code #=> String
    #   resp.state_description.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeCustomPlugin AWS API Documentation
    #
    # @overload describe_custom_plugin(params = {})
    # @param [Hash] params ({})
    def describe_custom_plugin(params = {}, options = {})
      req = build_request(:describe_custom_plugin, params)
      req.send_request(options)
    end

    # Returns information about a worker configuration.
    #
    # @option params [required, String] :worker_configuration_arn
    #   The Amazon Resource Name (ARN) of the worker configuration that you
    #   want to get information about.
    #
    # @return [Types::DescribeWorkerConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkerConfigurationResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeWorkerConfigurationResponse#description #description} => String
    #   * {Types::DescribeWorkerConfigurationResponse#latest_revision #latest_revision} => Types::WorkerConfigurationRevisionDescription
    #   * {Types::DescribeWorkerConfigurationResponse#name #name} => String
    #   * {Types::DescribeWorkerConfigurationResponse#worker_configuration_arn #worker_configuration_arn} => String
    #   * {Types::DescribeWorkerConfigurationResponse#worker_configuration_state #worker_configuration_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_worker_configuration({
    #     worker_configuration_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.latest_revision.creation_time #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.properties_file_content #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #   resp.worker_configuration_arn #=> String
    #   resp.worker_configuration_state #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeWorkerConfiguration AWS API Documentation
    #
    # @overload describe_worker_configuration(params = {})
    # @param [Hash] params ({})
    def describe_worker_configuration(params = {}, options = {})
      req = build_request(:describe_worker_configuration, params)
      req.send_request(options)
    end

    # Lists information about a connector's operation(s).
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) of the connector for which to list
    #   operations.
    #
    # @option params [Integer] :max_results
    #   Maximum number of connector operations to fetch in one get request.
    #
    # @option params [String] :next_token
    #   If the response is truncated, it includes a NextToken. Send this
    #   NextToken in a subsequent request to continue listing from where it
    #   left off.
    #
    # @return [Types::ListConnectorOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectorOperationsResponse#connector_operations #connector_operations} => Array&lt;Types::ConnectorOperationSummary&gt;
    #   * {Types::ListConnectorOperationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connector_operations({
    #     connector_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_operations #=> Array
    #   resp.connector_operations[0].connector_operation_arn #=> String
    #   resp.connector_operations[0].connector_operation_type #=> String, one of "UPDATE_WORKER_SETTING", "UPDATE_CONNECTOR_CONFIGURATION", "ISOLATE_CONNECTOR", "RESTORE_CONNECTOR"
    #   resp.connector_operations[0].connector_operation_state #=> String, one of "PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE"
    #   resp.connector_operations[0].creation_time #=> Time
    #   resp.connector_operations[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListConnectorOperations AWS API Documentation
    #
    # @overload list_connector_operations(params = {})
    # @param [Hash] params ({})
    def list_connector_operations(params = {}, options = {})
      req = build_request(:list_connector_operations, params)
      req.send_request(options)
    end

    # Returns a list of all the connectors in this account and Region. The
    # list is limited to connectors whose name starts with the specified
    # prefix. The response also includes a description of each of the listed
    # connectors.
    #
    # @option params [String] :connector_name_prefix
    #   The name prefix that you want to use to search for and list
    #   connectors.
    #
    # @option params [Integer] :max_results
    #   The maximum number of connectors to list in one response.
    #
    # @option params [String] :next_token
    #   If the response of a ListConnectors operation is truncated, it will
    #   include a NextToken. Send this NextToken in a subsequent request to
    #   continue listing from where the previous operation left off.
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
    #     connector_name_prefix: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.connectors #=> Array
    #   resp.connectors[0].capacity.auto_scaling.max_worker_count #=> Integer
    #   resp.connectors[0].capacity.auto_scaling.mcu_count #=> Integer
    #   resp.connectors[0].capacity.auto_scaling.min_worker_count #=> Integer
    #   resp.connectors[0].capacity.auto_scaling.scale_in_policy.cpu_utilization_percentage #=> Integer
    #   resp.connectors[0].capacity.auto_scaling.scale_out_policy.cpu_utilization_percentage #=> Integer
    #   resp.connectors[0].capacity.provisioned_capacity.mcu_count #=> Integer
    #   resp.connectors[0].capacity.provisioned_capacity.worker_count #=> Integer
    #   resp.connectors[0].connector_arn #=> String
    #   resp.connectors[0].connector_description #=> String
    #   resp.connectors[0].connector_name #=> String
    #   resp.connectors[0].connector_state #=> String, one of "RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"
    #   resp.connectors[0].creation_time #=> Time
    #   resp.connectors[0].current_version #=> String
    #   resp.connectors[0].kafka_cluster.apache_kafka_cluster.bootstrap_servers #=> String
    #   resp.connectors[0].kafka_cluster.apache_kafka_cluster.vpc.security_groups #=> Array
    #   resp.connectors[0].kafka_cluster.apache_kafka_cluster.vpc.security_groups[0] #=> String
    #   resp.connectors[0].kafka_cluster.apache_kafka_cluster.vpc.subnets #=> Array
    #   resp.connectors[0].kafka_cluster.apache_kafka_cluster.vpc.subnets[0] #=> String
    #   resp.connectors[0].kafka_cluster_client_authentication.authentication_type #=> String, one of "NONE", "IAM"
    #   resp.connectors[0].kafka_cluster_encryption_in_transit.encryption_type #=> String, one of "PLAINTEXT", "TLS"
    #   resp.connectors[0].kafka_connect_version #=> String
    #   resp.connectors[0].log_delivery.worker_log_delivery.cloud_watch_logs.enabled #=> Boolean
    #   resp.connectors[0].log_delivery.worker_log_delivery.cloud_watch_logs.log_group #=> String
    #   resp.connectors[0].log_delivery.worker_log_delivery.firehose.delivery_stream #=> String
    #   resp.connectors[0].log_delivery.worker_log_delivery.firehose.enabled #=> Boolean
    #   resp.connectors[0].log_delivery.worker_log_delivery.s3.bucket #=> String
    #   resp.connectors[0].log_delivery.worker_log_delivery.s3.enabled #=> Boolean
    #   resp.connectors[0].log_delivery.worker_log_delivery.s3.prefix #=> String
    #   resp.connectors[0].plugins #=> Array
    #   resp.connectors[0].plugins[0].custom_plugin.custom_plugin_arn #=> String
    #   resp.connectors[0].plugins[0].custom_plugin.revision #=> Integer
    #   resp.connectors[0].service_execution_role_arn #=> String
    #   resp.connectors[0].worker_configuration.revision #=> Integer
    #   resp.connectors[0].worker_configuration.worker_configuration_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListConnectors AWS API Documentation
    #
    # @overload list_connectors(params = {})
    # @param [Hash] params ({})
    def list_connectors(params = {}, options = {})
      req = build_request(:list_connectors, params)
      req.send_request(options)
    end

    # Returns a list of all of the custom plugins in this account and
    # Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of custom plugins to list in one response.
    #
    # @option params [String] :next_token
    #   If the response of a ListCustomPlugins operation is truncated, it will
    #   include a NextToken. Send this NextToken in a subsequent request to
    #   continue listing from where the previous operation left off.
    #
    # @option params [String] :name_prefix
    #   Lists custom plugin names that start with the specified text string.
    #
    # @return [Types::ListCustomPluginsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomPluginsResponse#custom_plugins #custom_plugins} => Array&lt;Types::CustomPluginSummary&gt;
    #   * {Types::ListCustomPluginsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_plugins({
    #     max_results: 1,
    #     next_token: "__string",
    #     name_prefix: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_plugins #=> Array
    #   resp.custom_plugins[0].creation_time #=> Time
    #   resp.custom_plugins[0].custom_plugin_arn #=> String
    #   resp.custom_plugins[0].custom_plugin_state #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"
    #   resp.custom_plugins[0].description #=> String
    #   resp.custom_plugins[0].latest_revision.content_type #=> String, one of "JAR", "ZIP"
    #   resp.custom_plugins[0].latest_revision.creation_time #=> Time
    #   resp.custom_plugins[0].latest_revision.description #=> String
    #   resp.custom_plugins[0].latest_revision.file_description.file_md_5 #=> String
    #   resp.custom_plugins[0].latest_revision.file_description.file_size #=> Integer
    #   resp.custom_plugins[0].latest_revision.location.s3_location.bucket_arn #=> String
    #   resp.custom_plugins[0].latest_revision.location.s3_location.file_key #=> String
    #   resp.custom_plugins[0].latest_revision.location.s3_location.object_version #=> String
    #   resp.custom_plugins[0].latest_revision.revision #=> Integer
    #   resp.custom_plugins[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListCustomPlugins AWS API Documentation
    #
    # @overload list_custom_plugins(params = {})
    # @param [Hash] params ({})
    def list_custom_plugins(params = {}, options = {})
      req = build_request(:list_custom_plugins, params)
      req.send_request(options)
    end

    # Lists all the tags attached to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list all attached tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of all of the worker configurations in this account and
    # Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of worker configurations to list in one response.
    #
    # @option params [String] :next_token
    #   If the response of a ListWorkerConfigurations operation is truncated,
    #   it will include a NextToken. Send this NextToken in a subsequent
    #   request to continue listing from where the previous operation left
    #   off.
    #
    # @option params [String] :name_prefix
    #   Lists worker configuration names that start with the specified text
    #   string.
    #
    # @return [Types::ListWorkerConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkerConfigurationsResponse#next_token #next_token} => String
    #   * {Types::ListWorkerConfigurationsResponse#worker_configurations #worker_configurations} => Array&lt;Types::WorkerConfigurationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_worker_configurations({
    #     max_results: 1,
    #     next_token: "__string",
    #     name_prefix: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.worker_configurations #=> Array
    #   resp.worker_configurations[0].creation_time #=> Time
    #   resp.worker_configurations[0].description #=> String
    #   resp.worker_configurations[0].latest_revision.creation_time #=> Time
    #   resp.worker_configurations[0].latest_revision.description #=> String
    #   resp.worker_configurations[0].latest_revision.revision #=> Integer
    #   resp.worker_configurations[0].name #=> String
    #   resp.worker_configurations[0].worker_configuration_arn #=> String
    #   resp.worker_configurations[0].worker_configuration_state #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListWorkerConfigurations AWS API Documentation
    #
    # @overload list_worker_configurations(params = {})
    # @param [Hash] params ({})
    def list_worker_configurations(params = {}, options = {})
      req = build_request(:list_worker_configurations, params)
      req.send_request(options)
    end

    # Attaches tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   attach tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags that you want to attach to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/TagResource AWS API Documentation
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
    #   The Amazon Resource Name (ARN) of the resource from which you want to
    #   remove tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags that you want to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified connector.
    #
    # @option params [Types::CapacityUpdate] :capacity
    #   The target capacity.
    #
    # @option params [Hash<String,String>] :connector_configuration
    #   A map of keys to values that represent the configuration for the
    #   connector.
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you want to
    #   update.
    #
    # @option params [required, String] :current_version
    #   The current version of the connector that you want to update.
    #
    # @return [Types::UpdateConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectorResponse#connector_arn #connector_arn} => String
    #   * {Types::UpdateConnectorResponse#connector_state #connector_state} => String
    #   * {Types::UpdateConnectorResponse#connector_operation_arn #connector_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector({
    #     capacity: {
    #       auto_scaling: {
    #         max_worker_count: 1, # required
    #         mcu_count: 1, # required
    #         min_worker_count: 1, # required
    #         scale_in_policy: { # required
    #           cpu_utilization_percentage: 1, # required
    #         },
    #         scale_out_policy: { # required
    #           cpu_utilization_percentage: 1, # required
    #         },
    #       },
    #       provisioned_capacity: {
    #         mcu_count: 1, # required
    #         worker_count: 1, # required
    #       },
    #     },
    #     connector_configuration: {
    #       "__string" => "__string",
    #     },
    #     connector_arn: "__string", # required
    #     current_version: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #   resp.connector_state #=> String, one of "RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"
    #   resp.connector_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/UpdateConnector AWS API Documentation
    #
    # @overload update_connector(params = {})
    # @param [Hash] params ({})
    def update_connector(params = {}, options = {})
      req = build_request(:update_connector, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::KafkaConnect')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-kafkaconnect'
      context[:gem_version] = '1.36.0'
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
