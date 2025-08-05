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

module Aws::CodeStarconnections
  # An API client for CodeStarconnections.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeStarconnections::Client.new(
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

    @identifier = :codestarconnections

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
    add_plugin(Aws::CodeStarconnections::Plugins::Endpoints)

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
    #   @option options [Aws::CodeStarconnections::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CodeStarconnections::EndpointParameters`.
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

    # Creates a connection that can then be given to other Amazon Web
    # Services services like CodePipeline so that it can access third-party
    # code repositories. The connection is in pending status until the
    # third-party connection handshake is completed from the console.
    #
    # @option params [String] :provider_type
    #   The name of the external provider where your third-party code
    #   repository is configured.
    #
    # @option params [required, String] :connection_name
    #   The name of the connection to be created.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value pair to use when tagging the resource.
    #
    # @option params [String] :host_arn
    #   The Amazon Resource Name (ARN) of the host associated with the
    #   connection to be created.
    #
    # @return [Types::CreateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionOutput#connection_arn #connection_arn} => String
    #   * {Types::CreateConnectionOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     provider_type: "Bitbucket", # accepts Bitbucket, GitHub, GitHubEnterpriseServer, GitLab, GitLabSelfManaged
    #     connection_name: "ConnectionName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     host_arn: "HostArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Creates a resource that represents the infrastructure where a
    # third-party provider is installed. The host is used when you create
    # connections to an installed third-party provider type, such as GitHub
    # Enterprise Server. You create one host for all connections to that
    # provider.
    #
    # <note markdown="1"> A host created through the CLI or the SDK is in `PENDING` status by
    # default. You can make its status `AVAILABLE` by setting up the host
    # in the console.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the host to be created.
    #
    # @option params [required, String] :provider_type
    #   The name of the installed provider to be associated with your
    #   connection. The host resource represents the infrastructure where your
    #   provider type is installed. The valid provider type is GitHub
    #   Enterprise Server.
    #
    # @option params [required, String] :provider_endpoint
    #   The endpoint of the infrastructure to be represented by the host after
    #   it is created.
    #
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   The VPC configuration to be provisioned for the host. A VPC must be
    #   configured and the infrastructure to be represented by the host must
    #   already be connected to the VPC.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags for the host to be created.
    #
    # @return [Types::CreateHostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHostOutput#host_arn #host_arn} => String
    #   * {Types::CreateHostOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_host({
    #     name: "HostName", # required
    #     provider_type: "Bitbucket", # required, accepts Bitbucket, GitHub, GitHubEnterpriseServer, GitLab, GitLabSelfManaged
    #     provider_endpoint: "Url", # required
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #       tls_certificate: "TlsCertificate",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.host_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateHost AWS API Documentation
    #
    # @overload create_host(params = {})
    # @param [Hash] params ({})
    def create_host(params = {}, options = {})
      req = build_request(:create_host, params)
      req.send_request(options)
    end

    # Creates a link to a specified external Git repository. A repository
    # link allows Git sync to monitor and sync changes to files in a
    # specified Git repository.
    #
    # @option params [required, String] :connection_arn
    #   The Amazon Resource Name (ARN) of the connection to be associated with
    #   the repository link.
    #
    # @option params [required, String] :owner_id
    #   The owner ID for the repository associated with a specific sync
    #   configuration, such as the owner ID in GitHub.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to be associated with the repository link.
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) encryption key for the repository to be
    #   associated with the repository link.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the repository to be associated with the repository link.
    #
    # @return [Types::CreateRepositoryLinkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRepositoryLinkOutput#repository_link_info #repository_link_info} => Types::RepositoryLinkInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository_link({
    #     connection_arn: "ConnectionArn", # required
    #     owner_id: "OwnerId", # required
    #     repository_name: "RepositoryName", # required
    #     encryption_key_arn: "KmsKeyArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_link_info.connection_arn #=> String
    #   resp.repository_link_info.encryption_key_arn #=> String
    #   resp.repository_link_info.owner_id #=> String
    #   resp.repository_link_info.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.repository_link_info.repository_link_arn #=> String
    #   resp.repository_link_info.repository_link_id #=> String
    #   resp.repository_link_info.repository_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateRepositoryLink AWS API Documentation
    #
    # @overload create_repository_link(params = {})
    # @param [Hash] params ({})
    def create_repository_link(params = {}, options = {})
      req = build_request(:create_repository_link, params)
      req.send_request(options)
    end

    # Creates a sync configuration which allows Amazon Web Services to sync
    # content from a Git repository to update a specified Amazon Web
    # Services resource. Parameters for the sync configuration are
    # determined by the sync type.
    #
    # @option params [required, String] :branch
    #   The branch in the repository from which changes will be synced.
    #
    # @option params [required, String] :config_file
    #   The file name of the configuration file that manages syncing between
    #   the connection and the repository. This configuration file is stored
    #   in the repository.
    #
    # @option params [required, String] :repository_link_id
    #   The ID of the repository link created for the connection. A repository
    #   link allows Git sync to monitor and sync changes to files in a
    #   specified Git repository.
    #
    # @option params [required, String] :resource_name
    #   The name of the Amazon Web Services resource (for example, a
    #   CloudFormation stack in the case of CFN\_STACK\_SYNC) that will be
    #   synchronized from the linked repository.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM role that grants permission for Amazon Web Services
    #   to use Git sync to update a given Amazon Web Services resource on your
    #   behalf.
    #
    # @option params [required, String] :sync_type
    #   The type of sync configuration.
    #
    # @option params [String] :publish_deployment_status
    #   Whether to enable or disable publishing of deployment status to source
    #   providers.
    #
    # @option params [String] :trigger_resource_update_on
    #   When to trigger Git sync to begin the stack update.
    #
    # @return [Types::CreateSyncConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSyncConfigurationOutput#sync_configuration #sync_configuration} => Types::SyncConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sync_configuration({
    #     branch: "BranchName", # required
    #     config_file: "DeploymentFilePath", # required
    #     repository_link_id: "RepositoryLinkId", # required
    #     resource_name: "ResourceName", # required
    #     role_arn: "IamRoleArn", # required
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #     publish_deployment_status: "ENABLED", # accepts ENABLED, DISABLED
    #     trigger_resource_update_on: "ANY_CHANGE", # accepts ANY_CHANGE, FILE_CHANGE
    #   })
    #
    # @example Response structure
    #
    #   resp.sync_configuration.branch #=> String
    #   resp.sync_configuration.config_file #=> String
    #   resp.sync_configuration.owner_id #=> String
    #   resp.sync_configuration.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.sync_configuration.repository_link_id #=> String
    #   resp.sync_configuration.repository_name #=> String
    #   resp.sync_configuration.resource_name #=> String
    #   resp.sync_configuration.role_arn #=> String
    #   resp.sync_configuration.sync_type #=> String, one of "CFN_STACK_SYNC"
    #   resp.sync_configuration.publish_deployment_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sync_configuration.trigger_resource_update_on #=> String, one of "ANY_CHANGE", "FILE_CHANGE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateSyncConfiguration AWS API Documentation
    #
    # @overload create_sync_configuration(params = {})
    # @param [Hash] params ({})
    def create_sync_configuration(params = {}, options = {})
      req = build_request(:create_sync_configuration, params)
      req.send_request(options)
    end

    # The connection to be deleted.
    #
    # @option params [required, String] :connection_arn
    #   The Amazon Resource Name (ARN) of the connection to be deleted.
    #
    #   <note markdown="1"> The ARN is never reused if the connection is deleted.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     connection_arn: "ConnectionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # The host to be deleted. Before you delete a host, all connections
    # associated to the host must be deleted.
    #
    # <note markdown="1"> A host cannot be deleted if it is in the VPC\_CONFIG\_INITIALIZING or
    # VPC\_CONFIG\_DELETING state.
    #
    #  </note>
    #
    # @option params [required, String] :host_arn
    #   The Amazon Resource Name (ARN) of the host to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_host({
    #     host_arn: "HostArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteHost AWS API Documentation
    #
    # @overload delete_host(params = {})
    # @param [Hash] params ({})
    def delete_host(params = {}, options = {})
      req = build_request(:delete_host, params)
      req.send_request(options)
    end

    # Deletes the association between your connection and a specified
    # external Git repository.
    #
    # @option params [required, String] :repository_link_id
    #   The ID of the repository link to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository_link({
    #     repository_link_id: "RepositoryLinkId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteRepositoryLink AWS API Documentation
    #
    # @overload delete_repository_link(params = {})
    # @param [Hash] params ({})
    def delete_repository_link(params = {}, options = {})
      req = build_request(:delete_repository_link, params)
      req.send_request(options)
    end

    # Deletes the sync configuration for a specified repository and
    # connection.
    #
    # @option params [required, String] :sync_type
    #   The type of sync configuration to be deleted.
    #
    # @option params [required, String] :resource_name
    #   The name of the Amazon Web Services resource associated with the sync
    #   configuration to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sync_configuration({
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #     resource_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteSyncConfiguration AWS API Documentation
    #
    # @overload delete_sync_configuration(params = {})
    # @param [Hash] params ({})
    def delete_sync_configuration(params = {}, options = {})
      req = build_request(:delete_sync_configuration, params)
      req.send_request(options)
    end

    # Returns the connection ARN and details such as status, owner, and
    # provider type.
    #
    # @option params [required, String] :connection_arn
    #   The Amazon Resource Name (ARN) of a connection.
    #
    # @return [Types::GetConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionOutput#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection({
    #     connection_arn: "ConnectionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.connection_name #=> String
    #   resp.connection.connection_arn #=> String
    #   resp.connection.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.connection.owner_account_id #=> String
    #   resp.connection.connection_status #=> String, one of "PENDING", "AVAILABLE", "ERROR"
    #   resp.connection.host_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetConnection AWS API Documentation
    #
    # @overload get_connection(params = {})
    # @param [Hash] params ({})
    def get_connection(params = {}, options = {})
      req = build_request(:get_connection, params)
      req.send_request(options)
    end

    # Returns the host ARN and details such as status, provider type,
    # endpoint, and, if applicable, the VPC configuration.
    #
    # @option params [required, String] :host_arn
    #   The Amazon Resource Name (ARN) of the requested host.
    #
    # @return [Types::GetHostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHostOutput#name #name} => String
    #   * {Types::GetHostOutput#status #status} => String
    #   * {Types::GetHostOutput#provider_type #provider_type} => String
    #   * {Types::GetHostOutput#provider_endpoint #provider_endpoint} => String
    #   * {Types::GetHostOutput#vpc_configuration #vpc_configuration} => Types::VpcConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_host({
    #     host_arn: "HostArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.status #=> String
    #   resp.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.provider_endpoint #=> String
    #   resp.vpc_configuration.vpc_id #=> String
    #   resp.vpc_configuration.subnet_ids #=> Array
    #   resp.vpc_configuration.subnet_ids[0] #=> String
    #   resp.vpc_configuration.security_group_ids #=> Array
    #   resp.vpc_configuration.security_group_ids[0] #=> String
    #   resp.vpc_configuration.tls_certificate #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetHost AWS API Documentation
    #
    # @overload get_host(params = {})
    # @param [Hash] params ({})
    def get_host(params = {}, options = {})
      req = build_request(:get_host, params)
      req.send_request(options)
    end

    # Returns details about a repository link. A repository link allows Git
    # sync to monitor and sync changes from files in a specified Git
    # repository.
    #
    # @option params [required, String] :repository_link_id
    #   The ID of the repository link to get.
    #
    # @return [Types::GetRepositoryLinkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryLinkOutput#repository_link_info #repository_link_info} => Types::RepositoryLinkInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_link({
    #     repository_link_id: "RepositoryLinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_link_info.connection_arn #=> String
    #   resp.repository_link_info.encryption_key_arn #=> String
    #   resp.repository_link_info.owner_id #=> String
    #   resp.repository_link_info.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.repository_link_info.repository_link_arn #=> String
    #   resp.repository_link_info.repository_link_id #=> String
    #   resp.repository_link_info.repository_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetRepositoryLink AWS API Documentation
    #
    # @overload get_repository_link(params = {})
    # @param [Hash] params ({})
    def get_repository_link(params = {}, options = {})
      req = build_request(:get_repository_link, params)
      req.send_request(options)
    end

    # Returns details about the sync status for a repository. A repository
    # sync uses Git sync to push and pull changes from your remote
    # repository.
    #
    # @option params [required, String] :branch
    #   The branch of the repository link for the requested repository sync
    #   status.
    #
    # @option params [required, String] :repository_link_id
    #   The repository link ID for the requested repository sync status.
    #
    # @option params [required, String] :sync_type
    #   The sync type of the requested sync status.
    #
    # @return [Types::GetRepositorySyncStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositorySyncStatusOutput#latest_sync #latest_sync} => Types::RepositorySyncAttempt
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_sync_status({
    #     branch: "BranchName", # required
    #     repository_link_id: "RepositoryLinkId", # required
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #   })
    #
    # @example Response structure
    #
    #   resp.latest_sync.started_at #=> Time
    #   resp.latest_sync.status #=> String, one of "FAILED", "INITIATED", "IN_PROGRESS", "SUCCEEDED", "QUEUED"
    #   resp.latest_sync.events #=> Array
    #   resp.latest_sync.events[0].event #=> String
    #   resp.latest_sync.events[0].external_id #=> String
    #   resp.latest_sync.events[0].time #=> Time
    #   resp.latest_sync.events[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetRepositorySyncStatus AWS API Documentation
    #
    # @overload get_repository_sync_status(params = {})
    # @param [Hash] params ({})
    def get_repository_sync_status(params = {}, options = {})
      req = build_request(:get_repository_sync_status, params)
      req.send_request(options)
    end

    # Returns the status of the sync with the Git repository for a specific
    # Amazon Web Services resource.
    #
    # @option params [required, String] :resource_name
    #   The name of the Amazon Web Services resource for the sync status with
    #   the Git repository.
    #
    # @option params [required, String] :sync_type
    #   The sync type for the sync status with the Git repository.
    #
    # @return [Types::GetResourceSyncStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceSyncStatusOutput#desired_state #desired_state} => Types::Revision
    #   * {Types::GetResourceSyncStatusOutput#latest_successful_sync #latest_successful_sync} => Types::ResourceSyncAttempt
    #   * {Types::GetResourceSyncStatusOutput#latest_sync #latest_sync} => Types::ResourceSyncAttempt
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_sync_status({
    #     resource_name: "ResourceName", # required
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #   })
    #
    # @example Response structure
    #
    #   resp.desired_state.branch #=> String
    #   resp.desired_state.directory #=> String
    #   resp.desired_state.owner_id #=> String
    #   resp.desired_state.repository_name #=> String
    #   resp.desired_state.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.desired_state.sha #=> String
    #   resp.latest_successful_sync.events #=> Array
    #   resp.latest_successful_sync.events[0].event #=> String
    #   resp.latest_successful_sync.events[0].external_id #=> String
    #   resp.latest_successful_sync.events[0].time #=> Time
    #   resp.latest_successful_sync.events[0].type #=> String
    #   resp.latest_successful_sync.initial_revision.branch #=> String
    #   resp.latest_successful_sync.initial_revision.directory #=> String
    #   resp.latest_successful_sync.initial_revision.owner_id #=> String
    #   resp.latest_successful_sync.initial_revision.repository_name #=> String
    #   resp.latest_successful_sync.initial_revision.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.latest_successful_sync.initial_revision.sha #=> String
    #   resp.latest_successful_sync.started_at #=> Time
    #   resp.latest_successful_sync.status #=> String, one of "FAILED", "INITIATED", "IN_PROGRESS", "SUCCEEDED"
    #   resp.latest_successful_sync.target_revision.branch #=> String
    #   resp.latest_successful_sync.target_revision.directory #=> String
    #   resp.latest_successful_sync.target_revision.owner_id #=> String
    #   resp.latest_successful_sync.target_revision.repository_name #=> String
    #   resp.latest_successful_sync.target_revision.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.latest_successful_sync.target_revision.sha #=> String
    #   resp.latest_successful_sync.target #=> String
    #   resp.latest_sync.events #=> Array
    #   resp.latest_sync.events[0].event #=> String
    #   resp.latest_sync.events[0].external_id #=> String
    #   resp.latest_sync.events[0].time #=> Time
    #   resp.latest_sync.events[0].type #=> String
    #   resp.latest_sync.initial_revision.branch #=> String
    #   resp.latest_sync.initial_revision.directory #=> String
    #   resp.latest_sync.initial_revision.owner_id #=> String
    #   resp.latest_sync.initial_revision.repository_name #=> String
    #   resp.latest_sync.initial_revision.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.latest_sync.initial_revision.sha #=> String
    #   resp.latest_sync.started_at #=> Time
    #   resp.latest_sync.status #=> String, one of "FAILED", "INITIATED", "IN_PROGRESS", "SUCCEEDED"
    #   resp.latest_sync.target_revision.branch #=> String
    #   resp.latest_sync.target_revision.directory #=> String
    #   resp.latest_sync.target_revision.owner_id #=> String
    #   resp.latest_sync.target_revision.repository_name #=> String
    #   resp.latest_sync.target_revision.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.latest_sync.target_revision.sha #=> String
    #   resp.latest_sync.target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetResourceSyncStatus AWS API Documentation
    #
    # @overload get_resource_sync_status(params = {})
    # @param [Hash] params ({})
    def get_resource_sync_status(params = {}, options = {})
      req = build_request(:get_resource_sync_status, params)
      req.send_request(options)
    end

    # Returns a list of the most recent sync blockers.
    #
    # @option params [required, String] :sync_type
    #   The sync type for the sync blocker summary.
    #
    # @option params [required, String] :resource_name
    #   The name of the Amazon Web Services resource currently blocked from
    #   automatically being synced from a Git repository.
    #
    # @return [Types::GetSyncBlockerSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSyncBlockerSummaryOutput#sync_blocker_summary #sync_blocker_summary} => Types::SyncBlockerSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sync_blocker_summary({
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #     resource_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sync_blocker_summary.resource_name #=> String
    #   resp.sync_blocker_summary.parent_resource_name #=> String
    #   resp.sync_blocker_summary.latest_blockers #=> Array
    #   resp.sync_blocker_summary.latest_blockers[0].id #=> String
    #   resp.sync_blocker_summary.latest_blockers[0].type #=> String, one of "AUTOMATED"
    #   resp.sync_blocker_summary.latest_blockers[0].status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.sync_blocker_summary.latest_blockers[0].created_reason #=> String
    #   resp.sync_blocker_summary.latest_blockers[0].created_at #=> Time
    #   resp.sync_blocker_summary.latest_blockers[0].contexts #=> Array
    #   resp.sync_blocker_summary.latest_blockers[0].contexts[0].key #=> String
    #   resp.sync_blocker_summary.latest_blockers[0].contexts[0].value #=> String
    #   resp.sync_blocker_summary.latest_blockers[0].resolved_reason #=> String
    #   resp.sync_blocker_summary.latest_blockers[0].resolved_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetSyncBlockerSummary AWS API Documentation
    #
    # @overload get_sync_blocker_summary(params = {})
    # @param [Hash] params ({})
    def get_sync_blocker_summary(params = {}, options = {})
      req = build_request(:get_sync_blocker_summary, params)
      req.send_request(options)
    end

    # Returns details about a sync configuration, including the sync type
    # and resource name. A sync configuration allows the configuration to
    # sync (push and pull) changes from the remote repository for a
    # specified branch in a Git repository.
    #
    # @option params [required, String] :sync_type
    #   The sync type for the sync configuration for which you want to
    #   retrieve information.
    #
    # @option params [required, String] :resource_name
    #   The name of the Amazon Web Services resource for the sync
    #   configuration for which you want to retrieve information.
    #
    # @return [Types::GetSyncConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSyncConfigurationOutput#sync_configuration #sync_configuration} => Types::SyncConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sync_configuration({
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #     resource_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sync_configuration.branch #=> String
    #   resp.sync_configuration.config_file #=> String
    #   resp.sync_configuration.owner_id #=> String
    #   resp.sync_configuration.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.sync_configuration.repository_link_id #=> String
    #   resp.sync_configuration.repository_name #=> String
    #   resp.sync_configuration.resource_name #=> String
    #   resp.sync_configuration.role_arn #=> String
    #   resp.sync_configuration.sync_type #=> String, one of "CFN_STACK_SYNC"
    #   resp.sync_configuration.publish_deployment_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sync_configuration.trigger_resource_update_on #=> String, one of "ANY_CHANGE", "FILE_CHANGE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetSyncConfiguration AWS API Documentation
    #
    # @overload get_sync_configuration(params = {})
    # @param [Hash] params ({})
    def get_sync_configuration(params = {}, options = {})
      req = build_request(:get_sync_configuration, params)
      req.send_request(options)
    end

    # Lists the connections associated with your account.
    #
    # @option params [String] :provider_type_filter
    #   Filters the list of connections to those associated with a specified
    #   provider, such as Bitbucket.
    #
    # @option params [String] :host_arn_filter
    #   Filters the list of connections to those associated with a specified
    #   host.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `nextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous `ListConnections` call,
    #   which can be used to return the next set of connections in the list.
    #
    # @return [Types::ListConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectionsOutput#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::ListConnectionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections({
    #     provider_type_filter: "Bitbucket", # accepts Bitbucket, GitHub, GitHubEnterpriseServer, GitLab, GitLabSelfManaged
    #     host_arn_filter: "HostArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_arn #=> String
    #   resp.connections[0].provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.connections[0].owner_account_id #=> String
    #   resp.connections[0].connection_status #=> String, one of "PENDING", "AVAILABLE", "ERROR"
    #   resp.connections[0].host_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListConnections AWS API Documentation
    #
    # @overload list_connections(params = {})
    # @param [Hash] params ({})
    def list_connections(params = {}, options = {})
      req = build_request(:list_connections, params)
      req.send_request(options)
    end

    # Lists the hosts associated with your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `nextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous `ListHosts` call, which
    #   can be used to return the next set of hosts in the list.
    #
    # @return [Types::ListHostsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHostsOutput#hosts #hosts} => Array&lt;Types::Host&gt;
    #   * {Types::ListHostsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosts({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.hosts #=> Array
    #   resp.hosts[0].name #=> String
    #   resp.hosts[0].host_arn #=> String
    #   resp.hosts[0].provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.hosts[0].provider_endpoint #=> String
    #   resp.hosts[0].vpc_configuration.vpc_id #=> String
    #   resp.hosts[0].vpc_configuration.subnet_ids #=> Array
    #   resp.hosts[0].vpc_configuration.subnet_ids[0] #=> String
    #   resp.hosts[0].vpc_configuration.security_group_ids #=> Array
    #   resp.hosts[0].vpc_configuration.security_group_ids[0] #=> String
    #   resp.hosts[0].vpc_configuration.tls_certificate #=> String
    #   resp.hosts[0].status #=> String
    #   resp.hosts[0].status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListHosts AWS API Documentation
    #
    # @overload list_hosts(params = {})
    # @param [Hash] params ({})
    def list_hosts(params = {}, options = {})
      req = build_request(:list_hosts, params)
      req.send_request(options)
    end

    # Lists the repository links created for connections in your account.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @return [Types::ListRepositoryLinksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoryLinksOutput#repository_links #repository_links} => Array&lt;Types::RepositoryLinkInfo&gt;
    #   * {Types::ListRepositoryLinksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repository_links({
    #     max_results: 1,
    #     next_token: "SharpNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_links #=> Array
    #   resp.repository_links[0].connection_arn #=> String
    #   resp.repository_links[0].encryption_key_arn #=> String
    #   resp.repository_links[0].owner_id #=> String
    #   resp.repository_links[0].provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.repository_links[0].repository_link_arn #=> String
    #   resp.repository_links[0].repository_link_id #=> String
    #   resp.repository_links[0].repository_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListRepositoryLinks AWS API Documentation
    #
    # @overload list_repository_links(params = {})
    # @param [Hash] params ({})
    def list_repository_links(params = {}, options = {})
      req = build_request(:list_repository_links, params)
      req.send_request(options)
    end

    # Lists the repository sync definitions for repository links in your
    # account.
    #
    # @option params [required, String] :repository_link_id
    #   The ID of the repository link for the sync definition for which you
    #   want to retrieve information.
    #
    # @option params [required, String] :sync_type
    #   The sync type of the repository link for the the sync definition for
    #   which you want to retrieve information.
    #
    # @return [Types::ListRepositorySyncDefinitionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositorySyncDefinitionsOutput#repository_sync_definitions #repository_sync_definitions} => Array&lt;Types::RepositorySyncDefinition&gt;
    #   * {Types::ListRepositorySyncDefinitionsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repository_sync_definitions({
    #     repository_link_id: "RepositoryLinkId", # required
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_sync_definitions #=> Array
    #   resp.repository_sync_definitions[0].branch #=> String
    #   resp.repository_sync_definitions[0].directory #=> String
    #   resp.repository_sync_definitions[0].parent #=> String
    #   resp.repository_sync_definitions[0].target #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListRepositorySyncDefinitions AWS API Documentation
    #
    # @overload list_repository_sync_definitions(params = {})
    # @param [Hash] params ({})
    def list_repository_sync_definitions(params = {}, options = {})
      req = build_request(:list_repository_sync_definitions, params)
      req.send_request(options)
    end

    # Returns a list of sync configurations for a specified repository.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results.
    #
    # @option params [String] :next_token
    #   An enumeration token that allows the operation to batch the results of
    #   the operation.
    #
    # @option params [required, String] :repository_link_id
    #   The ID of the repository link for the requested list of sync
    #   configurations.
    #
    # @option params [required, String] :sync_type
    #   The sync type for the requested list of sync configurations.
    #
    # @return [Types::ListSyncConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSyncConfigurationsOutput#sync_configurations #sync_configurations} => Array&lt;Types::SyncConfiguration&gt;
    #   * {Types::ListSyncConfigurationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sync_configurations({
    #     max_results: 1,
    #     next_token: "SharpNextToken",
    #     repository_link_id: "RepositoryLinkId", # required
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #   })
    #
    # @example Response structure
    #
    #   resp.sync_configurations #=> Array
    #   resp.sync_configurations[0].branch #=> String
    #   resp.sync_configurations[0].config_file #=> String
    #   resp.sync_configurations[0].owner_id #=> String
    #   resp.sync_configurations[0].provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.sync_configurations[0].repository_link_id #=> String
    #   resp.sync_configurations[0].repository_name #=> String
    #   resp.sync_configurations[0].resource_name #=> String
    #   resp.sync_configurations[0].role_arn #=> String
    #   resp.sync_configurations[0].sync_type #=> String, one of "CFN_STACK_SYNC"
    #   resp.sync_configurations[0].publish_deployment_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sync_configurations[0].trigger_resource_update_on #=> String, one of "ANY_CHANGE", "FILE_CHANGE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListSyncConfigurations AWS API Documentation
    #
    # @overload list_sync_configurations(params = {})
    # @param [Hash] params ({})
    def list_sync_configurations(params = {}, options = {})
      req = build_request(:list_sync_configurations, params)
      req.send_request(options)
    end

    # Gets the set of key-value pairs (metadata) that are used to manage the
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get information about tags, if any.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds to or modifies the tags of the given resource. Tags are metadata
    # that can be used to manage a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add or update tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags you want to modify or add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an Amazon Web Services resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of keys for the tags to be removed from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a specified host with the provided configurations.
    #
    # @option params [required, String] :host_arn
    #   The Amazon Resource Name (ARN) of the host to be updated.
    #
    # @option params [String] :provider_endpoint
    #   The URL or endpoint of the host to be updated.
    #
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   The VPC configuration of the host to be updated. A VPC must be
    #   configured and the infrastructure to be represented by the host must
    #   already be connected to the VPC.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_host({
    #     host_arn: "HostArn", # required
    #     provider_endpoint: "Url",
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #       tls_certificate: "TlsCertificate",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UpdateHost AWS API Documentation
    #
    # @overload update_host(params = {})
    # @param [Hash] params ({})
    def update_host(params = {}, options = {})
      req = build_request(:update_host, params)
      req.send_request(options)
    end

    # Updates the association between your connection and a specified
    # external Git repository. A repository link allows Git sync to monitor
    # and sync changes to files in a specified Git repository.
    #
    # @option params [String] :connection_arn
    #   The Amazon Resource Name (ARN) of the connection for the repository
    #   link to be updated. The updated connection ARN must have the same
    #   providerType (such as GitHub) as the original connection ARN for the
    #   repo link.
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) of the encryption key for the
    #   repository link to be updated.
    #
    # @option params [required, String] :repository_link_id
    #   The ID of the repository link to be updated.
    #
    # @return [Types::UpdateRepositoryLinkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRepositoryLinkOutput#repository_link_info #repository_link_info} => Types::RepositoryLinkInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_repository_link({
    #     connection_arn: "ConnectionArn",
    #     encryption_key_arn: "KmsKeyArn",
    #     repository_link_id: "RepositoryLinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_link_info.connection_arn #=> String
    #   resp.repository_link_info.encryption_key_arn #=> String
    #   resp.repository_link_info.owner_id #=> String
    #   resp.repository_link_info.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.repository_link_info.repository_link_arn #=> String
    #   resp.repository_link_info.repository_link_id #=> String
    #   resp.repository_link_info.repository_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UpdateRepositoryLink AWS API Documentation
    #
    # @overload update_repository_link(params = {})
    # @param [Hash] params ({})
    def update_repository_link(params = {}, options = {})
      req = build_request(:update_repository_link, params)
      req.send_request(options)
    end

    # Allows you to update the status of a sync blocker, resolving the
    # blocker and allowing syncing to continue.
    #
    # @option params [required, String] :id
    #   The ID of the sync blocker to be updated.
    #
    # @option params [required, String] :sync_type
    #   The sync type of the sync blocker to be updated.
    #
    # @option params [required, String] :resource_name
    #   The name of the resource for the sync blocker to be updated.
    #
    # @option params [required, String] :resolved_reason
    #   The reason for resolving the sync blocker.
    #
    # @return [Types::UpdateSyncBlockerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSyncBlockerOutput#resource_name #resource_name} => String
    #   * {Types::UpdateSyncBlockerOutput#parent_resource_name #parent_resource_name} => String
    #   * {Types::UpdateSyncBlockerOutput#sync_blocker #sync_blocker} => Types::SyncBlocker
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sync_blocker({
    #     id: "Id", # required
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #     resource_name: "ResourceName", # required
    #     resolved_reason: "ResolvedReason", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_name #=> String
    #   resp.parent_resource_name #=> String
    #   resp.sync_blocker.id #=> String
    #   resp.sync_blocker.type #=> String, one of "AUTOMATED"
    #   resp.sync_blocker.status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.sync_blocker.created_reason #=> String
    #   resp.sync_blocker.created_at #=> Time
    #   resp.sync_blocker.contexts #=> Array
    #   resp.sync_blocker.contexts[0].key #=> String
    #   resp.sync_blocker.contexts[0].value #=> String
    #   resp.sync_blocker.resolved_reason #=> String
    #   resp.sync_blocker.resolved_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UpdateSyncBlocker AWS API Documentation
    #
    # @overload update_sync_blocker(params = {})
    # @param [Hash] params ({})
    def update_sync_blocker(params = {}, options = {})
      req = build_request(:update_sync_blocker, params)
      req.send_request(options)
    end

    # Updates the sync configuration for your connection and a specified
    # external Git repository.
    #
    # @option params [String] :branch
    #   The branch for the sync configuration to be updated.
    #
    # @option params [String] :config_file
    #   The configuration file for the sync configuration to be updated.
    #
    # @option params [String] :repository_link_id
    #   The ID of the repository link for the sync configuration to be
    #   updated.
    #
    # @option params [required, String] :resource_name
    #   The name of the Amazon Web Services resource for the sync
    #   configuration to be updated.
    #
    # @option params [String] :role_arn
    #   The ARN of the IAM role for the sync configuration to be updated.
    #
    # @option params [required, String] :sync_type
    #   The sync type for the sync configuration to be updated.
    #
    # @option params [String] :publish_deployment_status
    #   Whether to enable or disable publishing of deployment status to source
    #   providers.
    #
    # @option params [String] :trigger_resource_update_on
    #   When to trigger Git sync to begin the stack update.
    #
    # @return [Types::UpdateSyncConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSyncConfigurationOutput#sync_configuration #sync_configuration} => Types::SyncConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sync_configuration({
    #     branch: "BranchName",
    #     config_file: "DeploymentFilePath",
    #     repository_link_id: "RepositoryLinkId",
    #     resource_name: "ResourceName", # required
    #     role_arn: "IamRoleArn",
    #     sync_type: "CFN_STACK_SYNC", # required, accepts CFN_STACK_SYNC
    #     publish_deployment_status: "ENABLED", # accepts ENABLED, DISABLED
    #     trigger_resource_update_on: "ANY_CHANGE", # accepts ANY_CHANGE, FILE_CHANGE
    #   })
    #
    # @example Response structure
    #
    #   resp.sync_configuration.branch #=> String
    #   resp.sync_configuration.config_file #=> String
    #   resp.sync_configuration.owner_id #=> String
    #   resp.sync_configuration.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged"
    #   resp.sync_configuration.repository_link_id #=> String
    #   resp.sync_configuration.repository_name #=> String
    #   resp.sync_configuration.resource_name #=> String
    #   resp.sync_configuration.role_arn #=> String
    #   resp.sync_configuration.sync_type #=> String, one of "CFN_STACK_SYNC"
    #   resp.sync_configuration.publish_deployment_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sync_configuration.trigger_resource_update_on #=> String, one of "ANY_CHANGE", "FILE_CHANGE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UpdateSyncConfiguration AWS API Documentation
    #
    # @overload update_sync_configuration(params = {})
    # @param [Hash] params ({})
    def update_sync_configuration(params = {}, options = {})
      req = build_request(:update_sync_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CodeStarconnections')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-codestarconnections'
      context[:gem_version] = '1.64.0'
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
