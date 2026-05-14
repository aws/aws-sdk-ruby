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

module Aws::Interconnect
  # An API client for Interconnect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Interconnect::Client.new(
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

    @identifier = :interconnect

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
    add_plugin(Aws::Interconnect::Plugins::Endpoints)

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
    #   @option options [Aws::Interconnect::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Interconnect::EndpointParameters`.
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

    # Accepts a connection proposal which was generated at a supported
    # partner's portal.
    #
    # The proposal contains the Environment and bandwidth that were chosen
    # on the partner's portal and cannot be modified.
    #
    # Upon accepting the proposal a connection will be made between the AWS
    # network as accessed via the selected Attach Point and the network
    # previously selected network on the partner's portal.
    #
    # @option params [required, Types::AttachPoint] :attach_point
    #   The Attach Point to which the connection should be associated.
    #
    # @option params [required, String] :activation_key
    #   An Activation Key that was generated on a supported partner's portal.
    #   This key captures the desired parameters from the initial creation
    #   request.
    #
    #   The details of this request can be described using with
    #   DescribeConnectionProposal.
    #
    # @option params [String] :description
    #   A description to distinguish this Connection.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the resulting Connection.
    #
    # @option params [String] :client_token
    #   Idempotency token used for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AcceptConnectionProposalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptConnectionProposalResponse#connection #connection} => Types::Connection
    #
    #
    # @example Example: Accept Connection Proposal
    #
    #   resp = client.accept_connection_proposal({
    #     activation_key: "<Activation Key Data>", 
    #     attach_point: {
    #       direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #       type: "Multicloud", 
    #       activation_key: "<Activation Key Data>", 
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #       attach_point: {
    #         direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #       }, 
    #       bandwidth: "1Gbps", 
    #       description: "My MultiCloud Connection", 
    #       environment_id: "mce-aws-acme-1", 
    #       id: "mcc-abc12345", 
    #       location: "acme-east", 
    #       owner_account: "000000000000", 
    #       provider: {
    #         cloud_service_provider: "acme", 
    #       }, 
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91", 
    #       state: "pending", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_connection_proposal({
    #     attach_point: { # required
    #       direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #       arn: "AmazonResourceName",
    #     },
    #     activation_key: "ActivationKey", # required
    #     description: "ConnectionDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.id #=> String
    #   resp.connection.arn #=> String
    #   resp.connection.description #=> String
    #   resp.connection.bandwidth #=> String
    #   resp.connection.attach_point.direct_connect_gateway #=> String
    #   resp.connection.attach_point.arn #=> String
    #   resp.connection.environment_id #=> String
    #   resp.connection.provider.cloud_service_provider #=> String
    #   resp.connection.provider.last_mile_provider #=> String
    #   resp.connection.location #=> String
    #   resp.connection.type #=> String
    #   resp.connection.state #=> String, one of "available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"
    #   resp.connection.shared_id #=> String
    #   resp.connection.billing_tier #=> Integer
    #   resp.connection.owner_account #=> String
    #   resp.connection.activation_key #=> String
    #   resp.connection.tags #=> Hash
    #   resp.connection.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/AcceptConnectionProposal AWS API Documentation
    #
    # @overload accept_connection_proposal(params = {})
    # @param [Hash] params ({})
    def accept_connection_proposal(params = {}, options = {})
      req = build_request(:accept_connection_proposal, params)
      req.send_request(options)
    end

    # Initiates the process to create a Connection across the specified
    # Environment.
    #
    # The Environment dictates the specified partner and location to which
    # the other end of the connection should attach. You can see a list of
    # the available Environments by calling ListEnvironments
    #
    # The Attach Point specifies where within the AWS Network your
    # connection will logically connect.
    #
    # After a successful call to this method, the resulting Connection will
    # return an Activation Key which will need to be brought to the specific
    # partner's portal to confirm the Connection on both sides. (See
    # Environment$activationPageUrl for a direct link to the partner
    # portal).
    #
    # @option params [String] :description
    #   A description to distinguish this Connection.
    #
    # @option params [required, String] :bandwidth
    #   The desired bandwidth of the requested Connection
    #
    # @option params [required, Types::AttachPoint] :attach_point
    #   The Attach Point to which the connection should be associated."
    #
    # @option params [required, String] :environment_id
    #   The identifier of the Environment across which this Connection should
    #   be created.
    #
    #   The available Environment objects can be determined using
    #   ListEnvironments.
    #
    # @option params [Types::RemoteAccountIdentifier] :remote_account
    #   Account and/or principal identifying information that can be verified
    #   by the partner of this specific Environment.
    #
    # @option params [Hash<String,String>] :tags
    #   The tag to associate with the resulting Connection.
    #
    # @option params [String] :client_token
    #   Idempotency token used for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionResponse#connection #connection} => Types::Connection
    #
    #
    # @example Example: Create Connection on specific environment
    #
    #   resp = client.create_connection({
    #     attach_point: {
    #       direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #     }, 
    #     bandwidth: "1Gbps", 
    #     environment_id: "mce-aws-acme-1", 
    #     remote_account: {
    #       identifier: "PartnerAccountDetails", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #       type: "Multicloud", 
    #       activation_key: "<Activation Key Data>", 
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #       attach_point: {
    #         direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #       }, 
    #       bandwidth: "1Gbps", 
    #       description: "My MultiCloud Connection", 
    #       environment_id: "mce-aws-acme-1", 
    #       id: "mcc-abc12345", 
    #       location: "acme-east", 
    #       owner_account: "000000000000", 
    #       provider: {
    #         cloud_service_provider: "acme", 
    #       }, 
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91", 
    #       state: "requested", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     description: "ConnectionDescription",
    #     bandwidth: "ConnectionBandwidth", # required
    #     attach_point: { # required
    #       direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #       arn: "AmazonResourceName",
    #     },
    #     environment_id: "EnvironmentId", # required
    #     remote_account: {
    #       identifier: "RemoteOwnerAccount",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.id #=> String
    #   resp.connection.arn #=> String
    #   resp.connection.description #=> String
    #   resp.connection.bandwidth #=> String
    #   resp.connection.attach_point.direct_connect_gateway #=> String
    #   resp.connection.attach_point.arn #=> String
    #   resp.connection.environment_id #=> String
    #   resp.connection.provider.cloud_service_provider #=> String
    #   resp.connection.provider.last_mile_provider #=> String
    #   resp.connection.location #=> String
    #   resp.connection.type #=> String
    #   resp.connection.state #=> String, one of "available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"
    #   resp.connection.shared_id #=> String
    #   resp.connection.billing_tier #=> Integer
    #   resp.connection.owner_account #=> String
    #   resp.connection.activation_key #=> String
    #   resp.connection.tags #=> Hash
    #   resp.connection.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Deletes an existing Connection with the supplied identifier.
    #
    # This operation will also inform the remote partner of your intention
    # to delete your connection. Note, the partner may still require you to
    # delete to fully clean up resources, but the network connectivity
    # provided by the Connection will cease to exist.
    #
    # @option params [required, String] :identifier
    #   The identifier of the Connection to be deleted.
    #
    # @option params [String] :client_token
    #   Idempotency token used for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConnectionResponse#connection #connection} => Types::Connection
    #
    #
    # @example Example: Delete Connection
    #
    #   resp = client.delete_connection({
    #     identifier: "mcc-abc12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #       type: "Multicloud", 
    #       activation_key: "<Activation Key Data>", 
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #       attach_point: {
    #         direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #       }, 
    #       bandwidth: "2Gbps", 
    #       description: "changed Description", 
    #       environment_id: "mce-aws-acme-1", 
    #       id: "mcc-abc12345", 
    #       location: "acme-east", 
    #       owner_account: "000000000000", 
    #       provider: {
    #         cloud_service_provider: "acme", 
    #       }, 
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91", 
    #       state: "deleting", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     identifier: "ConnectionId", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.id #=> String
    #   resp.connection.arn #=> String
    #   resp.connection.description #=> String
    #   resp.connection.bandwidth #=> String
    #   resp.connection.attach_point.direct_connect_gateway #=> String
    #   resp.connection.attach_point.arn #=> String
    #   resp.connection.environment_id #=> String
    #   resp.connection.provider.cloud_service_provider #=> String
    #   resp.connection.provider.last_mile_provider #=> String
    #   resp.connection.location #=> String
    #   resp.connection.type #=> String
    #   resp.connection.state #=> String, one of "available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"
    #   resp.connection.shared_id #=> String
    #   resp.connection.billing_tier #=> Integer
    #   resp.connection.owner_account #=> String
    #   resp.connection.activation_key #=> String
    #   resp.connection.tags #=> Hash
    #   resp.connection.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Describes the details of a connection proposal generated at a
    # partner's portal.
    #
    # @option params [required, String] :activation_key
    #   An Activation Key that was generated on a supported partner's portal.
    #   This key captures the desired parameters from the initial creation
    #   request.
    #
    # @return [Types::DescribeConnectionProposalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionProposalResponse#bandwidth #bandwidth} => String
    #   * {Types::DescribeConnectionProposalResponse#environment_id #environment_id} => String
    #   * {Types::DescribeConnectionProposalResponse#provider #provider} => Types::Provider
    #   * {Types::DescribeConnectionProposalResponse#location #location} => String
    #
    #
    # @example Example: Describe Connection Proposal
    #
    #   resp = client.describe_connection_proposal({
    #     activation_key: "<Activation Key Data>", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     bandwidth: "1Gbps", 
    #     environment_id: "mce-aws-acme-1", 
    #     location: "acme-east", 
    #     provider: {
    #       cloud_service_provider: "acme", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_proposal({
    #     activation_key: "ActivationKey", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bandwidth #=> String
    #   resp.environment_id #=> String
    #   resp.provider.cloud_service_provider #=> String
    #   resp.provider.last_mile_provider #=> String
    #   resp.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/DescribeConnectionProposal AWS API Documentation
    #
    # @overload describe_connection_proposal(params = {})
    # @param [Hash] params ({})
    def describe_connection_proposal(params = {}, options = {})
      req = build_request(:describe_connection_proposal, params)
      req.send_request(options)
    end

    # Describes the current state of a Connection resource as specified by
    # the identifier.
    #
    # @option params [required, String] :identifier
    #   The identifier of the requested Connection
    #
    # @return [Types::GetConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionResponse#connection #connection} => Types::Connection
    #
    #
    # @example Example: Get connection
    #
    #   resp = client.get_connection({
    #     identifier: "mcc-abc12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #       type: "Multicloud", 
    #       activation_key: "<Activation Key Data>", 
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #       attach_point: {
    #         direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #       }, 
    #       bandwidth: "1Gbps", 
    #       description: "My MultiCloud Connection", 
    #       environment_id: "mce-aws-acme-1", 
    #       id: "mcc-abc12345", 
    #       location: "acme-east", 
    #       owner_account: "000000000000", 
    #       provider: {
    #         cloud_service_provider: "acme", 
    #       }, 
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91", 
    #       state: "available", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection({
    #     identifier: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.id #=> String
    #   resp.connection.arn #=> String
    #   resp.connection.description #=> String
    #   resp.connection.bandwidth #=> String
    #   resp.connection.attach_point.direct_connect_gateway #=> String
    #   resp.connection.attach_point.arn #=> String
    #   resp.connection.environment_id #=> String
    #   resp.connection.provider.cloud_service_provider #=> String
    #   resp.connection.provider.last_mile_provider #=> String
    #   resp.connection.location #=> String
    #   resp.connection.type #=> String
    #   resp.connection.state #=> String, one of "available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"
    #   resp.connection.shared_id #=> String
    #   resp.connection.billing_tier #=> Integer
    #   resp.connection.owner_account #=> String
    #   resp.connection.activation_key #=> String
    #   resp.connection.tags #=> Hash
    #   resp.connection.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * connection_available
    #   * connection_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/GetConnection AWS API Documentation
    #
    # @overload get_connection(params = {})
    # @param [Hash] params ({})
    def get_connection(params = {}, options = {})
      req = build_request(:get_connection, params)
      req.send_request(options)
    end

    # Describes a specific Environment
    #
    # @option params [required, String] :id
    #   The identifier of the specific Environment to describe.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#environment #environment} => Types::Environment
    #
    #
    # @example Example: Get a specific environment
    #
    #   resp = client.get_environment({
    #     id: "mce-aws-acme-1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environment: {
    #       type: "Multicloud", 
    #       bandwidths: {
    #         available: [
    #           "1Gbps", 
    #         ], 
    #         supported: [
    #           "1Gbps", 
    #           "2Gbps", 
    #         ], 
    #       }, 
    #       environment_id: "mce-aws-acme-1", 
    #       location: "acme-east", 
    #       provider: {
    #         cloud_service_provider: "acme", 
    #       }, 
    #       state: "available", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.provider.cloud_service_provider #=> String
    #   resp.environment.provider.last_mile_provider #=> String
    #   resp.environment.location #=> String
    #   resp.environment.environment_id #=> String
    #   resp.environment.state #=> String, one of "available", "limited", "unavailable"
    #   resp.environment.bandwidths.available #=> Array
    #   resp.environment.bandwidths.available[0] #=> String
    #   resp.environment.bandwidths.supported #=> Array
    #   resp.environment.bandwidths.supported[0] #=> String
    #   resp.environment.type #=> String
    #   resp.environment.activation_page_url #=> String
    #   resp.environment.remote_identifier_type #=> String, one of "account", "email"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Lists all Attach Points the caller has access to that are valid for
    # the specified Environment.
    #
    # @option params [required, String] :environment_id
    #   The identifier of the Environment for which to list valid Attach
    #   Points.
    #
    # @option params [Integer] :max_results
    #   The max number of list results in a single paginated response.
    #
    # @option params [String] :next_token
    #   A pagination token from a previous paginated response indicating you
    #   wish to get the next page.
    #
    # @return [Types::ListAttachPointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachPointsResponse#attach_points #attach_points} => Array&lt;Types::AttachPointDescriptor&gt;
    #   * {Types::ListAttachPointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List Attach Points
    #
    #   resp = client.list_attach_points({
    #     environment_id: "mce-aws-acme-1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attach_points: [
    #       {
    #         name: "My DirectConnectGateway", 
    #         type: "DirectConnectGateway", 
    #         identifier: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attach_points({
    #     environment_id: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.attach_points #=> Array
    #   resp.attach_points[0].type #=> String, one of "DirectConnectGateway"
    #   resp.attach_points[0].identifier #=> String
    #   resp.attach_points[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListAttachPoints AWS API Documentation
    #
    # @overload list_attach_points(params = {})
    # @param [Hash] params ({})
    def list_attach_points(params = {}, options = {})
      req = build_request(:list_attach_points, params)
      req.send_request(options)
    end

    # Lists all connection objects to which the caller has access.
    #
    # Allows for optional filtering by the following properties:
    #
    # * `state`
    #
    # * `environmentId`
    #
    # * `provider`
    #
    # * `attach point`
    #
    # Only Connection objects matching all filters will be returned.
    #
    # @option params [Integer] :max_results
    #   The max number of list results in a single paginated response.
    #
    # @option params [String] :next_token
    #   A pagination token from a previous paginated response indicating you
    #   wish to get the next page of results.
    #
    # @option params [String] :state
    #   Filter the results to only include Connection objects in the given
    #   Connection$state.
    #
    # @option params [String] :environment_id
    #   Filter the results to only include Connection objects on the given
    #   Environment.
    #
    # @option params [Types::Provider] :provider
    #   Filter the results to only include Connection objects to the given
    #   Provider.
    #
    # @option params [Types::AttachPoint] :attach_point
    #   Filter results to only include Connection objects attached to the
    #   given AttachPoint.
    #
    # @return [Types::ListConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectionsResponse#connections #connections} => Array&lt;Types::ConnectionSummary&gt;
    #   * {Types::ListConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List All Connections
    #
    #   resp = client.list_connections({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connections: [
    #       {
    #         type: "Multicloud", 
    #         arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #         attach_point: {
    #           direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #         }, 
    #         bandwidth: "1Gbps", 
    #         description: "My MultiCloud Connection", 
    #         environment_id: "mce-aws-acme-1", 
    #         id: "mcc-abc12345", 
    #         location: "acme-east", 
    #         provider: {
    #           cloud_service_provider: "acme", 
    #         }, 
    #         shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91", 
    #         state: "available", 
    #       }, 
    #       {
    #         type: "LastMile", 
    #         arn: "arn:aws:interconnect:us-east-1:000000000000:connection/lmcc-xyz98765", 
    #         attach_point: {
    #           direct_connect_gateway: "244FB7E5-3C56-4F7D-AAB9-E35F70764154", 
    #         }, 
    #         bandwidth: "1Gbps", 
    #         description: "My LastMile  Connection", 
    #         environment_id: "mce-aws-lastmile-1", 
    #         id: "lmcc-xyz98765", 
    #         location: "lastmile-east", 
    #         provider: {
    #           last_mile_provider: "lastmile", 
    #         }, 
    #         shared_id: "27C2CDD8-8FDF-402D-9DFF-92F66ED7C7FC", 
    #         state: "pending", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List Connections in available state
    #
    #   resp = client.list_connections({
    #     state: "available", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connections: [
    #       {
    #         type: "Multicloud", 
    #         arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #         attach_point: {
    #           direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #         }, 
    #         bandwidth: "1Gbps", 
    #         description: "My MultiCloud Connection", 
    #         environment_id: "mce-aws-acme-1", 
    #         id: "mcc-abc12345", 
    #         location: "acme-east", 
    #         provider: {
    #           cloud_service_provider: "acme", 
    #         }, 
    #         shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91", 
    #         state: "available", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List Connections on specific Environment
    #
    #   resp = client.list_connections({
    #     environment_id: "mce-aws-acme-1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connections: [
    #       {
    #         type: "LastMile", 
    #         arn: "arn:aws:interconnect:us-east-1:000000000000:connection/lmcc-xyz98765", 
    #         attach_point: {
    #           direct_connect_gateway: "244FB7E5-3C56-4F7D-AAB9-E35F70764154", 
    #         }, 
    #         bandwidth: "1Gbps", 
    #         description: "My LastMile  Connection", 
    #         environment_id: "mce-aws-lastmile-1", 
    #         id: "lmcc-xyz98765", 
    #         location: "lastmile-east", 
    #         provider: {
    #           last_mile_provider: "lastmile", 
    #         }, 
    #         shared_id: "27C2CDD8-8FDF-402D-9DFF-92F66ED7C7FC", 
    #         state: "pending", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     state: "available", # accepts available, requested, pending, down, deleting, deleted, failed, updating
    #     environment_id: "EnvironmentId",
    #     provider: {
    #       cloud_service_provider: "CloudServiceProvider",
    #       last_mile_provider: "LastMileProvider",
    #     },
    #     attach_point: {
    #       direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #       arn: "AmazonResourceName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].id #=> String
    #   resp.connections[0].arn #=> String
    #   resp.connections[0].description #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].attach_point.direct_connect_gateway #=> String
    #   resp.connections[0].attach_point.arn #=> String
    #   resp.connections[0].environment_id #=> String
    #   resp.connections[0].provider.cloud_service_provider #=> String
    #   resp.connections[0].provider.last_mile_provider #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].type #=> String
    #   resp.connections[0].state #=> String, one of "available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"
    #   resp.connections[0].shared_id #=> String
    #   resp.connections[0].billing_tier #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListConnections AWS API Documentation
    #
    # @overload list_connections(params = {})
    # @param [Hash] params ({})
    def list_connections(params = {}, options = {})
      req = build_request(:list_connections, params)
      req.send_request(options)
    end

    # Lists all of the environments that can produce connections that will
    # land in the called AWS region.
    #
    # @option params [Integer] :max_results
    #   The max number of list results in a single paginated response.
    #
    # @option params [String] :next_token
    #   A pagination token from a previous paginated response indicating you
    #   wish to get the next page of results.
    #
    # @option params [Types::Provider] :provider
    #   Filter results to only include Environment objects that connect to the
    #   Provider.
    #
    # @option params [String] :location
    #   Filter results to only include Environment objects that connect to a
    #   given location distiguisher.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#environments #environments} => Array&lt;Types::Environment&gt;
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List All Environments
    #
    #   resp = client.list_environments({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environments: [
    #       {
    #         type: "Multicloud", 
    #         bandwidths: {
    #           available: [
    #             "1Gbps", 
    #           ], 
    #           supported: [
    #             "1Gbps", 
    #             "2Gbps", 
    #           ], 
    #         }, 
    #         environment_id: "mce-aws-acme-1", 
    #         location: "acme-east", 
    #         provider: {
    #           cloud_service_provider: "acme", 
    #         }, 
    #         state: "available", 
    #       }, 
    #       {
    #         type: "LastMile", 
    #         bandwidths: {
    #           available: [
    #             "1Gbps", 
    #           ], 
    #           supported: [
    #             "1Gbps", 
    #             "2Gbps", 
    #           ], 
    #         }, 
    #         environment_id: "mce-aws-lastmile-1", 
    #         location: "lastmile-east", 
    #         provider: {
    #           cloud_service_provider: "acme", 
    #         }, 
    #         state: "available", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     provider: {
    #       cloud_service_provider: "CloudServiceProvider",
    #       last_mile_provider: "LastMileProvider",
    #     },
    #     location: "Location",
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].provider.cloud_service_provider #=> String
    #   resp.environments[0].provider.last_mile_provider #=> String
    #   resp.environments[0].location #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].state #=> String, one of "available", "limited", "unavailable"
    #   resp.environments[0].bandwidths.available #=> Array
    #   resp.environments[0].bandwidths.available[0] #=> String
    #   resp.environments[0].bandwidths.supported #=> Array
    #   resp.environments[0].bandwidths.supported[0] #=> String
    #   resp.environments[0].type #=> String
    #   resp.environments[0].activation_page_url #=> String
    #   resp.environments[0].remote_identifier_type #=> String, one of "account", "email"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # List all current tags on the specified resource. Currently this
    # supports Connection resources.
    #
    # @option params [required, String] :arn
    #   The resource ARN for which to list tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: List Tags
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "TagKey1" => "TagValue1", 
    #       "TagKey2" => "TagValue2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Add new tags to the specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource that should receive the new tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of tags to apply to the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Apply Tags
    #
    #   resp = client.tag_resource({
    #     arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #     tags: {
    #       "TagKey1" => "TagValue1", 
    #       "TagKey2" => "TagValue2", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource from which the specified tags should be
    #   removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys that should be removed from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Remove Tags
    #
    #   resp = client.untag_resource({
    #     arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #     tag_keys: [
    #       "TagKey1", 
    #       "TagKey2", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies an existing connection. Currently we support modifications to
    # the connection's description and/or bandwidth.
    #
    # @option params [required, String] :identifier
    #   The identifier of the Connection that should be updated.
    #
    # @option params [String] :description
    #   An updated description to apply to the Connection
    #
    # @option params [String] :bandwidth
    #   Request a new bandwidth size on the given Connection.
    #
    #   Note that changes to the size may be subject to additional policy, and
    #   does require the remote partner provider to acknowledge and permit
    #   this new bandwidth size.
    #
    # @option params [String] :client_token
    #   Idempotency token used for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectionResponse#connection #connection} => Types::Connection
    #
    #
    # @example Example: Update Connection Description
    #
    #   resp = client.update_connection({
    #     description: "Changed Description", 
    #     identifier: "mcc-abc12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #       type: "Multicloud", 
    #       activation_key: "<Activation Key Data>", 
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #       attach_point: {
    #         direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #       }, 
    #       bandwidth: "1Gbps", 
    #       description: "changed Description", 
    #       environment_id: "mce-aws-acme-1", 
    #       id: "mcc-abc12345", 
    #       location: "acme-east", 
    #       owner_account: "000000000000", 
    #       provider: {
    #         cloud_service_provider: "acme", 
    #       }, 
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91", 
    #       state: "available", 
    #     }, 
    #   }
    #
    # @example Example: Update Connection Bandwidth
    #
    #   resp = client.update_connection({
    #     bandwidth: "2Gbps", 
    #     identifier: "mcc-abc12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #       type: "Multicloud", 
    #       activation_key: "<Activation Key Data>", 
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345", 
    #       attach_point: {
    #         direct_connect_gateway: "90392BE3-219C-47FD-BBA5-03DF76D2542A", 
    #       }, 
    #       bandwidth: "2Gbps", 
    #       description: "changed Description", 
    #       environment_id: "mce-aws-acme-1", 
    #       id: "mcc-abc12345", 
    #       location: "acme-east", 
    #       owner_account: "000000000000", 
    #       provider: {
    #         cloud_service_provider: "acme", 
    #       }, 
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91", 
    #       state: "updating", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection({
    #     identifier: "ConnectionId", # required
    #     description: "ConnectionDescription",
    #     bandwidth: "ConnectionBandwidth",
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.id #=> String
    #   resp.connection.arn #=> String
    #   resp.connection.description #=> String
    #   resp.connection.bandwidth #=> String
    #   resp.connection.attach_point.direct_connect_gateway #=> String
    #   resp.connection.attach_point.arn #=> String
    #   resp.connection.environment_id #=> String
    #   resp.connection.provider.cloud_service_provider #=> String
    #   resp.connection.provider.last_mile_provider #=> String
    #   resp.connection.location #=> String
    #   resp.connection.type #=> String
    #   resp.connection.state #=> String, one of "available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"
    #   resp.connection.shared_id #=> String
    #   resp.connection.billing_tier #=> Integer
    #   resp.connection.owner_account #=> String
    #   resp.connection.activation_key #=> String
    #   resp.connection.tags #=> Hash
    #   resp.connection.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/UpdateConnection AWS API Documentation
    #
    # @overload update_connection(params = {})
    # @param [Hash] params ({})
    def update_connection(params = {}, options = {})
      req = build_request(:update_connection, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Interconnect')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-interconnect'
      context[:gem_version] = '1.1.0'
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
    # | waiter_name          | params                  | :delay   | :max_attempts |
    # | -------------------- | ----------------------- | -------- | ------------- |
    # | connection_available | {Client#get_connection} | 30       | 5             |
    # | connection_deleted   | {Client#get_connection} | 30       | 5             |
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
        connection_available: Waiters::ConnectionAvailable,
        connection_deleted: Waiters::ConnectionDeleted
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
