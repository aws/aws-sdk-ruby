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

module Aws::DSQL
  # An API client for DSQL.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DSQL::Client.new(
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

    @identifier = :dsql

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
    add_plugin(Aws::DSQL::Plugins::Endpoints)

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
    #   @option options [Aws::DSQL::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::DSQL::EndpointParameters`.
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

    # The CreateCluster API allows you to create both single-Region clusters
    # and multi-Region clusters. With the addition of the
    # *multiRegionProperties* parameter, you can create a cluster with
    # witness Region support and establish peer relationships with clusters
    # in other Regions during creation.
    #
    # <note markdown="1"> Creating multi-Region clusters requires additional IAM permissions
    # beyond those needed for single-Region clusters, as detailed in the
    # **Required permissions** section below.
    #
    #  </note>
    #
    # **Required permissions**
    #
    # dsql:CreateCluster
    #
    # : Required to create a cluster.
    #
    #   Resources: `arn:aws:dsql:region:account-id:cluster/*`
    #
    # dsql:TagResource
    #
    # : Permission to add tags to a resource.
    #
    #   Resources: `arn:aws:dsql:region:account-id:cluster/*`
    #
    # dsql:PutMultiRegionProperties
    #
    # : Permission to configure multi-Region properties for a cluster.
    #
    #   Resources: `arn:aws:dsql:region:account-id:cluster/*`
    #
    # dsql:AddPeerCluster
    #
    # : When specifying `multiRegionProperties.clusters`, permission to add
    #   peer clusters.
    #
    #   Resources:
    #
    #   * Local cluster: `arn:aws:dsql:region:account-id:cluster/*`
    #
    #   * Each peer cluster: exact ARN of each specified peer cluster
    #
    # dsql:PutWitnessRegion
    #
    # : When specifying `multiRegionProperties.witnessRegion`, permission to
    #   set a witness Region. This permission is checked both in the cluster
    #   Region and in the witness Region.
    #
    #   Resources: `arn:aws:dsql:region:account-id:cluster/*`
    #
    #   Condition Keys: `dsql:WitnessRegion` (matching the specified witness
    #   region)
    #
    # * The witness Region specified in
    #   `multiRegionProperties.witnessRegion` cannot be the same as the
    #   cluster's Region.
    #
    # ^
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   If enabled, you can't delete your cluster. You must first disable
    #   this property before you can delete your cluster.
    #
    # @option params [String] :kms_encryption_key
    #   The KMS key that encrypts and protects the data on your cluster. You
    #   can specify the ARN, ID, or alias of an existing key or have Amazon
    #   Web Services create a default key for you.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of key and value pairs to use to tag your cluster.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you don't specify a client token, the Amazon Web Services SDK
    #   automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::MultiRegionProperties] :multi_region_properties
    #   The configuration settings when creating a multi-Region cluster,
    #   including the witness region and linked cluster properties.
    #
    # @option params [String] :policy
    #   An optional resource-based policy document in JSON format that defines
    #   access permissions for the cluster.
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   An optional field that controls whether to bypass the lockout
    #   prevention check. When set to true, this parameter allows you to apply
    #   a policy that might lock you out of the cluster. Use with caution.
    #
    # @return [Types::CreateClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterOutput#identifier #identifier} => String
    #   * {Types::CreateClusterOutput#arn #arn} => String
    #   * {Types::CreateClusterOutput#status #status} => String
    #   * {Types::CreateClusterOutput#creation_time #creation_time} => Time
    #   * {Types::CreateClusterOutput#multi_region_properties #multi_region_properties} => Types::MultiRegionProperties
    #   * {Types::CreateClusterOutput#encryption_details #encryption_details} => Types::EncryptionDetails
    #   * {Types::CreateClusterOutput#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #
    #
    # @example Example: Create Cluster
    #
    #   resp = client.create_cluster({
    #     deletion_protection_enabled: false, 
    #     tags: {
    #       "MyKey" => "MyValue", 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     deletion_protection_enabled: false,
    #     kms_encryption_key: "KmsEncryptionKey",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #     multi_region_properties: {
    #       witness_region: "Region",
    #       clusters: ["ClusterArn"],
    #     },
    #     policy: "PolicyDocument",
    #     bypass_policy_lockout_safety_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "IDLE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "PENDING_SETUP", "PENDING_DELETE"
    #   resp.creation_time #=> Time
    #   resp.multi_region_properties.witness_region #=> String
    #   resp.multi_region_properties.clusters #=> Array
    #   resp.multi_region_properties.clusters[0] #=> String
    #   resp.encryption_details.encryption_type #=> String, one of "AWS_OWNED_KMS_KEY", "CUSTOMER_MANAGED_KMS_KEY"
    #   resp.encryption_details.kms_key_arn #=> String
    #   resp.encryption_details.encryption_status #=> String, one of "ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE", "ENABLING"
    #   resp.deletion_protection_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Deletes a cluster in Amazon Aurora DSQL.
    #
    # @option params [required, String] :identifier
    #   The ID of the cluster to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully. The subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you don't specify a client token, the Amazon Web Services SDK
    #   automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterOutput#identifier #identifier} => String
    #   * {Types::DeleteClusterOutput#arn #arn} => String
    #   * {Types::DeleteClusterOutput#status #status} => String
    #   * {Types::DeleteClusterOutput#creation_time #creation_time} => Time
    #
    #
    # @example Example: Delete Cluster
    #
    #   resp = client.delete_cluster({
    #     identifier: "kiqenqglxyl2snyvkvnj2c3s2e", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     identifier: "ClusterId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "IDLE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "PENDING_SETUP", "PENDING_DELETE"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes the resource-based policy attached to a cluster. This removes
    # all access permissions defined by the policy, reverting to default
    # access controls.
    #
    # @option params [required, String] :identifier
    #   The ID of the cluster.
    #
    # @option params [String] :expected_policy_version
    #   The expected version of the policy to delete. This parameter ensures
    #   that you're deleting the correct version of the policy and helps
    #   prevent accidental deletions.
    #
    # @option params [String] :client_token
    #   Idempotency token so a request is only processed once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteClusterPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterPolicyOutput#policy_version #policy_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_policy({
    #     identifier: "ClusterId", # required
    #     expected_policy_version: "PolicyVersion",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/DeleteClusterPolicy AWS API Documentation
    #
    # @overload delete_cluster_policy(params = {})
    # @param [Hash] params ({})
    def delete_cluster_policy(params = {}, options = {})
      req = build_request(:delete_cluster_policy, params)
      req.send_request(options)
    end

    # Retrieves information about a cluster.
    #
    # @option params [required, String] :identifier
    #   The ID of the cluster to retrieve.
    #
    # @return [Types::GetClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClusterOutput#identifier #identifier} => String
    #   * {Types::GetClusterOutput#arn #arn} => String
    #   * {Types::GetClusterOutput#status #status} => String
    #   * {Types::GetClusterOutput#creation_time #creation_time} => Time
    #   * {Types::GetClusterOutput#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::GetClusterOutput#multi_region_properties #multi_region_properties} => Types::MultiRegionProperties
    #   * {Types::GetClusterOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetClusterOutput#encryption_details #encryption_details} => Types::EncryptionDetails
    #
    #
    # @example Example: Get Cluster
    #
    #   resp = client.get_cluster({
    #     identifier: "kiqenqglxyl2snyvkvnj2c3s2e", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cluster({
    #     identifier: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "IDLE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "PENDING_SETUP", "PENDING_DELETE"
    #   resp.creation_time #=> Time
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.multi_region_properties.witness_region #=> String
    #   resp.multi_region_properties.clusters #=> Array
    #   resp.multi_region_properties.clusters[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.encryption_details.encryption_type #=> String, one of "AWS_OWNED_KMS_KEY", "CUSTOMER_MANAGED_KMS_KEY"
    #   resp.encryption_details.kms_key_arn #=> String
    #   resp.encryption_details.encryption_status #=> String, one of "ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE", "ENABLING"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * cluster_active
    #   * cluster_not_exists
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetCluster AWS API Documentation
    #
    # @overload get_cluster(params = {})
    # @param [Hash] params ({})
    def get_cluster(params = {}, options = {})
      req = build_request(:get_cluster, params)
      req.send_request(options)
    end

    # Retrieves the resource-based policy document attached to a cluster.
    # This policy defines the access permissions and conditions for the
    # cluster.
    #
    # @option params [required, String] :identifier
    #   The ID of the cluster to retrieve the policy from.
    #
    # @return [Types::GetClusterPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClusterPolicyOutput#policy #policy} => String
    #   * {Types::GetClusterPolicyOutput#policy_version #policy_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cluster_policy({
    #     identifier: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.policy_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetClusterPolicy AWS API Documentation
    #
    # @overload get_cluster_policy(params = {})
    # @param [Hash] params ({})
    def get_cluster_policy(params = {}, options = {})
      req = build_request(:get_cluster_policy, params)
      req.send_request(options)
    end

    # Retrieves the VPC endpoint service name.
    #
    # @option params [required, String] :identifier
    #   The ID of the cluster to retrieve.
    #
    # @return [Types::GetVpcEndpointServiceNameOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVpcEndpointServiceNameOutput#service_name #service_name} => String
    #
    #
    # @example Example: Get VPC Endpoint Service Name
    #
    #   resp = client.get_vpc_endpoint_service_name({
    #     identifier: "kiqenqglxyl2snyvkvnj2c3s2e", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_endpoint_service_name({
    #     identifier: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetVpcEndpointServiceName AWS API Documentation
    #
    # @overload get_vpc_endpoint_service_name(params = {})
    # @param [Hash] params ({})
    def get_vpc_endpoint_service_name(params = {}, options = {})
      req = build_request(:get_vpc_endpoint_service_name, params)
      req.send_request(options)
    end

    # Retrieves information about a list of clusters.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use nextToken to display the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial ListClusters operation returns a nextToken, you can
    #   include the returned nextToken in following ListClusters operations,
    #   which returns results in the next page.
    #
    # @return [Types::ListClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersOutput#next_token #next_token} => String
    #   * {Types::ListClustersOutput#clusters #clusters} => Array&lt;Types::ClusterSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List Clusters
    #
    #   resp = client.list_clusters({
    #     max_results: 20, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.clusters #=> Array
    #   resp.clusters[0].identifier #=> String
    #   resp.clusters[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Lists all of the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which you want to list the tags.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: List Tags For Resource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:dsql:us-east-1:111111222222:cluster/kiqenqglxyl2snyvkvnj2c3s2e", 
    #   })
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Attaches a resource-based policy to a cluster. This policy defines
    # access permissions and conditions for the cluster, allowing you to
    # control which principals can perform actions on the cluster.
    #
    # @option params [required, String] :identifier
    #   The ID of the cluster.
    #
    # @option params [required, String] :policy
    #   The resource-based policy document to attach to the cluster. This
    #   should be a valid JSON policy document that defines permissions and
    #   conditions.
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   A flag that allows you to bypass the policy lockout safety check. When
    #   set to true, this parameter allows you to apply a policy that might
    #   lock you out of the cluster. Use with caution.
    #
    # @option params [String] :expected_policy_version
    #   The expected version of the current policy. This parameter ensures
    #   that you're updating the correct version of the policy and helps
    #   prevent concurrent modification conflicts.
    #
    # @option params [String] :client_token
    #   Idempotency token so a request is only processed once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PutClusterPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutClusterPolicyOutput#policy_version #policy_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_cluster_policy({
    #     identifier: "ClusterId", # required
    #     policy: "PolicyDocument", # required
    #     bypass_policy_lockout_safety_check: false,
    #     expected_policy_version: "PolicyVersion",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/PutClusterPolicy AWS API Documentation
    #
    # @overload put_cluster_policy(params = {})
    # @param [Hash] params ({})
    def put_cluster_policy(params = {}, options = {})
      req = build_request(:put_cluster_policy, params)
      req.send_request(options)
    end

    # Tags a resource with a map of key and value pairs.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of key and value pairs to use to tag your resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Tag Resource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:dsql:us-east-1:111111222222:cluster/kiqenqglxyl2snyvkvnj2c3s2e", 
    #     tags: {
    #       "MyKey" => "MyValue", 
    #     }, 
    #   })
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource from which to remove tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The array of keys of the tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Untag Resource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:dsql:us-east-1:111111222222:cluster/kiqenqglxyl2snyvkvnj2c3s2e", 
    #     tag_keys: [
    #       "MyKeyA", 
    #       "MyKeyB", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # The *UpdateCluster* API allows you to modify both single-Region and
    # multi-Region cluster configurations. With the *multiRegionProperties*
    # parameter, you can add or modify witness Region support and manage
    # peer relationships with clusters in other Regions.
    #
    # <note markdown="1"> Note that updating multi-Region clusters requires additional IAM
    # permissions beyond those needed for standard cluster updates, as
    # detailed in the Permissions section.
    #
    #  </note>
    #
    # **Required permissions**
    #
    # dsql:UpdateCluster
    #
    # : Permission to update a DSQL cluster.
    #
    #   Resources: `arn:aws:dsql:region:account-id:cluster/cluster-id `
    # ^
    #
    # dsql:PutMultiRegionProperties
    #
    # : Permission to configure multi-Region properties for a cluster.
    #
    #   Resources: `arn:aws:dsql:region:account-id:cluster/cluster-id `
    # ^
    #
    # dsql:GetCluster
    #
    # : Permission to retrieve cluster information.
    #
    #   Resources: `arn:aws:dsql:region:account-id:cluster/cluster-id `
    #
    # dsql:AddPeerCluster
    #
    # : Permission to add peer clusters.
    #
    #   Resources:
    #
    #   * Local cluster: `arn:aws:dsql:region:account-id:cluster/cluster-id
    #     `
    #
    #   * Each peer cluster: exact ARN of each specified peer cluster
    #
    # dsql:RemovePeerCluster
    #
    # : Permission to remove peer clusters. The *dsql:RemovePeerCluster*
    #   permission uses a wildcard ARN pattern to simplify permission
    #   management during updates.
    #
    #   Resources: `arn:aws:dsql:*:account-id:cluster/*`
    # ^
    #
    # dsql:PutWitnessRegion
    #
    # : Permission to set a witness Region.
    #
    #   Resources: `arn:aws:dsql:region:account-id:cluster/cluster-id `
    #
    #   Condition Keys: dsql:WitnessRegion (matching the specified witness
    #   Region)
    #
    #   **This permission is checked both in the cluster Region and in the
    #   witness Region.**
    #
    # * The witness region specified in
    #   `multiRegionProperties.witnessRegion` cannot be the same as the
    #   cluster's Region.
    #
    # * When updating clusters with peer relationships, permissions are
    #   checked for both adding and removing peers.
    #
    # * The `dsql:RemovePeerCluster` permission uses a wildcard ARN pattern
    #   to simplify permission management during updates.
    #
    # @option params [required, String] :identifier
    #   The ID of the cluster you want to update.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   Specifies whether to enable deletion protection in your cluster.
    #
    # @option params [String] :kms_encryption_key
    #   The KMS key that encrypts and protects the data on your cluster. You
    #   can specify the ARN, ID, or alias of an existing key or have Amazon
    #   Web Services create a default key for you.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully. The subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you don't specify a client token, the Amazon Web Services SDK
    #   automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::MultiRegionProperties] :multi_region_properties
    #   The new multi-Region cluster configuration settings to be applied
    #   during an update operation.
    #
    # @return [Types::UpdateClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterOutput#identifier #identifier} => String
    #   * {Types::UpdateClusterOutput#arn #arn} => String
    #   * {Types::UpdateClusterOutput#status #status} => String
    #   * {Types::UpdateClusterOutput#creation_time #creation_time} => Time
    #
    #
    # @example Example: Update Cluster
    #
    #   resp = client.update_cluster({
    #     deletion_protection_enabled: false, 
    #     identifier: "kiqenqglxyl2snyvkvnj2c3s2e", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster({
    #     identifier: "ClusterId", # required
    #     deletion_protection_enabled: false,
    #     kms_encryption_key: "KmsEncryptionKey",
    #     client_token: "ClientToken",
    #     multi_region_properties: {
    #       witness_region: "Region",
    #       clusters: ["ClusterArn"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "IDLE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "PENDING_SETUP", "PENDING_DELETE"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/UpdateCluster AWS API Documentation
    #
    # @overload update_cluster(params = {})
    # @param [Hash] params ({})
    def update_cluster(params = {}, options = {})
      req = build_request(:update_cluster, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::DSQL')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-dsql'
      context[:gem_version] = '1.19.0'
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
    # | waiter_name        | params               | :delay   | :max_attempts |
    # | ------------------ | -------------------- | -------- | ------------- |
    # | cluster_active     | {Client#get_cluster} | 2        | 60            |
    # | cluster_not_exists | {Client#get_cluster} | 2        | 60            |
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
        cluster_active: Waiters::ClusterActive,
        cluster_not_exists: Waiters::ClusterNotExists
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
