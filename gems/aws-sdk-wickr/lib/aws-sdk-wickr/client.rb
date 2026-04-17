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

module Aws::Wickr
  # An API client for Wickr.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Wickr::Client.new(
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

    @identifier = :wickr

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
    add_plugin(Aws::Wickr::Plugins::Endpoints)

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
    #   @option options [Aws::Wickr::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Wickr::EndpointParameters`.
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

    # Creates multiple users in a specified Wickr network. This operation
    # allows you to provision multiple user accounts simultaneously,
    # optionally specifying security groups, and validation requirements for
    # each user.
    #
    # <note markdown="1"> `codeValidation`, `inviteCode`, and `inviteCodeTtl` are restricted to
    # networks under preview only.
    #
    #  </note>
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network where users will be created.
    #
    # @option params [required, Array<Types::BatchCreateUserRequestItem>] :users
    #   A list of user objects containing the details for each user to be
    #   created, including username, name, security groups, and optional
    #   invite codes. Maximum 50 users per batch request.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency. If you
    #   retry a request with the same client token, the service will return
    #   the same response without creating duplicate users.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchCreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateUserResponse#message #message} => String
    #   * {Types::BatchCreateUserResponse#successful #successful} => Array&lt;Types::User&gt;
    #   * {Types::BatchCreateUserResponse#failed #failed} => Array&lt;Types::BatchUserErrorResponseItem&gt;
    #
    #
    # @example Example: Create multiple users
    #
    #   resp = client.batch_create_user({
    #     client_token: "550e8400-e29b-41d4-a716-446655440000", 
    #     network_id: "12345678", 
    #     users: [
    #       {
    #         code_validation: true, 
    #         first_name: "John", 
    #         invite_code: "INVITE123", 
    #         invite_code_ttl: 7, 
    #         last_name: "Doe", 
    #         security_group_ids: [
    #           "BCTY8Qhe", 
    #         ], 
    #         username: "john.doe@example.com", 
    #       }, 
    #       {
    #         first_name: "Jane", 
    #         last_name: "Smith", 
    #         security_group_ids: [
    #           "BCTY8Qhe", 
    #         ], 
    #         username: "jane.smith@example.com", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #     ], 
    #     successful: [
    #       {
    #         code_validation: true, 
    #         first_name: "John", 
    #         invite_code: "INVITE123", 
    #         is_invite_expired: false, 
    #         last_name: "Doe", 
    #         status: 1, 
    #         user_id: "123", 
    #         username: "john.doe@example.com", 
    #       }, 
    #       {
    #         code_validation: false, 
    #         first_name: "Jane", 
    #         invite_code: "AUTOGEN456", 
    #         is_invite_expired: false, 
    #         last_name: "Smith", 
    #         status: 1, 
    #         user_id: "456", 
    #         username: "jane.smith@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Partial failure - duplicate user
    #
    #   resp = client.batch_create_user({
    #     network_id: "12345678", 
    #     users: [
    #       {
    #         first_name: "Alice", 
    #         last_name: "Johnson", 
    #         security_group_ids: [
    #           "BCTY8Qhe", 
    #         ], 
    #         username: "alice.johnson@example.com", 
    #       }, 
    #       {
    #         first_name: "Bob", 
    #         last_name: "Wilson", 
    #         security_group_ids: [
    #           "BCTY8Qhe", 
    #         ], 
    #         username: "existing.user@example.com", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #       {
    #         field: "username", 
    #         reason: "User already exists", 
    #         user_id: "0", 
    #       }, 
    #     ], 
    #     successful: [
    #       {
    #         code_validation: false, 
    #         first_name: "Alice", 
    #         invite_code: "AUTOGEN789", 
    #         is_invite_expired: false, 
    #         last_name: "Johnson", 
    #         status: 1, 
    #         user_id: "678", 
    #         username: "alice.johnson@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_user({
    #     network_id: "NetworkId", # required
    #     users: [ # required
    #       {
    #         first_name: "SensitiveString",
    #         last_name: "SensitiveString",
    #         security_group_ids: ["SecurityGroupId"], # required
    #         username: "GenericString", # required
    #         invite_code: "GenericString",
    #         invite_code_ttl: 1,
    #         code_validation: false,
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].user_id #=> String
    #   resp.successful[0].first_name #=> String
    #   resp.successful[0].last_name #=> String
    #   resp.successful[0].username #=> String
    #   resp.successful[0].security_groups #=> Array
    #   resp.successful[0].security_groups[0] #=> String
    #   resp.successful[0].is_admin #=> Boolean
    #   resp.successful[0].suspended #=> Boolean
    #   resp.successful[0].status #=> Integer
    #   resp.successful[0].otp_enabled #=> Boolean
    #   resp.successful[0].scim_id #=> String
    #   resp.successful[0].type #=> String
    #   resp.successful[0].cell #=> String
    #   resp.successful[0].country_code #=> String
    #   resp.successful[0].challenge_failures #=> Integer
    #   resp.successful[0].is_invite_expired #=> Boolean
    #   resp.successful[0].is_user #=> Boolean
    #   resp.successful[0].invite_code #=> String
    #   resp.successful[0].code_validation #=> Boolean
    #   resp.successful[0].uname #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].field #=> String
    #   resp.failed[0].reason #=> String
    #   resp.failed[0].user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchCreateUser AWS API Documentation
    #
    # @overload batch_create_user(params = {})
    # @param [Hash] params ({})
    def batch_create_user(params = {}, options = {})
      req = build_request(:batch_create_user, params)
      req.send_request(options)
    end

    # Deletes multiple users from a specified Wickr network. This operation
    # permanently removes user accounts and their associated data from the
    # network.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which users will be deleted.
    #
    # @option params [required, Array<String>] :user_ids
    #   A list of user IDs identifying the users to be deleted from the
    #   network. Maximum 50 users per batch request.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency. If you
    #   retry a request with the same client token, the service will return
    #   the same response without attempting to delete users again.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchDeleteUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteUserResponse#message #message} => String
    #   * {Types::BatchDeleteUserResponse#successful #successful} => Array&lt;Types::BatchUserSuccessResponseItem&gt;
    #   * {Types::BatchDeleteUserResponse#failed #failed} => Array&lt;Types::BatchUserErrorResponseItem&gt;
    #
    #
    # @example Example: Delete multiple users
    #
    #   resp = client.batch_delete_user({
    #     client_token: "6ba7b814-9dad-11d1-80b4-00c04fd430c8", 
    #     network_id: "12345678", 
    #     user_ids: [
    #       "123", 
    #       "456", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #     ], 
    #     message: "success", 
    #     successful: [
    #       {
    #         user_id: "123", 
    #       }, 
    #       {
    #         user_id: "456", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Partial failure - user not found
    #
    #   resp = client.batch_delete_user({
    #     network_id: "12345678", 
    #     user_ids: [
    #       "123", 
    #       "456", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #       {
    #         field: "username", 
    #         reason: "User not found", 
    #         user_id: "456", 
    #       }, 
    #     ], 
    #     message: "partial success", 
    #     successful: [
    #       {
    #         user_id: "123", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_user({
    #     network_id: "NetworkId", # required
    #     user_ids: ["UserId"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].user_id #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].field #=> String
    #   resp.failed[0].reason #=> String
    #   resp.failed[0].user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchDeleteUser AWS API Documentation
    #
    # @overload batch_delete_user(params = {})
    # @param [Hash] params ({})
    def batch_delete_user(params = {}, options = {})
      req = build_request(:batch_delete_user, params)
      req.send_request(options)
    end

    # Looks up multiple user usernames from their unique username hashes
    # (unames). This operation allows you to retrieve the email addresses
    # associated with a list of username hashes.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network where the users will be looked up.
    #
    # @option params [required, Array<String>] :unames
    #   A list of username hashes (unames) to look up. Each uname is a unique
    #   identifier for a user's username. Maximum 50 unames per batch
    #   request.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchLookupUserUnameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchLookupUserUnameResponse#message #message} => String
    #   * {Types::BatchLookupUserUnameResponse#successful #successful} => Array&lt;Types::BatchUnameSuccessResponseItem&gt;
    #   * {Types::BatchLookupUserUnameResponse#failed #failed} => Array&lt;Types::BatchUnameErrorResponseItem&gt;
    #
    #
    # @example Example: Lookup multiple user unames
    #
    #   resp = client.batch_lookup_user_uname({
    #     client_token: "f47ac10b-58cc-4372-a567-0e02b2c3d479", 
    #     network_id: "12345678", 
    #     unames: [
    #       "a1b2c3d4e5f6", 
    #       "g7h8i9j0k1l2", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #     ], 
    #     message: "success", 
    #     successful: [
    #       {
    #         uname: "a1b2c3d4e5f6", 
    #         username: "john.doe@example.com", 
    #       }, 
    #       {
    #         uname: "g7h8i9j0k1l2", 
    #         username: "john.doe2@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Partial failure - uname not found
    #
    #   resp = client.batch_lookup_user_uname({
    #     network_id: "12345678", 
    #     unames: [
    #       "a1b2c3d4e5f6", 
    #       "invaliduname", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #       {
    #         field: "uname", 
    #         reason: "Uname not found", 
    #         uname: "invaliduname", 
    #       }, 
    #     ], 
    #     message: "partial success", 
    #     successful: [
    #       {
    #         uname: "a1b2c3d4e5f6", 
    #         username: "john.doe@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_lookup_user_uname({
    #     network_id: "NetworkId", # required
    #     unames: ["GenericString"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].uname #=> String
    #   resp.successful[0].username #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].field #=> String
    #   resp.failed[0].reason #=> String
    #   resp.failed[0].uname #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchLookupUserUname AWS API Documentation
    #
    # @overload batch_lookup_user_uname(params = {})
    # @param [Hash] params ({})
    def batch_lookup_user_uname(params = {}, options = {})
      req = build_request(:batch_lookup_user_uname, params)
      req.send_request(options)
    end

    # Resends invitation codes to multiple users who have pending
    # invitations in a Wickr network. This operation is useful when users
    # haven't accepted their initial invitations or when invitations have
    # expired.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network where users will be reinvited.
    #
    # @option params [required, Array<String>] :user_ids
    #   A list of user IDs identifying the users to be reinvited to the
    #   network. Maximum 50 users per batch request.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchReinviteUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchReinviteUserResponse#message #message} => String
    #   * {Types::BatchReinviteUserResponse#successful #successful} => Array&lt;Types::BatchUserSuccessResponseItem&gt;
    #   * {Types::BatchReinviteUserResponse#failed #failed} => Array&lt;Types::BatchUserErrorResponseItem&gt;
    #
    #
    # @example Example: Batch reinvite users successfully
    #
    #   resp = client.batch_reinvite_user({
    #     network_id: "12345678", 
    #     user_ids: [
    #       "12345", 
    #       "67890", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #     ], 
    #     successful: [
    #       {
    #         user_id: "12345", 
    #       }, 
    #       {
    #         user_id: "67890", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Batch reinvite users - partial success
    #
    #   resp = client.batch_reinvite_user({
    #     network_id: "12345678", 
    #     user_ids: [
    #       "12345", 
    #       "99999", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #       {
    #         reason: "user not found in current network", 
    #         user_id: "99999", 
    #       }, 
    #     ], 
    #     successful: [
    #       {
    #         user_id: "12345", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Batch reinvite users - cannot reinvite
    #
    #   resp = client.batch_reinvite_user({
    #     network_id: "12345678", 
    #     user_ids: [
    #       "54321", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #       {
    #         reason: "user cannot be reinvited", 
    #         user_id: "54321", 
    #       }, 
    #     ], 
    #     successful: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_reinvite_user({
    #     network_id: "NetworkId", # required
    #     user_ids: ["UserId"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].user_id #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].field #=> String
    #   resp.failed[0].reason #=> String
    #   resp.failed[0].user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchReinviteUser AWS API Documentation
    #
    # @overload batch_reinvite_user(params = {})
    # @param [Hash] params ({})
    def batch_reinvite_user(params = {}, options = {})
      req = build_request(:batch_reinvite_user, params)
      req.send_request(options)
    end

    # Resets multiple devices for a specific user in a Wickr network. This
    # operation forces the selected devices to log out and requires users to
    # re-authenticate, which is useful for security purposes or when devices
    # need to be revoked.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the user whose devices will be
    #   reset.
    #
    # @option params [required, String] :user_id
    #   The ID of the user whose devices will be reset.
    #
    # @option params [required, Array<String>] :app_ids
    #   A list of application IDs identifying the specific devices to be reset
    #   for the user. Maximum 50 devices per batch request.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchResetDevicesForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchResetDevicesForUserResponse#message #message} => String
    #   * {Types::BatchResetDevicesForUserResponse#successful #successful} => Array&lt;Types::BatchDeviceSuccessResponseItem&gt;
    #   * {Types::BatchResetDevicesForUserResponse#failed #failed} => Array&lt;Types::BatchDeviceErrorResponseItem&gt;
    #
    #
    # @example Example: Successful device reset
    #
    #   resp = client.batch_reset_devices_for_user({
    #     app_ids: [
    #       "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6", 
    #       "e4246b53edc7548891c27d4da0692fe75f7933884de7c076e36gca030d90bdb7", 
    #     ], 
    #     network_id: "12345678", 
    #     user_id: "12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #     ], 
    #     message: "success", 
    #     successful: [
    #       {
    #         app_id: "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6", 
    #       }, 
    #       {
    #         app_id: "e4246b53edc7548891c27d4da0692fe75f7933884de7c076e36gca030d90bdb7", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Partial failure device reset
    #
    #   resp = client.batch_reset_devices_for_user({
    #     app_ids: [
    #       "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6", 
    #       "invalid-app-id", 
    #     ], 
    #     network_id: "12345678", 
    #     user_id: "12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #       {
    #         app_id: "invalid-app-id", 
    #         field: "appId", 
    #         reason: "Invalid app ID.", 
    #       }, 
    #     ], 
    #     message: "partial success", 
    #     successful: [
    #       {
    #         app_id: "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Invalid network ID error
    #
    #   resp = client.batch_reset_devices_for_user({
    #     app_ids: [
    #       "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6", 
    #     ], 
    #     network_id: "00000000", 
    #     user_id: "12345", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_reset_devices_for_user({
    #     network_id: "NetworkId", # required
    #     user_id: "UserId", # required
    #     app_ids: ["GenericString"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].app_id #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].field #=> String
    #   resp.failed[0].reason #=> String
    #   resp.failed[0].app_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchResetDevicesForUser AWS API Documentation
    #
    # @overload batch_reset_devices_for_user(params = {})
    # @param [Hash] params ({})
    def batch_reset_devices_for_user(params = {}, options = {})
      req = build_request(:batch_reset_devices_for_user, params)
      req.send_request(options)
    end

    # Suspends or unsuspends multiple users in a Wickr network. Suspended
    # users cannot access the network until they are unsuspended. This
    # operation is useful for temporarily restricting access without
    # deleting user accounts.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network where users will be suspended or
    #   unsuspended.
    #
    # @option params [required, Boolean] :suspend
    #   A boolean value indicating whether to suspend (true) or unsuspend
    #   (false) the specified users.
    #
    # @option params [required, Array<String>] :user_ids
    #   A list of user IDs identifying the users whose suspend status will be
    #   toggled. Maximum 50 users per batch request.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchToggleUserSuspendStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchToggleUserSuspendStatusResponse#message #message} => String
    #   * {Types::BatchToggleUserSuspendStatusResponse#successful #successful} => Array&lt;Types::BatchUserSuccessResponseItem&gt;
    #   * {Types::BatchToggleUserSuspendStatusResponse#failed #failed} => Array&lt;Types::BatchUserErrorResponseItem&gt;
    #
    #
    # @example Example: Suspend multiple users
    #
    #   resp = client.batch_toggle_user_suspend_status({
    #     client_token: "6ba7b815-9dad-11d1-80b4-00c04fd430c8", 
    #     network_id: "12345678", 
    #     suspend: true, 
    #     user_ids: [
    #       "123", 
    #       "456", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #     ], 
    #     message: "success", 
    #     successful: [
    #       {
    #         user_id: "123", 
    #       }, 
    #       {
    #         user_id: "456", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Unsuspend users with partial failure
    #
    #   resp = client.batch_toggle_user_suspend_status({
    #     network_id: "12345678", 
    #     suspend: false, 
    #     user_ids: [
    #       "123", 
    #       "456", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed: [
    #       {
    #         field: "username", 
    #         reason: "User not found", 
    #         user_id: "456", 
    #       }, 
    #     ], 
    #     message: "partial success", 
    #     successful: [
    #       {
    #         user_id: "123", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_toggle_user_suspend_status({
    #     network_id: "NetworkId", # required
    #     suspend: false, # required
    #     user_ids: ["UserId"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].user_id #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].field #=> String
    #   resp.failed[0].reason #=> String
    #   resp.failed[0].user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchToggleUserSuspendStatus AWS API Documentation
    #
    # @overload batch_toggle_user_suspend_status(params = {})
    # @param [Hash] params ({})
    def batch_toggle_user_suspend_status(params = {}, options = {})
      req = build_request(:batch_toggle_user_suspend_status, params)
      req.send_request(options)
    end

    # Creates a new bot in a specified Wickr network. Bots are automated
    # accounts that can send and receive messages, enabling integration with
    # external systems and automation of tasks.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network where the bot will be created.
    #
    # @option params [required, String] :username
    #   The username for the bot. This must be unique within the network and
    #   follow the network's naming conventions.
    #
    # @option params [String] :display_name
    #   The display name for the bot that will be visible to users in the
    #   network.
    #
    # @option params [required, String] :group_id
    #   The ID of the security group to which the bot will be assigned.
    #
    # @option params [required, String] :challenge
    #   The password for the bot account.
    #
    # @return [Types::CreateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotResponse#message #message} => String
    #   * {Types::CreateBotResponse#bot_id #bot_id} => String
    #   * {Types::CreateBotResponse#network_id #network_id} => String
    #   * {Types::CreateBotResponse#username #username} => String
    #   * {Types::CreateBotResponse#display_name #display_name} => String
    #   * {Types::CreateBotResponse#group_id #group_id} => String
    #
    #
    # @example Example: Create bot successfully
    #
    #   resp = client.create_bot({
    #     challenge: "SecureP@ssw0rd123", 
    #     display_name: "Analytics Bot", 
    #     group_id: "analytics_group", 
    #     network_id: "12345678", 
    #     username: "analytics_bot", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     bot_id: "98766", 
    #     display_name: "Analytics Bot", 
    #     group_id: "analytics_group", 
    #     network_id: "12345678", 
    #     username: "analytics_bot", 
    #   }
    #
    # @example Example: Create bot - username unavailable
    #
    #   resp = client.create_bot({
    #     challenge: "SecureP@ssw0rd123", 
    #     display_name: "Support Bot", 
    #     group_id: "default_group", 
    #     network_id: "12345678", 
    #     username: "support_bot", 
    #   })
    #
    # @example Example: Create bot - invalid username format
    #
    #   resp = client.create_bot({
    #     challenge: "SecureP@ssw0rd123", 
    #     display_name: "Test Bot", 
    #     group_id: "default_group", 
    #     network_id: "12345678", 
    #     username: "bot@invalid", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot({
    #     network_id: "NetworkId", # required
    #     username: "GenericString", # required
    #     display_name: "GenericString",
    #     group_id: "GenericString", # required
    #     challenge: "SensitiveString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.bot_id #=> String
    #   resp.network_id #=> String
    #   resp.username #=> String
    #   resp.display_name #=> String
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateBot AWS API Documentation
    #
    # @overload create_bot(params = {})
    # @param [Hash] params ({})
    def create_bot(params = {}, options = {})
      req = build_request(:create_bot, params)
      req.send_request(options)
    end

    # Creates a data retention bot in a Wickr network. Data retention bots
    # are specialized bots that handle message archiving and compliance by
    # capturing and storing messages for regulatory or organizational
    # requirements.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network where the data retention bot will be
    #   created.
    #
    # @return [Types::CreateDataRetentionBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataRetentionBotResponse#message #message} => String
    #
    #
    # @example Example: Create data retention bot successfully
    #
    #   resp = client.create_data_retention_bot({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "successfully provisioned data retention bot", 
    #   }
    #
    # @example Example: Create data retention bot - users already exist
    #
    #   resp = client.create_data_retention_bot({
    #     network_id: "12345678", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_retention_bot({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateDataRetentionBot AWS API Documentation
    #
    # @overload create_data_retention_bot(params = {})
    # @param [Hash] params ({})
    def create_data_retention_bot(params = {}, options = {})
      req = build_request(:create_data_retention_bot, params)
      req.send_request(options)
    end

    # Creates a new challenge password for the data retention bot. This
    # password is used for authentication when the bot connects to the
    # network.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the data retention bot.
    #
    # @return [Types::CreateDataRetentionBotChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataRetentionBotChallengeResponse#challenge #challenge} => String
    #
    #
    # @example Example: Create data retention bot challenge successfully
    #
    #   resp = client.create_data_retention_bot_challenge({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     challenge: "a1b2c3d4e5f6", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_retention_bot_challenge({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateDataRetentionBotChallenge AWS API Documentation
    #
    # @overload create_data_retention_bot_challenge(params = {})
    # @param [Hash] params ({})
    def create_data_retention_bot_challenge(params = {}, options = {})
      req = build_request(:create_data_retention_bot_challenge, params)
      req.send_request(options)
    end

    # Creates a new Wickr network with specified access level and
    # configuration. This operation provisions a new communication network
    # for your organization.
    #
    # @option params [required, String] :network_name
    #   The name for the new network. Must be between 1 and 20 characters.
    #
    # @option params [required, String] :access_level
    #   The access level for the network. Valid values are STANDARD or
    #   PREMIUM, which determine the features and capabilities available to
    #   network members.
    #
    # @option params [Boolean] :enable_premium_free_trial
    #   Specifies whether to enable a premium free trial for the network. It
    #   is optional and has a default value as false. When set to true, the
    #   network starts with premium features for a limited trial period.
    #
    # @option params [String] :encryption_key_arn
    #   The ARN of the Amazon Web Services KMS customer managed key to use for
    #   encrypting sensitive data in the network.
    #
    # @return [Types::CreateNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkResponse#network_id #network_id} => String
    #   * {Types::CreateNetworkResponse#network_name #network_name} => String
    #   * {Types::CreateNetworkResponse#encryption_key_arn #encryption_key_arn} => String
    #
    #
    # @example Example: Create network successfully
    #
    #   resp = client.create_network({
    #     access_level: "PREMIUM", 
    #     enable_premium_free_trial: false, 
    #     network_name: "Production Network", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     network_id: "12345678", 
    #     network_name: "Production Network", 
    #   }
    #
    # @example Example: Create network with free trial
    #
    #   resp = client.create_network({
    #     access_level: "PREMIUM", 
    #     enable_premium_free_trial: true, 
    #     network_name: "Trial Network", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     network_id: "87654321", 
    #     network_name: "Trial Network", 
    #   }
    #
    # @example Example: Create network - invalid name
    #
    #   resp = client.create_network({
    #     access_level: "STANDARD", 
    #     network_name: "This network name is way too long", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network({
    #     network_name: "GenericString", # required
    #     access_level: "STANDARD", # required, accepts STANDARD, PREMIUM
    #     enable_premium_free_trial: false,
    #     encryption_key_arn: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_id #=> String
    #   resp.network_name #=> String
    #   resp.encryption_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateNetwork AWS API Documentation
    #
    # @overload create_network(params = {})
    # @param [Hash] params ({})
    def create_network(params = {}, options = {})
      req = build_request(:create_network, params)
      req.send_request(options)
    end

    # Creates a new security group in a Wickr network. Security groups allow
    # you to organize users and control their permissions, features, and
    # security settings.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network where the security group will be created.
    #
    # @option params [required, String] :name
    #   The name for the new security group.
    #
    # @option params [required, Types::SecurityGroupSettingsRequest] :security_group_settings
    #   The configuration settings for the security group, including
    #   permissions, federation settings, and feature controls.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityGroupResponse#security_group #security_group} => Types::SecurityGroup
    #
    #
    # @example Example: Create security group successfully
    #
    #   resp = client.create_security_group({
    #     name: "engineering", 
    #     network_id: "12345678", 
    #     security_group_settings: {
    #       federation_mode: 1, 
    #       lockout_threshold: 10, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_group: {
    #       name: "engineering", 
    #       active_members: 0, 
    #       bot_members: 0, 
    #       id: "def67890", 
    #       is_default: false, 
    #       modified: 1638360000, 
    #       security_group_settings: {
    #         federation_mode: 1, 
    #         lockout_threshold: 10, 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: Create security group - missing name
    #
    #   resp = client.create_security_group({
    #     name: "", 
    #     network_id: "12345678", 
    #     security_group_settings: {
    #       federation_mode: 1, 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_group({
    #     network_id: "NetworkId", # required
    #     name: "GenericString", # required
    #     security_group_settings: { # required
    #       lockout_threshold: 1,
    #       permitted_networks: ["NetworkId"],
    #       enable_guest_federation: false,
    #       global_federation: false,
    #       federation_mode: 1,
    #       enable_restricted_global_federation: false,
    #       permitted_wickr_aws_networks: [
    #         {
    #           region: "GenericString", # required
    #           network_id: "NetworkId", # required
    #         },
    #       ],
    #       permitted_wickr_enterprise_networks: [
    #         {
    #           domain: "GenericString", # required
    #           network_id: "NetworkId", # required
    #         },
    #       ],
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group.active_members #=> Integer
    #   resp.security_group.bot_members #=> Integer
    #   resp.security_group.active_directory_guid #=> String
    #   resp.security_group.id #=> String
    #   resp.security_group.is_default #=> Boolean
    #   resp.security_group.name #=> String
    #   resp.security_group.modified #=> Integer
    #   resp.security_group.security_group_settings.always_reauthenticate #=> Boolean
    #   resp.security_group.security_group_settings.atak_package_values #=> Array
    #   resp.security_group.security_group_settings.atak_package_values[0] #=> String
    #   resp.security_group.security_group_settings.calling.can_start_11_call #=> Boolean
    #   resp.security_group.security_group_settings.calling.can_video_call #=> Boolean
    #   resp.security_group.security_group_settings.calling.force_tcp_call #=> Boolean
    #   resp.security_group.security_group_settings.check_for_updates #=> Boolean
    #   resp.security_group.security_group_settings.enable_atak #=> Boolean
    #   resp.security_group.security_group_settings.enable_crash_reports #=> Boolean
    #   resp.security_group.security_group_settings.enable_file_download #=> Boolean
    #   resp.security_group.security_group_settings.enable_guest_federation #=> Boolean
    #   resp.security_group.security_group_settings.enable_notification_preview #=> Boolean
    #   resp.security_group.security_group_settings.enable_open_access_option #=> Boolean
    #   resp.security_group.security_group_settings.enable_restricted_global_federation #=> Boolean
    #   resp.security_group.security_group_settings.files_enabled #=> Boolean
    #   resp.security_group.security_group_settings.force_device_lockout #=> Integer
    #   resp.security_group.security_group_settings.force_open_access #=> Boolean
    #   resp.security_group.security_group_settings.force_read_receipts #=> Boolean
    #   resp.security_group.security_group_settings.global_federation #=> Boolean
    #   resp.security_group.security_group_settings.is_ato_enabled #=> Boolean
    #   resp.security_group.security_group_settings.is_link_preview_enabled #=> Boolean
    #   resp.security_group.security_group_settings.location_allow_maps #=> Boolean
    #   resp.security_group.security_group_settings.location_enabled #=> Boolean
    #   resp.security_group.security_group_settings.max_auto_download_size #=> Integer
    #   resp.security_group.security_group_settings.max_bor #=> Integer
    #   resp.security_group.security_group_settings.max_ttl #=> Integer
    #   resp.security_group.security_group_settings.message_forwarding_enabled #=> Boolean
    #   resp.security_group.security_group_settings.password_requirements.lowercase #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.min_length #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.numbers #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.symbols #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.uppercase #=> Integer
    #   resp.security_group.security_group_settings.presence_enabled #=> Boolean
    #   resp.security_group.security_group_settings.quick_responses #=> Array
    #   resp.security_group.security_group_settings.quick_responses[0] #=> String
    #   resp.security_group.security_group_settings.show_master_recovery_key #=> Boolean
    #   resp.security_group.security_group_settings.shredder.can_process_manually #=> Boolean
    #   resp.security_group.security_group_settings.shredder.intensity #=> Integer
    #   resp.security_group.security_group_settings.sso_max_idle_minutes #=> Integer
    #   resp.security_group.security_group_settings.federation_mode #=> Integer
    #   resp.security_group.security_group_settings.lockout_threshold #=> Integer
    #   resp.security_group.security_group_settings.permitted_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_networks[0] #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks[0].region #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks[0].network_id #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks[0].domain #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks[0].network_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateSecurityGroup AWS API Documentation
    #
    # @overload create_security_group(params = {})
    # @param [Hash] params ({})
    def create_security_group(params = {}, options = {})
      req = build_request(:create_security_group, params)
      req.send_request(options)
    end

    # Deletes a bot from a specified Wickr network. This operation
    # permanently removes the bot account and its associated data from the
    # network.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which the bot will be deleted.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot to be deleted.
    #
    # @return [Types::DeleteBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBotResponse#message #message} => String
    #
    #
    # @example Example: Delete bot successfully
    #
    #   resp = client.delete_bot({
    #     bot_id: "98765", 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "success", 
    #   }
    #
    # @example Example: Delete bot - bot not found
    #
    #   resp = client.delete_bot({
    #     bot_id: "99999", 
    #     network_id: "12345678", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot({
    #     network_id: "NetworkId", # required
    #     bot_id: "BotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteBot AWS API Documentation
    #
    # @overload delete_bot(params = {})
    # @param [Hash] params ({})
    def delete_bot(params = {}, options = {})
      req = build_request(:delete_bot, params)
      req.send_request(options)
    end

    # Deletes the data retention bot from a Wickr network. This operation
    # permanently removes the bot and all its associated data from the
    # database.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which the data retention bot will be
    #   deleted.
    #
    # @return [Types::DeleteDataRetentionBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataRetentionBotResponse#message #message} => String
    #
    #
    # @example Example: Delete data retention bot successfully
    #
    #   resp = client.delete_data_retention_bot({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "deleted data retention bot and all associated data from the database", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_retention_bot({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteDataRetentionBot AWS API Documentation
    #
    # @overload delete_data_retention_bot(params = {})
    # @param [Hash] params ({})
    def delete_data_retention_bot(params = {}, options = {})
      req = build_request(:delete_data_retention_bot, params)
      req.send_request(options)
    end

    # Deletes a Wickr network and all its associated resources, including
    # users, bots, security groups, and settings. This operation is
    # permanent and cannot be undone.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network to delete.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency. If you
    #   retry a request with the same client token, the service will return
    #   the same response without attempting to delete the network again.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNetworkResponse#message #message} => String
    #
    #
    # @example Example: Delete network successfully
    #
    #   resp = client.delete_network({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "Network deletion initiated successfully", 
    #   }
    #
    # @example Example: Delete network - not found
    #
    #   resp = client.delete_network({
    #     network_id: "99999999", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network({
    #     network_id: "NetworkId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteNetwork AWS API Documentation
    #
    # @overload delete_network(params = {})
    # @param [Hash] params ({})
    def delete_network(params = {}, options = {})
      req = build_request(:delete_network, params)
      req.send_request(options)
    end

    # Deletes a security group from a Wickr network. This operation cannot
    # be performed on the default security group.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which the security group will be
    #   deleted.
    #
    # @option params [required, String] :group_id
    #   The unique identifier of the security group to delete.
    #
    # @return [Types::DeleteSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSecurityGroupResponse#message #message} => String
    #   * {Types::DeleteSecurityGroupResponse#network_id #network_id} => String
    #   * {Types::DeleteSecurityGroupResponse#group_id #group_id} => String
    #
    #
    # @example Example: Delete security group successfully
    #
    #   resp = client.delete_security_group({
    #     group_id: "def67890", 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     group_id: "def67890", 
    #     message: "success", 
    #     network_id: "12345678", 
    #   }
    #
    # @example Example: Delete security group - not found
    #
    #   resp = client.delete_security_group({
    #     group_id: "invalid99", 
    #     network_id: "12345678", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_group({
    #     network_id: "NetworkId", # required
    #     group_id: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.network_id #=> String
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteSecurityGroup AWS API Documentation
    #
    # @overload delete_security_group(params = {})
    # @param [Hash] params ({})
    def delete_security_group(params = {}, options = {})
      req = build_request(:delete_security_group, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific bot in a Wickr
    # network, including its status, group membership, and authentication
    # details.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the bot.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot to retrieve.
    #
    # @return [Types::GetBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotResponse#bot_id #bot_id} => String
    #   * {Types::GetBotResponse#display_name #display_name} => String
    #   * {Types::GetBotResponse#username #username} => String
    #   * {Types::GetBotResponse#uname #uname} => String
    #   * {Types::GetBotResponse#pubkey #pubkey} => String
    #   * {Types::GetBotResponse#status #status} => Integer
    #   * {Types::GetBotResponse#group_id #group_id} => String
    #   * {Types::GetBotResponse#has_challenge #has_challenge} => Boolean
    #   * {Types::GetBotResponse#suspended #suspended} => Boolean
    #   * {Types::GetBotResponse#last_login #last_login} => String
    #
    #
    # @example Example: Get bot successfully
    #
    #   resp = client.get_bot({
    #     bot_id: "98765", 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     bot_id: "98765", 
    #     display_name: "Support Bot", 
    #     group_id: "default_group", 
    #     has_challenge: true, 
    #     last_login: "1704067200", 
    #     pubkey: "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF4", 
    #     status: 2, 
    #     suspended: false, 
    #     uname: "abc123def456", 
    #     username: "support_bot", 
    #   }
    #
    # @example Example: Get bot - bot not found
    #
    #   resp = client.get_bot({
    #     bot_id: "99999", 
    #     network_id: "12345678", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot({
    #     network_id: "NetworkId", # required
    #     bot_id: "BotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_id #=> String
    #   resp.display_name #=> String
    #   resp.username #=> String
    #   resp.uname #=> String
    #   resp.pubkey #=> String
    #   resp.status #=> Integer
    #   resp.group_id #=> String
    #   resp.has_challenge #=> Boolean
    #   resp.suspended #=> Boolean
    #   resp.last_login #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetBot AWS API Documentation
    #
    # @overload get_bot(params = {})
    # @param [Hash] params ({})
    def get_bot(params = {}, options = {})
      req = build_request(:get_bot, params)
      req.send_request(options)
    end

    # Retrieves the count of bots in a Wickr network, categorized by their
    # status (pending, active, and total).
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network for which to retrieve bot counts.
    #
    # @return [Types::GetBotsCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotsCountResponse#pending #pending} => Integer
    #   * {Types::GetBotsCountResponse#active #active} => Integer
    #   * {Types::GetBotsCountResponse#total #total} => Integer
    #
    #
    # @example Example: Get bots count successfully
    #
    #   resp = client.get_bots_count({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     active: 12, 
    #     pending: 2, 
    #     total: 15, 
    #   }
    #
    # @example Example: Get bots count with filters
    #
    #   resp = client.get_bots_count({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     active: 12, 
    #     pending: 0, 
    #     total: 12, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bots_count({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pending #=> Integer
    #   resp.active #=> Integer
    #   resp.total #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetBotsCount AWS API Documentation
    #
    # @overload get_bots_count(params = {})
    # @param [Hash] params ({})
    def get_bots_count(params = {}, options = {})
      req = build_request(:get_bots_count, params)
      req.send_request(options)
    end

    # Retrieves information about the data retention bot in a Wickr network,
    # including its status and whether the data retention service is
    # enabled.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the data retention bot.
    #
    # @return [Types::GetDataRetentionBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataRetentionBotResponse#bot_name #bot_name} => String
    #   * {Types::GetDataRetentionBotResponse#bot_exists #bot_exists} => Boolean
    #   * {Types::GetDataRetentionBotResponse#is_bot_active #is_bot_active} => Boolean
    #   * {Types::GetDataRetentionBotResponse#is_data_retention_bot_registered #is_data_retention_bot_registered} => Boolean
    #   * {Types::GetDataRetentionBotResponse#is_data_retention_service_enabled #is_data_retention_service_enabled} => Boolean
    #   * {Types::GetDataRetentionBotResponse#is_pubkey_msg_acked #is_pubkey_msg_acked} => Boolean
    #
    #
    # @example Example: Get data retention bot successfully
    #
    #   resp = client.get_data_retention_bot({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     bot_exists: true, 
    #     bot_name: "compliance_12345678_bot", 
    #     is_bot_active: true, 
    #     is_data_retention_bot_registered: true, 
    #     is_data_retention_service_enabled: true, 
    #     is_pubkey_msg_acked: false, 
    #   }
    #
    # @example Example: Get data retention bot - not provisioned
    #
    #   resp = client.get_data_retention_bot({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     bot_exists: false, 
    #     bot_name: "compliance_12345678_bot", 
    #     is_bot_active: false, 
    #     is_data_retention_bot_registered: false, 
    #     is_data_retention_service_enabled: false, 
    #     is_pubkey_msg_acked: false, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_retention_bot({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_name #=> String
    #   resp.bot_exists #=> Boolean
    #   resp.is_bot_active #=> Boolean
    #   resp.is_data_retention_bot_registered #=> Boolean
    #   resp.is_data_retention_service_enabled #=> Boolean
    #   resp.is_pubkey_msg_acked #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetDataRetentionBot AWS API Documentation
    #
    # @overload get_data_retention_bot(params = {})
    # @param [Hash] params ({})
    def get_data_retention_bot(params = {}, options = {})
      req = build_request(:get_data_retention_bot, params)
      req.send_request(options)
    end

    # Retrieves historical guest user count data for a Wickr network,
    # showing the number of guest users per billing period over the past 90
    # days.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network for which to retrieve guest user history.
    #
    # @return [Types::GetGuestUserHistoryCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGuestUserHistoryCountResponse#history #history} => Array&lt;Types::GuestUserHistoryCount&gt;
    #
    #
    # @example Example: Get guest user history count
    #
    #   resp = client.get_guest_user_history_count({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     history: [
    #       {
    #         count: "32", 
    #         month: "2024_01", 
    #       }, 
    #       {
    #         count: "28", 
    #         month: "2023_12", 
    #       }, 
    #       {
    #         count: "35", 
    #         month: "2023_11", 
    #       }, 
    #       {
    #         count: "22", 
    #         month: "2023_10", 
    #       }, 
    #       {
    #         count: "18", 
    #         month: "2023_09", 
    #       }, 
    #       {
    #         count: "15", 
    #         month: "2023_08", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Empty response for network with no guest user history
    #
    #   resp = client.get_guest_user_history_count({
    #     network_id: "87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     history: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_guest_user_history_count({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.history #=> Array
    #   resp.history[0].month #=> String
    #   resp.history[0].count #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetGuestUserHistoryCount AWS API Documentation
    #
    # @overload get_guest_user_history_count(params = {})
    # @param [Hash] params ({})
    def get_guest_user_history_count(params = {}, options = {})
      req = build_request(:get_guest_user_history_count, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific Wickr network,
    # including its configuration, access level, and status.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network to retrieve.
    #
    # @return [Types::GetNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkResponse#network_id #network_id} => String
    #   * {Types::GetNetworkResponse#network_name #network_name} => String
    #   * {Types::GetNetworkResponse#access_level #access_level} => String
    #   * {Types::GetNetworkResponse#aws_account_id #aws_account_id} => String
    #   * {Types::GetNetworkResponse#network_arn #network_arn} => String
    #   * {Types::GetNetworkResponse#standing #standing} => Integer
    #   * {Types::GetNetworkResponse#free_trial_expiration #free_trial_expiration} => String
    #   * {Types::GetNetworkResponse#migration_state #migration_state} => Integer
    #   * {Types::GetNetworkResponse#encryption_key_arn #encryption_key_arn} => String
    #
    #
    # @example Example: Get network successfully
    #
    #   resp = client.get_network({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     access_level: "PREMIUM", 
    #     aws_account_id: "123456789012", 
    #     migration_state: 0, 
    #     network_arn: "arn:aws:wickr:us-east-1:123456789012:network/12345678", 
    #     network_id: "12345678", 
    #     network_name: "Production Network", 
    #     standing: 1, 
    #   }
    #
    # @example Example: Get network - not found
    #
    #   resp = client.get_network({
    #     network_id: "99999999", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_id #=> String
    #   resp.network_name #=> String
    #   resp.access_level #=> String, one of "STANDARD", "PREMIUM"
    #   resp.aws_account_id #=> String
    #   resp.network_arn #=> String
    #   resp.standing #=> Integer
    #   resp.free_trial_expiration #=> String
    #   resp.migration_state #=> Integer
    #   resp.encryption_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetNetwork AWS API Documentation
    #
    # @overload get_network(params = {})
    # @param [Hash] params ({})
    def get_network(params = {}, options = {})
      req = build_request(:get_network, params)
      req.send_request(options)
    end

    # Retrieves all network-level settings for a Wickr network, including
    # client metrics, data retention, and other configuration options.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network whose settings will be retrieved.
    #
    # @return [Types::GetNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkSettingsResponse#settings #settings} => Array&lt;Types::Setting&gt;
    #
    #
    # @example Example: Get network settings with mixed value types
    #
    #   resp = client.get_network_settings({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     settings: [
    #       {
    #         type: "boolean", 
    #         value: "true", 
    #         option_name: "enableClientMetrics", 
    #       }, 
    #       {
    #         type: "boolean", 
    #         value: "true", 
    #         option_name: "dataRetention", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Get settings for network with defaults only
    #
    #   resp = client.get_network_settings({
    #     network_id: "87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     settings: [
    #       {
    #         type: "boolean", 
    #         value: "false", 
    #         option_name: "enableClientMetrics", 
    #       }, 
    #       {
    #         type: "boolean", 
    #         value: "false", 
    #         option_name: "dataRetention", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Network not found error
    #
    #   resp = client.get_network_settings({
    #     network_id: "99999999", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_settings({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.settings #=> Array
    #   resp.settings[0].option_name #=> String
    #   resp.settings[0].value #=> String
    #   resp.settings[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetNetworkSettings AWS API Documentation
    #
    # @overload get_network_settings(params = {})
    # @param [Hash] params ({})
    def get_network_settings(params = {}, options = {})
      req = build_request(:get_network_settings, params)
      req.send_request(options)
    end

    # Retrieves the OpenID Connect (OIDC) configuration for a Wickr network,
    # including SSO settings and optional token information if access token
    # parameters are provided.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network whose OIDC configuration will be
    #   retrieved.
    #
    # @option params [String] :client_id
    #   The OAuth client ID for retrieving access tokens (optional).
    #
    # @option params [String] :code
    #   The authorization code for retrieving access tokens (optional).
    #
    # @option params [String] :grant_type
    #   The OAuth grant type for retrieving access tokens (optional).
    #
    # @option params [String] :redirect_uri
    #   The redirect URI for the OAuth flow (optional).
    #
    # @option params [String] :url
    #   The URL for the OIDC provider (optional).
    #
    # @option params [String] :client_secret
    #   The OAuth client secret for retrieving access tokens (optional).
    #
    # @option params [String] :code_verifier
    #   The PKCE code verifier for enhanced security in the OAuth flow
    #   (optional).
    #
    # @option params [String] :certificate
    #   The CA certificate for secure communication with the OIDC provider
    #   (optional).
    #
    # @return [Types::GetOidcInfoResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOidcInfoResponse#openid_connect_info #openid_connect_info} => Types::OidcConfigInfo
    #   * {Types::GetOidcInfoResponse#token_info #token_info} => Types::OidcTokenInfo
    #
    #
    # @example Example: Get OIDC info successfully
    #
    #   resp = client.get_oidc_info({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     openid_connect_info: {
    #       client_id: "client123", 
    #       company_id: "us-east-1-company123", 
    #       issuer: "https://login.example.com", 
    #       redirect_url: "https://app.wickr.com/callback", 
    #       scopes: "openid profile email", 
    #       sso_token_buffer_minutes: 5, 
    #       user_id: "email", 
    #     }, 
    #   }
    #
    # @example Example: Get OIDC info - not configured
    #
    #   resp = client.get_oidc_info({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     openid_connect_info: {
    #       company_id: "", 
    #       issuer: "", 
    #       scopes: "", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_oidc_info({
    #     network_id: "NetworkId", # required
    #     client_id: "GenericString",
    #     code: "GenericString",
    #     grant_type: "GenericString",
    #     redirect_uri: "GenericString",
    #     url: "GenericString",
    #     client_secret: "SensitiveString",
    #     code_verifier: "GenericString",
    #     certificate: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.openid_connect_info.application_name #=> String
    #   resp.openid_connect_info.client_id #=> String
    #   resp.openid_connect_info.company_id #=> String
    #   resp.openid_connect_info.scopes #=> String
    #   resp.openid_connect_info.issuer #=> String
    #   resp.openid_connect_info.client_secret #=> String
    #   resp.openid_connect_info.secret #=> String
    #   resp.openid_connect_info.redirect_url #=> String
    #   resp.openid_connect_info.user_id #=> String
    #   resp.openid_connect_info.custom_username #=> String
    #   resp.openid_connect_info.ca_certificate #=> String
    #   resp.openid_connect_info.application_id #=> Integer
    #   resp.openid_connect_info.sso_token_buffer_minutes #=> Integer
    #   resp.openid_connect_info.extra_auth_params #=> String
    #   resp.token_info.code_verifier #=> String
    #   resp.token_info.code_challenge #=> String
    #   resp.token_info.access_token #=> String
    #   resp.token_info.id_token #=> String
    #   resp.token_info.refresh_token #=> String
    #   resp.token_info.token_type #=> String
    #   resp.token_info.expires_in #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetOidcInfo AWS API Documentation
    #
    # @overload get_oidc_info(params = {})
    # @param [Hash] params ({})
    def get_oidc_info(params = {}, options = {})
      req = build_request(:get_oidc_info, params)
      req.send_request(options)
    end

    # Retrieves the OpenTDF integration configuration for a Wickr network.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network for which OpenTDF integration will be
    #   retrieved.
    #
    # @return [Types::GetOpentdfConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpentdfConfigResponse#client_id #client_id} => String
    #   * {Types::GetOpentdfConfigResponse#domain #domain} => String
    #   * {Types::GetOpentdfConfigResponse#client_secret #client_secret} => String
    #   * {Types::GetOpentdfConfigResponse#provider #provider} => String
    #
    #
    # @example Example: Get OpenTDF info successfully
    #
    #   resp = client.get_opentdf_config({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_id: "client123", 
    #     client_secret: "secret456", 
    #     domain: "https://api.sample.com", 
    #     provider: "virtru", 
    #   }
    #
    # @example Example: Get OpenTDF info - not configured
    #
    #   resp = client.get_opentdf_config({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_id: "", 
    #     client_secret: "", 
    #     domain: "", 
    #     provider: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_opentdf_config({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_id #=> String
    #   resp.domain #=> String
    #   resp.client_secret #=> String
    #   resp.provider #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetOpentdfConfig AWS API Documentation
    #
    # @overload get_opentdf_config(params = {})
    # @param [Hash] params ({})
    def get_opentdf_config(params = {}, options = {})
      req = build_request(:get_opentdf_config, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific security group in a
    # Wickr network, including its settings, member counts, and
    # configuration.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the security group.
    #
    # @option params [required, String] :group_id
    #   The unique identifier of the security group to retrieve.
    #
    # @return [Types::GetSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityGroupResponse#security_group #security_group} => Types::SecurityGroup
    #
    #
    # @example Example: Get security group successfully
    #
    #   resp = client.get_security_group({
    #     group_id: "abc12345", 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_group: {
    #       name: "default", 
    #       active_members: 50, 
    #       bot_members: 5, 
    #       id: "abc12345", 
    #       is_default: true, 
    #       modified: 1638360000, 
    #       security_group_settings: {
    #         federation_mode: 1, 
    #         lockout_threshold: 10, 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: Get security group - not found
    #
    #   resp = client.get_security_group({
    #     group_id: "invalid99", 
    #     network_id: "12345678", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_group({
    #     network_id: "NetworkId", # required
    #     group_id: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group.active_members #=> Integer
    #   resp.security_group.bot_members #=> Integer
    #   resp.security_group.active_directory_guid #=> String
    #   resp.security_group.id #=> String
    #   resp.security_group.is_default #=> Boolean
    #   resp.security_group.name #=> String
    #   resp.security_group.modified #=> Integer
    #   resp.security_group.security_group_settings.always_reauthenticate #=> Boolean
    #   resp.security_group.security_group_settings.atak_package_values #=> Array
    #   resp.security_group.security_group_settings.atak_package_values[0] #=> String
    #   resp.security_group.security_group_settings.calling.can_start_11_call #=> Boolean
    #   resp.security_group.security_group_settings.calling.can_video_call #=> Boolean
    #   resp.security_group.security_group_settings.calling.force_tcp_call #=> Boolean
    #   resp.security_group.security_group_settings.check_for_updates #=> Boolean
    #   resp.security_group.security_group_settings.enable_atak #=> Boolean
    #   resp.security_group.security_group_settings.enable_crash_reports #=> Boolean
    #   resp.security_group.security_group_settings.enable_file_download #=> Boolean
    #   resp.security_group.security_group_settings.enable_guest_federation #=> Boolean
    #   resp.security_group.security_group_settings.enable_notification_preview #=> Boolean
    #   resp.security_group.security_group_settings.enable_open_access_option #=> Boolean
    #   resp.security_group.security_group_settings.enable_restricted_global_federation #=> Boolean
    #   resp.security_group.security_group_settings.files_enabled #=> Boolean
    #   resp.security_group.security_group_settings.force_device_lockout #=> Integer
    #   resp.security_group.security_group_settings.force_open_access #=> Boolean
    #   resp.security_group.security_group_settings.force_read_receipts #=> Boolean
    #   resp.security_group.security_group_settings.global_federation #=> Boolean
    #   resp.security_group.security_group_settings.is_ato_enabled #=> Boolean
    #   resp.security_group.security_group_settings.is_link_preview_enabled #=> Boolean
    #   resp.security_group.security_group_settings.location_allow_maps #=> Boolean
    #   resp.security_group.security_group_settings.location_enabled #=> Boolean
    #   resp.security_group.security_group_settings.max_auto_download_size #=> Integer
    #   resp.security_group.security_group_settings.max_bor #=> Integer
    #   resp.security_group.security_group_settings.max_ttl #=> Integer
    #   resp.security_group.security_group_settings.message_forwarding_enabled #=> Boolean
    #   resp.security_group.security_group_settings.password_requirements.lowercase #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.min_length #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.numbers #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.symbols #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.uppercase #=> Integer
    #   resp.security_group.security_group_settings.presence_enabled #=> Boolean
    #   resp.security_group.security_group_settings.quick_responses #=> Array
    #   resp.security_group.security_group_settings.quick_responses[0] #=> String
    #   resp.security_group.security_group_settings.show_master_recovery_key #=> Boolean
    #   resp.security_group.security_group_settings.shredder.can_process_manually #=> Boolean
    #   resp.security_group.security_group_settings.shredder.intensity #=> Integer
    #   resp.security_group.security_group_settings.sso_max_idle_minutes #=> Integer
    #   resp.security_group.security_group_settings.federation_mode #=> Integer
    #   resp.security_group.security_group_settings.lockout_threshold #=> Integer
    #   resp.security_group.security_group_settings.permitted_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_networks[0] #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks[0].region #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks[0].network_id #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks[0].domain #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks[0].network_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetSecurityGroup AWS API Documentation
    #
    # @overload get_security_group(params = {})
    # @param [Hash] params ({})
    def get_security_group(params = {}, options = {})
      req = build_request(:get_security_group, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific user in a Wickr
    # network, including their profile, status, and activity history.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the user.
    #
    # @option params [required, String] :user_id
    #   The unique identifier of the user to retrieve.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time for filtering the user's last activity. Only activity
    #   after this timestamp will be considered. Time is specified in epoch
    #   seconds.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time for filtering the user's last activity. Only activity
    #   before this timestamp will be considered. Time is specified in epoch
    #   seconds.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#user_id #user_id} => String
    #   * {Types::GetUserResponse#first_name #first_name} => String
    #   * {Types::GetUserResponse#last_name #last_name} => String
    #   * {Types::GetUserResponse#username #username} => String
    #   * {Types::GetUserResponse#is_admin #is_admin} => Boolean
    #   * {Types::GetUserResponse#suspended #suspended} => Boolean
    #   * {Types::GetUserResponse#status #status} => Integer
    #   * {Types::GetUserResponse#last_activity #last_activity} => Integer
    #   * {Types::GetUserResponse#last_login #last_login} => Integer
    #   * {Types::GetUserResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #
    #
    # @example Example: Get user information
    #
    #   resp = client.get_user({
    #     network_id: "12345678", 
    #     user_id: "12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     first_name: "John", 
    #     is_admin: false, 
    #     last_activity: 1705500000, 
    #     last_login: 1705499000, 
    #     last_name: "Doe", 
    #     security_group_ids: [
    #       "BCTY8Qhe", 
    #     ], 
    #     status: 2, 
    #     suspended: false, 
    #     user_id: "12345", 
    #     username: "john.doe@example.com", 
    #   }
    #
    # @example Example: Get user info with activity time range
    #
    #   resp = client.get_user({
    #     end_time: Time.parse(1705500000), 
    #     network_id: "12345678", 
    #     start_time: Time.parse(1704067200), 
    #     user_id: "12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     first_name: "Jane", 
    #     is_admin: true, 
    #     last_activity: 1705400000, 
    #     last_login: 1705350000, 
    #     last_name: "Admin", 
    #     security_group_ids: [
    #       "BCTY8Qhe", 
    #       "ADMIN001", 
    #     ], 
    #     status: 2, 
    #     suspended: false, 
    #     user_id: "12345", 
    #     username: "jane.admin@example.com", 
    #   }
    #
    # @example Example: User not found error
    #
    #   resp = client.get_user({
    #     network_id: "12345678", 
    #     user_id: "99999", 
    #   })
    #
    # @example Example: Invalid userId error
    #
    #   resp = client.get_user({
    #     network_id: "12345678", 
    #     user_id: "99999", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     network_id: "NetworkId", # required
    #     user_id: "UserId", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.first_name #=> String
    #   resp.last_name #=> String
    #   resp.username #=> String
    #   resp.is_admin #=> Boolean
    #   resp.suspended #=> Boolean
    #   resp.status #=> Integer
    #   resp.last_activity #=> Integer
    #   resp.last_login #=> Integer
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Retrieves the count of users in a Wickr network, categorized by their
    # status (pending, active, rejected) and showing how many users can
    # still be added.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network for which to retrieve user counts.
    #
    # @return [Types::GetUsersCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUsersCountResponse#pending #pending} => Integer
    #   * {Types::GetUsersCountResponse#active #active} => Integer
    #   * {Types::GetUsersCountResponse#rejected #rejected} => Integer
    #   * {Types::GetUsersCountResponse#remaining #remaining} => Integer
    #   * {Types::GetUsersCountResponse#total #total} => Integer
    #
    #
    # @example Example: Get user counts for network
    #
    #   resp = client.get_users_count({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     active: 25, 
    #     pending: 5, 
    #     rejected: 2, 
    #     remaining: 15, 
    #     total: 32, 
    #   }
    #
    # @example Example: Network with no users
    #
    #   resp = client.get_users_count({
    #     network_id: "87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     active: 0, 
    #     pending: 0, 
    #     rejected: 0, 
    #     remaining: 50, 
    #     total: 0, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_users_count({
    #     network_id: "NetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pending #=> Integer
    #   resp.active #=> Integer
    #   resp.rejected #=> Integer
    #   resp.remaining #=> Integer
    #   resp.total #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetUsersCount AWS API Documentation
    #
    # @overload get_users_count(params = {})
    # @param [Hash] params ({})
    def get_users_count(params = {}, options = {})
      req = build_request(:get_users_count, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of guest users who have been blocked from a
    # Wickr network. You can filter and sort the results.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which to list blocked guest users.
    #
    # @option params [Integer] :max_results
    #   The maximum number of blocked guest users to return in a single page.
    #   Valid range is 1-100. Default is 10.
    #
    # @option params [String] :sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending) or
    #   'DESC' (descending). Default is 'DESC'.
    #
    # @option params [String] :sort_fields
    #   The field to sort blocked guest users by. Accepted values include
    #   'username', 'admin', and 'modified'.
    #
    # @option params [String] :username
    #   Filter results to only include blocked guest users with usernames
    #   matching this value.
    #
    # @option params [String] :admin
    #   Filter results to only include blocked guest users that were blocked
    #   by this administrator.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #
    # @return [Types::ListBlockedGuestUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBlockedGuestUsersResponse#next_token #next_token} => String
    #   * {Types::ListBlockedGuestUsersResponse#blocklist #blocklist} => Array&lt;Types::BlockedGuestUser&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Get paginated list of blocked guest users
    #
    #   resp = client.list_blocked_guest_users({
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     sort_direction: "DESC", 
    #     sort_fields: "modified", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     blocklist: [
    #       {
    #         admin: "admin@company.com", 
    #         modified: "2024-01-15 10:30:00", 
    #         username: "blocked.user1@example.com", 
    #         username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d", 
    #       }, 
    #       {
    #         admin: "admin@company.com", 
    #         modified: "2024-01-10 14:20:00", 
    #         username: "blocked.user2@example.com", 
    #         username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d", 
    #       }, 
    #       {
    #         admin: "security@company.com", 
    #         modified: "2024-01-05 09:15:00", 
    #         username: "blocked.user3@example.com", 
    #         username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d", 
    #       }, 
    #     ], 
    #     next_token: "v1:pagination:f47ac10b-58cc-4372-a567-0e02b2c3d479", 
    #   }
    #
    # @example Example: Filter by username
    #
    #   resp = client.list_blocked_guest_users({
    #     network_id: "12345678", 
    #     username: "john.doe@example.com", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     blocklist: [
    #       {
    #         admin: "admin@company.com", 
    #         modified: "2023-12-20 16:45:00", 
    #         username: "john.doe@example.com", 
    #         username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Empty blocklist
    #
    #   resp = client.list_blocked_guest_users({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     blocklist: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_blocked_guest_users({
    #     network_id: "NetworkId", # required
    #     max_results: 1,
    #     sort_direction: "ASC", # accepts ASC, DESC
    #     sort_fields: "GenericString",
    #     username: "GenericString",
    #     admin: "GenericString",
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.blocklist #=> Array
    #   resp.blocklist[0].username #=> String
    #   resp.blocklist[0].admin #=> String
    #   resp.blocklist[0].modified #=> String
    #   resp.blocklist[0].username_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListBlockedGuestUsers AWS API Documentation
    #
    # @overload list_blocked_guest_users(params = {})
    # @param [Hash] params ({})
    def list_blocked_guest_users(params = {}, options = {})
      req = build_request(:list_blocked_guest_users, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of bots in a specified Wickr network. You
    # can filter and sort the results based on various criteria.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which to list bots.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bots to return in a single page. Valid range is
    #   1-100. Default is 10.
    #
    # @option params [String] :sort_fields
    #   The fields to sort bots by. Multiple fields can be specified by
    #   separating them with '+'. Accepted values include 'username',
    #   'firstName', 'displayName', 'status', and 'groupId'.
    #
    # @option params [String] :sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending) or
    #   'DESC' (descending). Default is 'DESC'.
    #
    # @option params [String] :display_name
    #   Filter results to only include bots with display names matching this
    #   value.
    #
    # @option params [String] :username
    #   Filter results to only include bots with usernames matching this
    #   value.
    #
    # @option params [Integer] :status
    #   Filter results to only include bots with this status (1 for pending, 2
    #   for active).
    #
    # @option params [String] :group_id
    #   Filter results to only include bots belonging to this security group.
    #
    # @return [Types::ListBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotsResponse#bots #bots} => Array&lt;Types::Bot&gt;
    #   * {Types::ListBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List bots with pagination
    #
    #   resp = client.list_bots({
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     sort_direction: "ASC", 
    #     sort_fields: "username", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     bots: [
    #       {
    #         bot_id: "98765", 
    #         display_name: "Analytics Bot", 
    #         group_id: "analytics_group", 
    #         has_challenge: true, 
    #         last_login: "1704067200", 
    #         pubkey: "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF4", 
    #         status: 2, 
    #         suspended: false, 
    #         uname: "abc123def456", 
    #         username: "analytics_bot", 
    #       }, 
    #       {
    #         bot_id: "98766", 
    #         display_name: "Support Bot", 
    #         group_id: "support_group", 
    #         has_challenge: true, 
    #         last_login: "1704153600", 
    #         pubkey: "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF5", 
    #         status: 2, 
    #         suspended: false, 
    #         uname: "def456ghi789", 
    #         username: "support_bot", 
    #       }, 
    #     ], 
    #     next_token: "eyJzdGFydEluZGV4IjoxMH0=", 
    #   }
    #
    # @example Example: List bots with filters
    #
    #   resp = client.list_bots({
    #     display_name: "Support", 
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     status: 2, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     bots: [
    #       {
    #         bot_id: "98766", 
    #         display_name: "Support Bot", 
    #         group_id: "support_group", 
    #         has_challenge: true, 
    #         last_login: "1704153600", 
    #         pubkey: "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF5", 
    #         status: 2, 
    #         suspended: false, 
    #         uname: "def456ghi789", 
    #         username: "support_bot", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots({
    #     network_id: "NetworkId", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC", # accepts ASC, DESC
    #     display_name: "GenericString",
    #     username: "GenericString",
    #     status: 1,
    #     group_id: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.bots #=> Array
    #   resp.bots[0].bot_id #=> String
    #   resp.bots[0].display_name #=> String
    #   resp.bots[0].username #=> String
    #   resp.bots[0].uname #=> String
    #   resp.bots[0].pubkey #=> String
    #   resp.bots[0].status #=> Integer
    #   resp.bots[0].group_id #=> String
    #   resp.bots[0].has_challenge #=> Boolean
    #   resp.bots[0].suspended #=> Boolean
    #   resp.bots[0].last_login #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListBots AWS API Documentation
    #
    # @overload list_bots(params = {})
    # @param [Hash] params ({})
    def list_bots(params = {}, options = {})
      req = build_request(:list_bots, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of devices associated with a specific user
    # in a Wickr network. This operation returns information about all
    # devices where the user has logged into Wickr.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the user.
    #
    # @option params [required, String] :user_id
    #   The unique identifier of the user whose devices will be listed.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #
    # @option params [Integer] :max_results
    #   The maximum number of devices to return in a single page. Valid range
    #   is 1-100. Default is 10.
    #
    # @option params [String] :sort_fields
    #   The fields to sort devices by. Multiple fields can be specified by
    #   separating them with '+'. Accepted values include 'lastlogin',
    #   'type', 'suspend', and 'created'.
    #
    # @option params [String] :sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending) or
    #   'DESC' (descending). Default is 'DESC'.
    #
    # @return [Types::ListDevicesForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesForUserResponse#next_token #next_token} => String
    #   * {Types::ListDevicesForUserResponse#devices #devices} => Array&lt;Types::BasicDeviceObject&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Successful device list retrieval
    #
    #   resp = client.list_devices_for_user({
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     sort_direction: "DESC", 
    #     sort_fields: "appId", 
    #     user_id: "12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     devices: [
    #       {
    #         type: "mobile", 
    #         app_id: "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6", 
    #         created: "January 15th 2024, 2:30:45 pm", 
    #         last_login: "January 20th 2024, 9:15:30 am", 
    #         status_text: "Active", 
    #         suspend: false, 
    #       }, 
    #       {
    #         type: "desktop", 
    #         app_id: "e4246b53edc7548891c27d4da0692fe75f7933884de7c076e36gca030d90bdb7", 
    #         created: "December 10th 2023, 11:45:20 am", 
    #         last_login: "January 18th 2024, 4:20:15 pm", 
    #         status_text: "Suspended", 
    #         suspend: true, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Retrieving subsequent page of devices
    #
    #   resp = client.list_devices_for_user({
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     next_token: "v1:pagination:6ba7b810-9dad-11d1-80b4-00c04fd430c8", 
    #     user_id: "12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     devices: [
    #       {
    #         type: "web", 
    #         app_id: "f5357c64fde8659002c38e5db1804gf86g8044995ef8d187f47hdb141e01dce8", 
    #         created: "January 1st 2024, 12:00:00 pm", 
    #         last_login: "January 21st 2024, 8:22:00 am", 
    #         status_text: "Active", 
    #         suspend: false, 
    #       }, 
    #       {
    #         type: "mobile", 
    #         app_id: "g6468d75gef9760113d49f6ec2915hg97h9155aa6fg9e298g58iec252f12edf9", 
    #         created: "December 24th 2023, 4:00:00 pm", 
    #         last_login: "January 20th 2024, 9:15:30 am", 
    #         status_text: "Active", 
    #         suspend: false, 
    #       }, 
    #     ], 
    #     next_token: "v1:pagination:7cb8c921-aebe-22e2-91c5-11d05fe541d9", 
    #   }
    #
    # @example Example: Invalid userId error
    #
    #   resp = client.list_devices_for_user({
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     user_id: "99999", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices_for_user({
    #     network_id: "NetworkId", # required
    #     user_id: "UserId", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC", # accepts ASC, DESC
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.devices #=> Array
    #   resp.devices[0].app_id #=> String
    #   resp.devices[0].created #=> String
    #   resp.devices[0].last_login #=> String
    #   resp.devices[0].status_text #=> String
    #   resp.devices[0].suspend #=> Boolean
    #   resp.devices[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListDevicesForUser AWS API Documentation
    #
    # @overload list_devices_for_user(params = {})
    # @param [Hash] params ({})
    def list_devices_for_user(params = {}, options = {})
      req = build_request(:list_devices_for_user, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of guest users who have communicated with
    # your Wickr network. Guest users are external users from federated
    # networks who can communicate with network members.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which to list guest users.
    #
    # @option params [Integer] :max_results
    #   The maximum number of guest users to return in a single page. Valid
    #   range is 1-100. Default is 10.
    #
    # @option params [String] :sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending) or
    #   'DESC' (descending). Default is 'DESC'.
    #
    # @option params [String] :sort_fields
    #   The field to sort guest users by. Accepted values include 'username'
    #   and 'billingPeriod'.
    #
    # @option params [String] :username
    #   Filter results to only include guest users with usernames matching
    #   this value.
    #
    # @option params [String] :billing_period
    #   Filter results to only include guest users from this billing period
    #   (e.g., '2024-01').
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #
    # @return [Types::ListGuestUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGuestUsersResponse#next_token #next_token} => String
    #   * {Types::ListGuestUsersResponse#guestlist #guestlist} => Array&lt;Types::GuestUser&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Get paginated list of guest users
    #
    #   resp = client.list_guest_users({
    #     max_results: 20, 
    #     network_id: "12345678", 
    #     sort_direction: "DESC", 
    #     sort_fields: "billingPeriod", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     guestlist: [
    #       {
    #         billing_period: "2024-01", 
    #         username: "guest1@example.com", 
    #         username_hash: "e8e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26", 
    #       }, 
    #       {
    #         billing_period: "2024-01", 
    #         username: "guest2@example.com", 
    #         username_hash: "a9e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26", 
    #       }, 
    #       {
    #         billing_period: "2023-12", 
    #         username: "guest3@example.com", 
    #         username_hash: "c3e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26", 
    #       }, 
    #       {
    #         billing_period: "2023-12", 
    #         username: "guest4@example.com", 
    #         username_hash: "k2e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26", 
    #       }, 
    #     ], 
    #     next_token: "v1:pagination:550e8400-e29b-41d4-a716-446655440000", 
    #   }
    #
    # @example Example: Filter by billing period
    #
    #   resp = client.list_guest_users({
    #     billing_period: "2024-01", 
    #     max_results: 10, 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     guestlist: [
    #       {
    #         billing_period: "2024-01", 
    #         username: "guest1@example.com", 
    #         username_hash: "e8e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26", 
    #       }, 
    #       {
    #         billing_period: "2024-01", 
    #         username: "guest2@example.com", 
    #         username_hash: "a9e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26", 
    #       }, 
    #     ], 
    #     next_token: "v1:pagination:6ba7b810-9dad-11d1-80b4-00c04fd430c8", 
    #   }
    #
    # @example Example: Empty guest list
    #
    #   resp = client.list_guest_users({
    #     network_id: "87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     guestlist: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_guest_users({
    #     network_id: "NetworkId", # required
    #     max_results: 1,
    #     sort_direction: "ASC", # accepts ASC, DESC
    #     sort_fields: "GenericString",
    #     username: "GenericString",
    #     billing_period: "GenericString",
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.guestlist #=> Array
    #   resp.guestlist[0].billing_period #=> String
    #   resp.guestlist[0].username #=> String
    #   resp.guestlist[0].username_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListGuestUsers AWS API Documentation
    #
    # @overload list_guest_users(params = {})
    # @param [Hash] params ({})
    def list_guest_users(params = {}, options = {})
      req = build_request(:list_guest_users, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of all Wickr networks associated with your
    # Amazon Web Services account. You can sort the results by network ID or
    # name.
    #
    # @option params [Integer] :max_results
    #   The maximum number of networks to return in a single page. Valid range
    #   is 1-100. Default is 10.
    #
    # @option params [String] :sort_fields
    #   The field to sort networks by. Accepted values are 'networkId' and
    #   'networkName'. Default is 'networkId'.
    #
    # @option params [String] :sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending) or
    #   'DESC' (descending). Default is 'DESC'.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #
    # @return [Types::ListNetworksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworksResponse#networks #networks} => Array&lt;Types::Network&gt;
    #   * {Types::ListNetworksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List networks with pagination
    #
    #   resp = client.list_networks({
    #     max_results: 10, 
    #     sort_direction: "ASC", 
    #     sort_fields: "networkName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     networks: [
    #       {
    #         access_level: "STANDARD", 
    #         aws_account_id: "123456789012", 
    #         network_arn: "arn:aws:wickr:us-east-1:123456789012:network/12345678", 
    #         network_id: "12345678", 
    #         network_name: "Dev Network", 
    #         standing: 1, 
    #       }, 
    #       {
    #         access_level: "PREMIUM", 
    #         aws_account_id: "123456789012", 
    #         network_arn: "arn:aws:wickr:us-east-1:123456789012:network/87654321", 
    #         network_id: "87654321", 
    #         network_name: "Prod Network", 
    #         standing: 1, 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjEwfQ==", 
    #   }
    #
    # @example Example: List networks - first page
    #
    #   resp = client.list_networks({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     networks: [
    #       {
    #         access_level: "PREMIUM", 
    #         aws_account_id: "123456789012", 
    #         network_arn: "arn:aws:wickr:us-east-1:123456789012:network/12345678", 
    #         network_id: "12345678", 
    #         network_name: "Production Network", 
    #         standing: 1, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_networks({
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC", # accepts ASC, DESC
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.networks #=> Array
    #   resp.networks[0].network_id #=> String
    #   resp.networks[0].network_name #=> String
    #   resp.networks[0].access_level #=> String, one of "STANDARD", "PREMIUM"
    #   resp.networks[0].aws_account_id #=> String
    #   resp.networks[0].network_arn #=> String
    #   resp.networks[0].standing #=> Integer
    #   resp.networks[0].free_trial_expiration #=> String
    #   resp.networks[0].migration_state #=> Integer
    #   resp.networks[0].encryption_key_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListNetworks AWS API Documentation
    #
    # @overload list_networks(params = {})
    # @param [Hash] params ({})
    def list_networks(params = {}, options = {})
      req = build_request(:list_networks, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of users who belong to a specific security
    # group in a Wickr network.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the security group.
    #
    # @option params [required, String] :group_id
    #   The unique identifier of the security group whose users will be
    #   listed.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #
    # @option params [Integer] :max_results
    #   The maximum number of users to return in a single page. Valid range is
    #   1-100. Default is 10.
    #
    # @option params [String] :sort_fields
    #   The field to sort users by. Multiple fields can be specified by
    #   separating them with '+'. Accepted values include 'username',
    #   'firstName', and 'lastName'.
    #
    # @option params [String] :sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending) or
    #   'DESC' (descending). Default is 'DESC'.
    #
    # @return [Types::ListSecurityGroupUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityGroupUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListSecurityGroupUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List security group users with pagination
    #
    #   resp = client.list_security_group_users({
    #     group_id: "abc12345", 
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     sort_direction: "ASC", 
    #     sort_fields: "username", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "eyJvZmZzZXQiOjEwfQ==", 
    #     users: [
    #       {
    #         first_name: "Alice", 
    #         last_name: "Smith", 
    #         username: "alice@example.com", 
    #       }, 
    #       {
    #         first_name: "Bob", 
    #         last_name: "Jones", 
    #         username: "bob@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_group_users({
    #     network_id: "NetworkId", # required
    #     group_id: "GenericString", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC", # accepts ASC, DESC
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_id #=> String
    #   resp.users[0].first_name #=> String
    #   resp.users[0].last_name #=> String
    #   resp.users[0].username #=> String
    #   resp.users[0].security_groups #=> Array
    #   resp.users[0].security_groups[0] #=> String
    #   resp.users[0].is_admin #=> Boolean
    #   resp.users[0].suspended #=> Boolean
    #   resp.users[0].status #=> Integer
    #   resp.users[0].otp_enabled #=> Boolean
    #   resp.users[0].scim_id #=> String
    #   resp.users[0].type #=> String
    #   resp.users[0].cell #=> String
    #   resp.users[0].country_code #=> String
    #   resp.users[0].challenge_failures #=> Integer
    #   resp.users[0].is_invite_expired #=> Boolean
    #   resp.users[0].is_user #=> Boolean
    #   resp.users[0].invite_code #=> String
    #   resp.users[0].code_validation #=> Boolean
    #   resp.users[0].uname #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListSecurityGroupUsers AWS API Documentation
    #
    # @overload list_security_group_users(params = {})
    # @param [Hash] params ({})
    def list_security_group_users(params = {}, options = {})
      req = build_request(:list_security_group_users, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of security groups in a specified Wickr
    # network. You can sort the results by various criteria.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which to list security groups.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #
    # @option params [Integer] :max_results
    #   The maximum number of security groups to return in a single page.
    #   Valid range is 1-100. Default is 10.
    #
    # @option params [String] :sort_fields
    #   The field to sort security groups by. Accepted values include 'id'
    #   and 'name'.
    #
    # @option params [String] :sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending) or
    #   'DESC' (descending). Default is 'DESC'.
    #
    # @return [Types::ListSecurityGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityGroupsResponse#security_groups #security_groups} => Array&lt;Types::SecurityGroup&gt;
    #   * {Types::ListSecurityGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List security groups with pagination
    #
    #   resp = client.list_security_groups({
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     sort_direction: "ASC", 
    #     sort_fields: "name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "eyJvZmZzZXQiOjEwfQ==", 
    #     security_groups: [
    #       {
    #         name: "default", 
    #         active_members: 25, 
    #         bot_members: 0, 
    #         id: "abc12345", 
    #         is_default: true, 
    #         modified: 1638360000, 
    #         security_group_settings: {
    #           lockout_threshold: 10, 
    #         }, 
    #       }, 
    #       {
    #         name: "engineering", 
    #         active_members: 10, 
    #         bot_members: 2, 
    #         id: "def67890", 
    #         is_default: false, 
    #         modified: 1638360000, 
    #         security_group_settings: {
    #           lockout_threshold: 15, 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List security groups - first page
    #
    #   resp = client.list_security_groups({
    #     max_results: 10, 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_groups: [
    #       {
    #         name: "default", 
    #         active_members: 25, 
    #         bot_members: 0, 
    #         id: "abc12345", 
    #         is_default: true, 
    #         modified: 1638360000, 
    #         security_group_settings: {
    #           lockout_threshold: 10, 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_groups({
    #     network_id: "NetworkId", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC", # accepts ASC, DESC
    #   })
    #
    # @example Response structure
    #
    #   resp.security_groups #=> Array
    #   resp.security_groups[0].active_members #=> Integer
    #   resp.security_groups[0].bot_members #=> Integer
    #   resp.security_groups[0].active_directory_guid #=> String
    #   resp.security_groups[0].id #=> String
    #   resp.security_groups[0].is_default #=> Boolean
    #   resp.security_groups[0].name #=> String
    #   resp.security_groups[0].modified #=> Integer
    #   resp.security_groups[0].security_group_settings.always_reauthenticate #=> Boolean
    #   resp.security_groups[0].security_group_settings.atak_package_values #=> Array
    #   resp.security_groups[0].security_group_settings.atak_package_values[0] #=> String
    #   resp.security_groups[0].security_group_settings.calling.can_start_11_call #=> Boolean
    #   resp.security_groups[0].security_group_settings.calling.can_video_call #=> Boolean
    #   resp.security_groups[0].security_group_settings.calling.force_tcp_call #=> Boolean
    #   resp.security_groups[0].security_group_settings.check_for_updates #=> Boolean
    #   resp.security_groups[0].security_group_settings.enable_atak #=> Boolean
    #   resp.security_groups[0].security_group_settings.enable_crash_reports #=> Boolean
    #   resp.security_groups[0].security_group_settings.enable_file_download #=> Boolean
    #   resp.security_groups[0].security_group_settings.enable_guest_federation #=> Boolean
    #   resp.security_groups[0].security_group_settings.enable_notification_preview #=> Boolean
    #   resp.security_groups[0].security_group_settings.enable_open_access_option #=> Boolean
    #   resp.security_groups[0].security_group_settings.enable_restricted_global_federation #=> Boolean
    #   resp.security_groups[0].security_group_settings.files_enabled #=> Boolean
    #   resp.security_groups[0].security_group_settings.force_device_lockout #=> Integer
    #   resp.security_groups[0].security_group_settings.force_open_access #=> Boolean
    #   resp.security_groups[0].security_group_settings.force_read_receipts #=> Boolean
    #   resp.security_groups[0].security_group_settings.global_federation #=> Boolean
    #   resp.security_groups[0].security_group_settings.is_ato_enabled #=> Boolean
    #   resp.security_groups[0].security_group_settings.is_link_preview_enabled #=> Boolean
    #   resp.security_groups[0].security_group_settings.location_allow_maps #=> Boolean
    #   resp.security_groups[0].security_group_settings.location_enabled #=> Boolean
    #   resp.security_groups[0].security_group_settings.max_auto_download_size #=> Integer
    #   resp.security_groups[0].security_group_settings.max_bor #=> Integer
    #   resp.security_groups[0].security_group_settings.max_ttl #=> Integer
    #   resp.security_groups[0].security_group_settings.message_forwarding_enabled #=> Boolean
    #   resp.security_groups[0].security_group_settings.password_requirements.lowercase #=> Integer
    #   resp.security_groups[0].security_group_settings.password_requirements.min_length #=> Integer
    #   resp.security_groups[0].security_group_settings.password_requirements.numbers #=> Integer
    #   resp.security_groups[0].security_group_settings.password_requirements.symbols #=> Integer
    #   resp.security_groups[0].security_group_settings.password_requirements.uppercase #=> Integer
    #   resp.security_groups[0].security_group_settings.presence_enabled #=> Boolean
    #   resp.security_groups[0].security_group_settings.quick_responses #=> Array
    #   resp.security_groups[0].security_group_settings.quick_responses[0] #=> String
    #   resp.security_groups[0].security_group_settings.show_master_recovery_key #=> Boolean
    #   resp.security_groups[0].security_group_settings.shredder.can_process_manually #=> Boolean
    #   resp.security_groups[0].security_group_settings.shredder.intensity #=> Integer
    #   resp.security_groups[0].security_group_settings.sso_max_idle_minutes #=> Integer
    #   resp.security_groups[0].security_group_settings.federation_mode #=> Integer
    #   resp.security_groups[0].security_group_settings.lockout_threshold #=> Integer
    #   resp.security_groups[0].security_group_settings.permitted_networks #=> Array
    #   resp.security_groups[0].security_group_settings.permitted_networks[0] #=> String
    #   resp.security_groups[0].security_group_settings.permitted_wickr_aws_networks #=> Array
    #   resp.security_groups[0].security_group_settings.permitted_wickr_aws_networks[0].region #=> String
    #   resp.security_groups[0].security_group_settings.permitted_wickr_aws_networks[0].network_id #=> String
    #   resp.security_groups[0].security_group_settings.permitted_wickr_enterprise_networks #=> Array
    #   resp.security_groups[0].security_group_settings.permitted_wickr_enterprise_networks[0].domain #=> String
    #   resp.security_groups[0].security_group_settings.permitted_wickr_enterprise_networks[0].network_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListSecurityGroups AWS API Documentation
    #
    # @overload list_security_groups(params = {})
    # @param [Hash] params ({})
    def list_security_groups(params = {}, options = {})
      req = build_request(:list_security_groups, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of users in a specified Wickr network. You
    # can filter and sort the results based on various criteria such as
    # name, status, or security group membership.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network from which to list users.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #
    # @option params [Integer] :max_results
    #   The maximum number of users to return in a single page. Valid range is
    #   1-100. Default is 10.
    #
    # @option params [String] :sort_fields
    #   The fields to sort users by. Multiple fields can be specified by
    #   separating them with '+'. Accepted values include 'username',
    #   'firstName', 'lastName', 'status', and 'groupId'.
    #
    # @option params [String] :sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending) or
    #   'DESC' (descending). Default is 'DESC'.
    #
    # @option params [String] :first_name
    #   Filter results to only include users with first names matching this
    #   value.
    #
    # @option params [String] :last_name
    #   Filter results to only include users with last names matching this
    #   value.
    #
    # @option params [String] :username
    #   Filter results to only include users with usernames matching this
    #   value.
    #
    # @option params [Integer] :status
    #   Filter results to only include users with this status (1 for pending,
    #   2 for active).
    #
    # @option params [String] :group_id
    #   Filter results to only include users belonging to this security group.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Get paginated list of users
    #
    #   resp = client.list_users({
    #     max_results: 20, 
    #     network_id: "12345678", 
    #     sort_direction: "ASC", 
    #     sort_fields: "username", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "v1:pagination:6ba7b810-9dad-11d1-80b4-00c04fd430c8", 
    #     users: [
    #       {
    #         type: "user", 
    #         first_name: "Alice", 
    #         is_admin: false, 
    #         last_name: "Anderson", 
    #         status: 2, 
    #         suspended: false, 
    #         username: "alice.anderson@example.com", 
    #       }, 
    #       {
    #         type: "user", 
    #         first_name: "Bob", 
    #         is_admin: false, 
    #         last_name: "Brown", 
    #         status: 2, 
    #         suspended: false, 
    #         username: "bob.brown@example.com", 
    #       }, 
    #       {
    #         type: "user", 
    #         first_name: "Charlie", 
    #         is_admin: true, 
    #         last_name: "Chen", 
    #         status: 2, 
    #         suspended: false, 
    #         username: "charlie.chen@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Filter by status and group
    #
    #   resp = client.list_users({
    #     group_id: "BCTY8Qhe", 
    #     max_results: 10, 
    #     network_id: "12345678", 
    #     status: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     users: [
    #       {
    #         type: "user", 
    #         first_name: "David", 
    #         invite_code: "INVITE789", 
    #         is_admin: false, 
    #         is_invite_expired: false, 
    #         last_name: "Davis", 
    #         status: 1, 
    #         suspended: false, 
    #         username: "david.davis@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Empty user list for network with no users
    #
    #   resp = client.list_users({
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     users: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     network_id: "NetworkId", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC", # accepts ASC, DESC
    #     first_name: "SensitiveString",
    #     last_name: "SensitiveString",
    #     username: "GenericString",
    #     status: 1,
    #     group_id: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.users #=> Array
    #   resp.users[0].user_id #=> String
    #   resp.users[0].first_name #=> String
    #   resp.users[0].last_name #=> String
    #   resp.users[0].username #=> String
    #   resp.users[0].security_groups #=> Array
    #   resp.users[0].security_groups[0] #=> String
    #   resp.users[0].is_admin #=> Boolean
    #   resp.users[0].suspended #=> Boolean
    #   resp.users[0].status #=> Integer
    #   resp.users[0].otp_enabled #=> Boolean
    #   resp.users[0].scim_id #=> String
    #   resp.users[0].type #=> String
    #   resp.users[0].cell #=> String
    #   resp.users[0].country_code #=> String
    #   resp.users[0].challenge_failures #=> Integer
    #   resp.users[0].is_invite_expired #=> Boolean
    #   resp.users[0].is_user #=> Boolean
    #   resp.users[0].invite_code #=> String
    #   resp.users[0].code_validation #=> Boolean
    #   resp.users[0].uname #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Registers and saves an OpenID Connect (OIDC) configuration for a Wickr
    # network, enabling Single Sign-On (SSO) authentication through an
    # identity provider.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network for which OIDC will be configured.
    #
    # @option params [required, String] :company_id
    #   Custom identifier your end users will use to sign in with SSO.
    #
    # @option params [String] :custom_username
    #   A custom field mapping to extract the username from the OIDC token
    #   (optional).
    #
    #   <note markdown="1"> The customUsername is only required if you use something other than
    #   email as the username field.
    #
    #    </note>
    #
    # @option params [String] :extra_auth_params
    #   Additional authentication parameters to include in the OIDC flow
    #   (optional).
    #
    # @option params [required, String] :issuer
    #   The issuer URL of the OIDC provider (e.g.,
    #   'https://login.example.com').
    #
    # @option params [required, String] :scopes
    #   The OAuth scopes to request from the OIDC provider (e.g., 'openid
    #   profile email').
    #
    # @option params [String] :secret
    #   The client secret for authenticating with the OIDC provider
    #   (optional).
    #
    # @option params [Integer] :sso_token_buffer_minutes
    #   The buffer time in minutes before the SSO token expires to refresh it
    #   (optional).
    #
    # @option params [String] :user_id
    #   Unique identifier provided by your identity provider to authenticate
    #   the access request. Also referred to as clientID.
    #
    # @return [Types::RegisterOidcConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterOidcConfigResponse#application_name #application_name} => String
    #   * {Types::RegisterOidcConfigResponse#client_id #client_id} => String
    #   * {Types::RegisterOidcConfigResponse#company_id #company_id} => String
    #   * {Types::RegisterOidcConfigResponse#scopes #scopes} => String
    #   * {Types::RegisterOidcConfigResponse#issuer #issuer} => String
    #   * {Types::RegisterOidcConfigResponse#client_secret #client_secret} => String
    #   * {Types::RegisterOidcConfigResponse#secret #secret} => String
    #   * {Types::RegisterOidcConfigResponse#redirect_url #redirect_url} => String
    #   * {Types::RegisterOidcConfigResponse#user_id #user_id} => String
    #   * {Types::RegisterOidcConfigResponse#custom_username #custom_username} => String
    #   * {Types::RegisterOidcConfigResponse#ca_certificate #ca_certificate} => String
    #   * {Types::RegisterOidcConfigResponse#application_id #application_id} => Integer
    #   * {Types::RegisterOidcConfigResponse#sso_token_buffer_minutes #sso_token_buffer_minutes} => Integer
    #   * {Types::RegisterOidcConfigResponse#extra_auth_params #extra_auth_params} => String
    #
    #
    # @example Example: Save OIDC config successfully
    #
    #   resp = client.register_oidc_config({
    #     company_id: "us-east-1-company123", 
    #     issuer: "https://login.example.com", 
    #     network_id: "12345678", 
    #     scopes: "openid profile email", 
    #     sso_token_buffer_minutes: 5, 
    #     user_id: "email", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_id: "client123", 
    #     company_id: "us-east-1-company123", 
    #     issuer: "https://login.example.com", 
    #     redirect_url: "https://app.wickr.com/callback", 
    #     scopes: "openid profile email", 
    #     sso_token_buffer_minutes: 5, 
    #     user_id: "email", 
    #   }
    #
    # @example Example: Save OIDC config - missing company ID
    #
    #   resp = client.register_oidc_config({
    #     company_id: "", 
    #     issuer: "https://login.example.com", 
    #     network_id: "12345678", 
    #     scopes: "openid profile email", 
    #   })
    #
    # @example Example: Save OIDC config - invalid company ID prefix
    #
    #   resp = client.register_oidc_config({
    #     company_id: "invalid-company123", 
    #     issuer: "https://login.example.com", 
    #     network_id: "12345678", 
    #     scopes: "openid profile email", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_oidc_config({
    #     network_id: "NetworkId", # required
    #     company_id: "GenericString", # required
    #     custom_username: "GenericString",
    #     extra_auth_params: "GenericString",
    #     issuer: "GenericString", # required
    #     scopes: "GenericString", # required
    #     secret: "SensitiveString",
    #     sso_token_buffer_minutes: 1,
    #     user_id: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_name #=> String
    #   resp.client_id #=> String
    #   resp.company_id #=> String
    #   resp.scopes #=> String
    #   resp.issuer #=> String
    #   resp.client_secret #=> String
    #   resp.secret #=> String
    #   resp.redirect_url #=> String
    #   resp.user_id #=> String
    #   resp.custom_username #=> String
    #   resp.ca_certificate #=> String
    #   resp.application_id #=> Integer
    #   resp.sso_token_buffer_minutes #=> Integer
    #   resp.extra_auth_params #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOidcConfig AWS API Documentation
    #
    # @overload register_oidc_config(params = {})
    # @param [Hash] params ({})
    def register_oidc_config(params = {}, options = {})
      req = build_request(:register_oidc_config, params)
      req.send_request(options)
    end

    # Tests an OpenID Connect (OIDC) configuration for a Wickr network by
    # validating the connection to the identity provider and retrieving its
    # supported capabilities.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network for which the OIDC configuration will be
    #   tested.
    #
    # @option params [String] :extra_auth_params
    #   Additional authentication parameters to include in the test
    #   (optional).
    #
    # @option params [required, String] :issuer
    #   The issuer URL of the OIDC provider to test.
    #
    # @option params [required, String] :scopes
    #   The OAuth scopes to test with the OIDC provider.
    #
    # @option params [String] :certificate
    #   The CA certificate for secure communication with the OIDC provider
    #   (optional).
    #
    # @return [Types::RegisterOidcConfigTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterOidcConfigTestResponse#token_endpoint #token_endpoint} => String
    #   * {Types::RegisterOidcConfigTestResponse#userinfo_endpoint #userinfo_endpoint} => String
    #   * {Types::RegisterOidcConfigTestResponse#response_types_supported #response_types_supported} => Array&lt;String&gt;
    #   * {Types::RegisterOidcConfigTestResponse#scopes_supported #scopes_supported} => Array&lt;String&gt;
    #   * {Types::RegisterOidcConfigTestResponse#issuer #issuer} => String
    #   * {Types::RegisterOidcConfigTestResponse#authorization_endpoint #authorization_endpoint} => String
    #   * {Types::RegisterOidcConfigTestResponse#end_session_endpoint #end_session_endpoint} => String
    #   * {Types::RegisterOidcConfigTestResponse#logout_endpoint #logout_endpoint} => String
    #   * {Types::RegisterOidcConfigTestResponse#grant_types_supported #grant_types_supported} => Array&lt;String&gt;
    #   * {Types::RegisterOidcConfigTestResponse#revocation_endpoint #revocation_endpoint} => String
    #   * {Types::RegisterOidcConfigTestResponse#token_endpoint_auth_methods_supported #token_endpoint_auth_methods_supported} => Array&lt;String&gt;
    #   * {Types::RegisterOidcConfigTestResponse#microsoft_multi_refresh_token #microsoft_multi_refresh_token} => Boolean
    #
    #
    # @example Example: Test OIDC config successfully
    #
    #   resp = client.register_oidc_config_test({
    #     issuer: "https://login.example.com", 
    #     network_id: "12345678", 
    #     scopes: "openid profile email", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     authorization_endpoint: "https://login.example.com/authorize", 
    #     issuer: "https://login.example.com", 
    #     token_endpoint: "https://login.example.com/oauth/token", 
    #     userinfo_endpoint: "https://login.example.com/userinfo", 
    #   }
    #
    # @example Example: Test OIDC config - missing issuer
    #
    #   resp = client.register_oidc_config_test({
    #     issuer: "", 
    #     network_id: "12345678", 
    #     scopes: "openid profile email", 
    #   })
    #
    # @example Example: Test OIDC config - invalid endpoint
    #
    #   resp = client.register_oidc_config_test({
    #     issuer: "https://blocked-endpoint.com", 
    #     network_id: "12345678", 
    #     scopes: "openid profile email", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_oidc_config_test({
    #     network_id: "NetworkId", # required
    #     extra_auth_params: "GenericString",
    #     issuer: "GenericString", # required
    #     scopes: "GenericString", # required
    #     certificate: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.token_endpoint #=> String
    #   resp.userinfo_endpoint #=> String
    #   resp.response_types_supported #=> Array
    #   resp.response_types_supported[0] #=> String
    #   resp.scopes_supported #=> Array
    #   resp.scopes_supported[0] #=> String
    #   resp.issuer #=> String
    #   resp.authorization_endpoint #=> String
    #   resp.end_session_endpoint #=> String
    #   resp.logout_endpoint #=> String
    #   resp.grant_types_supported #=> Array
    #   resp.grant_types_supported[0] #=> String
    #   resp.revocation_endpoint #=> String
    #   resp.token_endpoint_auth_methods_supported #=> Array
    #   resp.token_endpoint_auth_methods_supported[0] #=> String
    #   resp.microsoft_multi_refresh_token #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOidcConfigTest AWS API Documentation
    #
    # @overload register_oidc_config_test(params = {})
    # @param [Hash] params ({})
    def register_oidc_config_test(params = {}, options = {})
      req = build_request(:register_oidc_config_test, params)
      req.send_request(options)
    end

    # Registers and saves OpenTDF configuration for a Wickr network,
    # enabling attribute-based access control for Wickr through an OpenTDF
    # provider.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network for which OpenTDF integration will be
    #   configured.
    #
    # @option params [required, String] :client_id
    #   The OIDC client ID used for authenticating with the OpenTDF provider.
    #
    # @option params [required, String] :client_secret
    #   The OIDC client secret used for authenticating with the OpenTDF
    #   provider
    #
    # @option params [required, String] :domain
    #   The domain of the OpenTDF server.
    #
    # @option params [required, String] :provider
    #   The provider of the OpenTDF platform.
    #
    #   <note markdown="1"> Currently only Virtru is supported as the OpenTDF provider.
    #
    #    </note>
    #
    # @option params [Boolean] :dry_run
    #   Perform dry-run test connection of OpenTDF configuration (optional).
    #
    # @return [Types::RegisterOpentdfConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterOpentdfConfigResponse#client_id #client_id} => String
    #   * {Types::RegisterOpentdfConfigResponse#domain #domain} => String
    #   * {Types::RegisterOpentdfConfigResponse#client_secret #client_secret} => String
    #   * {Types::RegisterOpentdfConfigResponse#provider #provider} => String
    #
    #
    # @example Example: Save OpenTDF config successfully
    #
    #   resp = client.register_opentdf_config({
    #     client_id: "client123", 
    #     client_secret: "secret456", 
    #     domain: "https://api.sample.com", 
    #     network_id: "12345678", 
    #     provider: "virtru", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_id: "client123", 
    #     client_secret: "secret456", 
    #     domain: "https://api.sample.com", 
    #     provider: "virtru", 
    #   }
    #
    # @example Example: Dry run saving OpenTDF config
    #
    #   resp = client.register_opentdf_config({
    #     client_id: "client123", 
    #     client_secret: "secret456", 
    #     domain: "https://api.sample.com", 
    #     dry_run: true, 
    #     network_id: "12345678", 
    #     provider: "virtru", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_id: "client123", 
    #     client_secret: "secret456", 
    #     domain: "https://api.sample.com", 
    #     provider: "virtru", 
    #   }
    #
    # @example Example: Dry run saving OpenTDF config - failed test
    #
    #   resp = client.register_opentdf_config({
    #     client_id: "client123", 
    #     client_secret: "secret456", 
    #     domain: "https://api.sample.com", 
    #     dry_run: true, 
    #     network_id: "12345678", 
    #     provider: "virtru", 
    #   })
    #
    # @example Example: Save OpenTDF config - invalid provider
    #
    #   resp = client.register_opentdf_config({
    #     client_id: "client123", 
    #     client_secret: "secret456", 
    #     domain: "https://api.sample.com", 
    #     network_id: "12345678", 
    #     provider: "invalid provider", 
    #   })
    #
    # @example Example: Save OpenTDF config - network not found
    #
    #   resp = client.register_opentdf_config({
    #     client_id: "client123", 
    #     client_secret: "secret456", 
    #     domain: "https://api.sample.com", 
    #     network_id: "99999999", 
    #     provider: "virtru", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_opentdf_config({
    #     network_id: "NetworkId", # required
    #     client_id: "GenericString", # required
    #     client_secret: "SensitiveString", # required
    #     domain: "GenericString", # required
    #     provider: "GenericString", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.client_id #=> String
    #   resp.domain #=> String
    #   resp.client_secret #=> String
    #   resp.provider #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOpentdfConfig AWS API Documentation
    #
    # @overload register_opentdf_config(params = {})
    # @param [Hash] params ({})
    def register_opentdf_config(params = {}, options = {})
      req = build_request(:register_opentdf_config, params)
      req.send_request(options)
    end

    # Updates the properties of an existing bot in a Wickr network. This
    # operation allows you to modify the bot's display name, security
    # group, password, or suspension status.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the bot to update.
    #
    # @option params [required, String] :bot_id
    #   The unique identifier of the bot to update.
    #
    # @option params [String] :display_name
    #   The new display name for the bot.
    #
    # @option params [String] :group_id
    #   The ID of the new security group to assign the bot to.
    #
    # @option params [String] :challenge
    #   The new password for the bot account.
    #
    # @option params [Boolean] :suspend
    #   Set to true to suspend the bot or false to unsuspend it. Omit this
    #   field for standard updates that don't affect suspension status.
    #
    # @return [Types::UpdateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBotResponse#message #message} => String
    #
    #
    # @example Example: Update bot successfully
    #
    #   resp = client.update_bot({
    #     bot_id: "98765", 
    #     display_name: "Updated Support Bot", 
    #     group_id: "support_group", 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "success", 
    #   }
    #
    # @example Example: Update bot - bot not found
    #
    #   resp = client.update_bot({
    #     bot_id: "99999", 
    #     display_name: "Updated Bot", 
    #     network_id: "12345678", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot({
    #     network_id: "NetworkId", # required
    #     bot_id: "BotId", # required
    #     display_name: "GenericString",
    #     group_id: "GenericString",
    #     challenge: "SensitiveString",
    #     suspend: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateBot AWS API Documentation
    #
    # @overload update_bot(params = {})
    # @param [Hash] params ({})
    def update_bot(params = {}, options = {})
      req = build_request(:update_bot, params)
      req.send_request(options)
    end

    # Updates the data retention bot settings, allowing you to enable or
    # disable the data retention service, or acknowledge the public key
    # message.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the data retention bot.
    #
    # @option params [required, String] :action_type
    #   The action to perform. Valid values are 'ENABLE' (to enable the data
    #   retention service), 'DISABLE' (to disable the service), or
    #   'PUBKEY\_MSG\_ACK' (to acknowledge the public key message).
    #
    # @return [Types::UpdateDataRetentionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataRetentionResponse#message #message} => String
    #
    #
    # @example Example: Update data retention - enable service
    #
    #   resp = client.update_data_retention({
    #     action_type: "ENABLE", 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "data retention service enabled", 
    #   }
    #
    # @example Example: Update data retention - disable service
    #
    #   resp = client.update_data_retention({
    #     action_type: "DISABLE", 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "data retention service disabled", 
    #   }
    #
    # @example Example: Update data retention - acknowledge pubkey message
    #
    #   resp = client.update_data_retention({
    #     action_type: "PUBKEY_MSG_ACK", 
    #     network_id: "12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "pubkey message was acknowledged", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_retention({
    #     network_id: "NetworkId", # required
    #     action_type: "ENABLE", # required, accepts ENABLE, DISABLE, PUBKEY_MSG_ACK
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateDataRetention AWS API Documentation
    #
    # @overload update_data_retention(params = {})
    # @param [Hash] params ({})
    def update_data_retention(params = {}, options = {})
      req = build_request(:update_data_retention, params)
      req.send_request(options)
    end

    # Updates the block status of a guest user in a Wickr network. This
    # operation allows you to block or unblock a guest user from accessing
    # the network.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network where the guest user's status will be
    #   updated.
    #
    # @option params [required, String] :username_hash
    #   The username hash (unique identifier) of the guest user to update.
    #
    # @option params [required, Boolean] :block
    #   Set to true to block the guest user or false to unblock them.
    #
    # @return [Types::UpdateGuestUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGuestUserResponse#message #message} => String
    #
    #
    # @example Example: Block a guest user
    #
    #   resp = client.update_guest_user({
    #     block: true, 
    #     network_id: "12345678", 
    #     username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "success", 
    #   }
    #
    # @example Example: Unblock a guest user
    #
    #   resp = client.update_guest_user({
    #     block: false, 
    #     network_id: "12345678", 
    #     username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "success", 
    #   }
    #
    # @example Example: User already blocked error
    #
    #   resp = client.update_guest_user({
    #     block: true, 
    #     network_id: "12345678", 
    #     username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_guest_user({
    #     network_id: "NetworkId", # required
    #     username_hash: "GenericString", # required
    #     block: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateGuestUser AWS API Documentation
    #
    # @overload update_guest_user(params = {})
    # @param [Hash] params ({})
    def update_guest_user(params = {}, options = {})
      req = build_request(:update_guest_user, params)
      req.send_request(options)
    end

    # Updates the properties of an existing Wickr network, such as its name
    # or encryption key configuration.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network to update.
    #
    # @option params [required, String] :network_name
    #   The new name for the network. Must be between 1 and 20 characters.
    #
    # @option params [String] :client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :encryption_key_arn
    #   The ARN of the Amazon Web Services KMS customer managed key to use for
    #   encrypting sensitive data in the network.
    #
    # @return [Types::UpdateNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkResponse#message #message} => String
    #
    #
    # @example Example: Update network name successfully
    #
    #   resp = client.update_network({
    #     network_id: "12345678", 
    #     network_name: "Updated Network Name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "Network updated successfully", 
    #   }
    #
    # @example Example: Update network - invalid name
    #
    #   resp = client.update_network({
    #     network_id: "12345678", 
    #     network_name: "This name is way too long for a network", 
    #   })
    #
    # @example Example: Update network - not found
    #
    #   resp = client.update_network({
    #     network_id: "99999999", 
    #     network_name: "New Name", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network({
    #     network_id: "NetworkId", # required
    #     network_name: "GenericString", # required
    #     client_token: "ClientToken",
    #     encryption_key_arn: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateNetwork AWS API Documentation
    #
    # @overload update_network(params = {})
    # @param [Hash] params ({})
    def update_network(params = {}, options = {})
      req = build_request(:update_network, params)
      req.send_request(options)
    end

    # Updates network-level settings for a Wickr network. You can modify
    # settings such as client metrics, data retention, and other
    # network-wide options.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network whose settings will be updated.
    #
    # @option params [required, Types::NetworkSettings] :settings
    #   A map of setting names to their new values. Each setting should be
    #   provided with its appropriate type (boolean, string, number, etc.).
    #
    # @return [Types::UpdateNetworkSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkSettingsResponse#settings #settings} => Array&lt;Types::Setting&gt;
    #
    #
    # @example Example: Update multiple network settings
    #
    #   resp = client.update_network_settings({
    #     network_id: "12345678", 
    #     settings: {
    #       data_retention: true, 
    #       enable_client_metrics: true, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     settings: [
    #       {
    #         type: "boolean", 
    #         value: "true", 
    #         option_name: "enableClientMetrics", 
    #       }, 
    #       {
    #         type: "boolean", 
    #         value: "true", 
    #         option_name: "dataRetention", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Update single boolean setting
    #
    #   resp = client.update_network_settings({
    #     network_id: "12345678", 
    #     settings: {
    #       enable_client_metrics: false, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     settings: [
    #       {
    #         type: "boolean", 
    #         value: "false", 
    #         option_name: "enableClientMetrics", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Update client metrics settings
    #
    #   resp = client.update_network_settings({
    #     network_id: "12345678", 
    #     settings: {
    #       enable_client_metrics: true, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     settings: [
    #       {
    #         type: "boolean", 
    #         value: "true", 
    #         option_name: "enableClientMetrics", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Invalid setting name error
    #
    #   resp = client.update_network_settings({
    #     network_id: "12345678", 
    #     settings: {
    #       enable_client_metrics: false, 
    #     }, 
    #   })
    #
    # @example Example: Network not found error
    #
    #   resp = client.update_network_settings({
    #     network_id: "99999999", 
    #     settings: {
    #       enable_client_metrics: true, 
    #     }, 
    #   })
    #
    # @example Example: Invalid value type error
    #
    #   resp = client.update_network_settings({
    #     network_id: "12345678", 
    #     settings: {
    #       data_retention: true, 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_settings({
    #     network_id: "NetworkId", # required
    #     settings: { # required
    #       enable_client_metrics: false,
    #       read_receipt_config: {
    #         status: "DISABLED", # accepts DISABLED, ENABLED, FORCE_ENABLED
    #       },
    #       data_retention: false,
    #       enable_trusted_data_format: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.settings #=> Array
    #   resp.settings[0].option_name #=> String
    #   resp.settings[0].value #=> String
    #   resp.settings[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateNetworkSettings AWS API Documentation
    #
    # @overload update_network_settings(params = {})
    # @param [Hash] params ({})
    def update_network_settings(params = {}, options = {})
      req = build_request(:update_network_settings, params)
      req.send_request(options)
    end

    # Updates the properties of an existing security group in a Wickr
    # network, such as its name or settings.
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the security group to update.
    #
    # @option params [required, String] :group_id
    #   The unique identifier of the security group to update.
    #
    # @option params [String] :name
    #   The new name for the security group.
    #
    # @option params [Types::SecurityGroupSettings] :security_group_settings
    #   The updated configuration settings for the security group.
    #
    #   Federation mode - 0 (Local federation), 1 (Restricted federation), 2
    #   (Global federation)
    #
    # @return [Types::UpdateSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecurityGroupResponse#security_group #security_group} => Types::SecurityGroup
    #
    #
    # @example Example: Update security group successfully
    #
    #   resp = client.update_security_group({
    #     name: "Updated Group Name", 
    #     group_id: "abc12345", 
    #     network_id: "12345678", 
    #     security_group_settings: {
    #       lockout_threshold: 15, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_group: {
    #       name: "Updated Group Name", 
    #       active_members: 10, 
    #       bot_members: 2, 
    #       id: "abc12345", 
    #       is_default: false, 
    #       modified: 1638360000, 
    #       security_group_settings: {
    #         lockout_threshold: 15, 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: Update security group - not found
    #
    #   resp = client.update_security_group({
    #     name: "New Name", 
    #     group_id: "invalid99", 
    #     network_id: "12345678", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_group({
    #     network_id: "NetworkId", # required
    #     group_id: "GenericString", # required
    #     name: "GenericString",
    #     security_group_settings: {
    #       always_reauthenticate: false,
    #       atak_package_values: ["GenericString"],
    #       calling: {
    #         can_start_11_call: false,
    #         can_video_call: false,
    #         force_tcp_call: false,
    #       },
    #       check_for_updates: false,
    #       enable_atak: false,
    #       enable_crash_reports: false,
    #       enable_file_download: false,
    #       enable_guest_federation: false,
    #       enable_notification_preview: false,
    #       enable_open_access_option: false,
    #       enable_restricted_global_federation: false,
    #       files_enabled: false,
    #       force_device_lockout: 1,
    #       force_open_access: false,
    #       force_read_receipts: false,
    #       global_federation: false,
    #       is_ato_enabled: false,
    #       is_link_preview_enabled: false,
    #       location_allow_maps: false,
    #       location_enabled: false,
    #       max_auto_download_size: 1,
    #       max_bor: 1,
    #       max_ttl: 1,
    #       message_forwarding_enabled: false,
    #       password_requirements: {
    #         lowercase: 1,
    #         min_length: 1,
    #         numbers: 1,
    #         symbols: 1,
    #         uppercase: 1,
    #       },
    #       presence_enabled: false,
    #       quick_responses: ["GenericString"],
    #       show_master_recovery_key: false,
    #       shredder: {
    #         can_process_manually: false,
    #         intensity: 1,
    #       },
    #       sso_max_idle_minutes: 1,
    #       federation_mode: 1,
    #       lockout_threshold: 1,
    #       permitted_networks: ["NetworkId"],
    #       permitted_wickr_aws_networks: [
    #         {
    #           region: "GenericString", # required
    #           network_id: "NetworkId", # required
    #         },
    #       ],
    #       permitted_wickr_enterprise_networks: [
    #         {
    #           domain: "GenericString", # required
    #           network_id: "NetworkId", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group.active_members #=> Integer
    #   resp.security_group.bot_members #=> Integer
    #   resp.security_group.active_directory_guid #=> String
    #   resp.security_group.id #=> String
    #   resp.security_group.is_default #=> Boolean
    #   resp.security_group.name #=> String
    #   resp.security_group.modified #=> Integer
    #   resp.security_group.security_group_settings.always_reauthenticate #=> Boolean
    #   resp.security_group.security_group_settings.atak_package_values #=> Array
    #   resp.security_group.security_group_settings.atak_package_values[0] #=> String
    #   resp.security_group.security_group_settings.calling.can_start_11_call #=> Boolean
    #   resp.security_group.security_group_settings.calling.can_video_call #=> Boolean
    #   resp.security_group.security_group_settings.calling.force_tcp_call #=> Boolean
    #   resp.security_group.security_group_settings.check_for_updates #=> Boolean
    #   resp.security_group.security_group_settings.enable_atak #=> Boolean
    #   resp.security_group.security_group_settings.enable_crash_reports #=> Boolean
    #   resp.security_group.security_group_settings.enable_file_download #=> Boolean
    #   resp.security_group.security_group_settings.enable_guest_federation #=> Boolean
    #   resp.security_group.security_group_settings.enable_notification_preview #=> Boolean
    #   resp.security_group.security_group_settings.enable_open_access_option #=> Boolean
    #   resp.security_group.security_group_settings.enable_restricted_global_federation #=> Boolean
    #   resp.security_group.security_group_settings.files_enabled #=> Boolean
    #   resp.security_group.security_group_settings.force_device_lockout #=> Integer
    #   resp.security_group.security_group_settings.force_open_access #=> Boolean
    #   resp.security_group.security_group_settings.force_read_receipts #=> Boolean
    #   resp.security_group.security_group_settings.global_federation #=> Boolean
    #   resp.security_group.security_group_settings.is_ato_enabled #=> Boolean
    #   resp.security_group.security_group_settings.is_link_preview_enabled #=> Boolean
    #   resp.security_group.security_group_settings.location_allow_maps #=> Boolean
    #   resp.security_group.security_group_settings.location_enabled #=> Boolean
    #   resp.security_group.security_group_settings.max_auto_download_size #=> Integer
    #   resp.security_group.security_group_settings.max_bor #=> Integer
    #   resp.security_group.security_group_settings.max_ttl #=> Integer
    #   resp.security_group.security_group_settings.message_forwarding_enabled #=> Boolean
    #   resp.security_group.security_group_settings.password_requirements.lowercase #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.min_length #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.numbers #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.symbols #=> Integer
    #   resp.security_group.security_group_settings.password_requirements.uppercase #=> Integer
    #   resp.security_group.security_group_settings.presence_enabled #=> Boolean
    #   resp.security_group.security_group_settings.quick_responses #=> Array
    #   resp.security_group.security_group_settings.quick_responses[0] #=> String
    #   resp.security_group.security_group_settings.show_master_recovery_key #=> Boolean
    #   resp.security_group.security_group_settings.shredder.can_process_manually #=> Boolean
    #   resp.security_group.security_group_settings.shredder.intensity #=> Integer
    #   resp.security_group.security_group_settings.sso_max_idle_minutes #=> Integer
    #   resp.security_group.security_group_settings.federation_mode #=> Integer
    #   resp.security_group.security_group_settings.lockout_threshold #=> Integer
    #   resp.security_group.security_group_settings.permitted_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_networks[0] #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks[0].region #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_aws_networks[0].network_id #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks #=> Array
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks[0].domain #=> String
    #   resp.security_group.security_group_settings.permitted_wickr_enterprise_networks[0].network_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateSecurityGroup AWS API Documentation
    #
    # @overload update_security_group(params = {})
    # @param [Hash] params ({})
    def update_security_group(params = {}, options = {})
      req = build_request(:update_security_group, params)
      req.send_request(options)
    end

    # Updates the properties of an existing user in a Wickr network. This
    # operation allows you to modify the user's name, password, security
    # group membership, and invite code settings.
    #
    # <note markdown="1"> `codeValidation`, `inviteCode`, and `inviteCodeTtl` are restricted to
    # networks under preview only.
    #
    #  </note>
    #
    # @option params [required, String] :network_id
    #   The ID of the Wickr network containing the user to update.
    #
    # @option params [required, String] :user_id
    #   The unique identifier of the user to update.
    #
    # @option params [Types::UpdateUserDetails] :user_details
    #   An object containing the user details to be updated, such as name,
    #   password, security groups, and invite code settings.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user_id #user_id} => String
    #   * {Types::UpdateUserResponse#network_id #network_id} => String
    #   * {Types::UpdateUserResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::UpdateUserResponse#first_name #first_name} => String
    #   * {Types::UpdateUserResponse#last_name #last_name} => String
    #   * {Types::UpdateUserResponse#middle_name #middle_name} => String
    #   * {Types::UpdateUserResponse#suspended #suspended} => Boolean
    #   * {Types::UpdateUserResponse#modified #modified} => Integer
    #   * {Types::UpdateUserResponse#status #status} => Integer
    #   * {Types::UpdateUserResponse#invite_code #invite_code} => String
    #   * {Types::UpdateUserResponse#invite_expiration #invite_expiration} => Integer
    #   * {Types::UpdateUserResponse#code_validation #code_validation} => Boolean
    #
    #
    # @example Example: Update user information
    #
    #   resp = client.update_user({
    #     network_id: "12345678", 
    #     user_details: {
    #       first_name: "Jonathan", 
    #       last_name: "Doe", 
    #       security_group_ids: [
    #         "BCTY8Qhe", 
    #         "DEPT001", 
    #       ], 
    #       username: "john.doe@example.com", 
    #     }, 
    #     user_id: "12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     first_name: "Jonathan", 
    #     last_name: "Doe", 
    #     modified: 1705500000, 
    #     network_id: "12345678", 
    #     security_group_ids: [
    #       "BCTY8Qhe", 
    #       "DEPT001", 
    #     ], 
    #     status: 2, 
    #     suspended: false, 
    #     user_id: "12345", 
    #   }
    #
    # @example Example: Update user with invite code
    #
    #   resp = client.update_user({
    #     network_id: "12345678", 
    #     user_details: {
    #       code_validation: true, 
    #       first_name: "Jane", 
    #       invite_code: "NEWINVITE789", 
    #       invite_code_ttl: 14, 
    #       last_name: "Smith", 
    #       username: "jane.smith@example.com", 
    #     }, 
    #     user_id: "12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_validation: true, 
    #     first_name: "Jane", 
    #     invite_code: "NEWINVITE789", 
    #     invite_expiration: 1706709600, 
    #     last_name: "Smith", 
    #     modified: 1705500100, 
    #     network_id: "12345678", 
    #     status: 2, 
    #     suspended: false, 
    #     user_id: "12345", 
    #   }
    #
    # @example Example: User not found error
    #
    #   resp = client.update_user({
    #     network_id: "12345678", 
    #     user_details: {
    #       first_name: "Non", 
    #       last_name: "Existent", 
    #       username: "nonexistent@example.com", 
    #     }, 
    #     user_id: "99999", 
    #   })
    #
    # @example Example: Invalid userId error
    #
    #   resp = client.update_user({
    #     network_id: "12345678", 
    #     user_details: {
    #       first_name: "John", 
    #       last_name: "Doe", 
    #       security_group_ids: [
    #         "BCTY8Qhe", 
    #       ], 
    #       username: "john.doe@example.com", 
    #     }, 
    #     user_id: "99999", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     network_id: "NetworkId", # required
    #     user_id: "UserId", # required
    #     user_details: {
    #       first_name: "SensitiveString",
    #       last_name: "SensitiveString",
    #       username: "GenericString",
    #       security_group_ids: ["SecurityGroupId"],
    #       invite_code: "GenericString",
    #       invite_code_ttl: 1,
    #       code_validation: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.network_id #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.first_name #=> String
    #   resp.last_name #=> String
    #   resp.middle_name #=> String
    #   resp.suspended #=> Boolean
    #   resp.modified #=> Integer
    #   resp.status #=> Integer
    #   resp.invite_code #=> String
    #   resp.invite_expiration #=> Integer
    #   resp.code_validation #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Wickr')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-wickr'
      context[:gem_version] = '1.5.0'
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
