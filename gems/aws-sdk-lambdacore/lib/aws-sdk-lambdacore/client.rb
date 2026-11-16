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

module Aws::LambdaCore
  # An API client for LambdaCore.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LambdaCore::Client.new(
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

    @identifier = :lambdacore

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
    add_plugin(Aws::LambdaCore::Plugins::Endpoints)

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
    #     4 times. Used in `standard` and `adaptive` retry modes. Defaults to 3,
    #     except for DynamoDB and DynamoDB Streams, which default to 4.
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
    #   @option options [String] :retry_mode ("standard")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make. This is the default value
    #       if no retry mode is provided.
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
    #   @option options [Aws::LambdaCore::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::LambdaCore::EndpointParameters`.
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

    # Creates a network connector that enables Lambda compute resources to
    # route outbound traffic through your Amazon VPC. The network connector
    # provisions elastic network interfaces (ENIs) in the subnets you
    # specify, providing a managed network path to private resources such as
    # databases, caches, and internal APIs.
    #
    # This operation is asynchronous. The network connector starts in
    # `PENDING` state while ENIs are provisioned in your VPC (provisioning
    # typically takes up to 10 minutes). Use `GetNetworkConnector` to poll
    # the connector state until it reaches `ACTIVE`. Once active, you can
    # attach the connector to supported Lambda compute resources — such as
    # MicroVMs and WebFunctions — at run time. For how to attach a
    # connector, see the documentation for the specific compute type.
    #
    # This operation is idempotent when you provide a `ClientToken` — if you
    # retry a request that completed successfully using the same client
    # token, the operation returns the existing connector without creating a
    # duplicate.
    #
    # @option params [required, String] :name
    #   A unique name for the network connector within your account and
    #   Region. You can use the name to identify the connector in subsequent
    #   API calls.
    #
    # @option params [required, Types::NetworkConnectorConfiguration] :configuration
    #   The network configuration for the connector. Specify a
    #   `VpcEgressConfiguration` to enable outbound traffic routing through
    #   your VPC.
    #
    # @option params [String] :operator_role
    #   The ARN of the IAM role that Lambda assumes to manage elastic network
    #   interfaces in your VPC. This role must have permissions for
    #   `ec2:CreateNetworkInterface`, `ec2:DeleteNetworkInterface`, and
    #   related describe operations.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request with the same
    #   client token, the API returns the existing connector without creating
    #   a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A map of key-value pairs to associate with the network connector for
    #   organization, cost allocation, or access control.
    #
    # @return [Types::CreateNetworkConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkConnectorResponse#arn #arn} => String
    #   * {Types::CreateNetworkConnectorResponse#name #name} => String
    #   * {Types::CreateNetworkConnectorResponse#id #id} => String
    #   * {Types::CreateNetworkConnectorResponse#version_arn #version_arn} => String
    #   * {Types::CreateNetworkConnectorResponse#version #version} => Integer
    #   * {Types::CreateNetworkConnectorResponse#configuration #configuration} => Types::NetworkConnectorConfiguration
    #   * {Types::CreateNetworkConnectorResponse#operator_role #operator_role} => String
    #   * {Types::CreateNetworkConnectorResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_connector({
    #     name: "NetworkConnectorName", # required
    #     configuration: { # required
    #       vpc_egress_configuration: {
    #         subnet_ids: ["NetworkConnectorSubnetId"],
    #         security_group_ids: ["NetworkConnectorSecurityGroupId"],
    #         network_protocol: "IPv4", # accepts IPv4, DualStack
    #         associated_compute_resource_types: ["MicroVm"], # accepts MicroVm, WebFunction
    #       },
    #     },
    #     operator_role: "NetworkConnectorRoleArn",
    #     client_token: "ClientTokenString",
    #     tags: {
    #       "NetworkConnectorTagKey" => "NetworkConnectorTagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.version_arn #=> String
    #   resp.version #=> Integer
    #   resp.configuration.vpc_egress_configuration.subnet_ids #=> Array
    #   resp.configuration.vpc_egress_configuration.subnet_ids[0] #=> String
    #   resp.configuration.vpc_egress_configuration.security_group_ids #=> Array
    #   resp.configuration.vpc_egress_configuration.security_group_ids[0] #=> String
    #   resp.configuration.vpc_egress_configuration.network_protocol #=> String, one of "IPv4", "DualStack"
    #   resp.configuration.vpc_egress_configuration.associated_compute_resource_types #=> Array
    #   resp.configuration.vpc_egress_configuration.associated_compute_resource_types[0] #=> String, one of "MicroVm", "WebFunction"
    #   resp.operator_role #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "FAILED", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/CreateNetworkConnector AWS API Documentation
    #
    # @overload create_network_connector(params = {})
    # @param [Hash] params ({})
    def create_network_connector(params = {}, options = {})
      req = build_request(:create_network_connector, params)
      req.send_request(options)
    end

    # Creates a customer-managed runtime, a resource providing a centrally
    # managed execution environment for your Lambda functions. The runtime
    # resource is the parent of the runtime version and runtime alias child
    # resources.
    #
    # @option params [required, String] :name
    #   The name of the runtime to create.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to associate with the runtime.
    #
    # @option params [String] :description
    #   A description of the runtime.
    #
    # @option params [String] :license_info
    #   The license information for the runtime.
    #
    # @option params [Types::RuntimeReleaseLifecycle] :release_lifecycle
    #   The runtime lifecycle for the runtime (optional). Use this to schedule
    #   runtime deprecation.
    #
    # @return [Types::CreateRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuntimeResponse#arn #arn} => String
    #   * {Types::CreateRuntimeResponse#name #name} => String
    #   * {Types::CreateRuntimeResponse#description #description} => String
    #   * {Types::CreateRuntimeResponse#license_info #license_info} => String
    #   * {Types::CreateRuntimeResponse#release_lifecycle #release_lifecycle} => Types::RuntimeReleaseLifecycle
    #   * {Types::CreateRuntimeResponse#created #created} => String
    #   * {Types::CreateRuntimeResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Create a runtime
    #
    #   # Creates a customer-managed runtime resource.
    #
    #   resp = client.create_runtime({
    #     description: "PHP 8 custom runtime", 
    #     license_info: "MIT", 
    #     name: "php8", 
    #     tags: {
    #       "team" => "runtimes", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8", 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     description: "PHP 8 custom runtime", 
    #     last_modified: "2026-10-01T12:00:00.000Z", 
    #     license_info: "MIT", 
    #     name: "php8", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_runtime({
    #     name: "RuntimeName", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #     description: "RuntimeDescription",
    #     license_info: "RuntimeLicenseInfo",
    #     release_lifecycle: {
    #       release_state: "PREVIEW", # accepts PREVIEW, GA, DEPRECATED
    #       deprecation_date: "RuntimeLifecycleDate",
    #       function_create_block_date: "RuntimeLifecycleDate",
    #       function_update_block_date: "RuntimeLifecycleDate",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.license_info #=> String
    #   resp.release_lifecycle.release_state #=> String, one of "PREVIEW", "GA", "DEPRECATED"
    #   resp.release_lifecycle.deprecation_date #=> String
    #   resp.release_lifecycle.function_create_block_date #=> String
    #   resp.release_lifecycle.function_update_block_date #=> String
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/CreateRuntime AWS API Documentation
    #
    # @overload create_runtime(params = {})
    # @param [Hash] params ({})
    def create_runtime(params = {}, options = {})
      req = build_request(:create_runtime, params)
      req.send_request(options)
    end

    # Creates a new customer-managed runtime alias. The alias is a named
    # pointer to a runtime version. Functions consume the customer-managed
    # runtime through the runtime alias.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime to create an alias for.
    #
    # @option params [required, String] :runtime_version
    #   The name of the runtime version the alias points to.
    #
    # @option params [required, String] :name
    #   The name to assign to the new runtime alias.
    #
    # @option params [String] :description
    #   A description of the runtime alias.
    #
    # @option params [Types::RuntimeReleaseLifecycle] :release_lifecycle
    #   The runtime lifecycle for the alias. By default, this is inherited
    #   from the runtime lifecycle. Optionally, you can override the lifecycle
    #   information at the alias level, if required.
    #
    # @return [Types::CreateRuntimeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuntimeAliasResponse#name #name} => String
    #   * {Types::CreateRuntimeAliasResponse#arn #arn} => String
    #   * {Types::CreateRuntimeAliasResponse#runtime_version #runtime_version} => String
    #   * {Types::CreateRuntimeAliasResponse#runtime_version_arn #runtime_version_arn} => String
    #   * {Types::CreateRuntimeAliasResponse#state #state} => String
    #   * {Types::CreateRuntimeAliasResponse#description #description} => String
    #   * {Types::CreateRuntimeAliasResponse#release_lifecycle #release_lifecycle} => Types::RuntimeReleaseLifecycle
    #   * {Types::CreateRuntimeAliasResponse#created #created} => String
    #   * {Types::CreateRuntimeAliasResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Create a runtime alias
    #
    #   # Creates an alias that points at a published runtime version.
    #
    #   resp = client.create_runtime_alias({
    #     description: "Points at the newest published version", 
    #     name: "latest", 
    #     runtime_name: "php8", 
    #     runtime_version: "v1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/alias/latest", 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     description: "Points at the newest published version", 
    #     last_modified: "2026-10-01T12:00:00.000Z", 
    #     name: "latest", 
    #     runtime_version: "v1", 
    #     runtime_version_arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/version/v1", 
    #     state: "CREATING", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_runtime_alias({
    #     runtime_name: "RuntimeIdentifier", # required
    #     runtime_version: "RuntimeVersionName", # required
    #     name: "RuntimeAliasName", # required
    #     description: "RuntimeAliasDescription",
    #     release_lifecycle: {
    #       release_state: "PREVIEW", # accepts PREVIEW, GA, DEPRECATED
    #       deprecation_date: "RuntimeLifecycleDate",
    #       function_create_block_date: "RuntimeLifecycleDate",
    #       function_update_block_date: "RuntimeLifecycleDate",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.runtime_version #=> String
    #   resp.runtime_version_arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "PENDING_DELETION"
    #   resp.description #=> String
    #   resp.release_lifecycle.release_state #=> String, one of "PREVIEW", "GA", "DEPRECATED"
    #   resp.release_lifecycle.deprecation_date #=> String
    #   resp.release_lifecycle.function_create_block_date #=> String
    #   resp.release_lifecycle.function_update_block_date #=> String
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/CreateRuntimeAlias AWS API Documentation
    #
    # @overload create_runtime_alias(params = {})
    # @param [Hash] params ({})
    def create_runtime_alias(params = {}, options = {})
      req = build_request(:create_runtime_alias, params)
      req.send_request(options)
    end

    # Creates a new runtime version. A runtime version defines the function
    # execution environment by referencing a container image. Runtime
    # versions are immutable. To update the runtime, create a new runtime
    # version and migrate functions by updating the runtime aliases to point
    # to the new runtime version.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime to create a version for.
    #
    # @option params [required, String] :image_uri
    #   The URI of the container image used to define the function execution
    #   environment for this runtime version.
    #
    # @option params [required, String] :name
    #   The name to assign to the new runtime version.
    #
    # @option params [String] :release_notes
    #   The release notes to associate with the runtime version.
    #
    # @option params [Boolean] :dry_run
    #   When set to true, the request is validated without creating a new
    #   runtime version. Use this to check that the request would succeed. No
    #   runtime version is created and no changes are made.
    #
    # @return [Types::CreateRuntimeVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuntimeVersionResponse#name #name} => String
    #   * {Types::CreateRuntimeVersionResponse#arn #arn} => String
    #   * {Types::CreateRuntimeVersionResponse#resolved_uri #resolved_uri} => String
    #   * {Types::CreateRuntimeVersionResponse#state #state} => String
    #   * {Types::CreateRuntimeVersionResponse#release_notes #release_notes} => String
    #   * {Types::CreateRuntimeVersionResponse#platforms #platforms} => Array&lt;Types::Platform&gt;
    #   * {Types::CreateRuntimeVersionResponse#compatibility #compatibility} => Types::Compatibility
    #   * {Types::CreateRuntimeVersionResponse#created #created} => String
    #   * {Types::CreateRuntimeVersionResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Create a runtime version
    #
    #   # Creates a new runtime version from a container image.
    #
    #   resp = client.create_runtime_version({
    #     image_uri: "123456789012.dkr.ecr.us-west-2.amazonaws.com/php8:latest", 
    #     name: "v1", 
    #     release_notes: "Initial release", 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/version/v1", 
    #     compatibility: {
    #       architectures: [
    #         "arm64", 
    #         "x86_64", 
    #       ], 
    #       integration_models: [
    #         "RuntimeAPI", 
    #       ], 
    #       managed_instances: "Supported", 
    #     }, 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     last_modified: "2026-10-01T12:00:00.000Z", 
    #     name: "v1", 
    #     platforms: [
    #       {
    #         architecture: "arm64", 
    #         digest: "sha256:1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b", 
    #         os: "linux", 
    #       }, 
    #     ], 
    #     release_notes: "Initial release", 
    #     resolved_uri: "123456789012.dkr.ecr.us-west-2.amazonaws.com/php8@sha256:1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b", 
    #     state: "CREATING", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_runtime_version({
    #     runtime_name: "RuntimeIdentifier", # required
    #     image_uri: "String", # required
    #     name: "RuntimeVersionName", # required
    #     release_notes: "String",
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.resolved_uri #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "PENDING_DELETION"
    #   resp.release_notes #=> String
    #   resp.platforms #=> Array
    #   resp.platforms[0].architecture #=> String
    #   resp.platforms[0].os #=> String
    #   resp.platforms[0].digest #=> String
    #   resp.compatibility.integration_models #=> Array
    #   resp.compatibility.integration_models[0] #=> String, one of "RuntimeAPI"
    #   resp.compatibility.architectures #=> Array
    #   resp.compatibility.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.compatibility.managed_instances #=> String, one of "Supported", "NotSupported"
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/CreateRuntimeVersion AWS API Documentation
    #
    # @overload create_runtime_version(params = {})
    # @param [Hash] params ({})
    def create_runtime_version(params = {}, options = {})
      req = build_request(:create_runtime_version, params)
      req.send_request(options)
    end

    # Initiates deletion of a network connector. The connector transitions
    # to `DELETING` state while elastic network interfaces are cleaned up
    # asynchronously. After deletion completes, subsequent calls to
    # `GetNetworkConnector` return `ResourceNotFoundException`.
    #
    # This operation is idempotent — calling delete on a connector that is
    # already deleting or has been deleted succeeds without error. You can
    # delete connectors in `ACTIVE` or `FAILED` states. Before deleting a
    # connector, ensure that no Lambda compute resources are using it, as
    # they will lose VPC egress connectivity immediately.
    #
    # Deleting with an unqualified identifier removes the connector and all
    # of its versions. To remove a single historical version, supply its
    # version-qualified ARN; the connector and its remaining versions are
    # unaffected. You can't delete the latest version on its own — delete
    # the connector to remove it.
    #
    # @option params [required, String] :identifier
    #   The identifier of the network connector to delete. Provide an
    #   unqualified ARN (or an ID or name) to delete the entire connector and
    #   all of its versions, or a version-qualified ARN — one that includes
    #   the immutable version suffix — to delete a specific historical
    #   version. You can't delete the latest version with a version-qualified
    #   identifier; delete the connector instead.
    #
    # @return [Types::DeleteNetworkConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNetworkConnectorResponse#arn #arn} => String
    #   * {Types::DeleteNetworkConnectorResponse#name #name} => String
    #   * {Types::DeleteNetworkConnectorResponse#id #id} => String
    #   * {Types::DeleteNetworkConnectorResponse#version_arn #version_arn} => String
    #   * {Types::DeleteNetworkConnectorResponse#version #version} => Integer
    #   * {Types::DeleteNetworkConnectorResponse#configuration #configuration} => Types::NetworkConnectorConfiguration
    #   * {Types::DeleteNetworkConnectorResponse#operator_role #operator_role} => String
    #   * {Types::DeleteNetworkConnectorResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_connector({
    #     identifier: "NetworkConnectorIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.version_arn #=> String
    #   resp.version #=> Integer
    #   resp.configuration.vpc_egress_configuration.subnet_ids #=> Array
    #   resp.configuration.vpc_egress_configuration.subnet_ids[0] #=> String
    #   resp.configuration.vpc_egress_configuration.security_group_ids #=> Array
    #   resp.configuration.vpc_egress_configuration.security_group_ids[0] #=> String
    #   resp.configuration.vpc_egress_configuration.network_protocol #=> String, one of "IPv4", "DualStack"
    #   resp.configuration.vpc_egress_configuration.associated_compute_resource_types #=> Array
    #   resp.configuration.vpc_egress_configuration.associated_compute_resource_types[0] #=> String, one of "MicroVm", "WebFunction"
    #   resp.operator_role #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "FAILED", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/DeleteNetworkConnector AWS API Documentation
    #
    # @overload delete_network_connector(params = {})
    # @param [Hash] params ({})
    def delete_network_connector(params = {}, options = {})
      req = build_request(:delete_network_connector, params)
      req.send_request(options)
    end

    # Schedules a customer-managed runtime to be deleted. Runtimes scheduled
    # for deletion enter the PENDING\_DELETION state and can be restored
    # during the scheduled deletion window. Runtime versions and aliases
    # must be deleted or scheduled for deletion before deleting the runtime.
    # Function invokes fail for functions using runtime versions or aliases
    # that are deleted or pending deletion.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime to delete.
    #
    # @option params [Integer] :recovery_window_in_days
    #   Optional. The waiting period, in days (7-30), before the runtime is
    #   permanently deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a runtime
    #
    #   # Schedules a customer-managed runtime to be deleted.
    #
    #   resp = client.delete_runtime({
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_runtime({
    #     runtime_name: "RuntimeIdentifier", # required
    #     recovery_window_in_days: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/DeleteRuntime AWS API Documentation
    #
    # @overload delete_runtime(params = {})
    # @param [Hash] params ({})
    def delete_runtime(params = {}, options = {})
      req = build_request(:delete_runtime, params)
      req.send_request(options)
    end

    # Schedules a runtime alias to be deleted. Runtime aliases scheduled for
    # deletion enter the PENDING\_DELETION state and can be restored during
    # the scheduled deletion window. Function invokes fail for functions
    # using runtime aliases that are deleted or pending deletion.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime.
    #
    # @option params [required, String] :name
    #   The name of the runtime alias to delete.
    #
    # @option params [Integer] :recovery_window_in_days
    #   Optional. The waiting period, in days (7-30), before the runtime alias
    #   is permanently deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a runtime alias
    #
    #   # Schedules a runtime alias to be deleted.
    #
    #   resp = client.delete_runtime_alias({
    #     name: "latest", 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_runtime_alias({
    #     runtime_name: "RuntimeIdentifier", # required
    #     name: "RuntimeAliasName", # required
    #     recovery_window_in_days: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/DeleteRuntimeAlias AWS API Documentation
    #
    # @overload delete_runtime_alias(params = {})
    # @param [Hash] params ({})
    def delete_runtime_alias(params = {}, options = {})
      req = build_request(:delete_runtime_alias, params)
      req.send_request(options)
    end

    # Schedules a runtime version to be deleted. Runtime versions scheduled
    # for deletion enter the PENDING\_DELETION state and can be restored
    # during the scheduled deletion window. Function invokes fail for
    # functions using a runtime version that is deleted or pending deletion.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime.
    #
    # @option params [required, String] :name
    #   The name of the runtime version to delete.
    #
    # @option params [Integer] :recovery_window_in_days
    #   Optional. The waiting period, in days (7-30), before the runtime
    #   version is permanently deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a runtime version
    #
    #   # Schedules a runtime version to be deleted.
    #
    #   resp = client.delete_runtime_version({
    #     name: "v1", 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_runtime_version({
    #     runtime_name: "RuntimeIdentifier", # required
    #     name: "RuntimeVersionName", # required
    #     recovery_window_in_days: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/DeleteRuntimeVersion AWS API Documentation
    #
    # @overload delete_runtime_version(params = {})
    # @param [Hash] params ({})
    def delete_runtime_version(params = {}, options = {})
      req = build_request(:delete_runtime_version, params)
      req.send_request(options)
    end

    # Retrieves the current configuration, state, and metadata of a network
    # connector. The `Identifier` parameter accepts the connector ID, name,
    # or full ARN. Use this operation to poll connector state after creation
    # or update, or to inspect the current VPC configuration and any failure
    # reasons.
    #
    # The response includes the full connector configuration, current state,
    # and — if the connector has been updated — the `LastUpdateStatus` and
    # `LastUpdateStatusReasonCode` fields that indicate whether the most
    # recent update succeeded or failed.
    #
    # @option params [required, String] :identifier
    #   The identifier of the network connector to retrieve. You can specify
    #   the connector ID, name, or ARN. Provide an unqualified ARN (or an ID
    #   or name) to retrieve the connector's latest version, or a
    #   version-qualified ARN — one that includes the immutable version suffix
    #   — to retrieve a specific historical version.
    #
    # @return [Types::GetNetworkConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkConnectorResponse#arn #arn} => String
    #   * {Types::GetNetworkConnectorResponse#name #name} => String
    #   * {Types::GetNetworkConnectorResponse#id #id} => String
    #   * {Types::GetNetworkConnectorResponse#version_arn #version_arn} => String
    #   * {Types::GetNetworkConnectorResponse#version #version} => Integer
    #   * {Types::GetNetworkConnectorResponse#latest_version_arn #latest_version_arn} => String
    #   * {Types::GetNetworkConnectorResponse#latest_version #latest_version} => Integer
    #   * {Types::GetNetworkConnectorResponse#configuration #configuration} => Types::NetworkConnectorConfiguration
    #   * {Types::GetNetworkConnectorResponse#operator_role #operator_role} => String
    #   * {Types::GetNetworkConnectorResponse#state #state} => String
    #   * {Types::GetNetworkConnectorResponse#state_reason #state_reason} => String
    #   * {Types::GetNetworkConnectorResponse#state_reason_code #state_reason_code} => String
    #   * {Types::GetNetworkConnectorResponse#last_update_status #last_update_status} => String
    #   * {Types::GetNetworkConnectorResponse#last_update_status_reason #last_update_status_reason} => String
    #   * {Types::GetNetworkConnectorResponse#last_update_status_reason_code #last_update_status_reason_code} => String
    #   * {Types::GetNetworkConnectorResponse#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_connector({
    #     identifier: "NetworkConnectorIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.version_arn #=> String
    #   resp.version #=> Integer
    #   resp.latest_version_arn #=> String
    #   resp.latest_version #=> Integer
    #   resp.configuration.vpc_egress_configuration.subnet_ids #=> Array
    #   resp.configuration.vpc_egress_configuration.subnet_ids[0] #=> String
    #   resp.configuration.vpc_egress_configuration.security_group_ids #=> Array
    #   resp.configuration.vpc_egress_configuration.security_group_ids[0] #=> String
    #   resp.configuration.vpc_egress_configuration.network_protocol #=> String, one of "IPv4", "DualStack"
    #   resp.configuration.vpc_egress_configuration.associated_compute_resource_types #=> Array
    #   resp.configuration.vpc_egress_configuration.associated_compute_resource_types[0] #=> String, one of "MicroVm", "WebFunction"
    #   resp.operator_role #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "FAILED", "DELETING", "DELETE_FAILED"
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of "DisallowedByVpcEncryptionControl", "Ec2RequestLimitExceeded", "InsufficientRolePermissions", "InternalError", "InvalidSecurityGroup", "InvalidSubnet", "SecurityGroupsPerInterfaceLimitExceeded", "SubnetOutOfIPAddresses"
    #   resp.last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of "DisallowedByVpcEncryptionControl", "Ec2RequestLimitExceeded", "InsufficientRolePermissions", "InternalError", "InvalidSecurityGroup", "InvalidSubnet", "SecurityGroupsPerInterfaceLimitExceeded", "SubnetOutOfIPAddresses"
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/GetNetworkConnector AWS API Documentation
    #
    # @overload get_network_connector(params = {})
    # @param [Hash] params ({})
    def get_network_connector(params = {}, options = {})
      req = build_request(:get_network_connector, params)
      req.send_request(options)
    end

    # Retrieves the configuration and metadata of a runtime.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime to retrieve.
    #
    # @return [Types::GetRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuntimeResponse#arn #arn} => String
    #   * {Types::GetRuntimeResponse#name #name} => String
    #   * {Types::GetRuntimeResponse#description #description} => String
    #   * {Types::GetRuntimeResponse#license_info #license_info} => String
    #   * {Types::GetRuntimeResponse#release_lifecycle #release_lifecycle} => Types::RuntimeReleaseLifecycle
    #   * {Types::GetRuntimeResponse#state #state} => String
    #   * {Types::GetRuntimeResponse#pending_deletion_at #pending_deletion_at} => String
    #   * {Types::GetRuntimeResponse#created #created} => String
    #   * {Types::GetRuntimeResponse#last_modified #last_modified} => String
    #   * {Types::GetRuntimeResponse#id #id} => String
    #
    #
    # @example Example: Get a runtime
    #
    #   # Retrieves the metadata for a runtime by name.
    #
    #   resp = client.get_runtime({
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8", 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     description: "PHP 8 custom runtime", 
    #     last_modified: "2026-10-02T09:30:00.000Z", 
    #     license_info: "MIT", 
    #     name: "php8", 
    #     release_lifecycle: {
    #       release_state: "GA", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_runtime({
    #     runtime_name: "RuntimeIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.license_info #=> String
    #   resp.release_lifecycle.release_state #=> String, one of "PREVIEW", "GA", "DEPRECATED"
    #   resp.release_lifecycle.deprecation_date #=> String
    #   resp.release_lifecycle.function_create_block_date #=> String
    #   resp.release_lifecycle.function_update_block_date #=> String
    #   resp.state #=> String, one of "ACTIVE", "PENDING_DELETION", "DELETING", "FAILED"
    #   resp.pending_deletion_at #=> String
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/GetRuntime AWS API Documentation
    #
    # @overload get_runtime(params = {})
    # @param [Hash] params ({})
    def get_runtime(params = {}, options = {})
      req = build_request(:get_runtime, params)
      req.send_request(options)
    end

    # Retrieves the configuration, state, and metadata of a runtime alias.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime.
    #
    # @option params [required, String] :name
    #   The name of the runtime alias to retrieve.
    #
    # @return [Types::GetRuntimeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuntimeAliasResponse#name #name} => String
    #   * {Types::GetRuntimeAliasResponse#arn #arn} => String
    #   * {Types::GetRuntimeAliasResponse#runtime_version #runtime_version} => String
    #   * {Types::GetRuntimeAliasResponse#runtime_version_arn #runtime_version_arn} => String
    #   * {Types::GetRuntimeAliasResponse#state #state} => String
    #   * {Types::GetRuntimeAliasResponse#pending_deletion_at #pending_deletion_at} => String
    #   * {Types::GetRuntimeAliasResponse#description #description} => String
    #   * {Types::GetRuntimeAliasResponse#compatibility #compatibility} => Types::Compatibility
    #   * {Types::GetRuntimeAliasResponse#release_lifecycle #release_lifecycle} => Types::RuntimeReleaseLifecycle
    #   * {Types::GetRuntimeAliasResponse#created #created} => String
    #   * {Types::GetRuntimeAliasResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Get a runtime alias
    #
    #   # Retrieves an alias, including the version it currently points at and its compatibility matrix.
    #
    #   resp = client.get_runtime_alias({
    #     name: "latest", 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/alias/latest", 
    #     compatibility: {
    #       architectures: [
    #         "arm64", 
    #         "x86_64", 
    #       ], 
    #       integration_models: [
    #         "RuntimeAPI", 
    #       ], 
    #       managed_instances: "Supported", 
    #     }, 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     description: "Points at the newest published version", 
    #     last_modified: "2026-10-02T09:30:00.000Z", 
    #     name: "latest", 
    #     release_lifecycle: {
    #       release_state: "GA", 
    #     }, 
    #     runtime_version: "v1", 
    #     runtime_version_arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/version/v1", 
    #     state: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_runtime_alias({
    #     runtime_name: "RuntimeIdentifier", # required
    #     name: "RuntimeAliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.runtime_version #=> String
    #   resp.runtime_version_arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "PENDING_DELETION"
    #   resp.pending_deletion_at #=> String
    #   resp.description #=> String
    #   resp.compatibility.integration_models #=> Array
    #   resp.compatibility.integration_models[0] #=> String, one of "RuntimeAPI"
    #   resp.compatibility.architectures #=> Array
    #   resp.compatibility.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.compatibility.managed_instances #=> String, one of "Supported", "NotSupported"
    #   resp.release_lifecycle.release_state #=> String, one of "PREVIEW", "GA", "DEPRECATED"
    #   resp.release_lifecycle.deprecation_date #=> String
    #   resp.release_lifecycle.function_create_block_date #=> String
    #   resp.release_lifecycle.function_update_block_date #=> String
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * runtime_alias_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/GetRuntimeAlias AWS API Documentation
    #
    # @overload get_runtime_alias(params = {})
    # @param [Hash] params ({})
    def get_runtime_alias(params = {}, options = {})
      req = build_request(:get_runtime_alias, params)
      req.send_request(options)
    end

    # Retrieves the configuration, state, and metadata of a runtime version.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime.
    #
    # @option params [required, String] :name
    #   The name of the runtime version to retrieve.
    #
    # @return [Types::GetRuntimeVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuntimeVersionResponse#name #name} => String
    #   * {Types::GetRuntimeVersionResponse#arn #arn} => String
    #   * {Types::GetRuntimeVersionResponse#resolved_uri #resolved_uri} => String
    #   * {Types::GetRuntimeVersionResponse#state #state} => String
    #   * {Types::GetRuntimeVersionResponse#pending_deletion_at #pending_deletion_at} => String
    #   * {Types::GetRuntimeVersionResponse#release_notes #release_notes} => String
    #   * {Types::GetRuntimeVersionResponse#platforms #platforms} => Array&lt;Types::Platform&gt;
    #   * {Types::GetRuntimeVersionResponse#compatibility #compatibility} => Types::Compatibility
    #   * {Types::GetRuntimeVersionResponse#created #created} => String
    #   * {Types::GetRuntimeVersionResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Get a runtime version
    #
    #   # Retrieves a runtime version, including its resolved image URI, per-architecture platforms, and compatibility matrix.
    #
    #   resp = client.get_runtime_version({
    #     name: "v1", 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/version/v1", 
    #     compatibility: {
    #       architectures: [
    #         "arm64", 
    #         "x86_64", 
    #       ], 
    #       integration_models: [
    #         "RuntimeAPI", 
    #       ], 
    #       managed_instances: "Supported", 
    #     }, 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     last_modified: "2026-10-01T12:00:00.000Z", 
    #     name: "v1", 
    #     platforms: [
    #       {
    #         architecture: "arm64", 
    #         digest: "sha256:1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b", 
    #         os: "linux", 
    #       }, 
    #       {
    #         architecture: "x86_64", 
    #         digest: "sha256:2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c", 
    #         os: "linux", 
    #       }, 
    #     ], 
    #     release_notes: "Initial release", 
    #     resolved_uri: "123456789012.dkr.ecr.us-west-2.amazonaws.com/php8@sha256:1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b", 
    #     state: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_runtime_version({
    #     runtime_name: "RuntimeIdentifier", # required
    #     name: "RuntimeVersionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.resolved_uri #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "PENDING_DELETION"
    #   resp.pending_deletion_at #=> String
    #   resp.release_notes #=> String
    #   resp.platforms #=> Array
    #   resp.platforms[0].architecture #=> String
    #   resp.platforms[0].os #=> String
    #   resp.platforms[0].digest #=> String
    #   resp.compatibility.integration_models #=> Array
    #   resp.compatibility.integration_models[0] #=> String, one of "RuntimeAPI"
    #   resp.compatibility.architectures #=> Array
    #   resp.compatibility.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.compatibility.managed_instances #=> String, one of "Supported", "NotSupported"
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * runtime_version_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/GetRuntimeVersion AWS API Documentation
    #
    # @overload get_runtime_version(params = {})
    # @param [Hash] params ({})
    def get_runtime_version(params = {}, options = {})
      req = build_request(:get_runtime_version, params)
      req.send_request(options)
    end

    # Returns a paginated list of the versions of a network connector. Each
    # configuration update creates a new immutable version; this operation
    # lists those versions for the connector you specify. You can optionally
    # filter results by version state. Use the `Marker` parameter from a
    # previous response to retrieve the next page of results.
    #
    # Each item in the response includes the version-qualified ARN, version
    # number, current state, and last modified timestamp for that version.
    # To retrieve the current (latest) configuration of the connector, use
    # `GetNetworkConnector`; to inspect a specific version, call
    # `GetNetworkConnector` with a version-qualified identifier.
    #
    # @option params [required, String] :identifier
    #   The identifier of the network connector whose versions you want to
    #   list. You can specify the connector ID, name, or full ARN. Specify an
    #   unqualified identifier — this operation lists all versions of the
    #   connector, not a specific version.
    #
    # @option params [String] :state
    #   Optional filter to return only versions in the specified state (for
    #   example, `ACTIVE` or `FAILED`).
    #
    # @option params [String] :marker
    #   The pagination token from a previous `ListNetworkConnectorVersions`
    #   response. Use this value to retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   The maximum number of versions to return per page. Valid range: 1 to
    #   100.
    #
    # @return [Types::ListNetworkConnectorVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworkConnectorVersionsResponse#network_connector_versions #network_connector_versions} => Array&lt;Types::NetworkConnectorVersionSummary&gt;
    #   * {Types::ListNetworkConnectorVersionsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_connector_versions({
    #     identifier: "NetworkConnectorIdentifier", # required
    #     state: "PENDING", # accepts PENDING, ACTIVE, INACTIVE, FAILED, DELETING, DELETE_FAILED
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.network_connector_versions #=> Array
    #   resp.network_connector_versions[0].arn #=> String
    #   resp.network_connector_versions[0].version_arn #=> String
    #   resp.network_connector_versions[0].name #=> String
    #   resp.network_connector_versions[0].id #=> String
    #   resp.network_connector_versions[0].version #=> Integer
    #   resp.network_connector_versions[0].state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "FAILED", "DELETING", "DELETE_FAILED"
    #   resp.network_connector_versions[0].state_reason #=> String
    #   resp.network_connector_versions[0].state_reason_code #=> String, one of "DisallowedByVpcEncryptionControl", "Ec2RequestLimitExceeded", "InsufficientRolePermissions", "InternalError", "InvalidSecurityGroup", "InvalidSubnet", "SecurityGroupsPerInterfaceLimitExceeded", "SubnetOutOfIPAddresses"
    #   resp.network_connector_versions[0].last_modified #=> Time
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListNetworkConnectorVersions AWS API Documentation
    #
    # @overload list_network_connector_versions(params = {})
    # @param [Hash] params ({})
    def list_network_connector_versions(params = {}, options = {})
      req = build_request(:list_network_connector_versions, params)
      req.send_request(options)
    end

    # Returns a paginated list of network connectors in your account for the
    # current Region. You can optionally filter results by connector state.
    # Use the `Marker` parameter from a previous response to retrieve the
    # next page of results.
    #
    # Each item in the response includes the connector ARN, name, ID, type,
    # current state, and last modified timestamp. To retrieve full
    # configuration details for a specific connector, use
    # `GetNetworkConnector`.
    #
    # @option params [String] :state
    #   Optional filter to return only connectors in the specified state (for
    #   example, `ACTIVE` or `FAILED`).
    #
    # @option params [String] :marker
    #   The pagination token from a previous `ListNetworkConnectors` response.
    #   Use this value to retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   The maximum number of connectors to return per page. Valid range: 1 to
    #   100.
    #
    # @return [Types::ListNetworkConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworkConnectorsResponse#network_connectors #network_connectors} => Array&lt;Types::NetworkConnectorSummary&gt;
    #   * {Types::ListNetworkConnectorsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_connectors({
    #     state: "PENDING", # accepts PENDING, ACTIVE, INACTIVE, FAILED, DELETING, DELETE_FAILED
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.network_connectors #=> Array
    #   resp.network_connectors[0].arn #=> String
    #   resp.network_connectors[0].name #=> String
    #   resp.network_connectors[0].id #=> String
    #   resp.network_connectors[0].type #=> String, one of "VPC_EGRESS"
    #   resp.network_connectors[0].state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "FAILED", "DELETING", "DELETE_FAILED"
    #   resp.network_connectors[0].last_modified #=> Time
    #   resp.network_connectors[0].latest_version_arn #=> String
    #   resp.network_connectors[0].latest_version #=> Integer
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListNetworkConnectors AWS API Documentation
    #
    # @overload list_network_connectors(params = {})
    # @param [Hash] params ({})
    def list_network_connectors(params = {}, options = {})
      req = build_request(:list_network_connectors, params)
      req.send_request(options)
    end

    # Returns a paginated list of aliases for the specified runtime.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime whose aliases to list.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous response. Use it to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of runtime aliases to return per page. Valid range:
    #   1 to 100.
    #
    # @return [Types::ListRuntimeAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuntimeAliasesResponse#items #items} => Array&lt;Types::RuntimeAliasInfo&gt;
    #   * {Types::ListRuntimeAliasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List runtime aliases
    #
    #   # Lists the aliases defined on a runtime.
    #
    #   resp = client.list_runtime_aliases({
    #     max_results: 10, 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/alias/latest", 
    #         created: "2026-10-01T12:00:00.000Z", 
    #         description: "Points at the newest published version", 
    #         last_modified: "2026-10-02T09:30:00.000Z", 
    #         name: "latest", 
    #         runtime_version: "v1", 
    #         runtime_version_arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/version/v1", 
    #         state: "ACTIVE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_runtime_aliases({
    #     runtime_name: "RuntimeIdentifier", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].runtime_version #=> String
    #   resp.items[0].runtime_version_arn #=> String
    #   resp.items[0].state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "PENDING_DELETION"
    #   resp.items[0].pending_deletion_at #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].compatibility.integration_models #=> Array
    #   resp.items[0].compatibility.integration_models[0] #=> String, one of "RuntimeAPI"
    #   resp.items[0].compatibility.architectures #=> Array
    #   resp.items[0].compatibility.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.items[0].compatibility.managed_instances #=> String, one of "Supported", "NotSupported"
    #   resp.items[0].release_lifecycle.release_state #=> String, one of "PREVIEW", "GA", "DEPRECATED"
    #   resp.items[0].release_lifecycle.deprecation_date #=> String
    #   resp.items[0].release_lifecycle.function_create_block_date #=> String
    #   resp.items[0].release_lifecycle.function_update_block_date #=> String
    #   resp.items[0].created #=> String
    #   resp.items[0].last_modified #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListRuntimeAliases AWS API Documentation
    #
    # @overload list_runtime_aliases(params = {})
    # @param [Hash] params ({})
    def list_runtime_aliases(params = {}, options = {})
      req = build_request(:list_runtime_aliases, params)
      req.send_request(options)
    end

    # Returns a paginated list of versions for the specified runtime.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime whose versions to list.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous response. Use it to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of runtime versions to return per page. Valid
    #   range: 1 to 100.
    #
    # @return [Types::ListRuntimeVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuntimeVersionsResponse#items #items} => Array&lt;Types::RuntimeVersionInfo&gt;
    #   * {Types::ListRuntimeVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List runtime versions
    #
    #   # Lists the versions published for a runtime.
    #
    #   resp = client.list_runtime_versions({
    #     max_results: 10, 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/version/v1", 
    #         created: "2026-10-01T12:00:00.000Z", 
    #         last_modified: "2026-10-01T12:00:00.000Z", 
    #         name: "v1", 
    #         release_notes: "Initial release", 
    #         resolved_uri: "123456789012.dkr.ecr.us-west-2.amazonaws.com/php8@sha256:1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b", 
    #         state: "ACTIVE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_runtime_versions({
    #     runtime_name: "RuntimeIdentifier", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].resolved_uri #=> String
    #   resp.items[0].state #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "PENDING_DELETION"
    #   resp.items[0].pending_deletion_at #=> String
    #   resp.items[0].release_notes #=> String
    #   resp.items[0].compatibility.integration_models #=> Array
    #   resp.items[0].compatibility.integration_models[0] #=> String, one of "RuntimeAPI"
    #   resp.items[0].compatibility.architectures #=> Array
    #   resp.items[0].compatibility.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.items[0].compatibility.managed_instances #=> String, one of "Supported", "NotSupported"
    #   resp.items[0].created #=> String
    #   resp.items[0].last_modified #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListRuntimeVersions AWS API Documentation
    #
    # @overload list_runtime_versions(params = {})
    # @param [Hash] params ({})
    def list_runtime_versions(params = {}, options = {})
      req = build_request(:list_runtime_versions, params)
      req.send_request(options)
    end

    # Returns a paginated list of runtimes in your account for the current
    # Region.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous response. Use it to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of runtimes to return per page. Valid range: 1 to
    #   100.
    #
    # @return [Types::ListRuntimesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuntimesResponse#next_token #next_token} => String
    #   * {Types::ListRuntimesResponse#items #items} => Array&lt;Types::RuntimeInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List runtimes
    #
    #   # Lists the runtimes in the account and region.
    #
    #   resp = client.list_runtimes({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8", 
    #         created: "2026-10-01T12:00:00.000Z", 
    #         description: "PHP 8 custom runtime", 
    #         last_modified: "2026-10-02T09:30:00.000Z", 
    #         license_info: "MIT", 
    #         name: "php8", 
    #         release_lifecycle: {
    #           release_state: "GA", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_runtimes({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].license_info #=> String
    #   resp.items[0].release_lifecycle.release_state #=> String, one of "PREVIEW", "GA", "DEPRECATED"
    #   resp.items[0].release_lifecycle.deprecation_date #=> String
    #   resp.items[0].release_lifecycle.function_create_block_date #=> String
    #   resp.items[0].release_lifecycle.function_update_block_date #=> String
    #   resp.items[0].state #=> String, one of "ACTIVE", "PENDING_DELETION", "DELETING", "FAILED"
    #   resp.items[0].pending_deletion_at #=> String
    #   resp.items[0].created #=> String
    #   resp.items[0].last_modified #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListRuntimes AWS API Documentation
    #
    # @overload list_runtimes(params = {})
    # @param [Hash] params ({})
    def list_runtimes(params = {}, options = {})
      req = build_request(:list_runtimes, params)
      req.send_request(options)
    end

    # Cancels a pending scheduled deletion, returning the resource to the
    # ACTIVE state. Scope is determined by the RuntimeName path parameter
    # plus an optional, mutually exclusive RuntimeVersion or RuntimeAlias
    # query parameter: with neither, the runtime itself is restored; with
    # RuntimeVersion, the named runtime version; with RuntimeAlias, the
    # named runtime alias. Restoring a resource that is already ACTIVE is a
    # no-op success. Restore only works while the target is
    # PENDING\_DELETION; once the scheduled deletion has begun executing
    # (DELETING) or has completed, the call fails.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime to restore. When RuntimeVersion or
    #   RuntimeAlias is specified, the runtime that owns the runtime version
    #   or runtime alias to restore.
    #
    # @option params [String] :runtime_version
    #   Optional. Restores the named RuntimeVersion under RuntimeName.
    #   Mutually exclusive with RuntimeAlias; supplying both is rejected with
    #   InvalidParameterValueException.
    #
    # @option params [String] :runtime_alias
    #   Optional. Restores the named RuntimeAlias under RuntimeName. Mutually
    #   exclusive with RuntimeVersion; supplying both is rejected with
    #   InvalidParameterValueException.
    #
    # @return [Types::RestoreRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreRuntimeResponse#runtime_name #runtime_name} => String
    #   * {Types::RestoreRuntimeResponse#runtime_version #runtime_version} => String
    #   * {Types::RestoreRuntimeResponse#runtime_alias #runtime_alias} => String
    #   * {Types::RestoreRuntimeResponse#arn #arn} => String
    #   * {Types::RestoreRuntimeResponse#state #state} => String
    #   * {Types::RestoreRuntimeResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Restore a runtime alias that is scheduled for deletion
    #
    #   # Cancels a pending deletion for an alias, returning it to ACTIVE.
    #
    #   resp = client.restore_runtime({
    #     runtime_alias: "release", 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/alias/release", 
    #     last_modified: "2026-10-02T19:40:00.000Z", 
    #     runtime_alias: "release", 
    #     runtime_name: "php8", 
    #     state: "ACTIVE", 
    #   }
    #
    # @example Example: Restore a customer-managed runtime that is scheduled for deletion
    #
    #   # Cancels a pending deletion for the runtime, returning it to ACTIVE.
    #
    #   resp = client.restore_runtime({
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8", 
    #     last_modified: "2026-10-02T19:41:00.000Z", 
    #     runtime_name: "php8", 
    #     state: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_runtime({
    #     runtime_name: "RuntimeIdentifier", # required
    #     runtime_version: "RuntimeVersionName",
    #     runtime_alias: "RuntimeAliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_name #=> String
    #   resp.runtime_version #=> String
    #   resp.runtime_alias #=> String
    #   resp.arn #=> String
    #   resp.state #=> String, one of "ACTIVE", "PENDING_DELETION", "DELETING", "FAILED"
    #   resp.last_modified #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/RestoreRuntime AWS API Documentation
    #
    # @overload restore_runtime(params = {})
    # @param [Hash] params ({})
    def restore_runtime(params = {}, options = {})
      req = build_request(:restore_runtime, params)
      req.send_request(options)
    end

    # Updates the VPC configuration or operator role of an existing network
    # connector. You can modify the subnet IDs, security group IDs, network
    # protocol, or operator role. The connector must be in `ACTIVE` state to
    # accept updates.
    #
    # This operation is asynchronous. The connector remains in `ACTIVE`
    # state during the update — existing workloads that reference this
    # connector are not disrupted. Use `GetNetworkConnector` to monitor the
    # `LastUpdateStatus` field, which transitions through `InProgress` to
    # `Successful` or `Failed`. If the update fails, the
    # `LastUpdateStatusReasonCode` field provides a specific error code for
    # troubleshooting. This operation is idempotent when you provide a
    # `ClientToken`.
    #
    # Each successful configuration change creates a new immutable version.
    # A connector can have a limited number of versions; once that limit is
    # reached, further updates fail with
    # `NetworkConnectorLimitExceededException` until you delete older
    # versions.
    #
    # @option params [required, String] :identifier
    #   The identifier of the network connector to update. You can specify the
    #   connector ID, name, or full ARN.
    #
    # @option params [Types::NetworkConnectorConfiguration] :configuration
    #   The updated network configuration for the connector. Provide the full
    #   `VpcEgressConfiguration` including all subnet IDs and security group
    #   IDs — this replaces the existing configuration.
    #
    # @option params [String] :operator_role
    #   The updated ARN of the IAM role that Lambda assumes to manage ENIs.
    #   Use this to change the operator role without recreating the connector.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateNetworkConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkConnectorResponse#arn #arn} => String
    #   * {Types::UpdateNetworkConnectorResponse#name #name} => String
    #   * {Types::UpdateNetworkConnectorResponse#id #id} => String
    #   * {Types::UpdateNetworkConnectorResponse#version_arn #version_arn} => String
    #   * {Types::UpdateNetworkConnectorResponse#version #version} => Integer
    #   * {Types::UpdateNetworkConnectorResponse#operator_role #operator_role} => String
    #   * {Types::UpdateNetworkConnectorResponse#configuration #configuration} => Types::NetworkConnectorConfiguration
    #   * {Types::UpdateNetworkConnectorResponse#state #state} => String
    #   * {Types::UpdateNetworkConnectorResponse#last_update_status #last_update_status} => String
    #   * {Types::UpdateNetworkConnectorResponse#last_update_status_reason #last_update_status_reason} => String
    #   * {Types::UpdateNetworkConnectorResponse#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_connector({
    #     identifier: "NetworkConnectorIdentifier", # required
    #     configuration: {
    #       vpc_egress_configuration: {
    #         subnet_ids: ["NetworkConnectorSubnetId"],
    #         security_group_ids: ["NetworkConnectorSecurityGroupId"],
    #         network_protocol: "IPv4", # accepts IPv4, DualStack
    #         associated_compute_resource_types: ["MicroVm"], # accepts MicroVm, WebFunction
    #       },
    #     },
    #     operator_role: "NetworkConnectorRoleArn",
    #     client_token: "ClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.version_arn #=> String
    #   resp.version #=> Integer
    #   resp.operator_role #=> String
    #   resp.configuration.vpc_egress_configuration.subnet_ids #=> Array
    #   resp.configuration.vpc_egress_configuration.subnet_ids[0] #=> String
    #   resp.configuration.vpc_egress_configuration.security_group_ids #=> Array
    #   resp.configuration.vpc_egress_configuration.security_group_ids[0] #=> String
    #   resp.configuration.vpc_egress_configuration.network_protocol #=> String, one of "IPv4", "DualStack"
    #   resp.configuration.vpc_egress_configuration.associated_compute_resource_types #=> Array
    #   resp.configuration.vpc_egress_configuration.associated_compute_resource_types[0] #=> String, one of "MicroVm", "WebFunction"
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "FAILED", "DELETING", "DELETE_FAILED"
    #   resp.last_update_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.last_update_status_reason #=> String
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/UpdateNetworkConnector AWS API Documentation
    #
    # @overload update_network_connector(params = {})
    # @param [Hash] params ({})
    def update_network_connector(params = {}, options = {})
      req = build_request(:update_network_connector, params)
      req.send_request(options)
    end

    # Updates the properties of an existing customer-managed runtime, such
    # as its description, license information, or lifecycle information.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime to update.
    #
    # @option params [String] :description
    #   The updated description of the runtime.
    #
    # @option params [String] :license_info
    #   The updated license information for the runtime.
    #
    # @option params [Types::RuntimeReleaseLifecycle] :release_lifecycle
    #   The runtime lifecycle for the runtime. Optional. Used to schedule
    #   runtime deprecation. Omitting or providing an empty object removes the
    #   existing lifecycle.
    #
    # @return [Types::UpdateRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuntimeResponse#arn #arn} => String
    #   * {Types::UpdateRuntimeResponse#name #name} => String
    #   * {Types::UpdateRuntimeResponse#description #description} => String
    #   * {Types::UpdateRuntimeResponse#license_info #license_info} => String
    #   * {Types::UpdateRuntimeResponse#release_lifecycle #release_lifecycle} => Types::RuntimeReleaseLifecycle
    #   * {Types::UpdateRuntimeResponse#created #created} => String
    #   * {Types::UpdateRuntimeResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Update a runtime
    #
    #   # Updates a runtime's description and declares it generally available.
    #
    #   resp = client.update_runtime({
    #     description: "PHP 8 custom runtime (updated)", 
    #     release_lifecycle: {
    #       release_state: "GA", 
    #     }, 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8", 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     description: "PHP 8 custom runtime (updated)", 
    #     last_modified: "2026-10-02T09:30:00.000Z", 
    #     license_info: "MIT", 
    #     name: "php8", 
    #     release_lifecycle: {
    #       release_state: "GA", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_runtime({
    #     runtime_name: "RuntimeIdentifier", # required
    #     description: "RuntimeDescription",
    #     license_info: "RuntimeLicenseInfo",
    #     release_lifecycle: {
    #       release_state: "PREVIEW", # accepts PREVIEW, GA, DEPRECATED
    #       deprecation_date: "RuntimeLifecycleDate",
    #       function_create_block_date: "RuntimeLifecycleDate",
    #       function_update_block_date: "RuntimeLifecycleDate",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.license_info #=> String
    #   resp.release_lifecycle.release_state #=> String, one of "PREVIEW", "GA", "DEPRECATED"
    #   resp.release_lifecycle.deprecation_date #=> String
    #   resp.release_lifecycle.function_create_block_date #=> String
    #   resp.release_lifecycle.function_update_block_date #=> String
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/UpdateRuntime AWS API Documentation
    #
    # @overload update_runtime(params = {})
    # @param [Hash] params ({})
    def update_runtime(params = {}, options = {})
      req = build_request(:update_runtime, params)
      req.send_request(options)
    end

    # Updates an existing runtime alias to point to a different runtime
    # version or to change its description or lifecycle information.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime.
    #
    # @option params [required, String] :name
    #   The name of the runtime alias to update.
    #
    # @option params [required, String] :runtime_version
    #   The name of the runtime version the alias should point to.
    #
    # @option params [String] :description
    #   A description of the runtime alias.
    #
    # @option params [Types::RuntimeReleaseLifecycle] :release_lifecycle
    #   The lifecycle for the alias. By default, this is inherited from the
    #   runtime lifecycle. Optionally, you can override the lifecycle
    #   information at the alias level, if required. Omitting or providing an
    #   empty object removes the existing lifecycle override.
    #
    # @return [Types::UpdateRuntimeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuntimeAliasResponse#runtime_name #runtime_name} => String
    #   * {Types::UpdateRuntimeAliasResponse#name #name} => String
    #   * {Types::UpdateRuntimeAliasResponse#arn #arn} => String
    #   * {Types::UpdateRuntimeAliasResponse#runtime_version #runtime_version} => String
    #   * {Types::UpdateRuntimeAliasResponse#runtime_version_arn #runtime_version_arn} => String
    #   * {Types::UpdateRuntimeAliasResponse#state #state} => String
    #   * {Types::UpdateRuntimeAliasResponse#description #description} => String
    #   * {Types::UpdateRuntimeAliasResponse#compatibility #compatibility} => Types::Compatibility
    #   * {Types::UpdateRuntimeAliasResponse#release_lifecycle #release_lifecycle} => Types::RuntimeReleaseLifecycle
    #   * {Types::UpdateRuntimeAliasResponse#created #created} => String
    #   * {Types::UpdateRuntimeAliasResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Update a runtime alias
    #
    #   # Repoints an alias at a different runtime version.
    #
    #   resp = client.update_runtime_alias({
    #     name: "latest", 
    #     runtime_name: "php8", 
    #     runtime_version: "v2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/alias/latest", 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     description: "Points at the newest published version", 
    #     last_modified: "2026-10-03T08:15:00.000Z", 
    #     name: "latest", 
    #     runtime_name: "php8", 
    #     runtime_version: "v2", 
    #     runtime_version_arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/version/v2", 
    #     state: "UPDATING", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_runtime_alias({
    #     runtime_name: "RuntimeIdentifier", # required
    #     name: "RuntimeAliasName", # required
    #     runtime_version: "RuntimeVersionName", # required
    #     description: "RuntimeAliasDescription",
    #     release_lifecycle: {
    #       release_state: "PREVIEW", # accepts PREVIEW, GA, DEPRECATED
    #       deprecation_date: "RuntimeLifecycleDate",
    #       function_create_block_date: "RuntimeLifecycleDate",
    #       function_update_block_date: "RuntimeLifecycleDate",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_name #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.runtime_version #=> String
    #   resp.runtime_version_arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "PENDING_DELETION"
    #   resp.description #=> String
    #   resp.compatibility.integration_models #=> Array
    #   resp.compatibility.integration_models[0] #=> String, one of "RuntimeAPI"
    #   resp.compatibility.architectures #=> Array
    #   resp.compatibility.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.compatibility.managed_instances #=> String, one of "Supported", "NotSupported"
    #   resp.release_lifecycle.release_state #=> String, one of "PREVIEW", "GA", "DEPRECATED"
    #   resp.release_lifecycle.deprecation_date #=> String
    #   resp.release_lifecycle.function_create_block_date #=> String
    #   resp.release_lifecycle.function_update_block_date #=> String
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/UpdateRuntimeAlias AWS API Documentation
    #
    # @overload update_runtime_alias(params = {})
    # @param [Hash] params ({})
    def update_runtime_alias(params = {}, options = {})
      req = build_request(:update_runtime_alias, params)
      req.send_request(options)
    end

    # Updates the runtime version release notes. The runtime version must be
    # in the ACTIVE state. The runtime version image is immutable. To change
    # the runtime contents, create a new runtime version.
    #
    # @option params [required, String] :runtime_name
    #   The name or ARN of the runtime.
    #
    # @option params [required, String] :name
    #   The name of the runtime version to update.
    #
    # @option params [required, String] :release_notes
    #   The release notes to associate with the runtime version.
    #
    # @return [Types::UpdateRuntimeVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuntimeVersionResponse#name #name} => String
    #   * {Types::UpdateRuntimeVersionResponse#arn #arn} => String
    #   * {Types::UpdateRuntimeVersionResponse#resolved_uri #resolved_uri} => String
    #   * {Types::UpdateRuntimeVersionResponse#state #state} => String
    #   * {Types::UpdateRuntimeVersionResponse#release_notes #release_notes} => String
    #   * {Types::UpdateRuntimeVersionResponse#platforms #platforms} => Array&lt;Types::Platform&gt;
    #   * {Types::UpdateRuntimeVersionResponse#compatibility #compatibility} => Types::Compatibility
    #   * {Types::UpdateRuntimeVersionResponse#created #created} => String
    #   * {Types::UpdateRuntimeVersionResponse#last_modified #last_modified} => String
    #
    #
    # @example Example: Update a runtime version's release notes
    #
    #   # Updates the release notes of an ACTIVE runtime version.
    #
    #   resp = client.update_runtime_version({
    #     name: "v1", 
    #     release_notes: "Patched OpenSSL to 3.0.14", 
    #     runtime_name: "php8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:lambda:us-west-2:123456789012:runtime/php8/version/v1", 
    #     created: "2026-10-01T12:00:00.000Z", 
    #     last_modified: "2026-10-03T08:15:00.000Z", 
    #     name: "v1", 
    #     release_notes: "Patched OpenSSL to 3.0.14", 
    #     resolved_uri: "123456789012.dkr.ecr.us-west-2.amazonaws.com/php8@sha256:1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b", 
    #     state: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_runtime_version({
    #     runtime_name: "RuntimeIdentifier", # required
    #     name: "RuntimeVersionName", # required
    #     release_notes: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.resolved_uri #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "FAILED", "DELETING", "PENDING_DELETION"
    #   resp.release_notes #=> String
    #   resp.platforms #=> Array
    #   resp.platforms[0].architecture #=> String
    #   resp.platforms[0].os #=> String
    #   resp.platforms[0].digest #=> String
    #   resp.compatibility.integration_models #=> Array
    #   resp.compatibility.integration_models[0] #=> String, one of "RuntimeAPI"
    #   resp.compatibility.architectures #=> Array
    #   resp.compatibility.architectures[0] #=> String, one of "x86_64", "arm64"
    #   resp.compatibility.managed_instances #=> String, one of "Supported", "NotSupported"
    #   resp.created #=> String
    #   resp.last_modified #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/UpdateRuntimeVersion AWS API Documentation
    #
    # @overload update_runtime_version(params = {})
    # @param [Hash] params ({})
    def update_runtime_version(params = {}, options = {})
      req = build_request(:update_runtime_version, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::LambdaCore')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-lambdacore'
      context[:gem_version] = '1.15.0'
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
    # | waiter_name            | params                       | :delay   | :max_attempts |
    # | ---------------------- | ---------------------------- | -------- | ------------- |
    # | runtime_alias_active   | {Client#get_runtime_alias}   | 2        | 60            |
    # | runtime_version_active | {Client#get_runtime_version} | 2        | 60            |
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
        runtime_alias_active: Waiters::RuntimeAliasActive,
        runtime_version_active: Waiters::RuntimeVersionActive
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
