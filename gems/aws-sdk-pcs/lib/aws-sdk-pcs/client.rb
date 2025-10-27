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

module Aws::PCS
  # An API client for PCS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PCS::Client.new(
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

    @identifier = :pcs

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
    add_plugin(Aws::PCS::Plugins::Endpoints)

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
    #   @option options [Aws::PCS::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PCS::EndpointParameters`.
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

    # Creates a cluster in your account. PCS creates the cluster controller
    # in a service-owned account. The cluster controller communicates with
    # the cluster resources in your account. The subnets and security groups
    # for the cluster must already exist before you use this API action.
    #
    # <note markdown="1"> It takes time for PCS to create the cluster. The cluster is in a
    # `Creating` state until it is ready to use. There can only be 1 cluster
    # in a `Creating` state per Amazon Web Services Region per Amazon Web
    # Services account. `CreateCluster` fails with a
    # `ServiceQuotaExceededException` if there is already a cluster in a
    # `Creating` state.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_name
    #   A name to identify the cluster. Example: `MyCluster`
    #
    # @option params [required, Types::SchedulerRequest] :scheduler
    #   The cluster management and job scheduling software associated with the
    #   cluster.
    #
    # @option params [required, String] :size
    #   A value that determines the maximum number of compute nodes in the
    #   cluster and the maximum number of jobs (active and queued).
    #
    #   * `SMALL`: 32 compute nodes and 256 jobs
    #
    #   * `MEDIUM`: 512 compute nodes and 8192 jobs
    #
    #   * `LARGE`: 2048 compute nodes and 16,384 jobs
    #
    # @option params [required, Types::NetworkingRequest] :networking
    #   The networking configuration used to set up the cluster's control
    #   plane.
    #
    # @option params [Types::ClusterSlurmConfigurationRequest] :slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     cluster_name: "ClusterName", # required
    #     scheduler: { # required
    #       type: "SLURM", # required, accepts SLURM
    #       version: "String", # required
    #     },
    #     size: "SMALL", # required, accepts SMALL, MEDIUM, LARGE
    #     networking: { # required
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       network_type: "IPV4", # accepts IPV4, IPV6
    #     },
    #     slurm_configuration: {
    #       scale_down_idle_time_in_seconds: 1,
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         },
    #       ],
    #       accounting: {
    #         default_purge_time_in_days: 1,
    #         mode: "STANDARD", # required, accepts STANDARD, NONE
    #       },
    #     },
    #     client_token: "SBClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.id #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.modified_at #=> Time
    #   resp.cluster.scheduler.type #=> String, one of "SLURM"
    #   resp.cluster.scheduler.version #=> String
    #   resp.cluster.size #=> String, one of "SMALL", "MEDIUM", "LARGE"
    #   resp.cluster.slurm_configuration.scale_down_idle_time_in_seconds #=> Integer
    #   resp.cluster.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.cluster.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.cluster.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.cluster.slurm_configuration.auth_key.secret_arn #=> String
    #   resp.cluster.slurm_configuration.auth_key.secret_version #=> String
    #   resp.cluster.slurm_configuration.accounting.default_purge_time_in_days #=> Integer
    #   resp.cluster.slurm_configuration.accounting.mode #=> String, one of "STANDARD", "NONE"
    #   resp.cluster.networking.subnet_ids #=> Array
    #   resp.cluster.networking.subnet_ids[0] #=> String
    #   resp.cluster.networking.security_group_ids #=> Array
    #   resp.cluster.networking.security_group_ids[0] #=> String
    #   resp.cluster.networking.network_type #=> String, one of "IPV4", "IPV6"
    #   resp.cluster.endpoints #=> Array
    #   resp.cluster.endpoints[0].type #=> String, one of "SLURMCTLD", "SLURMDBD"
    #   resp.cluster.endpoints[0].private_ip_address #=> String
    #   resp.cluster.endpoints[0].public_ip_address #=> String
    #   resp.cluster.endpoints[0].ipv6_address #=> String
    #   resp.cluster.endpoints[0].port #=> String
    #   resp.cluster.error_info #=> Array
    #   resp.cluster.error_info[0].code #=> String
    #   resp.cluster.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a managed set of compute nodes. You associate a compute node
    # group with a cluster through 1 or more PCS queues or as part of the
    # login fleet. A compute node group includes the definition of the
    # compute properties and lifecycle management. PCS uses the information
    # you provide to this API action to launch compute nodes in your
    # account. You can only specify subnets in the same Amazon VPC as your
    # cluster. You receive billing charges for the compute nodes that PCS
    # launches in your account. You must already have a launch template
    # before you call this API. For more information, see [Launch an
    # instance from a launch template][1] in the *Amazon Elastic Compute
    # Cloud User Guide for Linux Instances*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster to create a compute node group in.
    #
    # @option params [required, String] :compute_node_group_name
    #   A name to identify the cluster. Example: `MyCluster`
    #
    # @option params [String] :ami_id
    #   The ID of the Amazon Machine Image (AMI) that PCS uses to launch
    #   compute nodes (Amazon EC2 instances). If you don't provide this
    #   value, PCS uses the AMI ID specified in the custom launch template.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The list of subnet IDs where the compute node group launches
    #   instances. Subnets must be in the same VPC as the cluster.
    #
    # @option params [String] :purchase_option
    #   Specifies how EC2 instances are purchased on your behalf. PCS supports
    #   On-Demand Instances, Spot Instances, and Amazon EC2 Capacity Blocks
    #   for ML. For more information, see [Amazon EC2 billing and purchasing
    #   options][1] in the *Amazon Elastic Compute Cloud User Guide*. For more
    #   information about PCS support for Capacity Blocks, see [Using Amazon
    #   EC2 Capacity Blocks for ML with PCS][2] in the *PCS User Guide*. If
    #   you don't provide this option, it defaults to On-Demand.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html
    #   [2]: https://docs.aws.amazon.com/pcs/latest/userguide/capacity-blocks.html
    #
    # @option params [required, Types::CustomLaunchTemplate] :custom_launch_template
    #   An Amazon EC2 launch template PCS uses to launch compute nodes.
    #
    # @option params [required, String] :iam_instance_profile_arn
    #   The Amazon Resource Name (ARN) of the IAM instance profile used to
    #   pass an IAM role when launching EC2 instances. The role contained in
    #   your instance profile must have the
    #   `pcs:RegisterComputeNodeGroupInstance` permission and the role name
    #   must start with `AWSPCS` or must have the path `/aws-pcs/`. For more
    #   information, see [IAM instance profiles for PCS][1] in the *PCS User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pcs/latest/userguide/security-instance-profiles.html
    #
    # @option params [required, Types::ScalingConfigurationRequest] :scaling_configuration
    #   Specifies the boundaries of the compute node group auto scaling.
    #
    # @option params [required, Array<Types::InstanceConfig>] :instance_configs
    #   A list of EC2 instance configurations that PCS can provision in the
    #   compute node group.
    #
    # @option params [Types::SpotOptions] :spot_options
    #   Additional configuration when you specify `SPOT` as the
    #   `purchaseOption` for the `CreateComputeNodeGroup` API action.
    #
    # @option params [Types::ComputeNodeGroupSlurmConfigurationRequest] :slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
    #
    # @return [Types::CreateComputeNodeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComputeNodeGroupResponse#compute_node_group #compute_node_group} => Types::ComputeNodeGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_compute_node_group({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     compute_node_group_name: "ComputeNodeGroupName", # required
    #     ami_id: "AmiId",
    #     subnet_ids: ["String"], # required
    #     purchase_option: "ONDEMAND", # accepts ONDEMAND, SPOT, CAPACITY_BLOCK
    #     custom_launch_template: { # required
    #       id: "String", # required
    #       version: "String", # required
    #     },
    #     iam_instance_profile_arn: "InstanceProfileArn", # required
    #     scaling_configuration: { # required
    #       min_instance_count: 1, # required
    #       max_instance_count: 1, # required
    #     },
    #     instance_configs: [ # required
    #       {
    #         instance_type: "String",
    #       },
    #     ],
    #     spot_options: {
    #       allocation_strategy: "lowest-price", # accepts lowest-price, capacity-optimized, price-capacity-optimized
    #     },
    #     slurm_configuration: {
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         },
    #       ],
    #     },
    #     client_token: "SBClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.compute_node_group.name #=> String
    #   resp.compute_node_group.id #=> String
    #   resp.compute_node_group.arn #=> String
    #   resp.compute_node_group.cluster_id #=> String
    #   resp.compute_node_group.created_at #=> Time
    #   resp.compute_node_group.modified_at #=> Time
    #   resp.compute_node_group.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "DELETED", "SUSPENDING", "SUSPENDED"
    #   resp.compute_node_group.ami_id #=> String
    #   resp.compute_node_group.subnet_ids #=> Array
    #   resp.compute_node_group.subnet_ids[0] #=> String
    #   resp.compute_node_group.purchase_option #=> String, one of "ONDEMAND", "SPOT", "CAPACITY_BLOCK"
    #   resp.compute_node_group.custom_launch_template.id #=> String
    #   resp.compute_node_group.custom_launch_template.version #=> String
    #   resp.compute_node_group.iam_instance_profile_arn #=> String
    #   resp.compute_node_group.scaling_configuration.min_instance_count #=> Integer
    #   resp.compute_node_group.scaling_configuration.max_instance_count #=> Integer
    #   resp.compute_node_group.instance_configs #=> Array
    #   resp.compute_node_group.instance_configs[0].instance_type #=> String
    #   resp.compute_node_group.spot_options.allocation_strategy #=> String, one of "lowest-price", "capacity-optimized", "price-capacity-optimized"
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.compute_node_group.error_info #=> Array
    #   resp.compute_node_group.error_info[0].code #=> String
    #   resp.compute_node_group.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateComputeNodeGroup AWS API Documentation
    #
    # @overload create_compute_node_group(params = {})
    # @param [Hash] params ({})
    def create_compute_node_group(params = {}, options = {})
      req = build_request(:create_compute_node_group, params)
      req.send_request(options)
    end

    # Creates a job queue. You must associate 1 or more compute node groups
    # with the queue. You can associate 1 compute node group with multiple
    # queues.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster for which to create a queue.
    #
    # @option params [required, String] :queue_name
    #   A name to identify the queue.
    #
    # @option params [Array<Types::ComputeNodeGroupConfiguration>] :compute_node_group_configurations
    #   The list of compute node group configurations to associate with the
    #   queue. Queues assign jobs to associated compute node groups.
    #
    # @option params [Types::QueueSlurmConfigurationRequest] :slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
    #
    # @return [Types::CreateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     queue_name: "QueueName", # required
    #     compute_node_group_configurations: [
    #       {
    #         compute_node_group_id: "String",
    #       },
    #     ],
    #     slurm_configuration: {
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         },
    #       ],
    #     },
    #     client_token: "SBClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.name #=> String
    #   resp.queue.id #=> String
    #   resp.queue.arn #=> String
    #   resp.queue.cluster_id #=> String
    #   resp.queue.created_at #=> Time
    #   resp.queue.modified_at #=> Time
    #   resp.queue.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"
    #   resp.queue.compute_node_group_configurations #=> Array
    #   resp.queue.compute_node_group_configurations[0].compute_node_group_id #=> String
    #   resp.queue.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.queue.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.queue.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.queue.error_info #=> Array
    #   resp.queue.error_info[0].code #=> String
    #   resp.queue.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateQueue AWS API Documentation
    #
    # @overload create_queue(params = {})
    # @param [Hash] params ({})
    def create_queue(params = {}, options = {})
      req = build_request(:create_queue, params)
      req.send_request(options)
    end

    # Deletes a cluster and all its linked resources. You must delete all
    # queues and compute node groups associated with the cluster before you
    # can delete the cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     client_token: "SBClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes a compute node group. You must delete all queues associated
    # with the compute node group first.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster of the compute node group.
    #
    # @option params [required, String] :compute_node_group_identifier
    #   The name or ID of the compute node group to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_compute_node_group({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     compute_node_group_identifier: "ComputeNodeGroupIdentifier", # required
    #     client_token: "SBClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteComputeNodeGroup AWS API Documentation
    #
    # @overload delete_compute_node_group(params = {})
    # @param [Hash] params ({})
    def delete_compute_node_group(params = {}, options = {})
      req = build_request(:delete_compute_node_group, params)
      req.send_request(options)
    end

    # Deletes a job queue. If the compute node group associated with this
    # queue isn't associated with any other queues, PCS terminates all the
    # compute nodes for this queue.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster of the queue.
    #
    # @option params [required, String] :queue_identifier
    #   The name or ID of the queue to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     queue_identifier: "QueueIdentifier", # required
    #     client_token: "SBClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteQueue AWS API Documentation
    #
    # @overload delete_queue(params = {})
    # @param [Hash] params ({})
    def delete_queue(params = {}, options = {})
      req = build_request(:delete_queue, params)
      req.send_request(options)
    end

    # Returns detailed information about a running cluster in your account.
    # This API action provides networking information, endpoint information
    # for communication with the scheduler, and provisioning status.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster.
    #
    # @return [Types::GetClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cluster({
    #     cluster_identifier: "ClusterIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.id #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.modified_at #=> Time
    #   resp.cluster.scheduler.type #=> String, one of "SLURM"
    #   resp.cluster.scheduler.version #=> String
    #   resp.cluster.size #=> String, one of "SMALL", "MEDIUM", "LARGE"
    #   resp.cluster.slurm_configuration.scale_down_idle_time_in_seconds #=> Integer
    #   resp.cluster.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.cluster.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.cluster.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.cluster.slurm_configuration.auth_key.secret_arn #=> String
    #   resp.cluster.slurm_configuration.auth_key.secret_version #=> String
    #   resp.cluster.slurm_configuration.accounting.default_purge_time_in_days #=> Integer
    #   resp.cluster.slurm_configuration.accounting.mode #=> String, one of "STANDARD", "NONE"
    #   resp.cluster.networking.subnet_ids #=> Array
    #   resp.cluster.networking.subnet_ids[0] #=> String
    #   resp.cluster.networking.security_group_ids #=> Array
    #   resp.cluster.networking.security_group_ids[0] #=> String
    #   resp.cluster.networking.network_type #=> String, one of "IPV4", "IPV6"
    #   resp.cluster.endpoints #=> Array
    #   resp.cluster.endpoints[0].type #=> String, one of "SLURMCTLD", "SLURMDBD"
    #   resp.cluster.endpoints[0].private_ip_address #=> String
    #   resp.cluster.endpoints[0].public_ip_address #=> String
    #   resp.cluster.endpoints[0].ipv6_address #=> String
    #   resp.cluster.endpoints[0].port #=> String
    #   resp.cluster.error_info #=> Array
    #   resp.cluster.error_info[0].code #=> String
    #   resp.cluster.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetCluster AWS API Documentation
    #
    # @overload get_cluster(params = {})
    # @param [Hash] params ({})
    def get_cluster(params = {}, options = {})
      req = build_request(:get_cluster, params)
      req.send_request(options)
    end

    # Returns detailed information about a compute node group. This API
    # action provides networking information, EC2 instance type, compute
    # node group status, and scheduler (such as Slurm) configuration.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster.
    #
    # @option params [required, String] :compute_node_group_identifier
    #   The name or ID of the compute node group.
    #
    # @return [Types::GetComputeNodeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComputeNodeGroupResponse#compute_node_group #compute_node_group} => Types::ComputeNodeGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compute_node_group({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     compute_node_group_identifier: "ComputeNodeGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.compute_node_group.name #=> String
    #   resp.compute_node_group.id #=> String
    #   resp.compute_node_group.arn #=> String
    #   resp.compute_node_group.cluster_id #=> String
    #   resp.compute_node_group.created_at #=> Time
    #   resp.compute_node_group.modified_at #=> Time
    #   resp.compute_node_group.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "DELETED", "SUSPENDING", "SUSPENDED"
    #   resp.compute_node_group.ami_id #=> String
    #   resp.compute_node_group.subnet_ids #=> Array
    #   resp.compute_node_group.subnet_ids[0] #=> String
    #   resp.compute_node_group.purchase_option #=> String, one of "ONDEMAND", "SPOT", "CAPACITY_BLOCK"
    #   resp.compute_node_group.custom_launch_template.id #=> String
    #   resp.compute_node_group.custom_launch_template.version #=> String
    #   resp.compute_node_group.iam_instance_profile_arn #=> String
    #   resp.compute_node_group.scaling_configuration.min_instance_count #=> Integer
    #   resp.compute_node_group.scaling_configuration.max_instance_count #=> Integer
    #   resp.compute_node_group.instance_configs #=> Array
    #   resp.compute_node_group.instance_configs[0].instance_type #=> String
    #   resp.compute_node_group.spot_options.allocation_strategy #=> String, one of "lowest-price", "capacity-optimized", "price-capacity-optimized"
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.compute_node_group.error_info #=> Array
    #   resp.compute_node_group.error_info[0].code #=> String
    #   resp.compute_node_group.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetComputeNodeGroup AWS API Documentation
    #
    # @overload get_compute_node_group(params = {})
    # @param [Hash] params ({})
    def get_compute_node_group(params = {}, options = {})
      req = build_request(:get_compute_node_group, params)
      req.send_request(options)
    end

    # Returns detailed information about a queue. The information includes
    # the compute node groups that the queue uses to schedule jobs.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster of the queue.
    #
    # @option params [required, String] :queue_identifier
    #   The name or ID of the queue.
    #
    # @return [Types::GetQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     queue_identifier: "QueueIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.name #=> String
    #   resp.queue.id #=> String
    #   resp.queue.arn #=> String
    #   resp.queue.cluster_id #=> String
    #   resp.queue.created_at #=> Time
    #   resp.queue.modified_at #=> Time
    #   resp.queue.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"
    #   resp.queue.compute_node_group_configurations #=> Array
    #   resp.queue.compute_node_group_configurations[0].compute_node_group_id #=> String
    #   resp.queue.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.queue.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.queue.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.queue.error_info #=> Array
    #   resp.queue.error_info[0].code #=> String
    #   resp.queue.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetQueue AWS API Documentation
    #
    # @overload get_queue(params = {})
    # @param [Hash] params ({})
    def get_queue(params = {}, options = {})
      req = build_request(:get_queue, params)
      req.send_request(options)
    end

    # Returns a list of running clusters in your account.
    #
    # @option params [String] :next_token
    #   The value of `nextToken` is a unique pagination token for each page of
    #   results returned. If `nextToken` is returned, there are more results
    #   available. Make the call again using the returned token to retrieve
    #   the next page. Keep all other arguments unchanged. Each pagination
    #   token expires after 24 hours. Using an expired pagination token
    #   returns an `HTTP 400 InvalidToken` error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 10
    #   results, and the maximum allowed page size is 100 results. A value of
    #   0 uses the default.
    #
    # @return [Types::ListClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResponse#clusters #clusters} => Array&lt;Types::ClusterSummary&gt;
    #   * {Types::ListClustersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].name #=> String
    #   resp.clusters[0].id #=> String
    #   resp.clusters[0].arn #=> String
    #   resp.clusters[0].created_at #=> Time
    #   resp.clusters[0].modified_at #=> Time
    #   resp.clusters[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Returns a list of all compute node groups associated with a cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster to list compute node groups for.
    #
    # @option params [String] :next_token
    #   The value of `nextToken` is a unique pagination token for each page of
    #   results returned. If `nextToken` is returned, there are more results
    #   available. Make the call again using the returned token to retrieve
    #   the next page. Keep all other arguments unchanged. Each pagination
    #   token expires after 24 hours. Using an expired pagination token
    #   returns an `HTTP 400 InvalidToken` error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 10
    #   results, and the maximum allowed page size is 100 results. A value of
    #   0 uses the default.
    #
    # @return [Types::ListComputeNodeGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComputeNodeGroupsResponse#compute_node_groups #compute_node_groups} => Array&lt;Types::ComputeNodeGroupSummary&gt;
    #   * {Types::ListComputeNodeGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compute_node_groups({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.compute_node_groups #=> Array
    #   resp.compute_node_groups[0].name #=> String
    #   resp.compute_node_groups[0].id #=> String
    #   resp.compute_node_groups[0].arn #=> String
    #   resp.compute_node_groups[0].cluster_id #=> String
    #   resp.compute_node_groups[0].created_at #=> Time
    #   resp.compute_node_groups[0].modified_at #=> Time
    #   resp.compute_node_groups[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "DELETED", "SUSPENDING", "SUSPENDED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListComputeNodeGroups AWS API Documentation
    #
    # @overload list_compute_node_groups(params = {})
    # @param [Hash] params ({})
    def list_compute_node_groups(params = {}, options = {})
      req = build_request(:list_compute_node_groups, params)
      req.send_request(options)
    end

    # Returns a list of all queues associated with a cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster to list queues for.
    #
    # @option params [String] :next_token
    #   The value of `nextToken` is a unique pagination token for each page of
    #   results returned. If `nextToken` is returned, there are more results
    #   available. Make the call again using the returned token to retrieve
    #   the next page. Keep all other arguments unchanged. Each pagination
    #   token expires after 24 hours. Using an expired pagination token
    #   returns an `HTTP 400 InvalidToken` error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 10
    #   results, and the maximum allowed page size is 100 results. A value of
    #   0 uses the default.
    #
    # @return [Types::ListQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuesResponse#queues #queues} => Array&lt;Types::QueueSummary&gt;
    #   * {Types::ListQueuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.queues #=> Array
    #   resp.queues[0].name #=> String
    #   resp.queues[0].id #=> String
    #   resp.queues[0].arn #=> String
    #   resp.queues[0].cluster_id #=> String
    #   resp.queues[0].created_at #=> Time
    #   resp.queues[0].modified_at #=> Time
    #   resp.queues[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListQueues AWS API Documentation
    #
    # @overload list_queues(params = {})
    # @param [Hash] params ({})
    def list_queues(params = {}, options = {})
      req = build_request(:list_queues, params)
      req.send_request(options)
    end

    # Returns a list of all tags on an PCS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # This API action isn't intended for you to use.
    #
    #  PCS uses this API action to register the compute nodes it launches in
    # your account.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster to register the compute node group
    #   instance in.
    #
    # @option params [required, String] :bootstrap_id
    #   The client-generated token to allow for retries.
    #
    # @return [Types::RegisterComputeNodeGroupInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterComputeNodeGroupInstanceResponse#node_id #node_id} => String
    #   * {Types::RegisterComputeNodeGroupInstanceResponse#shared_secret #shared_secret} => String
    #   * {Types::RegisterComputeNodeGroupInstanceResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_compute_node_group_instance({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     bootstrap_id: "BootstrapId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.node_id #=> String
    #   resp.shared_secret #=> String
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].type #=> String, one of "SLURMCTLD", "SLURMDBD"
    #   resp.endpoints[0].private_ip_address #=> String
    #   resp.endpoints[0].public_ip_address #=> String
    #   resp.endpoints[0].ipv6_address #=> String
    #   resp.endpoints[0].port #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/RegisterComputeNodeGroupInstance AWS API Documentation
    #
    # @overload register_compute_node_group_instance(params = {})
    # @param [Hash] params ({})
    def register_compute_node_group_instance(params = {}, options = {})
      req = build_request(:register_compute_node_group_instance, params)
      req.send_request(options)
    end

    # Adds or edits tags on an PCS resource. Each tag consists of a tag key
    # and a tag value. The tag key and tag value are case-sensitive strings.
    # The tag value can be an empty (null) string. To add a tag, specify a
    # new tag key and a tag value. To edit a tag, specify an existing tag
    # key and a new tag value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes tags from an PCS resource. To delete a tag, specify the tag
    # key and the Amazon Resource Name (ARN) of the PCS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   1 or more tag keys to remove from the resource. Specify only tag keys
    #   and not tag values.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a cluster configuration. You can modify Slurm scheduler
    # settings, accounting configuration, and security groups for an
    # existing cluster.
    #
    # <note markdown="1"> You can only update clusters that are in `ACTIVE`, `UPDATE_FAILED`, or
    # `SUSPENDED` state. All associated resources (queues and compute node
    # groups) must be in `ACTIVE` state before you can update the cluster.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster to update.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::UpdateClusterSlurmConfigurationRequest] :slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #
    # @return [Types::UpdateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     client_token: "SBClientToken",
    #     slurm_configuration: {
    #       scale_down_idle_time_in_seconds: 1,
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         },
    #       ],
    #       accounting: {
    #         default_purge_time_in_days: 1,
    #         mode: "STANDARD", # accepts STANDARD, NONE
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.id #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.modified_at #=> Time
    #   resp.cluster.scheduler.type #=> String, one of "SLURM"
    #   resp.cluster.scheduler.version #=> String
    #   resp.cluster.size #=> String, one of "SMALL", "MEDIUM", "LARGE"
    #   resp.cluster.slurm_configuration.scale_down_idle_time_in_seconds #=> Integer
    #   resp.cluster.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.cluster.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.cluster.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.cluster.slurm_configuration.auth_key.secret_arn #=> String
    #   resp.cluster.slurm_configuration.auth_key.secret_version #=> String
    #   resp.cluster.slurm_configuration.accounting.default_purge_time_in_days #=> Integer
    #   resp.cluster.slurm_configuration.accounting.mode #=> String, one of "STANDARD", "NONE"
    #   resp.cluster.networking.subnet_ids #=> Array
    #   resp.cluster.networking.subnet_ids[0] #=> String
    #   resp.cluster.networking.security_group_ids #=> Array
    #   resp.cluster.networking.security_group_ids[0] #=> String
    #   resp.cluster.networking.network_type #=> String, one of "IPV4", "IPV6"
    #   resp.cluster.endpoints #=> Array
    #   resp.cluster.endpoints[0].type #=> String, one of "SLURMCTLD", "SLURMDBD"
    #   resp.cluster.endpoints[0].private_ip_address #=> String
    #   resp.cluster.endpoints[0].public_ip_address #=> String
    #   resp.cluster.endpoints[0].ipv6_address #=> String
    #   resp.cluster.endpoints[0].port #=> String
    #   resp.cluster.error_info #=> Array
    #   resp.cluster.error_info[0].code #=> String
    #   resp.cluster.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UpdateCluster AWS API Documentation
    #
    # @overload update_cluster(params = {})
    # @param [Hash] params ({})
    def update_cluster(params = {}, options = {})
      req = build_request(:update_cluster, params)
      req.send_request(options)
    end

    # Updates a compute node group. You can update many of the fields
    # related to your compute node group including the configurations for
    # networking, compute nodes, and settings specific to your scheduler
    # (such as Slurm).
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster of the compute node group.
    #
    # @option params [required, String] :compute_node_group_identifier
    #   The name or ID of the compute node group.
    #
    # @option params [String] :ami_id
    #   The ID of the Amazon Machine Image (AMI) that PCS uses to launch
    #   instances. If not provided, PCS uses the AMI ID specified in the
    #   custom launch template.
    #
    # @option params [Array<String>] :subnet_ids
    #   The list of subnet IDs where the compute node group provisions
    #   instances. The subnets must be in the same VPC as the cluster.
    #
    # @option params [Types::CustomLaunchTemplate] :custom_launch_template
    #   An Amazon EC2 launch template PCS uses to launch compute nodes.
    #
    # @option params [String] :purchase_option
    #   Specifies how EC2 instances are purchased on your behalf. PCS supports
    #   On-Demand Instances, Spot Instances, and Amazon EC2 Capacity Blocks
    #   for ML. For more information, see [Amazon EC2 billing and purchasing
    #   options][1] in the *Amazon Elastic Compute Cloud User Guide*. For more
    #   information about PCS support for Capacity Blocks, see [Using Amazon
    #   EC2 Capacity Blocks for ML with PCS][2] in the *PCS User Guide*. If
    #   you don't provide this option, it defaults to On-Demand.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html
    #   [2]: https://docs.aws.amazon.com/pcs/latest/userguide/capacity-blocks.html
    #
    # @option params [Types::SpotOptions] :spot_options
    #   Additional configuration when you specify `SPOT` as the
    #   `purchaseOption` for the `CreateComputeNodeGroup` API action.
    #
    # @option params [Types::ScalingConfigurationRequest] :scaling_configuration
    #   Specifies the boundaries of the compute node group auto scaling.
    #
    # @option params [String] :iam_instance_profile_arn
    #   The Amazon Resource Name (ARN) of the IAM instance profile used to
    #   pass an IAM role when launching EC2 instances. The role contained in
    #   your instance profile must have the
    #   `pcs:RegisterComputeNodeGroupInstance` permission and the role name
    #   must start with `AWSPCS` or must have the path `/aws-pcs/`. For more
    #   information, see [IAM instance profiles for PCS][1] in the *PCS User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pcs/latest/userguide/security-instance-profiles.html
    #
    # @option params [Types::UpdateComputeNodeGroupSlurmConfigurationRequest] :slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateComputeNodeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateComputeNodeGroupResponse#compute_node_group #compute_node_group} => Types::ComputeNodeGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_compute_node_group({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     compute_node_group_identifier: "ComputeNodeGroupIdentifier", # required
    #     ami_id: "AmiId",
    #     subnet_ids: ["String"],
    #     custom_launch_template: {
    #       id: "String", # required
    #       version: "String", # required
    #     },
    #     purchase_option: "ONDEMAND", # accepts ONDEMAND, SPOT, CAPACITY_BLOCK
    #     spot_options: {
    #       allocation_strategy: "lowest-price", # accepts lowest-price, capacity-optimized, price-capacity-optimized
    #     },
    #     scaling_configuration: {
    #       min_instance_count: 1, # required
    #       max_instance_count: 1, # required
    #     },
    #     iam_instance_profile_arn: "InstanceProfileArn",
    #     slurm_configuration: {
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         },
    #       ],
    #     },
    #     client_token: "SBClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.compute_node_group.name #=> String
    #   resp.compute_node_group.id #=> String
    #   resp.compute_node_group.arn #=> String
    #   resp.compute_node_group.cluster_id #=> String
    #   resp.compute_node_group.created_at #=> Time
    #   resp.compute_node_group.modified_at #=> Time
    #   resp.compute_node_group.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "DELETED", "SUSPENDING", "SUSPENDED"
    #   resp.compute_node_group.ami_id #=> String
    #   resp.compute_node_group.subnet_ids #=> Array
    #   resp.compute_node_group.subnet_ids[0] #=> String
    #   resp.compute_node_group.purchase_option #=> String, one of "ONDEMAND", "SPOT", "CAPACITY_BLOCK"
    #   resp.compute_node_group.custom_launch_template.id #=> String
    #   resp.compute_node_group.custom_launch_template.version #=> String
    #   resp.compute_node_group.iam_instance_profile_arn #=> String
    #   resp.compute_node_group.scaling_configuration.min_instance_count #=> Integer
    #   resp.compute_node_group.scaling_configuration.max_instance_count #=> Integer
    #   resp.compute_node_group.instance_configs #=> Array
    #   resp.compute_node_group.instance_configs[0].instance_type #=> String
    #   resp.compute_node_group.spot_options.allocation_strategy #=> String, one of "lowest-price", "capacity-optimized", "price-capacity-optimized"
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.compute_node_group.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.compute_node_group.error_info #=> Array
    #   resp.compute_node_group.error_info[0].code #=> String
    #   resp.compute_node_group.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UpdateComputeNodeGroup AWS API Documentation
    #
    # @overload update_compute_node_group(params = {})
    # @param [Hash] params ({})
    def update_compute_node_group(params = {}, options = {})
      req = build_request(:update_compute_node_group, params)
      req.send_request(options)
    end

    # Updates the compute node group configuration of a queue. Use this API
    # to change the compute node groups that the queue can send jobs to.
    #
    # @option params [required, String] :cluster_identifier
    #   The name or ID of the cluster of the queue.
    #
    # @option params [required, String] :queue_identifier
    #   The name or ID of the queue.
    #
    # @option params [Array<Types::ComputeNodeGroupConfiguration>] :compute_node_group_configurations
    #   The list of compute node group configurations to associate with the
    #   queue. Queues assign jobs to associated compute node groups.
    #
    # @option params [Types::UpdateQueueSlurmConfigurationRequest] :slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue({
    #     cluster_identifier: "ClusterIdentifier", # required
    #     queue_identifier: "QueueIdentifier", # required
    #     compute_node_group_configurations: [
    #       {
    #         compute_node_group_id: "String",
    #       },
    #     ],
    #     slurm_configuration: {
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         },
    #       ],
    #     },
    #     client_token: "SBClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.name #=> String
    #   resp.queue.id #=> String
    #   resp.queue.arn #=> String
    #   resp.queue.cluster_id #=> String
    #   resp.queue.created_at #=> Time
    #   resp.queue.modified_at #=> Time
    #   resp.queue.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"
    #   resp.queue.compute_node_group_configurations #=> Array
    #   resp.queue.compute_node_group_configurations[0].compute_node_group_id #=> String
    #   resp.queue.slurm_configuration.slurm_custom_settings #=> Array
    #   resp.queue.slurm_configuration.slurm_custom_settings[0].parameter_name #=> String
    #   resp.queue.slurm_configuration.slurm_custom_settings[0].parameter_value #=> String
    #   resp.queue.error_info #=> Array
    #   resp.queue.error_info[0].code #=> String
    #   resp.queue.error_info[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UpdateQueue AWS API Documentation
    #
    # @overload update_queue(params = {})
    # @param [Hash] params ({})
    def update_queue(params = {}, options = {})
      req = build_request(:update_queue, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PCS')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-pcs'
      context[:gem_version] = '1.34.0'
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
