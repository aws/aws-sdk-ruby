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

module Aws::VerifiedPermissions
  # An API client for VerifiedPermissions.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::VerifiedPermissions::Client.new(
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

    @identifier = :verifiedpermissions

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
    add_plugin(Aws::VerifiedPermissions::Plugins::Endpoints)

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
    #   @option options [Aws::VerifiedPermissions::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::VerifiedPermissions::EndpointParameters`.
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

    # Retrieves information about a group (batch) of policies.
    #
    # <note markdown="1"> The `BatchGetPolicy` operation doesn't have its own IAM permission.
    # To authorize this operation for Amazon Web Services principals,
    # include the permission `verifiedpermissions:GetPolicy` in their IAM
    # policies.
    #
    #  </note>
    #
    # @option params [required, Array<Types::BatchGetPolicyInputItem>] :requests
    #   An array of up to 100 policies you want information about.
    #
    # @return [Types::BatchGetPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetPolicyOutput#results #results} => Array&lt;Types::BatchGetPolicyOutputItem&gt;
    #   * {Types::BatchGetPolicyOutput#errors #errors} => Array&lt;Types::BatchGetPolicyErrorItem&gt;
    #
    #
    # @example Example: To retrieve details about a policy
    #
    #   # The following example retrieves information about the specified policy contained in the specified policy store. In this
    #   # example, the requested policy is a template-linked policy, so it returns the ID of the policy template, and the specific
    #   # principal and resource used by this policy.
    #
    #   resp = client.batch_get_policy({
    #     requests: [
    #       {
    #         policy_id: "PWv5M6d5HePx3gVVLKY1nK", 
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC", 
    #       }, 
    #       {
    #         policy_id: "LzFn6KgLWvv4Mbegus35jn", 
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC", 
    #       }, 
    #       {
    #         policy_id: "77gLjer8H5o3mvrnMGrSL5", 
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     results: [
    #       {
    #         created_date: Time.parse("2024-10-18T18:53:39.258153Z"), 
    #         definition: {
    #           static: {
    #             description: "Users can manage account resources in any account they own", 
    #             statement: "permit (principal, action in PhotoFlash::Action::\"ManageAccount\",resource) when { resource in principal.Account };", 
    #           }, 
    #         }, 
    #         last_updated_date: Time.parse("2024-10-18T18:53:39.258153Z"), 
    #         policy_id: "PWv5M6d5HePx3gVVLKY1nK", 
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC", 
    #         policy_type: "STATIC", 
    #       }, 
    #       {
    #         created_date: Time.parse("2024-10-18T18:57:03.305027Z"), 
    #         definition: {
    #           static: {
    #             description: "User alice can't delete any photos.", 
    #             statement: "forbid (principal == PhotoFlash::User::\"alice\", action in [PhotoFlash::Action::\"DeletePhoto\"], resource);", 
    #           }, 
    #         }, 
    #         last_updated_date: Time.parse("2024-10-18T18:57:03.305027Z"), 
    #         policy_id: "LzFn6KgLWvv4Mbegus35jn", 
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC", 
    #         policy_type: "STATIC", 
    #       }, 
    #       {
    #         created_date: Time.parse("2024-10-18T18:57:48.005343Z"), 
    #         definition: {
    #           static: {
    #             description: "User alice can view and delete photos.", 
    #             statement: "permit (principal == PhotoFlash::User::\"alice\", action in [PhotoFlash::Action::\"DeletePhoto\", PhotoFlash::Action::\"ViewPhoto\"], resource);", 
    #           }, 
    #         }, 
    #         last_updated_date: Time.parse("2024-10-18T18:57:48.005343Z"), 
    #         policy_id: "77gLjer8H5o3mvrnMGrSL5", 
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC", 
    #         policy_type: "STATIC", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_policy({
    #     requests: [ # required
    #       {
    #         policy_store_id: "PolicyStoreId", # required
    #         policy_id: "PolicyId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].policy_store_id #=> String
    #   resp.results[0].policy_id #=> String
    #   resp.results[0].policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.results[0].definition.static.description #=> String
    #   resp.results[0].definition.static.statement #=> String
    #   resp.results[0].definition.template_linked.policy_template_id #=> String
    #   resp.results[0].definition.template_linked.principal.entity_type #=> String
    #   resp.results[0].definition.template_linked.principal.entity_id #=> String
    #   resp.results[0].definition.template_linked.resource.entity_type #=> String
    #   resp.results[0].definition.template_linked.resource.entity_id #=> String
    #   resp.results[0].created_date #=> Time
    #   resp.results[0].last_updated_date #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].code #=> String, one of "POLICY_STORE_NOT_FOUND", "POLICY_NOT_FOUND"
    #   resp.errors[0].policy_store_id #=> String
    #   resp.errors[0].policy_id #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/BatchGetPolicy AWS API Documentation
    #
    # @overload batch_get_policy(params = {})
    # @param [Hash] params ({})
    def batch_get_policy(params = {}, options = {})
      req = build_request(:batch_get_policy, params)
      req.send_request(options)
    end

    # Makes a series of decisions about multiple authorization requests for
    # one principal or resource. Each request contains the equivalent
    # content of an `IsAuthorized` request: principal, action, resource, and
    # context. Either the `principal` or the `resource` parameter must be
    # identical across all requests. For example, Verified Permissions
    # won't evaluate a pair of requests where `bob` views `photo1` and
    # `alice` views `photo2`. Authorization of `bob` to view `photo1` and
    # `photo2`, or `bob` and `alice` to view `photo1`, are valid batches.
    #
    # The request is evaluated against all policies in the specified policy
    # store that match the entities that you declare. The result of the
    # decisions is a series of `Allow` or `Deny` responses, along with the
    # IDs of the policies that produced each decision.
    #
    # The `entities` of a `BatchIsAuthorized` API request can contain up to
    # 100 principals and up to 100 resources. The `requests` of a
    # `BatchIsAuthorized` API request can contain up to 30 requests.
    #
    # <note markdown="1"> The `BatchIsAuthorized` operation doesn't have its own IAM
    # permission. To authorize this operation for Amazon Web Services
    # principals, include the permission `verifiedpermissions:IsAuthorized`
    # in their IAM policies.
    #
    #  </note>
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store. Policies in this policy store
    #   will be used to make the authorization decisions for the input.
    #
    # @option params [Types::EntitiesDefinition] :entities
    #   (Optional) Specifies the list of resources and principals and their
    #   associated attributes that Verified Permissions can examine when
    #   evaluating the policies. These additional entities and their
    #   attributes can be referenced and checked by conditional elements in
    #   the policies in the specified policy store.
    #
    #   <note markdown="1"> You can include only principal and resource entities in this
    #   parameter; you can't include actions. You must specify actions in the
    #   schema.
    #
    #    </note>
    #
    # @option params [required, Array<Types::BatchIsAuthorizedInputItem>] :requests
    #   An array of up to 30 requests that you want Verified Permissions to
    #   evaluate.
    #
    # @return [Types::BatchIsAuthorizedOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchIsAuthorizedOutput#results #results} => Array&lt;Types::BatchIsAuthorizedOutputItem&gt;
    #
    #
    # @example Example: Batch - Example 1
    #
    #   # The following example requests two authorization decisions for two principals                     of type Usernamed
    #   # Alice and Annalisa.
    #
    #   resp = client.batch_is_authorized({
    #     entities: {
    #       entity_list: [
    #         {
    #           attributes: {
    #             "Account" => {
    #               entity_identifier: {
    #                 entity_id: "1234", 
    #                 entity_type: "PhotoFlash::Account", 
    #               }, 
    #             }, 
    #             "Email" => {
    #               string: "", 
    #             }, 
    #           }, 
    #           identifier: {
    #             entity_id: "Alice", 
    #             entity_type: "PhotoFlash::User", 
    #           }, 
    #           parents: [
    #           ], 
    #         }, 
    #         {
    #           attributes: {
    #             "Account" => {
    #               entity_identifier: {
    #                 entity_id: "5678", 
    #                 entity_type: "PhotoFlash::Account", 
    #               }, 
    #             }, 
    #             "Email" => {
    #               string: "", 
    #             }, 
    #           }, 
    #           identifier: {
    #             entity_id: "Annalisa", 
    #             entity_type: "PhotoFlash::User", 
    #           }, 
    #           parents: [
    #           ], 
    #         }, 
    #         {
    #           attributes: {
    #             "IsPrivate" => {
    #               boolean: false, 
    #             }, 
    #             "Name" => {
    #               string: "", 
    #             }, 
    #           }, 
    #           identifier: {
    #             entity_id: "VacationPhoto94.jpg", 
    #             entity_type: "PhotoFlash::Photo", 
    #           }, 
    #           parents: [
    #             {
    #               entity_id: "1234", 
    #               entity_type: "PhotoFlash::Account", 
    #             }, 
    #           ], 
    #         }, 
    #         {
    #           attributes: {
    #             "Name" => {
    #               string: "", 
    #             }, 
    #           }, 
    #           identifier: {
    #             entity_id: "1234", 
    #             entity_type: "PhotoFlash::Account", 
    #           }, 
    #           parents: [
    #           ], 
    #         }, 
    #       ], 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     requests: [
    #       {
    #         action: {
    #           action_id: "ViewPhoto", 
    #           action_type: "PhotoFlash::Action", 
    #         }, 
    #         principal: {
    #           entity_id: "Alice", 
    #           entity_type: "PhotoFlash::User", 
    #         }, 
    #         resource: {
    #           entity_id: "VacationPhoto94.jpg", 
    #           entity_type: "PhotoFlash::Photo", 
    #         }, 
    #       }, 
    #       {
    #         action: {
    #           action_id: "DeletePhoto", 
    #           action_type: "PhotoFlash::Action", 
    #         }, 
    #         principal: {
    #           entity_id: "Annalisa", 
    #           entity_type: "PhotoFlash::User", 
    #         }, 
    #         resource: {
    #           entity_id: "VacationPhoto94.jpg", 
    #           entity_type: "PhotoFlash::Photo", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     results: [
    #       {
    #         errors: [
    #         ], 
    #         decision: "ALLOW", 
    #         determining_policies: [
    #           {
    #             policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #           }, 
    #         ], 
    #         request: {
    #           action: {
    #             action_id: "ViewPhoto", 
    #             action_type: "PhotoFlash::Action", 
    #           }, 
    #           principal: {
    #             entity_id: "alice", 
    #             entity_type: "PhotoFlash::User", 
    #           }, 
    #           resource: {
    #             entity_id: "VacationPhoto94.jpg", 
    #             entity_type: "PhotoFlash::Photo", 
    #           }, 
    #         }, 
    #       }, 
    #       {
    #         errors: [
    #         ], 
    #         decision: "DENY", 
    #         determining_policies: [
    #         ], 
    #         request: {
    #           action: {
    #             action_id: "DeletePhoto", 
    #             action_type: "PhotoFlash::Action", 
    #           }, 
    #           principal: {
    #             entity_id: "annalisa", 
    #             entity_type: "PhotoFlash::User", 
    #           }, 
    #           resource: {
    #             entity_id: "VacationPhoto94.jpg", 
    #             entity_type: "PhotoFlash::Photo", 
    #           }, 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_is_authorized({
    #     policy_store_id: "PolicyStoreId", # required
    #     entities: {
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             },
    #           ],
    #         },
    #       ],
    #       cedar_json: "CedarJson",
    #     },
    #     requests: [ # required
    #       {
    #         principal: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         action: {
    #           action_type: "ActionType", # required
    #           action_id: "ActionId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         context: {
    #           context_map: {
    #             "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           cedar_json: "CedarJson",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].request.principal.entity_type #=> String
    #   resp.results[0].request.principal.entity_id #=> String
    #   resp.results[0].request.action.action_type #=> String
    #   resp.results[0].request.action.action_id #=> String
    #   resp.results[0].request.resource.entity_type #=> String
    #   resp.results[0].request.resource.entity_id #=> String
    #   resp.results[0].request.context.context_map #=> Hash
    #   resp.results[0].request.context.context_map["String"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.results[0].request.context.cedar_json #=> String
    #   resp.results[0].decision #=> String, one of "ALLOW", "DENY"
    #   resp.results[0].determining_policies #=> Array
    #   resp.results[0].determining_policies[0].policy_id #=> String
    #   resp.results[0].errors #=> Array
    #   resp.results[0].errors[0].error_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/BatchIsAuthorized AWS API Documentation
    #
    # @overload batch_is_authorized(params = {})
    # @param [Hash] params ({})
    def batch_is_authorized(params = {}, options = {})
      req = build_request(:batch_is_authorized, params)
      req.send_request(options)
    end

    # Makes a series of decisions about multiple authorization requests for
    # one token. The principal in this request comes from an external
    # identity source in the form of an identity or access token, formatted
    # as a [JSON web token (JWT)][1]. The information in the parameters can
    # also define additional context that Verified Permissions can include
    # in the evaluations.
    #
    # The request is evaluated against all policies in the specified policy
    # store that match the entities that you provide in the entities
    # declaration and in the token. The result of the decisions is a series
    # of `Allow` or `Deny` responses, along with the IDs of the policies
    # that produced each decision.
    #
    # The `entities` of a `BatchIsAuthorizedWithToken` API request can
    # contain up to 100 resources and up to 99 user groups. The `requests`
    # of a `BatchIsAuthorizedWithToken` API request can contain up to 30
    # requests.
    #
    # <note markdown="1"> The `BatchIsAuthorizedWithToken` operation doesn't have its own IAM
    # permission. To authorize this operation for Amazon Web Services
    # principals, include the permission
    # `verifiedpermissions:IsAuthorizedWithToken` in their IAM policies.
    #
    #  </note>
    #
    #
    #
    # [1]: https://wikipedia.org/wiki/JSON_Web_Token
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store. Policies in this policy store
    #   will be used to make an authorization decision for the input.
    #
    # @option params [String] :identity_token
    #   Specifies an identity (ID) token for the principal that you want to
    #   authorize in each request. This token is provided to you by the
    #   identity provider (IdP) associated with the specified identity source.
    #   You must specify either an `accessToken`, an `identityToken`, or both.
    #
    #   Must be an ID token. Verified Permissions returns an error if the
    #   `token_use` claim in the submitted token isn't `id`.
    #
    # @option params [String] :access_token
    #   Specifies an access token for the principal that you want to authorize
    #   in each request. This token is provided to you by the identity
    #   provider (IdP) associated with the specified identity source. You must
    #   specify either an `accessToken`, an `identityToken`, or both.
    #
    #   Must be an access token. Verified Permissions returns an error if the
    #   `token_use` claim in the submitted token isn't `access`.
    #
    # @option params [Types::EntitiesDefinition] :entities
    #   (Optional) Specifies the list of resources and their associated
    #   attributes that Verified Permissions can examine when evaluating the
    #   policies. These additional entities and their attributes can be
    #   referenced and checked by conditional elements in the policies in the
    #   specified policy store.
    #
    #   You can't include principals in this parameter, only resource and
    #   action entities. This parameter can't include any entities of a type
    #   that matches the user or group entity types that you defined in your
    #   identity source.
    #
    #    * The `BatchIsAuthorizedWithToken` operation takes principal
    #     attributes from <b> <i>only</i> </b> the `identityToken` or
    #     `accessToken` passed to the operation.
    #
    #   * For action entities, you can include only their `Identifier` and
    #     `EntityType`.
    #
    # @option params [required, Array<Types::BatchIsAuthorizedWithTokenInputItem>] :requests
    #   An array of up to 30 requests that you want Verified Permissions to
    #   evaluate.
    #
    # @return [Types::BatchIsAuthorizedWithTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchIsAuthorizedWithTokenOutput#principal #principal} => Types::EntityIdentifier
    #   * {Types::BatchIsAuthorizedWithTokenOutput#results #results} => Array&lt;Types::BatchIsAuthorizedWithTokenOutputItem&gt;
    #
    #
    # @example Example: Batch - Example 1
    #
    #   # The following example requests three authorization decisions for two resources                     and two actions in
    #   # different photo albums.
    #
    #   resp = client.batch_is_authorized_with_token({
    #     entities: {
    #       entity_list: [
    #         {
    #           identifier: {
    #             entity_id: "VacationPhoto94.jpg", 
    #             entity_type: "PhotoFlash::Photo", 
    #           }, 
    #           parents: [
    #             {
    #               entity_id: "MyExampleAlbum1", 
    #               entity_type: "PhotoFlash::Album", 
    #             }, 
    #           ], 
    #         }, 
    #         {
    #           identifier: {
    #             entity_id: "OfficePhoto94.jpg", 
    #             entity_type: "PhotoFlash::Photo", 
    #           }, 
    #           parents: [
    #             {
    #               entity_id: "MyExampleAlbum2", 
    #               entity_type: "PhotoFlash::Album", 
    #             }, 
    #           ], 
    #         }, 
    #       ], 
    #     }, 
    #     identity_token: "eyJra12345EXAMPLE", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     requests: [
    #       {
    #         action: {
    #           action_id: "ViewPhoto", 
    #           action_type: "PhotoFlash::Action", 
    #         }, 
    #         resource: {
    #           entity_id: "VacationPhoto94.jpg", 
    #           entity_type: "PhotoFlash::Photo", 
    #         }, 
    #       }, 
    #       {
    #         action: {
    #           action_id: "SharePhoto", 
    #           action_type: "PhotoFlash::Action", 
    #         }, 
    #         resource: {
    #           entity_id: "VacationPhoto94.jpg", 
    #           entity_type: "PhotoFlash::Photo", 
    #         }, 
    #       }, 
    #       {
    #         action: {
    #           action_id: "ViewPhoto", 
    #           action_type: "PhotoFlash::Action", 
    #         }, 
    #         resource: {
    #           entity_id: "OfficePhoto94.jpg", 
    #           entity_type: "PhotoFlash::Photo", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     principal: {
    #       entity_id: "us-east-1_EXAMPLE|a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #       entity_type: "PhotoFlash::User", 
    #     }, 
    #     results: [
    #       {
    #         errors: [
    #         ], 
    #         decision: "ALLOW", 
    #         determining_policies: [
    #           {
    #             policy_id: "9wYixMplbbZQb5fcZHyJhY", 
    #           }, 
    #         ], 
    #         request: {
    #           action: {
    #             action_id: "ViewPhoto", 
    #             action_type: "PhotoFlash::Action", 
    #           }, 
    #           resource: {
    #             entity_id: "VacationPhoto94.jpg", 
    #             entity_type: "PhotoFlash::Photo", 
    #           }, 
    #         }, 
    #       }, 
    #       {
    #         errors: [
    #         ], 
    #         decision: "ALLOW", 
    #         determining_policies: [
    #           {
    #             policy_id: "9wYixMplbbZQb5fcZHyJhY", 
    #           }, 
    #         ], 
    #         request: {
    #           action: {
    #             action_id: "SharePhoto", 
    #             action_type: "PhotoFlash::Action", 
    #           }, 
    #           resource: {
    #             entity_id: "VacationPhoto94.jpg", 
    #             entity_type: "PhotoFlash::Photo", 
    #           }, 
    #         }, 
    #       }, 
    #       {
    #         errors: [
    #         ], 
    #         decision: "DENY", 
    #         determining_policies: [
    #         ], 
    #         request: {
    #           action: {
    #             action_id: "ViewPhoto", 
    #             action_type: "PhotoFlash::Action", 
    #           }, 
    #           resource: {
    #             entity_id: "OfficePhoto94.jpg", 
    #             entity_type: "PhotoFlash::Photo", 
    #           }, 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_is_authorized_with_token({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_token: "Token",
    #     access_token: "Token",
    #     entities: {
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             },
    #           ],
    #         },
    #       ],
    #       cedar_json: "CedarJson",
    #     },
    #     requests: [ # required
    #       {
    #         action: {
    #           action_type: "ActionType", # required
    #           action_id: "ActionId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         context: {
    #           context_map: {
    #             "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           cedar_json: "CedarJson",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.principal.entity_type #=> String
    #   resp.principal.entity_id #=> String
    #   resp.results #=> Array
    #   resp.results[0].request.action.action_type #=> String
    #   resp.results[0].request.action.action_id #=> String
    #   resp.results[0].request.resource.entity_type #=> String
    #   resp.results[0].request.resource.entity_id #=> String
    #   resp.results[0].request.context.context_map #=> Hash
    #   resp.results[0].request.context.context_map["String"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.results[0].request.context.cedar_json #=> String
    #   resp.results[0].decision #=> String, one of "ALLOW", "DENY"
    #   resp.results[0].determining_policies #=> Array
    #   resp.results[0].determining_policies[0].policy_id #=> String
    #   resp.results[0].errors #=> Array
    #   resp.results[0].errors[0].error_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/BatchIsAuthorizedWithToken AWS API Documentation
    #
    # @overload batch_is_authorized_with_token(params = {})
    # @param [Hash] params ({})
    def batch_is_authorized_with_token(params = {}, options = {})
      req = build_request(:batch_is_authorized_with_token, params)
      req.send_request(options)
    end

    # Adds an identity source to a policy store–an Amazon Cognito user pool
    # or OpenID Connect (OIDC) identity provider (IdP).
    #
    # After you create an identity source, you can use the identities
    # provided by the IdP as proxies for the principal in authorization
    # queries that use the [IsAuthorizedWithToken][1] or
    # [BatchIsAuthorizedWithToken][2] API operations. These identities take
    # the form of tokens that contain claims about the user, such as IDs,
    # attributes and group memberships. Identity sources provide identity
    # (ID) tokens and access tokens. Verified Permissions derives
    # information about your user and session from token claims. Access
    # tokens provide action `context` to your policies, and ID tokens
    # provide principal `Attributes`.
    #
    # Tokens from an identity source user continue to be usable until they
    # expire. Token revocation and resource deletion have no effect on the
    # validity of a token in your policy store
    #
    # <note markdown="1"> To reference a user from this identity source in your Cedar policies,
    # refer to the following syntax examples.
    #
    #  * Amazon Cognito user pool: `Namespace::[Entity type]::[User pool
    #   ID]|[user principal attribute]`, for example
    #   `MyCorp::User::us-east-1_EXAMPLE|a1b2c3d4-5678-90ab-cdef-EXAMPLE11111`.
    #
    # * OpenID Connect (OIDC) provider: `Namespace::[Entity
    #   type]::[entityIdPrefix]|[user principal attribute]`, for example
    #   `MyCorp::User::MyOIDCProvider|a1b2c3d4-5678-90ab-cdef-EXAMPLE22222`.
    #
    #  </note>
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorizedWithToken.html
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an `ConflictException`
    #   error.
    #
    #   Verified Permissions recognizes a `ClientToken` for eight hours. After
    #   eight hours, the next request with the same parameters performs the
    #   operation again regardless of the value of `ClientToken`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store in which you want to store this
    #   identity source. Only policies and requests made using this policy
    #   store can reference identities from the identity provider configured
    #   in the new identity source.
    #
    # @option params [required, Types::Configuration] :configuration
    #   Specifies the details required to communicate with the identity
    #   provider (IdP) associated with this identity source.
    #
    # @option params [String] :principal_entity_type
    #   Specifies the namespace and data type of the principals generated for
    #   identities authenticated by the new identity source.
    #
    # @return [Types::CreateIdentitySourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdentitySourceOutput#created_date #created_date} => Time
    #   * {Types::CreateIdentitySourceOutput#identity_source_id #identity_source_id} => String
    #   * {Types::CreateIdentitySourceOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::CreateIdentitySourceOutput#policy_store_id #policy_store_id} => String
    #
    #
    # @example Example: To create an identity source
    #
    #   # The following ``create-identity-source`` example creates an identity source that lets you reference identities stored in
    #   # the specified Amazon Cognito user pool. Those identities are available in Verified Permissions as entities of type
    #   # ``User``. 
    #
    #   resp = client.create_identity_source({
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111", 
    #     configuration: {
    #       cognito_user_pool_configuration: {
    #         client_ids: [
    #           "a1b2c3d4e5f6g7h8i9j0kalbmc", 
    #         ], 
    #         user_pool_arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5", 
    #       }, 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     principal_entity_type: "User", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     identity_source_id: "ISEXAMPLEabcdefg111111", 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_source({
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     configuration: { # required
    #       cognito_user_pool_configuration: {
    #         user_pool_arn: "UserPoolArn", # required
    #         client_ids: ["ClientId"],
    #         group_configuration: {
    #           group_entity_type: "GroupEntityType", # required
    #         },
    #       },
    #       open_id_connect_configuration: {
    #         issuer: "Issuer", # required
    #         entity_id_prefix: "EntityIdPrefix",
    #         group_configuration: {
    #           group_claim: "Claim", # required
    #           group_entity_type: "GroupEntityType", # required
    #         },
    #         token_selection: { # required
    #           access_token_only: {
    #             principal_id_claim: "Claim",
    #             audiences: ["Audience"],
    #           },
    #           identity_token_only: {
    #             principal_id_claim: "Claim",
    #             client_ids: ["ClientId"],
    #           },
    #         },
    #       },
    #     },
    #     principal_entity_type: "PrincipalEntityType",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.identity_source_id #=> String
    #   resp.last_updated_date #=> Time
    #   resp.policy_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreateIdentitySource AWS API Documentation
    #
    # @overload create_identity_source(params = {})
    # @param [Hash] params ({})
    def create_identity_source(params = {}, options = {})
      req = build_request(:create_identity_source, params)
      req.send_request(options)
    end

    # Creates a Cedar policy and saves it in the specified policy store. You
    # can create either a static policy or a policy linked to a policy
    # template.
    #
    # * To create a static policy, provide the Cedar policy text in the
    #   `StaticPolicy` section of the `PolicyDefinition`.
    #
    # * To create a policy that is dynamically linked to a policy template,
    #   specify the policy template ID and the principal and resource to
    #   associate with this policy in the `templateLinked` section of the
    #   `PolicyDefinition`. If the policy template is ever updated, any
    #   policies linked to the policy template automatically use the updated
    #   template.
    #
    # <note markdown="1"> Creating a policy causes it to be validated against the schema in the
    # policy store. If the policy doesn't pass validation, the operation
    # fails and the policy isn't stored.
    #
    #  </note>
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an `ConflictException`
    #   error.
    #
    #   Verified Permissions recognizes a `ClientToken` for eight hours. After
    #   eight hours, the next request with the same parameters performs the
    #   operation again regardless of the value of `ClientToken`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the `PolicyStoreId` of the policy store you want to store
    #   the policy in.
    #
    # @option params [required, Types::PolicyDefinition] :definition
    #   A structure that specifies the policy type and content to use for the
    #   new policy. You must include either a static or a templateLinked
    #   element. The policy content must be written in the Cedar policy
    #   language.
    #
    # @return [Types::CreatePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyOutput#policy_store_id #policy_store_id} => String
    #   * {Types::CreatePolicyOutput#policy_id #policy_id} => String
    #   * {Types::CreatePolicyOutput#policy_type #policy_type} => String
    #   * {Types::CreatePolicyOutput#principal #principal} => Types::EntityIdentifier
    #   * {Types::CreatePolicyOutput#resource #resource} => Types::EntityIdentifier
    #   * {Types::CreatePolicyOutput#actions #actions} => Array&lt;Types::ActionIdentifier&gt;
    #   * {Types::CreatePolicyOutput#created_date #created_date} => Time
    #   * {Types::CreatePolicyOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::CreatePolicyOutput#effect #effect} => String
    #
    #
    # @example Example: To create a static policy
    #
    #   # The following example request creates a static policy with a policy scope that specifies both a principal and a
    #   # resource. The response includes both the Principal and Resource elements because both were specified in the request
    #   # policy scope.
    #
    #   resp = client.create_policy({
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111", 
    #     definition: {
    #       static: {
    #         description: "Grant members of janeFriends UserGroup access to the vacationFolder Album", 
    #         statement: "permit( principal in UserGroup::\"janeFriends\", action, resource in Album::\"vacationFolder\" );", 
    #       }, 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_type: "STATIC", 
    #     principal: {
    #       entity_id: "janeFriends", 
    #       entity_type: "UserGroup", 
    #     }, 
    #     resource: {
    #       entity_id: "vacationFolder", 
    #       entity_type: "Album", 
    #     }, 
    #   }
    #
    # @example Example: To create a static policy
    #
    #   # The following example request creates a static policy with a policy scope that specifies both a principal and a
    #   # resource. The response includes both the Principal and Resource elements because both were specified in the request
    #   # policy scope.
    #
    #   resp = client.create_policy({
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111", 
    #     definition: {
    #       static: {
    #         description: "Grant members of janeFriends UserGroup access to the vacationFolder Album", 
    #         statement: "permit( principal in UserGroup::\"janeFriends\", action, resource in Album::\"vacationFolder\" );", 
    #       }, 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_type: "STATIC", 
    #     principal: {
    #       entity_id: "janeFriends", 
    #       entity_type: "UserGroup", 
    #     }, 
    #     resource: {
    #       entity_id: "vacationFolder", 
    #       entity_type: "Album", 
    #     }, 
    #   }
    #
    # @example Example: To create a template-linked policy
    #
    #   # The following example creates a template-linked policy using the specified policy template and associates the specified
    #   # principal to use with the new template-linked policy.
    #
    #   resp = client.create_policy({
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111", 
    #     definition: {
    #       template_linked: {
    #         policy_template_id: "PTEXAMPLEabcdefg111111", 
    #         principal: {
    #           entity_id: "alice", 
    #           entity_type: "User", 
    #         }, 
    #       }, 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_id: "Et9KxMplyaDdyurDw8TeFa", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_type: "TEMPLATE_LINKED", 
    #     principal: {
    #       entity_id: "alice", 
    #       entity_type: "User", 
    #     }, 
    #     resource: {
    #       entity_id: "VacationPhoto94.jpg", 
    #       entity_type: "Photo", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     definition: { # required
    #       static: {
    #         description: "StaticPolicyDescription",
    #         statement: "PolicyStatement", # required
    #       },
    #       template_linked: {
    #         policy_template_id: "PolicyTemplateId", # required
    #         principal: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_id #=> String
    #   resp.policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.principal.entity_type #=> String
    #   resp.principal.entity_id #=> String
    #   resp.resource.entity_type #=> String
    #   resp.resource.entity_id #=> String
    #   resp.actions #=> Array
    #   resp.actions[0].action_type #=> String
    #   resp.actions[0].action_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.effect #=> String, one of "Permit", "Forbid"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicy AWS API Documentation
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # Creates a policy store. A policy store is a container for policy
    # resources.
    #
    # <note markdown="1"> Although [Cedar supports multiple namespaces][1], Verified Permissions
    # currently supports only one namespace per policy store.
    #
    #  </note>
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.cedarpolicy.com/schema/schema.html#namespace
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an `ConflictException`
    #   error.
    #
    #   Verified Permissions recognizes a `ClientToken` for eight hours. After
    #   eight hours, the next request with the same parameters performs the
    #   operation again regardless of the value of `ClientToken`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [required, Types::ValidationSettings] :validation_settings
    #   Specifies the validation setting for this policy store.
    #
    #   Currently, the only valid and required value is `Mode`.
    #
    #   We recommend that you turn on `STRICT` mode only after you define a
    #   schema. If a schema doesn't exist, then `STRICT` mode causes any
    #   policy to fail validation, and Verified Permissions rejects the
    #   policy. You can turn off validation by using the
    #   [UpdatePolicyStore][1]. Then, when you have a schema defined, use
    #   [UpdatePolicyStore][1] again to turn validation back on.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore
    #
    # @option params [String] :description
    #   Descriptive text that you can provide to help with identification of
    #   the current policy store.
    #
    # @option params [String] :deletion_protection
    #   Specifies whether the policy store can be deleted. If enabled, the
    #   policy store can't be deleted.
    #
    #   The default state is `DISABLED`.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the policy store.
    #
    # @return [Types::CreatePolicyStoreOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyStoreOutput#policy_store_id #policy_store_id} => String
    #   * {Types::CreatePolicyStoreOutput#arn #arn} => String
    #   * {Types::CreatePolicyStoreOutput#created_date #created_date} => Time
    #   * {Types::CreatePolicyStoreOutput#last_updated_date #last_updated_date} => Time
    #
    #
    # @example Example: To create policy store
    #
    #   # The following example creates a new policy store with strict validation turned on.
    #
    #   resp = client.create_policy_store({
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111", 
    #     validation_settings: {
    #       mode: "STRICT", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:verifiedpermissions::123456789012:policy-store/C7v5xMplfFH3i3e4Jrzb1a", 
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_store({
    #     client_token: "IdempotencyToken",
    #     validation_settings: { # required
    #       mode: "OFF", # required, accepts OFF, STRICT
    #     },
    #     description: "PolicyStoreDescription",
    #     deletion_protection: "ENABLED", # accepts ENABLED, DISABLED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.arn #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyStore AWS API Documentation
    #
    # @overload create_policy_store(params = {})
    # @param [Hash] params ({})
    def create_policy_store(params = {}, options = {})
      req = build_request(:create_policy_store, params)
      req.send_request(options)
    end

    # Creates a policy template. A template can use placeholders for the
    # principal and resource. A template must be instantiated into a policy
    # by associating it with specific principals and resources to use for
    # the placeholders. That instantiated policy can then be considered in
    # authorization decisions. The instantiated policy works identically to
    # any other policy, except that it is dynamically linked to the
    # template. If the template changes, then any policies that are linked
    # to that template are immediately updated as well.
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an `ConflictException`
    #   error.
    #
    #   Verified Permissions recognizes a `ClientToken` for eight hours. After
    #   eight hours, the next request with the same parameters performs the
    #   operation again regardless of the value of `ClientToken`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [required, String] :policy_store_id
    #   The ID of the policy store in which to create the policy template.
    #
    # @option params [String] :description
    #   Specifies a description for the policy template.
    #
    # @option params [required, String] :statement
    #   Specifies the content that you want to use for the new policy
    #   template, written in the Cedar policy language.
    #
    # @return [Types::CreatePolicyTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyTemplateOutput#policy_store_id #policy_store_id} => String
    #   * {Types::CreatePolicyTemplateOutput#policy_template_id #policy_template_id} => String
    #   * {Types::CreatePolicyTemplateOutput#created_date #created_date} => Time
    #   * {Types::CreatePolicyTemplateOutput#last_updated_date #last_updated_date} => Time
    #
    #
    # @example Example: To create a policy template
    #
    #   # The following example creates a policy template that has a placeholder for the principal.
    #
    #   resp = client.create_policy_template({
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111", 
    #     description: "Template for research dept", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     statement: "\"AccessVacation\"\npermit(\n    principal in ?principal,\n    action == Action::\"view\",\n    resource == Photo::\"VacationPhoto94.jpg\"\n)\nwhen {\n    principal has department && principal.department == \"research\"\n};", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_template_id: "PTEXAMPLEabcdefg111111", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_template({
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     description: "PolicyTemplateDescription",
    #     statement: "PolicyStatement", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_template_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/CreatePolicyTemplate AWS API Documentation
    #
    # @overload create_policy_template(params = {})
    # @param [Hash] params ({})
    def create_policy_template(params = {}, options = {})
      req = build_request(:create_policy_template, params)
      req.send_request(options)
    end

    # Deletes an identity source that references an identity provider (IdP)
    # such as Amazon Cognito. After you delete the identity source, you can
    # no longer use tokens for identities from that identity source to
    # represent principals in authorization queries made using
    # [IsAuthorizedWithToken][1]. operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the identity source
    #   that you want to delete.
    #
    # @option params [required, String] :identity_source_id
    #   Specifies the ID of the identity source that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an identity source
    #
    #   # The following example request deletes the specified identity source.
    #
    #   resp = client.delete_identity_source({
    #     identity_source_id: "ISEXAMPLEabcdefg111111", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_source({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeleteIdentitySource AWS API Documentation
    #
    # @overload delete_identity_source(params = {})
    # @param [Hash] params ({})
    def delete_identity_source(params = {}, options = {})
      req = build_request(:delete_identity_source, params)
      req.send_request(options)
    end

    # Deletes the specified policy from the policy store.
    #
    # This operation is idempotent; if you specify a policy that doesn't
    # exist, the request response returns a successful `HTTP 200` status
    # code.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy that you
    #   want to delete.
    #
    # @option params [required, String] :policy_id
    #   Specifies the ID of the policy that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a policy
    #
    #   # The following example deletes the specified policy from its policy store.
    #
    #   resp = client.delete_policy({
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes the specified policy store.
    #
    # This operation is idempotent. If you specify a policy store that does
    # not exist, the request response will still return a successful HTTP
    # 200 status code.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a policy store
    #
    #   # The following example deletes the specified policy store.
    #
    #   resp = client.delete_policy_store({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_store({
    #     policy_store_id: "PolicyStoreId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyStore AWS API Documentation
    #
    # @overload delete_policy_store(params = {})
    # @param [Hash] params ({})
    def delete_policy_store(params = {}, options = {})
      req = build_request(:delete_policy_store, params)
      req.send_request(options)
    end

    # Deletes the specified policy template from the policy store.
    #
    # This operation also deletes any policies that were created from the
    # specified policy template. Those policies are immediately removed from
    # all future API responses, and are asynchronously deleted from the
    # policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy template
    #   that you want to delete.
    #
    # @option params [required, String] :policy_template_id
    #   Specifies the ID of the policy template that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a policy template
    #
    #   # The following example deletes a policy template. Before you can perform this operation, you must first delete any
    #   # template-linked policies that were instantiated from this policy template. To delete them, use DeletePolicy.
    #
    #   resp = client.delete_policy_template({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_template_id: "PTEXAMPLEabcdefg111111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_template({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/DeletePolicyTemplate AWS API Documentation
    #
    # @overload delete_policy_template(params = {})
    # @param [Hash] params ({})
    def delete_policy_template(params = {}, options = {})
      req = build_request(:delete_policy_template, params)
      req.send_request(options)
    end

    # Retrieves the details about the specified identity source.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the identity source
    #   you want information about.
    #
    # @option params [required, String] :identity_source_id
    #   Specifies the ID of the identity source you want information about.
    #
    # @return [Types::GetIdentitySourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentitySourceOutput#created_date #created_date} => Time
    #   * {Types::GetIdentitySourceOutput#details #details} => Types::IdentitySourceDetails
    #   * {Types::GetIdentitySourceOutput#identity_source_id #identity_source_id} => String
    #   * {Types::GetIdentitySourceOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::GetIdentitySourceOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetIdentitySourceOutput#principal_entity_type #principal_entity_type} => String
    #   * {Types::GetIdentitySourceOutput#configuration #configuration} => Types::ConfigurationDetail
    #
    #
    # @example Example: To retrieve details about an identity source
    #
    #   # The following example retrieves the details for the specified identity source.
    #
    #   resp = client.get_identity_source({
    #     identity_source_id: "ISEXAMPLEabcdefg111111", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     details: {
    #       client_ids: [
    #         "a1b2c3d4e5f6g7h8i9j0kalbmc", 
    #       ], 
    #       discovery_url: "https://cognito-idp.us-east-1.amazonaws.com/us-east-1_1a2b3c4d5", 
    #       open_id_issuer: "COGNITO", 
    #       user_pool_arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5", 
    #     }, 
    #     identity_source_id: "ISEXAMPLEabcdefg111111", 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     principal_entity_type: "AWS::Cognito", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_source({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.details.client_ids #=> Array
    #   resp.details.client_ids[0] #=> String
    #   resp.details.user_pool_arn #=> String
    #   resp.details.discovery_url #=> String
    #   resp.details.open_id_issuer #=> String, one of "COGNITO"
    #   resp.identity_source_id #=> String
    #   resp.last_updated_date #=> Time
    #   resp.policy_store_id #=> String
    #   resp.principal_entity_type #=> String
    #   resp.configuration.cognito_user_pool_configuration.user_pool_arn #=> String
    #   resp.configuration.cognito_user_pool_configuration.client_ids #=> Array
    #   resp.configuration.cognito_user_pool_configuration.client_ids[0] #=> String
    #   resp.configuration.cognito_user_pool_configuration.issuer #=> String
    #   resp.configuration.cognito_user_pool_configuration.group_configuration.group_entity_type #=> String
    #   resp.configuration.open_id_connect_configuration.issuer #=> String
    #   resp.configuration.open_id_connect_configuration.entity_id_prefix #=> String
    #   resp.configuration.open_id_connect_configuration.group_configuration.group_claim #=> String
    #   resp.configuration.open_id_connect_configuration.group_configuration.group_entity_type #=> String
    #   resp.configuration.open_id_connect_configuration.token_selection.access_token_only.principal_id_claim #=> String
    #   resp.configuration.open_id_connect_configuration.token_selection.access_token_only.audiences #=> Array
    #   resp.configuration.open_id_connect_configuration.token_selection.access_token_only.audiences[0] #=> String
    #   resp.configuration.open_id_connect_configuration.token_selection.identity_token_only.principal_id_claim #=> String
    #   resp.configuration.open_id_connect_configuration.token_selection.identity_token_only.client_ids #=> Array
    #   resp.configuration.open_id_connect_configuration.token_selection.identity_token_only.client_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetIdentitySource AWS API Documentation
    #
    # @overload get_identity_source(params = {})
    # @param [Hash] params ({})
    def get_identity_source(params = {}, options = {})
      req = build_request(:get_identity_source, params)
      req.send_request(options)
    end

    # Retrieves information about the specified policy.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy that you
    #   want information about.
    #
    # @option params [required, String] :policy_id
    #   Specifies the ID of the policy you want information about.
    #
    # @return [Types::GetPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetPolicyOutput#policy_id #policy_id} => String
    #   * {Types::GetPolicyOutput#policy_type #policy_type} => String
    #   * {Types::GetPolicyOutput#principal #principal} => Types::EntityIdentifier
    #   * {Types::GetPolicyOutput#resource #resource} => Types::EntityIdentifier
    #   * {Types::GetPolicyOutput#actions #actions} => Array&lt;Types::ActionIdentifier&gt;
    #   * {Types::GetPolicyOutput#definition #definition} => Types::PolicyDefinitionDetail
    #   * {Types::GetPolicyOutput#created_date #created_date} => Time
    #   * {Types::GetPolicyOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::GetPolicyOutput#effect #effect} => String
    #
    #
    # @example Example: To retrieve details about a policy
    #
    #   # The following example retrieves information about the specified policy contained in the specified policy store. In this
    #   # example, the requested policy is a template-linked policy, so it returns the ID of the policy template, and the specific
    #   # principal and resource used by this policy.
    #
    #   resp = client.get_policy({
    #     policy_id: "9wYixMplbbZQb5fcZHyJhY", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     definition: {
    #       static: {
    #         description: "Grant everyone of janeFriends UserGroup access to the vacationFolder Album", 
    #         statement: "permit(principal, action, resource in Album::\"publicFolder\");", 
    #       }, 
    #     }, 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_type: "STATIC", 
    #     resource: {
    #       entity_id: "publicFolder", 
    #       entity_type: "Album", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_id #=> String
    #   resp.policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.principal.entity_type #=> String
    #   resp.principal.entity_id #=> String
    #   resp.resource.entity_type #=> String
    #   resp.resource.entity_id #=> String
    #   resp.actions #=> Array
    #   resp.actions[0].action_type #=> String
    #   resp.actions[0].action_id #=> String
    #   resp.definition.static.description #=> String
    #   resp.definition.static.statement #=> String
    #   resp.definition.template_linked.policy_template_id #=> String
    #   resp.definition.template_linked.principal.entity_type #=> String
    #   resp.definition.template_linked.principal.entity_id #=> String
    #   resp.definition.template_linked.resource.entity_type #=> String
    #   resp.definition.template_linked.resource.entity_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.effect #=> String, one of "Permit", "Forbid"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Retrieves details about a policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that you want information about.
    #
    # @option params [Boolean] :tags
    #   Specifies whether to return the tags that are attached to the policy
    #   store. If this parameter is included in the API call, the tags are
    #   returned, otherwise they are not returned.
    #
    #   <note markdown="1"> If this parameter is included in the API call but there are no tags
    #   attached to the policy store, the `tags` response parameter is omitted
    #   from the response.
    #
    #    </note>
    #
    # @return [Types::GetPolicyStoreOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyStoreOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetPolicyStoreOutput#arn #arn} => String
    #   * {Types::GetPolicyStoreOutput#validation_settings #validation_settings} => Types::ValidationSettings
    #   * {Types::GetPolicyStoreOutput#created_date #created_date} => Time
    #   * {Types::GetPolicyStoreOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::GetPolicyStoreOutput#description #description} => String
    #   * {Types::GetPolicyStoreOutput#deletion_protection #deletion_protection} => String
    #   * {Types::GetPolicyStoreOutput#cedar_version #cedar_version} => String
    #   * {Types::GetPolicyStoreOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: GetPolicyStore
    #
    #   # The following example retrieves details about the specified policy store.
    #
    #   resp = client.get_policy_store({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:verifiedpermissions::123456789012:policy-store/C7v5xMplfFH3i3e4Jrzb1a", 
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     validation_settings: {
    #       mode: "STRICT", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_store({
    #     policy_store_id: "PolicyStoreId", # required
    #     tags: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.arn #=> String
    #   resp.validation_settings.mode #=> String, one of "OFF", "STRICT"
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.description #=> String
    #   resp.deletion_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.cedar_version #=> String, one of "CEDAR_2", "CEDAR_4"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyStore AWS API Documentation
    #
    # @overload get_policy_store(params = {})
    # @param [Hash] params ({})
    def get_policy_store(params = {}, options = {})
      req = build_request(:get_policy_store, params)
      req.send_request(options)
    end

    # Retrieve the details for the specified policy template in the
    # specified policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy template
    #   that you want information about.
    #
    # @option params [required, String] :policy_template_id
    #   Specifies the ID of the policy template that you want information
    #   about.
    #
    # @return [Types::GetPolicyTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyTemplateOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetPolicyTemplateOutput#policy_template_id #policy_template_id} => String
    #   * {Types::GetPolicyTemplateOutput#description #description} => String
    #   * {Types::GetPolicyTemplateOutput#statement #statement} => String
    #   * {Types::GetPolicyTemplateOutput#created_date #created_date} => Time
    #   * {Types::GetPolicyTemplateOutput#last_updated_date #last_updated_date} => Time
    #
    #
    # @example Example: GetPolicyTemplate
    #
    #   # The following example displays the details of the specified policy template.
    #
    #   resp = client.get_policy_template({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_template_id: "PTEXAMPLEabcdefg111111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     description: "Template for research dept", 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_template_id: "PTEXAMPLEabcdefg111111", 
    #     statement: "permit(\n  principal ?principal,\n  action == Action::\"view\",\n  resource in ?resource\n) when {\n  principal has department && principal.department == \"research\" \n};", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_template({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_template_id #=> String
    #   resp.description #=> String
    #   resp.statement #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetPolicyTemplate AWS API Documentation
    #
    # @overload get_policy_template(params = {})
    # @param [Hash] params ({})
    def get_policy_template(params = {}, options = {})
      req = build_request(:get_policy_template, params)
      req.send_request(options)
    end

    # Retrieve the details for the specified schema in the specified policy
    # store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the schema.
    #
    # @return [Types::GetSchemaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaOutput#policy_store_id #policy_store_id} => String
    #   * {Types::GetSchemaOutput#schema #schema} => String
    #   * {Types::GetSchemaOutput#created_date #created_date} => Time
    #   * {Types::GetSchemaOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::GetSchemaOutput#namespaces #namespaces} => Array&lt;String&gt;
    #
    #
    # @example Example: GetSchema
    #
    #   # The following example retrieves the current schema stored in the specified policy store.
    #   # Note
    #   # The JSON in the parameters of this operation are strings that can contain embedded quotation marks (") within the
    #   # outermost quotation mark pair. This requires that you stringify the JSON object by preceding all embedded quotation
    #   # marks with a backslash character ( \" ) and combining all lines into a single text line with no line breaks.
    #   # Example strings might be displayed wrapped across multiple lines here for readability, but the operation requires the
    #   # parameters be submitted as single line strings.
    #
    #   resp = client.get_schema({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     schema: "{\n\"My::Application\": {\n\"actions\": {\n\"remoteAccess\": {\n\"appliesTo\": {\n\"principalTypes\":   [\"Employee\"]\n}\n}\n},\n\"entityTypes\":   {\n\"Employee\": {\n\"shape\": {\n\"attributes\": {\n\"jobLevel\": { \"type\": \"Long\" },\n\"name\": { \"type\":\"String\" }\n},\n\"type\": \"Record\"\n}\n}\n}\n}\n  }", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema({
    #     policy_store_id: "PolicyStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.schema #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.namespaces #=> Array
    #   resp.namespaces[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/GetSchema AWS API Documentation
    #
    # @overload get_schema(params = {})
    # @param [Hash] params ({})
    def get_schema(params = {}, options = {})
      req = build_request(:get_schema, params)
      req.send_request(options)
    end

    # Makes an authorization decision about a service request described in
    # the parameters. The information in the parameters can also define
    # additional context that Verified Permissions can include in the
    # evaluation. The request is evaluated against all matching policies in
    # the specified policy store. The result of the decision is either
    # `Allow` or `Deny`, along with a list of the policies that resulted in
    # the decision.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store. Policies in this policy store
    #   will be used to make an authorization decision for the input.
    #
    # @option params [Types::EntityIdentifier] :principal
    #   Specifies the principal for which the authorization decision is to be
    #   made.
    #
    # @option params [Types::ActionIdentifier] :action
    #   Specifies the requested action to be authorized. For example, is the
    #   principal authorized to perform this action on the resource?
    #
    # @option params [Types::EntityIdentifier] :resource
    #   Specifies the resource for which the authorization decision is to be
    #   made.
    #
    # @option params [Types::ContextDefinition] :context
    #   Specifies additional context that can be used to make more granular
    #   authorization decisions.
    #
    # @option params [Types::EntitiesDefinition] :entities
    #   (Optional) Specifies the list of resources and principals and their
    #   associated attributes that Verified Permissions can examine when
    #   evaluating the policies. These additional entities and their
    #   attributes can be referenced and checked by conditional elements in
    #   the policies in the specified policy store.
    #
    #   <note markdown="1"> You can include only principal and resource entities in this
    #   parameter; you can't include actions. You must specify actions in the
    #   schema.
    #
    #    </note>
    #
    # @return [Types::IsAuthorizedOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IsAuthorizedOutput#decision #decision} => String
    #   * {Types::IsAuthorizedOutput#determining_policies #determining_policies} => Array&lt;Types::DeterminingPolicyItem&gt;
    #   * {Types::IsAuthorizedOutput#errors #errors} => Array&lt;Types::EvaluationErrorItem&gt;
    #
    #
    # @example Example: IsAuthorized - Example 1
    #
    #   # The following example requests an authorization decision for a principal of type User named Alice, who wants to perform
    #   # the updatePhoto operation, on a resource of type Photo named VacationPhoto94.jpg.
    #   # The response shows that the request was allowed by one policy.
    #
    #   resp = client.is_authorized({
    #     action: {
    #       action_id: "view", 
    #       action_type: "Action", 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     principal: {
    #       entity_id: "alice", 
    #       entity_type: "User", 
    #     }, 
    #     resource: {
    #       entity_id: "VacationPhoto94.jpg", 
    #       entity_type: "Photo", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     decision: "ALLOW", 
    #     determining_policies: [
    #       {
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: IsAuthorized - Example 2
    #
    #   # The following example is the same as the previous example, except that the principal is User::"bob", and the policy
    #   # store doesn't contain any policy that allows that user access to Album::"alice_folder". The output infers that the Deny
    #   # was implicit because the list of DeterminingPolicies is empty.
    #
    #   resp = client.is_authorized({
    #     action: {
    #       action_id: "view", 
    #       action_type: "Action", 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     principal: {
    #       entity_id: "bob", 
    #       entity_type: "User", 
    #     }, 
    #     resource: {
    #       entity_id: "VacationPhoto94.jpg", 
    #       entity_type: "Photo", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     decision: "DENY", 
    #     determining_policies: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.is_authorized({
    #     policy_store_id: "PolicyStoreId", # required
    #     principal: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     action: {
    #       action_type: "ActionType", # required
    #       action_id: "ActionId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     context: {
    #       context_map: {
    #         "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #       cedar_json: "CedarJson",
    #     },
    #     entities: {
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             },
    #           ],
    #         },
    #       ],
    #       cedar_json: "CedarJson",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.decision #=> String, one of "ALLOW", "DENY"
    #   resp.determining_policies #=> Array
    #   resp.determining_policies[0].policy_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IsAuthorized AWS API Documentation
    #
    # @overload is_authorized(params = {})
    # @param [Hash] params ({})
    def is_authorized(params = {}, options = {})
      req = build_request(:is_authorized, params)
      req.send_request(options)
    end

    # Makes an authorization decision about a service request described in
    # the parameters. The principal in this request comes from an external
    # identity source in the form of an identity token formatted as a [JSON
    # web token (JWT)][1]. The information in the parameters can also define
    # additional context that Verified Permissions can include in the
    # evaluation. The request is evaluated against all matching policies in
    # the specified policy store. The result of the decision is either
    # `Allow` or `Deny`, along with a list of the policies that resulted in
    # the decision.
    #
    # Verified Permissions validates each token that is specified in a
    # request by checking its expiration date and its signature.
    #
    # Tokens from an identity source user continue to be usable until they
    # expire. Token revocation and resource deletion have no effect on the
    # validity of a token in your policy store
    #
    #
    #
    # [1]: https://wikipedia.org/wiki/JSON_Web_Token
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store. Policies in this policy store
    #   will be used to make an authorization decision for the input.
    #
    # @option params [String] :identity_token
    #   Specifies an identity token for the principal to be authorized. This
    #   token is provided to you by the identity provider (IdP) associated
    #   with the specified identity source. You must specify either an
    #   `accessToken`, an `identityToken`, or both.
    #
    #   Must be an ID token. Verified Permissions returns an error if the
    #   `token_use` claim in the submitted token isn't `id`.
    #
    # @option params [String] :access_token
    #   Specifies an access token for the principal to be authorized. This
    #   token is provided to you by the identity provider (IdP) associated
    #   with the specified identity source. You must specify either an
    #   `accessToken`, an `identityToken`, or both.
    #
    #   Must be an access token. Verified Permissions returns an error if the
    #   `token_use` claim in the submitted token isn't `access`.
    #
    # @option params [Types::ActionIdentifier] :action
    #   Specifies the requested action to be authorized. Is the specified
    #   principal authorized to perform this action on the specified resource.
    #
    # @option params [Types::EntityIdentifier] :resource
    #   Specifies the resource for which the authorization decision is made.
    #   For example, is the principal allowed to perform the action on the
    #   resource?
    #
    # @option params [Types::ContextDefinition] :context
    #   Specifies additional context that can be used to make more granular
    #   authorization decisions.
    #
    # @option params [Types::EntitiesDefinition] :entities
    #   (Optional) Specifies the list of resources and their associated
    #   attributes that Verified Permissions can examine when evaluating the
    #   policies. These additional entities and their attributes can be
    #   referenced and checked by conditional elements in the policies in the
    #   specified policy store.
    #
    #   You can't include principals in this parameter, only resource and
    #   action entities. This parameter can't include any entities of a type
    #   that matches the user or group entity types that you defined in your
    #   identity source.
    #
    #    * The `IsAuthorizedWithToken` operation takes principal attributes
    #     from <b> <i>only</i> </b> the `identityToken` or `accessToken`
    #     passed to the operation.
    #
    #   * For action entities, you can include only their `Identifier` and
    #     `EntityType`.
    #
    # @return [Types::IsAuthorizedWithTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IsAuthorizedWithTokenOutput#decision #decision} => String
    #   * {Types::IsAuthorizedWithTokenOutput#determining_policies #determining_policies} => Array&lt;Types::DeterminingPolicyItem&gt;
    #   * {Types::IsAuthorizedWithTokenOutput#errors #errors} => Array&lt;Types::EvaluationErrorItem&gt;
    #   * {Types::IsAuthorizedWithTokenOutput#principal #principal} => Types::EntityIdentifier
    #
    #
    # @example Example: IsAuthorizedWithToken - Example 1
    #
    #   # The following example requests an authorization decision for a user who was authenticated by Amazon Cognito. The request
    #   # uses the identity token provided by Amazon Cognito instead of the access token. In this example, the specified
    #   # information store is configured to return principals as entities of type CognitoUser. The policy store contains a policy
    #   # with the following statement.
    #   # permit(
    #   # principal == CognitoUser::"us-east-1_1a2b3c4d5|a1b2c3d4e5f6g7h8i9j0kalbmc",
    #   # action,
    #   # resource == Photo::"VacationPhoto94.jpg"
    #   # );
    #
    #   resp = client.is_authorized_with_token({
    #     action: {
    #       action_id: "View", 
    #       action_type: "Action", 
    #     }, 
    #     identity_token: "EgZjxMPlbWUyBggAEEUYOdIBCDM3NDlqMGo3qAIAsAIA", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     resource: {
    #       entity_id: "vacationPhoto94.jpg", 
    #       entity_type: "Photo", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     decision: "ALLOW", 
    #     determining_policies: [
    #       {
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.is_authorized_with_token({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_token: "Token",
    #     access_token: "Token",
    #     action: {
    #       action_type: "ActionType", # required
    #       action_id: "ActionId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     context: {
    #       context_map: {
    #         "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #       cedar_json: "CedarJson",
    #     },
    #     entities: {
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             },
    #           ],
    #         },
    #       ],
    #       cedar_json: "CedarJson",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.decision #=> String, one of "ALLOW", "DENY"
    #   resp.determining_policies #=> Array
    #   resp.determining_policies[0].policy_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_description #=> String
    #   resp.principal.entity_type #=> String
    #   resp.principal.entity_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/IsAuthorizedWithToken AWS API Documentation
    #
    # @overload is_authorized_with_token(params = {})
    # @param [Hash] params ({})
    def is_authorized_with_token(params = {}, options = {})
      req = build_request(:is_authorized_with_token, params)
      req.send_request(options)
    end

    # Returns a paginated list of all of the identity sources defined in the
    # specified policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the identity
    #   sources that you want to list.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #   If you do not specify this parameter, the operation defaults to 10
    #   identity sources per response. You can specify a maximum of 50
    #   identity sources per response.
    #
    # @option params [Array<Types::IdentitySourceFilter>] :filters
    #   Specifies characteristics of an identity source that you can use to
    #   limit the output to matching identity sources.
    #
    # @return [Types::ListIdentitySourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentitySourcesOutput#next_token #next_token} => String
    #   * {Types::ListIdentitySourcesOutput#identity_sources #identity_sources} => Array&lt;Types::IdentitySourceItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListIdentitySources
    #
    #   # The following example request creates lists the identity sources currently defined in the specified policy store.
    #
    #   resp = client.list_identity_sources({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     identity_sources: [
    #       {
    #         created_date: Time.parse("2023-05-19T20:29:23.66812Z"), 
    #         details: {
    #           client_ids: [
    #             "a1b2c3d4e5f6g7h8i9j0kalbmc", 
    #           ], 
    #           discovery_url: "https://cognito-idp.us-east-1.amazonaws.com/us-east-1_1a2b3c4d5", 
    #           open_id_issuer: "COGNITO", 
    #           user_pool_arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5", 
    #         }, 
    #         identity_source_id: "ISEXAMPLEabcdefg111111", 
    #         last_updated_date: Time.parse("2023-05-19T20:29:23.66812Z"), 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #         principal_entity_type: "User", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_sources({
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         principal_entity_type: "PrincipalEntityType",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.identity_sources #=> Array
    #   resp.identity_sources[0].created_date #=> Time
    #   resp.identity_sources[0].details.client_ids #=> Array
    #   resp.identity_sources[0].details.client_ids[0] #=> String
    #   resp.identity_sources[0].details.user_pool_arn #=> String
    #   resp.identity_sources[0].details.discovery_url #=> String
    #   resp.identity_sources[0].details.open_id_issuer #=> String, one of "COGNITO"
    #   resp.identity_sources[0].identity_source_id #=> String
    #   resp.identity_sources[0].last_updated_date #=> Time
    #   resp.identity_sources[0].policy_store_id #=> String
    #   resp.identity_sources[0].principal_entity_type #=> String
    #   resp.identity_sources[0].configuration.cognito_user_pool_configuration.user_pool_arn #=> String
    #   resp.identity_sources[0].configuration.cognito_user_pool_configuration.client_ids #=> Array
    #   resp.identity_sources[0].configuration.cognito_user_pool_configuration.client_ids[0] #=> String
    #   resp.identity_sources[0].configuration.cognito_user_pool_configuration.issuer #=> String
    #   resp.identity_sources[0].configuration.cognito_user_pool_configuration.group_configuration.group_entity_type #=> String
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.issuer #=> String
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.entity_id_prefix #=> String
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.group_configuration.group_claim #=> String
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.group_configuration.group_entity_type #=> String
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.token_selection.access_token_only.principal_id_claim #=> String
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.token_selection.access_token_only.audiences #=> Array
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.token_selection.access_token_only.audiences[0] #=> String
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.token_selection.identity_token_only.principal_id_claim #=> String
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.token_selection.identity_token_only.client_ids #=> Array
    #   resp.identity_sources[0].configuration.open_id_connect_configuration.token_selection.identity_token_only.client_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListIdentitySources AWS API Documentation
    #
    # @overload list_identity_sources(params = {})
    # @param [Hash] params ({})
    def list_identity_sources(params = {}, options = {})
      req = build_request(:list_identity_sources, params)
      req.send_request(options)
    end

    # Returns a paginated list of all policies stored in the specified
    # policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store you want to list policies from.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #   If you do not specify this parameter, the operation defaults to 10
    #   policies per response. You can specify a maximum of 50 policies per
    #   response.
    #
    # @option params [Types::PolicyFilter] :filter
    #   Specifies a filter that limits the response to only policies that
    #   match the specified criteria. For example, you list only the policies
    #   that reference a specified principal.
    #
    # @return [Types::ListPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesOutput#next_token #next_token} => String
    #   * {Types::ListPoliciesOutput#policies #policies} => Array&lt;Types::PolicyItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListPolicies - Example 1
    #
    #   # The following example lists all policies in the policy store.
    #
    #   resp = client.list_policies({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policies: [
    #       {
    #         created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #         definition: {
    #           static: {
    #             description: "Grant members of janeFriends UserGroup access to the vacationFolder Album", 
    #           }, 
    #         }, 
    #         last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #         policy_type: "STATIC", 
    #         principal: {
    #           entity_id: "janeFriends", 
    #           entity_type: "UserGroup", 
    #         }, 
    #         resource: {
    #           entity_id: "vacationFolder", 
    #           entity_type: "Album", 
    #         }, 
    #       }, 
    #       {
    #         created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #         definition: {
    #           static: {
    #             description: "Grant everyone access to the publicFolder Album", 
    #           }, 
    #         }, 
    #         last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #         policy_id: "Et9KxMplyaDdyurDw8TeFa", 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #         policy_type: "STATIC", 
    #         resource: {
    #           entity_id: "publicFolder", 
    #           entity_type: "Album", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListPolicies - Example 2
    #
    #   # The following example lists all policies for a specified principal.
    #
    #   resp = client.list_policies({
    #     filter: {
    #       principal: {
    #         identifier: {
    #           entity_id: "alice", 
    #           entity_type: "User", 
    #         }, 
    #       }, 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policies: [
    #       {
    #         created_date: Time.parse("2022-12-09T22:55:16.067533Z"), 
    #         definition: {
    #           static: {
    #             description: "An example policy", 
    #           }, 
    #         }, 
    #         last_updated_date: Time.parse("2022-12-09T22:55:16.067533Z"), 
    #         policy_id: "Et9KxMplyaDdyurDw8TeFa", 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #         policy_type: "STATIC", 
    #         principal: {
    #           entity_id: "alice", 
    #           entity_type: "User", 
    #         }, 
    #         resource: {
    #           entity_id: "bob_folder", 
    #           entity_type: "Album", 
    #         }, 
    #       }, 
    #       {
    #         created_date: Time.parse("2022-12-09T23:00:24.66266Z"), 
    #         definition: {
    #           static: {
    #           }, 
    #         }, 
    #         last_updated_date: Time.parse("2022-12-09T23:00:24.66266Z"), 
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #         policy_type: "STATIC", 
    #         principal: {
    #           entity_id: "alice", 
    #           entity_type: "User", 
    #         }, 
    #         resource: {
    #           entity_id: "alice_folder", 
    #           entity_type: "Album", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListPolicies - Example 3
    #
    #   # The following example uses the Filter parameter to list only the template-linked policies in the specified policy store.
    #
    #   resp = client.list_policies({
    #     filter: {
    #       policy_type: "TEMPLATE_LINKED", 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policies: [
    #       {
    #         created_date: Time.parse("2023-06-13T16:03:07.620867Z"), 
    #         definition: {
    #           template_linked: {
    #             policy_template_id: "PTEXAMPLEabcdefg111111", 
    #             principal: {
    #               entity_id: "alice", 
    #               entity_type: "User", 
    #             }, 
    #             resource: {
    #               entity_id: "pic.jpg", 
    #               entity_type: "Photo", 
    #             }, 
    #           }, 
    #         }, 
    #         last_updated_date: Time.parse("2023-06-13T16:03:07.620867Z"), 
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #         policy_type: "TEMPLATE_LINKED", 
    #         principal: {
    #           entity_id: "alice", 
    #           entity_type: "User", 
    #         }, 
    #         resource: {
    #           entity_id: "pic.jpg", 
    #           entity_type: "Photo", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: {
    #       principal: {
    #         unspecified: false,
    #         identifier: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #       },
    #       resource: {
    #         unspecified: false,
    #         identifier: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #       },
    #       policy_type: "STATIC", # accepts STATIC, TEMPLATE_LINKED
    #       policy_template_id: "PolicyTemplateId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policies #=> Array
    #   resp.policies[0].policy_store_id #=> String
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.policies[0].principal.entity_type #=> String
    #   resp.policies[0].principal.entity_id #=> String
    #   resp.policies[0].resource.entity_type #=> String
    #   resp.policies[0].resource.entity_id #=> String
    #   resp.policies[0].actions #=> Array
    #   resp.policies[0].actions[0].action_type #=> String
    #   resp.policies[0].actions[0].action_id #=> String
    #   resp.policies[0].definition.static.description #=> String
    #   resp.policies[0].definition.template_linked.policy_template_id #=> String
    #   resp.policies[0].definition.template_linked.principal.entity_type #=> String
    #   resp.policies[0].definition.template_linked.principal.entity_id #=> String
    #   resp.policies[0].definition.template_linked.resource.entity_type #=> String
    #   resp.policies[0].definition.template_linked.resource.entity_id #=> String
    #   resp.policies[0].created_date #=> Time
    #   resp.policies[0].last_updated_date #=> Time
    #   resp.policies[0].effect #=> String, one of "Permit", "Forbid"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Returns a paginated list of all policy stores in the calling Amazon
    # Web Services account.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #   If you do not specify this parameter, the operation defaults to 10
    #   policy stores per response. You can specify a maximum of 50 policy
    #   stores per response.
    #
    # @return [Types::ListPolicyStoresOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyStoresOutput#next_token #next_token} => String
    #   * {Types::ListPolicyStoresOutput#policy_stores #policy_stores} => Array&lt;Types::PolicyStoreItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListPolicyStores
    #
    #   # The following example lists all policy stores in the AWS account in the AWS Region in which you call the operation.
    #
    #   resp = client.list_policy_stores({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_stores: [
    #       {
    #         arn: "arn:aws:verifiedpermissions::123456789012:policy-store/C7v5xMplfFH3i3e4Jrzb1a", 
    #         created_date: Time.parse("2023-05-16T17:41:29.103459Z"), 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #       }, 
    #       {
    #         arn: "arn:aws:verifiedpermissions::123456789012:policy-store/PSEXAMPLEabcdefg222222", 
    #         created_date: Time.parse("2023-05-16T18:23:04.985521Z"), 
    #         policy_store_id: "PSEXAMPLEabcdefg222222", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_stores({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policy_stores #=> Array
    #   resp.policy_stores[0].policy_store_id #=> String
    #   resp.policy_stores[0].arn #=> String
    #   resp.policy_stores[0].created_date #=> Time
    #   resp.policy_stores[0].last_updated_date #=> Time
    #   resp.policy_stores[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicyStores AWS API Documentation
    #
    # @overload list_policy_stores(params = {})
    # @param [Hash] params ({})
    def list_policy_stores(params = {}, options = {})
      req = build_request(:list_policy_stores, params)
      req.send_request(options)
    end

    # Returns a paginated list of all policy templates in the specified
    # policy store.
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy
    #   templates you want to list.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #   If you do not specify this parameter, the operation defaults to 10
    #   policy templates per response. You can specify a maximum of 50 policy
    #   templates per response.
    #
    # @return [Types::ListPolicyTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListPolicyTemplatesOutput#policy_templates #policy_templates} => Array&lt;Types::PolicyTemplateItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListPolicyTemplates
    #
    #   # The following example retrieves a list of all of the policy templates in the specified policy store.
    #
    #   resp = client.list_policy_templates({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_templates: [
    #       {
    #         created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #         description: "Generic template", 
    #         last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #         policy_template_id: "PTEXAMPLEabcdefg111111", 
    #       }, 
    #       {
    #         created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #         description: "Template for research dept", 
    #         last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #         policy_template_id: "PTEXAMPLEabcdefg222222", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_templates({
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policy_templates #=> Array
    #   resp.policy_templates[0].policy_store_id #=> String
    #   resp.policy_templates[0].policy_template_id #=> String
    #   resp.policy_templates[0].description #=> String
    #   resp.policy_templates[0].created_date #=> Time
    #   resp.policy_templates[0].last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListPolicyTemplates AWS API Documentation
    #
    # @overload list_policy_templates(params = {})
    # @param [Hash] params ({})
    def list_policy_templates(params = {}, options = {})
      req = build_request(:list_policy_templates, params)
      req.send_request(options)
    end

    # Returns the tags associated with the specified Amazon Verified
    # Permissions resource. In Verified Permissions, policy stores can be
    # tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which you want to view tags.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: ListTagsForResource
    #
    #   # The following example lists all the tags for the resource named in the API call.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates the policy schema in the specified policy store.
    # The schema is used to validate any Cedar policies and policy templates
    # submitted to the policy store. Any changes to the schema validate only
    # policies and templates submitted after the schema change. Existing
    # policies and templates are not re-evaluated against the changed
    # schema. If you later update a policy, then it is evaluated against the
    # new schema at that time.
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store in which to place the schema.
    #
    # @option params [required, Types::SchemaDefinition] :definition
    #   Specifies the definition of the schema to be stored. The schema
    #   definition must be written in Cedar schema JSON.
    #
    # @return [Types::PutSchemaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSchemaOutput#policy_store_id #policy_store_id} => String
    #   * {Types::PutSchemaOutput#namespaces #namespaces} => Array&lt;String&gt;
    #   * {Types::PutSchemaOutput#created_date #created_date} => Time
    #   * {Types::PutSchemaOutput#last_updated_date #last_updated_date} => Time
    #
    #
    # @example Example: PutSchema
    #
    #   # The following example creates a new schema, or updates an existing schema, in the specified policy store. Note that the
    #   # schema text is shown line wrapped for readability. You should submit the entire schema text as a single line of text.
    #   # Note
    #   # The JSON in the parameters of this operation are strings that can contain embedded quotation marks (") within the
    #   # outermost quotation mark pair. This requires that you stringify the JSON object by preceding all embedded quotation
    #   # marks with a backslash character ( \" ) and combining all lines into a single text line with no line breaks.
    #   # Example strings might be displayed wrapped across multiple lines here for readability, but the operation requires the
    #   # parameters be submitted as single line strings.
    #
    #   resp = client.put_schema({
    #     definition: {
    #       cedar_json: "{\"MySampleNamespace\": {\"actions\": {\"remoteAccess\": {\"appliesTo\": {\"principalTypes\": [\"Employee\"]}}},\"entityTypes\": {\"Employee\": {\"shape\": {\"attributes\": {\"jobLevel\": {\"type\": \"Long\"},\"name\": {\"type\": \"String\"}},\"type\": \"Record\"}}}}}", 
    #     }, 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2023-06-13T19:28:06.003726Z"), 
    #     last_updated_date: Time.parse("2023-06-13T19:28:06.003726Z"), 
    #     namespaces: [
    #       "My::Sample::Namespace", 
    #     ], 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_schema({
    #     policy_store_id: "PolicyStoreId", # required
    #     definition: { # required
    #       cedar_json: "SchemaJson",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.namespaces #=> Array
    #   resp.namespaces[0] #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/PutSchema AWS API Documentation
    #
    # @overload put_schema(params = {})
    # @param [Hash] params ({})
    def put_schema(params = {}, options = {})
      req = build_request(:put_schema, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified Amazon
    # Verified Permissions resource. Tags can help you organize and
    # categorize your resources. You can also use them to scope user
    # permissions by granting a user permission to access or change only
    # resources with certain tag values. In Verified Permissions, policy
    # stores can be tagged.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the TagResource action with a resource that already has
    # tags. If you specify a new tag key, this tag is appended to the list
    # of tags associated with the resource. If you specify a tag key that is
    # already associated with the resource, the new tag value that you
    # specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you're adding tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: TagResource
    #
    #   # The following example tags the resource.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
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
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified Amazon Verified
    # Permissions resource. In Verified Permissions, policy stores can be
    # tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource from which you are removing tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UntagResource
    #
    #   # The following example removes the listed tags from the resource.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     tag_keys: [
    #       "key1", 
    #       "key2", 
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
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified identity source to use a new identity provider
    # (IdP), or to change the mapping of identities from the IdP to a
    # different principal entity type.
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the identity source
    #   that you want to update.
    #
    # @option params [required, String] :identity_source_id
    #   Specifies the ID of the identity source that you want to update.
    #
    # @option params [required, Types::UpdateConfiguration] :update_configuration
    #   Specifies the details required to communicate with the identity
    #   provider (IdP) associated with this identity source.
    #
    # @option params [String] :principal_entity_type
    #   Specifies the data type of principals generated for identities
    #   authenticated by the identity source.
    #
    # @return [Types::UpdateIdentitySourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentitySourceOutput#created_date #created_date} => Time
    #   * {Types::UpdateIdentitySourceOutput#identity_source_id #identity_source_id} => String
    #   * {Types::UpdateIdentitySourceOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::UpdateIdentitySourceOutput#policy_store_id #policy_store_id} => String
    #
    #
    # @example Example: UpdateIdentitySource
    #
    #   # The following example updates the configuration of the specified identity source with a new configuration.
    #
    #   resp = client.update_identity_source({
    #     identity_source_id: "ISEXAMPLEabcdefg111111", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     update_configuration: {
    #       cognito_user_pool_configuration: {
    #         client_ids: [
    #           "a1b2c3d4e5f6g7h8i9j0kalbmc", 
    #         ], 
    #         user_pool_arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2023-05-19T20:30:28.173926Z"), 
    #     identity_source_id: "ISEXAMPLEabcdefg111111", 
    #     last_updated_date: Time.parse("2023-05-22T20:45:59.962216Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_source({
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #     update_configuration: { # required
    #       cognito_user_pool_configuration: {
    #         user_pool_arn: "UserPoolArn", # required
    #         client_ids: ["ClientId"],
    #         group_configuration: {
    #           group_entity_type: "GroupEntityType", # required
    #         },
    #       },
    #       open_id_connect_configuration: {
    #         issuer: "Issuer", # required
    #         entity_id_prefix: "EntityIdPrefix",
    #         group_configuration: {
    #           group_claim: "Claim", # required
    #           group_entity_type: "GroupEntityType", # required
    #         },
    #         token_selection: { # required
    #           access_token_only: {
    #             principal_id_claim: "Claim",
    #             audiences: ["Audience"],
    #           },
    #           identity_token_only: {
    #             principal_id_claim: "Claim",
    #             client_ids: ["ClientId"],
    #           },
    #         },
    #       },
    #     },
    #     principal_entity_type: "PrincipalEntityType",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.identity_source_id #=> String
    #   resp.last_updated_date #=> Time
    #   resp.policy_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdateIdentitySource AWS API Documentation
    #
    # @overload update_identity_source(params = {})
    # @param [Hash] params ({})
    def update_identity_source(params = {}, options = {})
      req = build_request(:update_identity_source, params)
      req.send_request(options)
    end

    # Modifies a Cedar static policy in the specified policy store. You can
    # change only certain elements of the [UpdatePolicyDefinition][1]
    # parameter. You can directly update only static policies. To change a
    # template-linked policy, you must update the template instead, using
    # [UpdatePolicyTemplate][2].
    #
    # <note markdown="1"> * If policy validation is enabled in the policy store, then updating a
    #   static policy causes Verified Permissions to validate the policy
    #   against the schema in the policy store. If the updated static policy
    #   doesn't pass validation, the operation fails and the update isn't
    #   stored.
    #
    # * When you edit a static policy, you can change only certain elements
    #   of a static policy:
    #
    #   * The action referenced by the policy.
    #
    #   * A condition clause, such as when and unless.
    #   You can't change these elements of a static policy:
    #
    #   * Changing a policy from a static policy to a template-linked
    #     policy.
    #
    #   * Changing the effect of a static policy from permit or forbid.
    #
    #   * The principal referenced by a static policy.
    #
    #   * The resource referenced by a static policy.
    # * To update a template-linked policy, you must update the template
    #   instead.
    #
    #  </note>
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyInput.html#amazonverifiedpermissions-UpdatePolicy-request-UpdatePolicyDefinition
    # [2]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy that you
    #   want to update.
    #
    # @option params [required, String] :policy_id
    #   Specifies the ID of the policy that you want to update. To find this
    #   value, you can use [ListPolicies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html
    #
    # @option params [required, Types::UpdatePolicyDefinition] :definition
    #   Specifies the updated policy content that you want to replace on the
    #   specified policy. The content must be valid Cedar policy language
    #   text.
    #
    #   You can change only the following elements from the policy definition:
    #
    #   * The `action` referenced by the policy.
    #
    #   * Any conditional clauses, such as `when` or `unless` clauses.
    #
    #   You **can't** change the following elements:
    #
    #   * Changing from `static` to `templateLinked`.
    #
    #   * Changing the effect of the policy from `permit` or `forbid`.
    #
    #   * The `principal` referenced by the policy.
    #
    #   * The `resource` referenced by the policy.
    #
    # @return [Types::UpdatePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyOutput#policy_store_id #policy_store_id} => String
    #   * {Types::UpdatePolicyOutput#policy_id #policy_id} => String
    #   * {Types::UpdatePolicyOutput#policy_type #policy_type} => String
    #   * {Types::UpdatePolicyOutput#principal #principal} => Types::EntityIdentifier
    #   * {Types::UpdatePolicyOutput#resource #resource} => Types::EntityIdentifier
    #   * {Types::UpdatePolicyOutput#actions #actions} => Array&lt;Types::ActionIdentifier&gt;
    #   * {Types::UpdatePolicyOutput#created_date #created_date} => Time
    #   * {Types::UpdatePolicyOutput#last_updated_date #last_updated_date} => Time
    #   * {Types::UpdatePolicyOutput#effect #effect} => String
    #
    #
    # @example Example: UpdatePolicy
    #
    #   # The following example replaces the definition of the specified static policy with a new one.
    #
    #   resp = client.update_policy({
    #     definition: {
    #       static: {
    #         statement: "permit(principal, action, resource in Album::\"public_folder\");", 
    #       }, 
    #     }, 
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"), 
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_type: "STATIC", 
    #     resource: {
    #       entity_id: "public_folder", 
    #       entity_type: "Album", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #     definition: { # required
    #       static: {
    #         description: "StaticPolicyDescription",
    #         statement: "PolicyStatement", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_id #=> String
    #   resp.policy_type #=> String, one of "STATIC", "TEMPLATE_LINKED"
    #   resp.principal.entity_type #=> String
    #   resp.principal.entity_id #=> String
    #   resp.resource.entity_type #=> String
    #   resp.resource.entity_id #=> String
    #   resp.actions #=> Array
    #   resp.actions[0].action_type #=> String
    #   resp.actions[0].action_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.effect #=> String, one of "Permit", "Forbid"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicy AWS API Documentation
    #
    # @overload update_policy(params = {})
    # @param [Hash] params ({})
    def update_policy(params = {}, options = {})
      req = build_request(:update_policy, params)
      req.send_request(options)
    end

    # Modifies the validation setting for a policy store.
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that you want to update
    #
    # @option params [required, Types::ValidationSettings] :validation_settings
    #   A structure that defines the validation settings that want to enable
    #   for the policy store.
    #
    # @option params [String] :deletion_protection
    #   Specifies whether the policy store can be deleted. If enabled, the
    #   policy store can't be deleted.
    #
    #   When you call `UpdatePolicyStore`, this parameter is unchanged unless
    #   explicitly included in the call.
    #
    # @option params [String] :description
    #   Descriptive text that you can provide to help with identification of
    #   the current policy store.
    #
    # @return [Types::UpdatePolicyStoreOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyStoreOutput#policy_store_id #policy_store_id} => String
    #   * {Types::UpdatePolicyStoreOutput#arn #arn} => String
    #   * {Types::UpdatePolicyStoreOutput#created_date #created_date} => Time
    #   * {Types::UpdatePolicyStoreOutput#last_updated_date #last_updated_date} => Time
    #
    #
    # @example Example: UpdatePolicyStore
    #
    #   # The following example turns off the validation settings for a policy store.
    #
    #   resp = client.update_policy_store({
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     validation_settings: {
    #       mode: "OFF", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:verifiedpermissions::123456789012:policy-store/C7v5xMplfFH3i3e4Jrzb1a", 
    #     created_date: Time.parse("2023-05-17T18:36:10.134448Z"), 
    #     last_updated_date: Time.parse("2023-05-23T18:18:12.443083Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy_store({
    #     policy_store_id: "PolicyStoreId", # required
    #     validation_settings: { # required
    #       mode: "OFF", # required, accepts OFF, STRICT
    #     },
    #     deletion_protection: "ENABLED", # accepts ENABLED, DISABLED
    #     description: "PolicyStoreDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.arn #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyStore AWS API Documentation
    #
    # @overload update_policy_store(params = {})
    # @param [Hash] params ({})
    def update_policy_store(params = {}, options = {})
      req = build_request(:update_policy_store, params)
      req.send_request(options)
    end

    # Updates the specified policy template. You can update only the
    # description and the some elements of the [policyBody][1].
    #
    # Changes you make to the policy template content are immediately
    # (within the constraints of eventual consistency) reflected in
    # authorization decisions that involve all template-linked policies
    # instantiated from this template.
    #
    # <note markdown="1"> Verified Permissions is <i> <a
    # href="https://wikipedia.org/wiki/Eventual_consistency">eventually
    # consistent</a> </i>. It can take a few seconds for a new or changed
    # element to propagate through the service and be visible in the results
    # of other Verified Permissions operations.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html#amazonverifiedpermissions-UpdatePolicyTemplate-request-policyBody
    #
    # @option params [required, String] :policy_store_id
    #   Specifies the ID of the policy store that contains the policy template
    #   that you want to update.
    #
    # @option params [required, String] :policy_template_id
    #   Specifies the ID of the policy template that you want to update.
    #
    # @option params [String] :description
    #   Specifies a new description to apply to the policy template.
    #
    # @option params [required, String] :statement
    #   Specifies new statement content written in Cedar policy language to
    #   replace the current body of the policy template.
    #
    #   You can change only the following elements of the policy body:
    #
    #   * The `action` referenced by the policy template.
    #
    #   * Any conditional clauses, such as `when` or `unless` clauses.
    #
    #   You **can't** change the following elements:
    #
    #   * The effect (`permit` or `forbid`) of the policy template.
    #
    #   * The `principal` referenced by the policy template.
    #
    #   * The `resource` referenced by the policy template.
    #
    # @return [Types::UpdatePolicyTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyTemplateOutput#policy_store_id #policy_store_id} => String
    #   * {Types::UpdatePolicyTemplateOutput#policy_template_id #policy_template_id} => String
    #   * {Types::UpdatePolicyTemplateOutput#created_date #created_date} => Time
    #   * {Types::UpdatePolicyTemplateOutput#last_updated_date #last_updated_date} => Time
    #
    #
    # @example Example: UpdatePolicyTemplate
    #
    #   # The following example updates a policy template with both a new description and a new policy body. The effect,
    #   # principal, and resource are the same as the original policy template. Only the action in the head, and the when and
    #   # unless clauses can be different.
    #   # Note
    #   # The JSON in the parameters of this operation are strings that can contain embedded quotation marks (") within the
    #   # outermost quotation mark pair. This requires that you stringify the JSON object by preceding all embedded quotation
    #   # marks with a backslash character ( \" ) and combining all lines into a single text line with no line breaks.
    #   # Example strings might be displayed wrapped across multiple lines here for readability, but the operation requires the
    #   # parameters be submitted as single line strings.
    #
    #   resp = client.update_policy_template({
    #     description: "My updated template description", 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_template_id: "PTEXAMPLEabcdefg111111", 
    #     statement: "\"ResearchAccess\"\npermit(\nprincipal in ?principal,\naction == Action::\"view\",\nresource in ?resource\"\n)\nwhen {\nprincipal has department && principal.department == \"research\"\n};", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse("2023-05-17T18:58:48.795411Z"), 
    #     last_updated_date: Time.parse("2023-05-17T19:18:48.870209Z"), 
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a", 
    #     policy_template_id: "PTEXAMPLEabcdefg111111", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy_template({
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #     description: "PolicyTemplateDescription",
    #     statement: "PolicyStatement", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_store_id #=> String
    #   resp.policy_template_id #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions-2021-12-01/UpdatePolicyTemplate AWS API Documentation
    #
    # @overload update_policy_template(params = {})
    # @param [Hash] params ({})
    def update_policy_template(params = {}, options = {})
      req = build_request(:update_policy_template, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::VerifiedPermissions')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-verifiedpermissions'
      context[:gem_version] = '1.49.0'
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
