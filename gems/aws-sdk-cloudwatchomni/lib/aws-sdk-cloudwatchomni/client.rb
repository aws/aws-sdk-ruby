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
require 'aws-sdk-core/plugins/protocols/rpc_v2'

module Aws::CloudWatchOmni
  # An API client for CloudWatchOmni.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudWatchOmni::Client.new(
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

    @identifier = :cloudwatchomni

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
    add_plugin(Aws::Plugins::Protocols::RpcV2)
    add_plugin(Aws::CloudWatchOmni::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
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
    #   @option options [Aws::CloudWatchOmni::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CloudWatchOmni::EndpointParameters`.
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

    # Creates an AccessGrant that authorizes a principal to perform a set of
    # actions on resources in a space.
    #
    # Optionally narrow the grant with scoped actions that limit it to
    # specific resources and fields. Use ListAccessGrants and GetAccessGrant
    # to retrieve grants, and DeleteAccessGrant to remove them.
    #
    # @option params [required, String] :domain_id
    #   The ID of the domain that contains the space.
    #
    # @option params [required, String] :space_id
    #   The ID of the space to scope the grant to.
    #
    # @option params [required, String] :name
    #   A name that identifies the access grant.
    #
    # @option params [required, Types::AccessGrantPrincipal] :principal
    #   The principal receiving the grant.
    #
    # @option params [required, String] :permission
    #   The permission to grant. Exactly one permission is granted per
    #   request.
    #
    # @option params [Array<Types::ScopedActions>] :scoped_actions
    #   Groups of actions to allow, each with the resource scopes and
    #   conditions that limit those actions.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the access grant.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAccessGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessGrantOutput#access_grant #access_grant} => Types::AccessGrant
    #
    #
    # @example Example: Create an access grant
    #
    #   # The following example creates a custom access grant that authorizes an Identity Center user to read and update a
    #   # specific dashboard in a space. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_access_grant({
    #     name: "analyst-read-access", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     domain_id: "d-1a2b3c4d5e", 
    #     permission: "CUSTOM", 
    #     principal: {
    #       principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #       principal_type: "IDC_USER", 
    #     }, 
    #     scoped_actions: [
    #       {
    #         actions: [
    #           "cloudwatch:GetOmniDashboard", 
    #           "cloudwatch:UpdateOmniDashboard", 
    #         ], 
    #         resources: [
    #           {
    #             resource_arns: [
    #               "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #             ], 
    #             resource_type: "OmniDashboard", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     access_grant: {
    #       name: "analyst-read-access", 
    #       account_id: "123456789012", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #       domain_id: "d-1a2b3c4d5e", 
    #       grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #       grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #       grant_type: "CUSTOMER_MANAGED", 
    #       permission: "CUSTOM", 
    #       principal: {
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #         principal_type: "IDC_USER", 
    #       }, 
    #       scoped_actions: [
    #         {
    #           actions: [
    #             "cloudwatch:GetOmniDashboard", 
    #             "cloudwatch:UpdateOmniDashboard", 
    #           ], 
    #           resources: [
    #             {
    #               resource_arns: [
    #                 "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #               ], 
    #               resource_type: "OmniDashboard", 
    #             }, 
    #           ], 
    #         }, 
    #       ], 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_grant({
    #     domain_id: "DomainId", # required
    #     space_id: "SpaceId", # required
    #     name: "CreateAccessGrantInputNameString", # required
    #     principal: { # required
    #       principal_type: "IDC_USER", # required, accepts IDC_USER, IDC_GROUP, IAM_USER, IAM_ROLE, IAM_ROOT, ACCESS_PROFILE, ALERT, AGENT
    #       principal_id: "PrincipalId",
    #       principal_attributes: [
    #         {
    #           key: "AccessGrantPrincipalAttributeKeyString", # required
    #           value: "AccessGrantPrincipalAttributeValueString", # required
    #         },
    #       ],
    #     },
    #     permission: "SPACE_ADMIN", # required, accepts SPACE_ADMIN, READ, READ_WRITE_DELETE, CUSTOM
    #     scoped_actions: [
    #       {
    #         actions: ["ScopedActionName"], # required
    #         resources: [
    #           {
    #             resource_type: "String", # required
    #             resource_arns: ["String"],
    #             tags: {
    #               "String" => "String",
    #             },
    #             signal_types: ["LOGS"], # accepts LOGS, TRACES
    #             row_scope_groups: [
    #               [
    #                 {
    #                   field: "RowScopeFieldString", # required
    #                   operator: "IN", # required, accepts IN
    #                   values: ["RowScopeValue"], # required
    #                 },
    #               ],
    #             ],
    #           },
    #         ],
    #         context_conditions: {
    #           "String" => ["String"],
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_grant.grant_id #=> String
    #   resp.access_grant.grant_arn #=> String
    #   resp.access_grant.name #=> String
    #   resp.access_grant.account_id #=> String
    #   resp.access_grant.domain_id #=> String
    #   resp.access_grant.principal.principal_type #=> String, one of "IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT", "ACCESS_PROFILE", "ALERT", "AGENT"
    #   resp.access_grant.principal.principal_id #=> String
    #   resp.access_grant.principal.principal_attributes #=> Array
    #   resp.access_grant.principal.principal_attributes[0].key #=> String
    #   resp.access_grant.principal.principal_attributes[0].value #=> String
    #   resp.access_grant.permission #=> String, one of "SPACE_ADMIN", "READ", "READ_WRITE_DELETE", "CUSTOM"
    #   resp.access_grant.grant_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #   resp.access_grant.created_by #=> String
    #   resp.access_grant.created_at #=> Time
    #   resp.access_grant.updated_at #=> Time
    #   resp.access_grant.space_id #=> String
    #   resp.access_grant.scoped_actions #=> Array
    #   resp.access_grant.scoped_actions[0].actions #=> Array
    #   resp.access_grant.scoped_actions[0].actions[0] #=> String
    #   resp.access_grant.scoped_actions[0].resources #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].resource_type #=> String
    #   resp.access_grant.scoped_actions[0].resources[0].resource_arns #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].resource_arns[0] #=> String
    #   resp.access_grant.scoped_actions[0].resources[0].tags #=> Hash
    #   resp.access_grant.scoped_actions[0].resources[0].tags["String"] #=> String
    #   resp.access_grant.scoped_actions[0].resources[0].signal_types #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].signal_types[0] #=> String, one of "LOGS", "TRACES"
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0] #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0][0].field #=> String
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0][0].operator #=> String, one of "IN"
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0][0].values #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0][0].values[0] #=> String
    #   resp.access_grant.scoped_actions[0].context_conditions #=> Hash
    #   resp.access_grant.scoped_actions[0].context_conditions["String"] #=> Array
    #   resp.access_grant.scoped_actions[0].context_conditions["String"][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAccessGrant AWS API Documentation
    #
    # @overload create_access_grant(params = {})
    # @param [Hash] params ({})
    def create_access_grant(params = {}, options = {})
      req = build_request(:create_access_grant, params)
      req.send_request(options)
    end

    # Creates an access profile in a space.
    #
    # Use GetAccessProfile and ListAccessProfiles to retrieve profiles, and
    # UpdateAccessProfile to modify one.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space to create the profile in.
    #
    # @option params [required, String] :name
    #   A name that identifies the access profile.
    #
    # @option params [String] :description
    #   An optional description of the access profile.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the access profile.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAccessProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessProfileOutput#access_profile #access_profile} => Types::AccessProfile
    #
    #
    # @example Example: Create an access profile
    #
    #   # The following example creates a customer-managed access profile in a space. Payloads are shown as JSON; on the wire they
    #   # are CBOR-encoded.
    #
    #   resp = client.create_access_profile({
    #     name: "Analyst read-only profile", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     description: "Read-only access for analysts.", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     access_profile: {
    #       name: "Analyst read-only profile", 
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/analyst-readonly", 
    #       assume_status: "ALLOWED", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       description: "Read-only access for analysts.", 
    #       profile_id: "analyst-readonly", 
    #       profile_type: "CUSTOMER_MANAGED", 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_profile({
    #     space_id: "SpaceId", # required
    #     name: "AccessProfileName", # required
    #     description: "CreateAccessProfileInputDescriptionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_profile.profile_id #=> String
    #   resp.access_profile.space_id #=> String
    #   resp.access_profile.arn #=> String
    #   resp.access_profile.name #=> String
    #   resp.access_profile.description #=> String
    #   resp.access_profile.created_at #=> Time
    #   resp.access_profile.updated_at #=> Time
    #   resp.access_profile.assume_status #=> String, one of "ALLOWED", "DENIED"
    #   resp.access_profile.profile_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAccessProfile AWS API Documentation
    #
    # @overload create_access_profile(params = {})
    # @param [Hash] params ({})
    def create_access_profile(params = {}, options = {})
      req = build_request(:create_access_profile, params)
      req.send_request(options)
    end

    # Creates a new alert within a space.
    #
    # Use GetAlert and ListAlerts to retrieve alerts, UpdateAlert to modify
    # one, and DeleteAlert to remove it.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space to create the alert in.
    #
    # @option params [required, String] :profile_id
    #   The ID of the access profile the alert uses to evaluate its query and
    #   execute notifications. The caller supplies it: there is no managed
    #   alert profile, and the service does not pick one on the caller's
    #   behalf.
    #
    # @option params [required, String] :name
    #   Alert name, for display. Max 256 (the AlarmName budget). Not the
    #   alert's identity: the backend mints a separate uuid as the \{@link
    #   AlertId}, so the name need not be unique within a space and addressing
    #   an alert never depends on it. UpdateAlert accepts a new name to rename
    #   the alert.
    #
    # @option params [String] :description
    #   An optional description of the alert.
    #
    # @option params [required, Types::Rule] :rule
    #   The rule that defines how the alert is evaluated.
    #
    # @option params [Boolean] :notifications_enabled
    #   Whether actions (notifications) are enabled for this alert. Defaults
    #   to true when omitted.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the alert.
    #
    # @option params [Array<Types::NotificationRule>] :notification_rules
    #   The notification rules that determine when and where notifications are
    #   sent.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   within the idempotency window returns the original alert instead of
    #   creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAlertOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAlertOutput#alert_arn #alert_arn} => String
    #   * {Types::CreateAlertOutput#alert #alert} => Types::Alert
    #
    #
    # @example Example: Create an alert on a field value
    #
    #   # The following example creates an alert whose threshold is compared against a named field of each result row, so every
    #   # service the query groups by is tracked as its own contributor. FIELD_VALUE requires thresholdField. Payloads are shown
    #   # as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_alert({
    #     name: "service-error-count-elevated", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     description: "Alerts when a service logs more errors than its accepted rate.", 
    #     notification_rules: [
    #       {
    #         target: {
    #           metadata: {
    #             "channel" => "oncall-alerts", 
    #           }, 
    #           type: "slack", 
    #           arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #         }, 
    #         trigger: {
    #           state_values: [
    #             "CRITICAL", 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #     notifications_enabled: true, 
    #     profile_id: "analyst-readonly", 
    #     rule: {
    #       telemetry_rule: {
    #         condition: {
    #           comparator: "GT", 
    #           critical_threshold: 200.0, 
    #           threshold_field: "error_count", 
    #           threshold_mode: "FIELD_VALUE", 
    #           warning_threshold: 50.0, 
    #         }, 
    #         evaluation: {
    #           interval_seconds: 300, 
    #           pending_duration_seconds: 600, 
    #           recovery_duration_seconds: 300, 
    #         }, 
    #         no_data: {
    #           treat_as: "NODATA", 
    #         }, 
    #         query: {
    #           expression: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service", 
    #           language: "SQL", 
    #         }, 
    #       }, 
    #     }, 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alert: {
    #       name: "service-error-count-elevated", 
    #       account_id: "123456789012", 
    #       alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #       alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       description: "Alerts when a service logs more errors than its accepted rate.", 
    #       notification_rules: [
    #         {
    #           target: {
    #             metadata: {
    #               "channel" => "oncall-alerts", 
    #             }, 
    #             type: "slack", 
    #             arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #           }, 
    #           trigger: {
    #             state_values: [
    #               "CRITICAL", 
    #             ], 
    #           }, 
    #         }, 
    #       ], 
    #       notification_status: "ENABLED", 
    #       profile_id: "analyst-readonly", 
    #       rule: {
    #         telemetry_rule: {
    #           condition: {
    #             comparator: "GT", 
    #             critical_threshold: 200.0, 
    #             threshold_field: "error_count", 
    #             threshold_mode: "FIELD_VALUE", 
    #             warning_threshold: 50.0, 
    #           }, 
    #           evaluation: {
    #             interval_seconds: 300, 
    #             pending_duration_seconds: 600, 
    #             recovery_duration_seconds: 300, 
    #           }, 
    #           no_data: {
    #             treat_as: "NODATA", 
    #           }, 
    #           query: {
    #             expression: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service", 
    #             language: "SQL", 
    #           }, 
    #         }, 
    #       }, 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Example: Create an alert on the number of matching rows
    #
    #   # The following example creates an alert whose threshold is compared against how many rows the query returns, rather than
    #   # a value within them. COUNT_OF_RESULTS takes no thresholdField. Notifications are created disabled, so the alert
    #   # evaluates and records state without sending anything, and an empty result set is treated as OK rather than as missing
    #   # data. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_alert({
    #     name: "service-checkout-5xx-responses", 
    #     description: "Counts checkout responses that returned a server error.", 
    #     notifications_enabled: false, 
    #     profile_id: "analyst-readonly", 
    #     rule: {
    #       telemetry_rule: {
    #         condition: {
    #           comparator: "GT", 
    #           critical_threshold: 50.0, 
    #           threshold_mode: "COUNT_OF_RESULTS", 
    #           warning_threshold: 10.0, 
    #         }, 
    #         evaluation: {
    #           interval_seconds: 60, 
    #           pending_duration_seconds: 120, 
    #         }, 
    #         no_data: {
    #           treat_as: "OK", 
    #         }, 
    #         query: {
    #           expression: "SELECT * FROM \"logs.default\" WHERE resource['attributes']['service.name'] = 'checkout' AND attributes['http.response.status_code'] >= 500", 
    #           language: "SQL", 
    #         }, 
    #       }, 
    #     }, 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alert: {
    #       name: "service-checkout-5xx-responses", 
    #       account_id: "123456789012", 
    #       alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/d4e5f6a78b9c4d0e9f1a2b3c4d5e6f70", 
    #       alert_id: "d4e5f6a78b9c4d0e9f1a2b3c4d5e6f70", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       description: "Counts checkout responses that returned a server error.", 
    #       notification_status: "DISABLED", 
    #       profile_id: "analyst-readonly", 
    #       rule: {
    #         telemetry_rule: {
    #           condition: {
    #             comparator: "GT", 
    #             critical_threshold: 50.0, 
    #             threshold_mode: "COUNT_OF_RESULTS", 
    #             warning_threshold: 10.0, 
    #           }, 
    #           evaluation: {
    #             interval_seconds: 60, 
    #             pending_duration_seconds: 120, 
    #           }, 
    #           no_data: {
    #             treat_as: "OK", 
    #           }, 
    #           query: {
    #             expression: "SELECT * FROM \"logs.default\" WHERE resource['attributes']['service.name'] = 'checkout' AND attributes['http.response.status_code'] >= 500", 
    #             language: "SQL", 
    #           }, 
    #         }, 
    #       }, 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Example: Create an alert from a PromQL query
    #
    #   # The following example creates an alert from a PromQL expression instead of SQL. A PromQL rule compares against the
    #   # series value, which is carried as the `value` field, so the condition is FIELD_VALUE with thresholdField set to `value`.
    #   # Notifications go to an Amazon SNS topic, whose ARN is the topic itself rather than an integration. Payloads are shown as
    #   # JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_alert({
    #     name: "checkout-error-rate-promql", 
    #     description: "Alerts on the checkout server error rate over a five-minute window.", 
    #     notification_rules: [
    #       {
    #         target: {
    #           type: "sns", 
    #           arn: "arn:aws:sns:us-east-1:123456789012:checkout-oncall", 
    #         }, 
    #         trigger: {
    #           state_values: [
    #             "WARNING", 
    #             "CRITICAL", 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #     profile_id: "analyst-readonly", 
    #     rule: {
    #       telemetry_rule: {
    #         condition: {
    #           comparator: "GT", 
    #           critical_threshold: 0.1, 
    #           threshold_field: "value", 
    #           threshold_mode: "FIELD_VALUE", 
    #           warning_threshold: 0.05, 
    #         }, 
    #         evaluation: {
    #           interval_seconds: 300, 
    #           pending_duration_seconds: 300, 
    #         }, 
    #         no_data: {
    #           treat_as: "NODATA", 
    #         }, 
    #         query: {
    #           expression: "sum by (service_name) (rate(http_server_errors_total{service_name=\"checkout\"}[5m]))", 
    #           language: "PROMQL", 
    #         }, 
    #       }, 
    #     }, 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alert: {
    #       name: "checkout-error-rate-promql", 
    #       account_id: "123456789012", 
    #       alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/e5f6a78b9c0d4e1f8a2b3c4d5e6f7081", 
    #       alert_id: "e5f6a78b9c0d4e1f8a2b3c4d5e6f7081", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       description: "Alerts on the checkout server error rate over a five-minute window.", 
    #       notification_rules: [
    #         {
    #           target: {
    #             type: "sns", 
    #             arn: "arn:aws:sns:us-east-1:123456789012:checkout-oncall", 
    #           }, 
    #           trigger: {
    #             state_values: [
    #               "WARNING", 
    #               "CRITICAL", 
    #             ], 
    #           }, 
    #         }, 
    #       ], 
    #       notification_status: "ENABLED", 
    #       profile_id: "analyst-readonly", 
    #       rule: {
    #         telemetry_rule: {
    #           condition: {
    #             comparator: "GT", 
    #             critical_threshold: 0.1, 
    #             threshold_field: "value", 
    #             threshold_mode: "FIELD_VALUE", 
    #             warning_threshold: 0.05, 
    #           }, 
    #           evaluation: {
    #             interval_seconds: 300, 
    #             pending_duration_seconds: 300, 
    #           }, 
    #           no_data: {
    #             treat_as: "NODATA", 
    #           }, 
    #           query: {
    #             expression: "sum by (service_name) (rate(http_server_errors_total{service_name=\"checkout\"}[5m]))", 
    #             language: "PROMQL", 
    #           }, 
    #         }, 
    #       }, 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alert({
    #     space_id: "SpaceId", # required
    #     profile_id: "ProfileId", # required
    #     name: "CreateAlertInputNameString", # required
    #     description: "CreateAlertInputDescriptionString",
    #     rule: { # required
    #       telemetry_rule: {
    #         query: {
    #           language: "SQL", # required, accepts SQL, PROMQL
    #           expression: "AlertRuleQueryExpressionString", # required
    #         },
    #         condition: {
    #           threshold_mode: "COUNT_OF_RESULTS", # accepts COUNT_OF_RESULTS, FIELD_VALUE
    #           threshold_field: "AlertConditionThresholdFieldString",
    #           comparator: "GT", # accepts GT, LT, GTE, LTE
    #           warning_threshold: 1.0,
    #           critical_threshold: 1.0,
    #         },
    #         evaluation: {
    #           interval_seconds: 1, # required
    #           pending_duration_seconds: 1,
    #           recovery_duration_seconds: 1,
    #         },
    #         no_data: {
    #           treat_as: "OK", # required, accepts OK, WARNING, CRITICAL, NODATA
    #         },
    #       },
    #     },
    #     notifications_enabled: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     notification_rules: [
    #       {
    #         trigger: { # required
    #           state_values: ["OK"], # accepts OK, WARNING, CRITICAL, NODATA
    #         },
    #         target: { # required
    #           type: "sns", # required, accepts sns, slack, pagerduty
    #           arn: "NotificationTargetArnString", # required
    #           metadata: {
    #             "NotificationTargetMetadataMapKeyString" => "NotificationTargetMetadataMapValueString",
    #           },
    #         },
    #       },
    #     ],
    #     client_token: "CreateAlertInputClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.alert_arn #=> String
    #   resp.alert.name #=> String
    #   resp.alert.alert_id #=> String
    #   resp.alert.description #=> String
    #   resp.alert.account_id #=> String
    #   resp.alert.space_id #=> String
    #   resp.alert.profile_id #=> String
    #   resp.alert.rule.telemetry_rule.query.language #=> String, one of "SQL", "PROMQL"
    #   resp.alert.rule.telemetry_rule.query.expression #=> String
    #   resp.alert.rule.telemetry_rule.condition.threshold_mode #=> String, one of "COUNT_OF_RESULTS", "FIELD_VALUE"
    #   resp.alert.rule.telemetry_rule.condition.threshold_field #=> String
    #   resp.alert.rule.telemetry_rule.condition.comparator #=> String, one of "GT", "LT", "GTE", "LTE"
    #   resp.alert.rule.telemetry_rule.condition.warning_threshold #=> Float
    #   resp.alert.rule.telemetry_rule.condition.critical_threshold #=> Float
    #   resp.alert.rule.telemetry_rule.evaluation.interval_seconds #=> Integer
    #   resp.alert.rule.telemetry_rule.evaluation.pending_duration_seconds #=> Integer
    #   resp.alert.rule.telemetry_rule.evaluation.recovery_duration_seconds #=> Integer
    #   resp.alert.rule.telemetry_rule.no_data.treat_as #=> String, one of "OK", "WARNING", "CRITICAL", "NODATA"
    #   resp.alert.notification_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.alert.state.value #=> String, one of "OK", "WARNING", "CRITICAL", "NODATA"
    #   resp.alert.state.transitioned_at #=> Time
    #   resp.alert.state.contributor_summary.warning_count #=> Integer
    #   resp.alert.state.contributor_summary.critical_count #=> Integer
    #   resp.alert.state.data.threshold_breached #=> Float
    #   resp.alert.notification_rules #=> Array
    #   resp.alert.notification_rules[0].trigger.state_values #=> Array
    #   resp.alert.notification_rules[0].trigger.state_values[0] #=> String, one of "OK", "WARNING", "CRITICAL", "NODATA"
    #   resp.alert.notification_rules[0].target.type #=> String, one of "sns", "slack", "pagerduty"
    #   resp.alert.notification_rules[0].target.arn #=> String
    #   resp.alert.notification_rules[0].target.metadata #=> Hash
    #   resp.alert.notification_rules[0].target.metadata["NotificationTargetMetadataMapKeyString"] #=> String
    #   resp.alert.created_at #=> Time
    #   resp.alert.updated_at #=> Time
    #   resp.alert.alert_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateAlert AWS API Documentation
    #
    # @overload create_alert(params = {})
    # @param [Hash] params ({})
    def create_alert(params = {}, options = {})
      req = build_request(:create_alert, params)
      req.send_request(options)
    end

    # Creates a domain with identity provider configuration.
    #
    # Use GetDomain to retrieve the domain, UpdateDomain to change its
    # configuration, and CreateSpace to add spaces within it.
    #
    # @option params [required, String] :name
    #   A name that identifies the domain. Must be 3-63 characters: lowercase
    #   letters, numbers, and hyphens. It must begin and end with a letter or
    #   number and cannot contain consecutive hyphens.
    #
    # @option params [required, Array<String>] :identity_providers
    #   The identity providers to configure for the domain.
    #
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Identity provider configuration for the domain.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the domain.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainOutput#domain #domain} => Types::Domain
    #
    #
    # @example Example: Create a domain
    #
    #   # The following example creates an Identity Center domain and configures it with an Identity Center instance. The name
    #   # must be 3-63 characters of lowercase letters, numbers, and hyphens, and the endpoint URLs are derived from it. Payloads
    #   # are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_domain({
    #     name: "prod-observability", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #       }, 
    #     }, 
    #     identity_providers: [
    #       "IDC", 
    #     ], 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     domain: {
    #       name: "prod-observability", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       custom_endpoint_urls: [
    #         "https://prod-observability.cloudwatch-omni.global.app.aws", 
    #       ], 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #       domain_endpoint_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws", 
    #       domain_id: "d-1a2b3c4d5e", 
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938", 
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #         }, 
    #       }, 
    #       identity_providers: [
    #         "IDC", 
    #       ], 
    #       region: "us-east-1", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     name: "CreateDomainInputNameString", # required
    #     identity_providers: ["IAM"], # required, accepts IAM, IDC
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.domain_id #=> String
    #   resp.domain.domain_arn #=> String
    #   resp.domain.name #=> String
    #   resp.domain.identity_providers #=> Array
    #   resp.domain.identity_providers[0] #=> String, one of "IAM", "IDC"
    #   resp.domain.identity_provider_configuration.identity_center_configuration.identity_center_instance_arn #=> String
    #   resp.domain.domain_endpoint_url #=> String
    #   resp.domain.custom_endpoint_urls #=> Array
    #   resp.domain.custom_endpoint_urls[0] #=> String
    #   resp.domain.identity_center_application_arn #=> String
    #   resp.domain.region #=> String
    #   resp.domain.created_at #=> Time
    #   resp.domain.updated_at #=> Time
    #   resp.domain.status #=> String, one of "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates an AccessGrant that authorizes a principal to administer an
    # organization domain.
    #
    # @option params [required, String] :domain_id
    #   The ID of the organization domain to create the grant on.
    #
    # @option params [required, String] :name
    #   A name that identifies the access grant.
    #
    # @option params [required, Types::OrganizationAccessGrantPrincipal] :principal
    #   The principal receiving the grant.
    #
    # @option params [required, String] :permission
    #   The permission to grant.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the access grant.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDomainAccessGrantForOrganizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainAccessGrantForOrganizationOutput#access_grant #access_grant} => Types::OrganizationAccessGrant
    #
    #
    # @example Example: Create an organization domain access grant
    #
    #   # The following example grants an Identity Center user administrative access to an organization domain. Payloads are shown
    #   # as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_domain_access_grant_for_organization({
    #     name: "org-domain-admin", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     domain_id: "d-1a2b3c4d5e", 
    #     permission: "ADMIN", 
    #     principal: {
    #       principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #       principal_type: "IDC_USER", 
    #     }, 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     access_grant: {
    #       name: "org-domain-admin", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #       domain_id: "d-1a2b3c4d5e", 
    #       grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #       grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #       grant_type: "CUSTOMER_MANAGED", 
    #       permission: "ADMIN", 
    #       principal: {
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #         principal_type: "IDC_USER", 
    #       }, 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_access_grant_for_organization({
    #     domain_id: "DomainId", # required
    #     name: "CreateDomainAccessGrantForOrganizationInputNameString", # required
    #     principal: { # required
    #       principal_type: "IDC_USER", # required, accepts IDC_USER, IDC_GROUP, IAM_USER, IAM_ROLE, IAM_ROOT
    #       principal_id: "OrganizationPrincipalId",
    #       principal_attributes: [
    #         {
    #           key: "AccessGrantPrincipalAttributeKeyString", # required
    #           value: "AccessGrantPrincipalAttributeValueString", # required
    #         },
    #       ],
    #     },
    #     permission: "ADMIN", # required, accepts ADMIN
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_grant.grant_id #=> String
    #   resp.access_grant.grant_arn #=> String
    #   resp.access_grant.name #=> String
    #   resp.access_grant.domain_id #=> String
    #   resp.access_grant.principal.principal_type #=> String, one of "IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT"
    #   resp.access_grant.principal.principal_id #=> String
    #   resp.access_grant.principal.principal_attributes #=> Array
    #   resp.access_grant.principal.principal_attributes[0].key #=> String
    #   resp.access_grant.principal.principal_attributes[0].value #=> String
    #   resp.access_grant.permission #=> String, one of "ADMIN"
    #   resp.access_grant.grant_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #   resp.access_grant.created_by #=> String
    #   resp.access_grant.created_at #=> Time
    #   resp.access_grant.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomainAccessGrantForOrganization AWS API Documentation
    #
    # @overload create_domain_access_grant_for_organization(params = {})
    # @param [Hash] params ({})
    def create_domain_access_grant_for_organization(params = {}, options = {})
      req = build_request(:create_domain_access_grant_for_organization, params)
      req.send_request(options)
    end

    # Creates an organization-scoped domain for the caller's AWS
    # Organization. Only the organization's management account can call
    # this operation.
    #
    # @option params [required, String] :name
    #   A name that identifies the organization domain. Must be 3-63
    #   characters: lowercase letters, numbers, and hyphens. It must begin and
    #   end with a letter or number and cannot contain consecutive hyphens.
    #
    # @option params [required, Array<String>] :identity_providers
    #   The identity providers to configure for the domain.
    #
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Identity provider configuration for the domain.
    #
    # @option params [required, String] :domain_access_role_arn
    #   The ARN of an IAM role in the management account used for domain
    #   access. You must create this role, and its trust policy must allow the
    #   service principal to assume it.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the domain.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDomainForOrganizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainForOrganizationOutput#organization_domain #organization_domain} => Types::OrganizationDomain
    #
    #
    # @example Example: Create an organization domain
    #
    #   # The following example creates an organization-scoped domain from the organization's management account, configures it
    #   # with an Identity Center instance, and supplies an IAM role in the management account for domain access. Payloads are
    #   # shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_domain_for_organization({
    #     name: "prod-observability-org", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     domain_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchOrganizationDomainAccessRole", 
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #       }, 
    #     }, 
    #     identity_providers: [
    #       "IDC", 
    #     ], 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organization_domain: {
    #       name: "prod-observability-org", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       custom_endpoint_urls: [
    #         "https://prod-observability-org.cloudwatch-omni.global.app.aws", 
    #       ], 
    #       domain_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchOrganizationDomainAccessRole", 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-domain/d-9z8y7x6w5v", 
    #       domain_endpoint_url: "https://d-9z8y7x6w5v.cloudwatch-omni.global.app.aws", 
    #       domain_id: "d-9z8y7x6w5v", 
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938", 
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #         }, 
    #       }, 
    #       identity_providers: [
    #         "IDC", 
    #       ], 
    #       organization_id: "o-a1b2c3d4e5", 
    #       owner_account_id: "123456789012", 
    #       region: "us-east-1", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_for_organization({
    #     name: "CreateDomainForOrganizationInputNameString", # required
    #     identity_providers: ["IAM"], # required, accepts IAM, IDC
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn",
    #       },
    #     },
    #     domain_access_role_arn: "IamRoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_domain.domain_id #=> String
    #   resp.organization_domain.domain_arn #=> String
    #   resp.organization_domain.name #=> String
    #   resp.organization_domain.domain_endpoint_url #=> String
    #   resp.organization_domain.custom_endpoint_urls #=> Array
    #   resp.organization_domain.custom_endpoint_urls[0] #=> String
    #   resp.organization_domain.organization_id #=> String
    #   resp.organization_domain.owner_account_id #=> String
    #   resp.organization_domain.identity_providers #=> Array
    #   resp.organization_domain.identity_providers[0] #=> String, one of "IAM", "IDC"
    #   resp.organization_domain.identity_provider_configuration.identity_center_configuration.identity_center_instance_arn #=> String
    #   resp.organization_domain.identity_center_application_arn #=> String
    #   resp.organization_domain.region #=> String
    #   resp.organization_domain.status #=> String, one of "ACTIVE"
    #   resp.organization_domain.domain_access_role_arn #=> String
    #   resp.organization_domain.created_at #=> Time
    #   resp.organization_domain.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateDomainForOrganization AWS API Documentation
    #
    # @overload create_domain_for_organization(params = {})
    # @param [Hash] params ({})
    def create_domain_for_organization(params = {}, options = {})
      req = build_request(:create_domain_for_organization, params)
      req.send_request(options)
    end

    # Creates an integration with a third-party provider. Returns the
    # integration identifier and its initial status; when the provider
    # requires interactive consent, an authorization URL is returned for the
    # user to complete setup.
    #
    # @option params [required, String] :integration_type
    #   The type of third-party provider to integrate with.
    #
    # @option params [required, String] :name
    #   The name for the new integration; unique within the account.
    #
    # @option params [Types::IntegrationCredential] :credential
    #   The credential used to authenticate with the third-party provider.
    #
    # @option params [Hash<String,String>] :integration_attributes
    #   Provider-specific attributes to associate with the integration.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name of the IAM role assumed to access the
    #   integration.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to apply to the integration at creation time (Tagris
    #   tag-on-create).
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   returns the original integration instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateIntegrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationOutput#integration #integration} => Types::Integration
    #
    #
    # @example Example: Create an AWS integration
    #
    #   # The following example creates an AWS_INTEGRATION named my-aws-integration, authorized by an IAM role. Payloads are shown
    #   # as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_integration({
    #     name: "my-aws-integration", 
    #     client_token: "b3f8c7d6-5b4a-4c3d-9e2f-1a0b2c3d4e5f", 
    #     integration_type: "AWS_INTEGRATION", 
    #     role_arn: "arn:aws:iam::123456789012:role/service-role/CloudWatchIntegrationRole", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     integration: {
    #       name: "my-aws-integration", 
    #       created_at: Time.parse("2026-09-16T00:03:00Z"), 
    #       integration_arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       integration_type: "AWS_INTEGRATION", 
    #       role_arn: "arn:aws:iam::123456789012:role/service-role/CloudWatchIntegrationRole", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T00:03:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration({
    #     integration_type: "AWS_CONFIG_SLREC", # required, accepts AWS_CONFIG_SLREC, SLACK, EXTERNAL_AGENT, AWS_INTEGRATION
    #     name: "CreateIntegrationInputNameString", # required
    #     credential: {
    #       oauth_code_credential: {
    #         auth_code: "OAuthCodeCredentialAuthCodeString", # required
    #       },
    #       oauth_client_credential: {
    #         client_id: "String", # required
    #         client_secret: "SensitiveString", # required
    #         provider_id: "String",
    #       },
    #       api_key_credential: {
    #         api_key_value: "ApiKeyCredentialApiKeyValueString", # required
    #       },
    #     },
    #     integration_attributes: {
    #       "CreateIntegrationInputIntegrationAttributesMapKeyString" => "CreateIntegrationInputIntegrationAttributesMapValueString",
    #     },
    #     role_arn: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "CreateIntegrationInputClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.integration.integration_id #=> String
    #   resp.integration.integration_arn #=> String
    #   resp.integration.integration_type #=> String, one of "AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"
    #   resp.integration.name #=> String
    #   resp.integration.status #=> String, one of "ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"
    #   resp.integration.auth_type #=> String, one of "NONE", "OAUTH2", "API_KEY"
    #   resp.integration.credential_arn #=> String
    #   resp.integration.role_arn #=> String
    #   resp.integration.integration_attributes #=> Hash
    #   resp.integration.integration_attributes["StringMapKeyString"] #=> String
    #   resp.integration.authorization_url #=> String
    #   resp.integration.error_message #=> String
    #   resp.integration.created_at #=> Time
    #   resp.integration.updated_at #=> Time
    #   resp.integration.scope #=> String, one of "ACCOUNT", "ORGANIZATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateIntegration AWS API Documentation
    #
    # @overload create_integration(params = {})
    # @param [Hash] params ({})
    def create_integration(params = {}, options = {})
      req = build_request(:create_integration, params)
      req.send_request(options)
    end

    # Creates a new dashboard within a space.
    #
    # Use GetOmniDashboard and ListOmniDashboards to retrieve dashboards,
    # UpdateOmniDashboard to modify one, and DeleteOmniDashboard to remove
    # it.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space to create the dashboard in.
    #
    # @option params [required, String] :name
    #   A name that identifies the dashboard.
    #
    # @option params [required, String] :body
    #   The dashboard definition, as a JSON document. Maximum 1 MiB.
    #
    # @option params [String] :description
    #   An optional description of the dashboard.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the dashboard.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateOmniDashboardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOmniDashboardOutput#omni_dashboard #omni_dashboard} => Types::OmniDashboard
    #
    #
    # @example Example: Create a dashboard
    #
    #   # The following example creates a dashboard in a space from a JSON dashboard definition. Payloads are shown as JSON; on
    #   # the wire they are CBOR-encoded.
    #
    #   resp = client.create_omni_dashboard({
    #     name: "service-health-overview", 
    #     body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":12,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors\"}}]}", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     description: "Overview of service health metrics.", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     omni_dashboard: {
    #       name: "service-health-overview", 
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #       body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":12,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors\"}}]}", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #       dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #       description: "Overview of service health metrics.", 
    #       tags: {
    #         "Team" => "observability", 
    #       }, 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_omni_dashboard({
    #     space_id: "SpaceId", # required
    #     name: "CreateOmniDashboardInputNameString", # required
    #     body: "CreateOmniDashboardInputBodyString", # required
    #     description: "CreateOmniDashboardInputDescriptionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.omni_dashboard.dashboard_id #=> String
    #   resp.omni_dashboard.arn #=> String
    #   resp.omni_dashboard.name #=> String
    #   resp.omni_dashboard.body #=> String
    #   resp.omni_dashboard.created_by #=> String
    #   resp.omni_dashboard.description #=> String
    #   resp.omni_dashboard.tags #=> Hash
    #   resp.omni_dashboard.tags["TagKey"] #=> String
    #   resp.omni_dashboard.created_at #=> Time
    #   resp.omni_dashboard.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateOmniDashboard AWS API Documentation
    #
    # @overload create_omni_dashboard(params = {})
    # @param [Hash] params ({})
    def create_omni_dashboard(params = {}, options = {})
      req = build_request(:create_omni_dashboard, params)
      req.send_request(options)
    end

    # Generates a one-time code for deep-link authentication.
    #
    # Direct the user's browser to the returned deepLinkUrl before it
    # expires. The code is exchanged for an authenticated, domain-scoped
    # session and can be used only once.
    #
    # @option params [required, String] :domain_id
    #   The ID of the domain to generate the code for.
    #
    # @option params [Integer] :ttl_seconds
    #   How long the code remains valid, in seconds. Defaults to 300.
    #
    # @option params [String] :redirect_url
    #   The URL to redirect to after the deep-link code is used. Must be an
    #   HTTPS URL in the domain with a path of /auth/callback, and cannot
    #   include a query string or fragment. If omitted, no redirect is
    #   applied.
    #
    # @return [Types::CreateOneTimeDeepLinkCodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOneTimeDeepLinkCodeOutput#code #code} => String
    #   * {Types::CreateOneTimeDeepLinkCodeOutput#deep_link_url #deep_link_url} => String
    #   * {Types::CreateOneTimeDeepLinkCodeOutput#expires_at #expires_at} => Time
    #
    #
    # @example Example: Create a one-time deep-link code
    #
    #   # The following example creates a one-time deep-link code for a domain that remains valid for 300 seconds and, once used,
    #   # redirects the browser to the domain's /auth/callback path. Direct the user's browser to the returned deepLinkUrl before
    #   # it expires; the code can be used only once. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_one_time_deep_link_code({
    #     domain_id: "d-1a2b3c4d5e", 
    #     redirect_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws/auth/callback", 
    #     ttl_seconds: 300, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code: "dlc-EXAMPLE1234567890", 
    #     deep_link_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws/deeplink?code=EXAMPLE1234567890", 
    #     expires_at: Time.parse("2026-09-16T14:27:31Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_one_time_deep_link_code({
    #     domain_id: "DomainId", # required
    #     ttl_seconds: 1,
    #     redirect_url: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.code #=> String
    #   resp.deep_link_url #=> String
    #   resp.expires_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateOneTimeDeepLinkCode AWS API Documentation
    #
    # @overload create_one_time_deep_link_code(params = {})
    # @param [Hash] params ({})
    def create_one_time_deep_link_code(params = {}, options = {})
      req = build_request(:create_one_time_deep_link_code, params)
      req.send_request(options)
    end

    # Creates a space in a domain.
    #
    # Use GetSpace to retrieve the space, ListSpaces to enumerate spaces,
    # UpdateSpace to modify it, and DeleteSpace to remove it.
    #
    # @option params [required, String] :name
    #   A name that identifies the space. Must be 3-64 characters: lowercase
    #   letters, numbers, and hyphens. It must begin and end with a letter or
    #   number and cannot contain consecutive hyphens.
    #
    # @option params [required, String] :domain_id
    #   The ID of the domain to create the space in.
    #
    # @option params [required, String] :data_access_role_arn
    #   The ARN of the IAM role used for data access. The role must be in the
    #   caller's account.
    #
    # @option params [String] :agent_core_evaluation_role_arn
    #   The ARN of the IAM role used by AgentCore online evaluation. Must be
    #   in the caller's account. Omit if the space does not use AgentCore
    #   online evaluation.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   How to encrypt the space's data at rest. Omit for service owned
    #   encryption, which is equivalent to passing `encryptionStrategy`
    #   AWS\_OWNED.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the space.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSpaceOutput#space #space} => Types::Space
    #
    #
    # @example Example: Create a space
    #
    #   # The following example creates a space in a domain and encrypts its data at rest with a customer managed KMS key. The
    #   # name must be 3-64 characters of lowercase letters, numbers, and hyphens. Payloads are shown as JSON; on the wire they
    #   # are CBOR-encoded.
    #
    #   resp = client.create_space({
    #     name: "prod-observability", 
    #     agent_core_evaluation_role_arn: "arn:aws:iam::123456789012:role/CloudWatchAgentCoreEvaluationRole", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     data_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchSpaceDataAccessRole", 
    #     domain_id: "d-1a2b3c4d5e", 
    #     encryption_configuration: {
    #       encryption_strategy: "CUSTOMER_MANAGED", 
    #       kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     }, 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     space: {
    #       name: "prod-observability", 
    #       agent_core_evaluation_role_arn: "arn:aws:iam::123456789012:role/CloudWatchAgentCoreEvaluationRole", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       data_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchSpaceDataAccessRole", 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #       encryption_configuration: {
    #         encryption_strategy: "CUSTOMER_MANAGED", 
    #         kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       }, 
    #       owner_account_id: "123456789012", 
    #       region: "us-east-1", 
    #       space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_space({
    #     name: "CreateSpaceInputNameString", # required
    #     domain_id: "DomainId", # required
    #     data_access_role_arn: "Arn", # required
    #     agent_core_evaluation_role_arn: "Arn",
    #     encryption_configuration: {
    #       encryption_strategy: "AWS_OWNED", # required, accepts AWS_OWNED, CUSTOMER_MANAGED
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.space.space_id #=> String
    #   resp.space.name #=> String
    #   resp.space.space_arn #=> String
    #   resp.space.domain_arn #=> String
    #   resp.space.region #=> String
    #   resp.space.owner_account_id #=> String
    #   resp.space.data_access_role_arn #=> String
    #   resp.space.created_at #=> Time
    #   resp.space.updated_at #=> Time
    #   resp.space.agent_core_evaluation_role_arn #=> String
    #   resp.space.status #=> String, one of "ACTIVE", "SUSPENDED", "MOVING"
    #   resp.space.status_reason #=> String
    #   resp.space.encryption_configuration.encryption_strategy #=> String, one of "AWS_OWNED", "CUSTOMER_MANAGED"
    #   resp.space.encryption_configuration.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateSpace AWS API Documentation
    #
    # @overload create_space(params = {})
    # @param [Hash] params ({})
    def create_space(params = {}, options = {})
      req = build_request(:create_space, params)
      req.send_request(options)
    end

    # Creates a new SQL view.
    #
    # A view is a named, reusable SQL query that can be referenced from
    # telemetry queries. View names must be unique within the account and
    # region. Only USER views can be created — MANAGED views are provisioned
    # by AWS.
    #
    # @option params [required, String] :name
    #   The name of the view. Must begin with the "view." prefix. View names
    #   must be unique within the account and region.
    #
    # @option params [required, String] :definition
    #   The SQL query that defines the view.
    #
    # @option params [String] :description
    #   A description of the view.
    #
    # @option params [Hash<String,String>] :tags
    #   Resource tags.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   returns the original view instead of creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateViewResponse#name #name} => String
    #   * {Types::CreateViewResponse#type #type} => String
    #   * {Types::CreateViewResponse#description #description} => String
    #   * {Types::CreateViewResponse#definition #definition} => String
    #   * {Types::CreateViewResponse#created_at #created_at} => Time
    #   * {Types::CreateViewResponse#updated_at #updated_at} => Time
    #   * {Types::CreateViewResponse#arn #arn} => String
    #
    #
    # @example Example: Create a view
    #
    #   # The following example creates a user view that saves an error-count-by-service query. View names must begin with the
    #   # view. prefix and be unique within the account and Region. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.create_view({
    #     name: "view.service_errors", 
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73", 
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service", 
    #     description: "Error counts by service", 
    #     tags: {
    #       "Team" => "observability", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "view.service_errors", 
    #     type: "USER", 
    #     arn: "arn:aws:cloudwatch:us-east-1:123456789012:view/view.service_errors", 
    #     created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service", 
    #     description: "Error counts by service", 
    #     updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_view({
    #     name: "ViewName", # required
    #     definition: "ViewDefinition", # required
    #     description: "ViewDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "CreateViewRequestClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "USER", "MANAGED"
    #   resp.description #=> String
    #   resp.definition #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/CreateView AWS API Documentation
    #
    # @overload create_view(params = {})
    # @param [Hash] params ({})
    def create_view(params = {}, options = {})
      req = build_request(:create_view, params)
      req.send_request(options)
    end

    # Removes an existing AccessGrant, revoking the access it granted.
    #
    # A service-managed grant cannot be deleted.
    #
    # @option params [required, String] :grant_id
    #   The ID of the access grant to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete an access grant
    #
    #   # The following example deletes an access grant by ID, revoking the access it granted. Payloads are shown as JSON; on the
    #   # wire they are CBOR-encoded.
    #
    #   resp = client.delete_access_grant({
    #     grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_grant({
    #     grant_id: "GrantId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAccessGrant AWS API Documentation
    #
    # @overload delete_access_grant(params = {})
    # @param [Hash] params ({})
    def delete_access_grant(params = {}, options = {})
      req = build_request(:delete_access_grant, params)
      req.send_request(options)
    end

    # Removes an access profile.
    #
    # An access profile cannot be deleted while access grants reference it.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :profile_id
    #   The unique ID of the access profile to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete an access profile
    #
    #   # The following example deletes an access profile from a space. An access profile cannot be deleted while access grants
    #   # reference it. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.delete_access_profile({
    #     profile_id: "analyst-readonly", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_profile({
    #     space_id: "SpaceId", # required
    #     profile_id: "ProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAccessProfile AWS API Documentation
    #
    # @overload delete_access_profile(params = {})
    # @param [Hash] params ({})
    def delete_access_profile(params = {}, options = {})
      req = build_request(:delete_access_profile, params)
      req.send_request(options)
    end

    # Deletes an alert by its identifier.
    #
    # Idempotent: deleting an alert that has already been removed succeeds
    # without error.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :alert_id
    #   The alert to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete an alert
    #
    #   # The following example removes an alert from a space. Deleting an alert that has already been removed succeeds without
    #   # error. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.delete_alert({
    #     alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alert({
    #     space_id: "SpaceId", # required
    #     alert_id: "AlertId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteAlert AWS API Documentation
    #
    # @overload delete_alert(params = {})
    # @param [Hash] params ({})
    def delete_alert(params = {}, options = {})
      req = build_request(:delete_alert, params)
      req.send_request(options)
    end

    # Removes a domain and all of its resources. Call this operation in the
    # Region where the domain was created.
    #
    # A domain cannot be deleted while it contains spaces.
    #
    # @option params [required, String] :domain_id
    #   The unique ID of the domain to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a domain
    #
    #   # The following example deletes a domain in the Region where it was created. The domain must not contain any spaces. A
    #   # successful response returns an empty body. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.delete_domain({
    #     domain_id: "d-1a2b3c4d5e", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Removes an existing organization access grant, revoking the access it
    # granted.
    #
    # A service-managed grant cannot be deleted.
    #
    # @option params [required, String] :grant_id
    #   The ID of the access grant to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete an organization domain access grant
    #
    #   # The following example deletes an organization domain access grant by ID, revoking the access it granted. Payloads are
    #   # shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.delete_domain_access_grant_for_organization({
    #     grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_access_grant_for_organization({
    #     grant_id: "GrantId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomainAccessGrantForOrganization AWS API Documentation
    #
    # @overload delete_domain_access_grant_for_organization(params = {})
    # @param [Hash] params ({})
    def delete_domain_access_grant_for_organization(params = {}, options = {})
      req = build_request(:delete_domain_access_grant_for_organization, params)
      req.send_request(options)
    end

    # Removes an organization domain and all of its resources. Call this
    # operation in the Region where the domain was created.
    #
    # A domain cannot be deleted while it contains spaces.
    #
    # @option params [required, String] :domain_id
    #   The ID of the organization domain to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete an organization domain
    #
    #   # The following example deletes an organization domain in the Region where it was created. The domain must not contain any
    #   # spaces. A successful response returns an empty body. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.delete_domain_for_organization({
    #     domain_id: "d-9z8y7x6w5v", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_for_organization({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteDomainForOrganization AWS API Documentation
    #
    # @overload delete_domain_for_organization(params = {})
    # @param [Hash] params ({})
    def delete_domain_for_organization(params = {}, options = {})
      req = build_request(:delete_domain_for_organization, params)
      req.send_request(options)
    end

    # Deletes an integration. Returns the resulting status.
    #
    # @option params [required, Types::IntegrationIdentifier] :identifier
    #   Identifies the integration to delete — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete an integration by id
    #
    #   # The following example deletes the integration identified by its id. DeleteIntegration is idempotent and returns an empty
    #   # response. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.delete_integration({
    #     identifier: {
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration({
    #     identifier: { # required
    #       integration_id: "String",
    #       integration_arn: "IntegrationArn",
    #       integration_name: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteIntegration AWS API Documentation
    #
    # @overload delete_integration(params = {})
    # @param [Hash] params ({})
    def delete_integration(params = {}, options = {})
      req = build_request(:delete_integration, params)
      req.send_request(options)
    end

    # Removes a dashboard from a space.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :dashboard_id
    #   The unique ID of the dashboard.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a dashboard
    #
    #   # The following example removes a dashboard from a space. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.delete_omni_dashboard({
    #     dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_omni_dashboard({
    #     space_id: "SpaceId", # required
    #     dashboard_id: "DashboardId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteOmniDashboard AWS API Documentation
    #
    # @overload delete_omni_dashboard(params = {})
    # @param [Hash] params ({})
    def delete_omni_dashboard(params = {}, options = {})
      req = build_request(:delete_omni_dashboard, params)
      req.send_request(options)
    end

    # Removes a space and all of its resources.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a space
    #
    #   # The following example removes a space and all of its resources. Payloads are shown as JSON; on the wire they are
    #   # CBOR-encoded.
    #
    #   resp = client.delete_space({
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_space({
    #     space_id: "SpaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteSpace AWS API Documentation
    #
    # @overload delete_space(params = {})
    # @param [Hash] params ({})
    def delete_space(params = {}, options = {})
      req = build_request(:delete_space, params)
      req.send_request(options)
    end

    # Deletes the specified view.
    #
    # Queries that reference the view fail after it is deleted. Managed
    # views cannot be deleted.
    #
    # @option params [required, String] :name
    #   The name of the view to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a view
    #
    #   # The following example deletes a view. The response body is empty. Queries that reference the view fail after it is
    #   # deleted. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.delete_view({
    #     name: "view.service_errors", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_view({
    #     name: "ViewName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/DeleteView AWS API Documentation
    #
    # @overload delete_view(params = {})
    # @param [Hash] params ({})
    def delete_view(params = {}, options = {})
      req = build_request(:delete_view, params)
      req.send_request(options)
    end

    # Retrieves the full detail of a single AccessGrant by ID.
    #
    # @option params [required, String] :grant_id
    #   The ID of the access grant to retrieve.
    #
    # @return [Types::GetAccessGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessGrantOutput#access_grant #access_grant} => Types::AccessGrant
    #
    #
    # @example Example: Get an access grant
    #
    #   # The following example retrieves the full detail of a single access grant by ID. Payloads are shown as JSON; on the wire
    #   # they are CBOR-encoded.
    #
    #   resp = client.get_access_grant({
    #     grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     access_grant: {
    #       name: "analyst-read-access", 
    #       account_id: "123456789012", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #       domain_id: "d-1a2b3c4d5e", 
    #       grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #       grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #       grant_type: "CUSTOMER_MANAGED", 
    #       permission: "CUSTOM", 
    #       principal: {
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #         principal_type: "IDC_USER", 
    #       }, 
    #       scoped_actions: [
    #         {
    #           actions: [
    #             "cloudwatch:GetOmniDashboard", 
    #             "cloudwatch:UpdateOmniDashboard", 
    #           ], 
    #           resources: [
    #             {
    #               resource_arns: [
    #                 "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #               ], 
    #               resource_type: "OmniDashboard", 
    #             }, 
    #           ], 
    #         }, 
    #       ], 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_grant({
    #     grant_id: "GrantId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_grant.grant_id #=> String
    #   resp.access_grant.grant_arn #=> String
    #   resp.access_grant.name #=> String
    #   resp.access_grant.account_id #=> String
    #   resp.access_grant.domain_id #=> String
    #   resp.access_grant.principal.principal_type #=> String, one of "IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT", "ACCESS_PROFILE", "ALERT", "AGENT"
    #   resp.access_grant.principal.principal_id #=> String
    #   resp.access_grant.principal.principal_attributes #=> Array
    #   resp.access_grant.principal.principal_attributes[0].key #=> String
    #   resp.access_grant.principal.principal_attributes[0].value #=> String
    #   resp.access_grant.permission #=> String, one of "SPACE_ADMIN", "READ", "READ_WRITE_DELETE", "CUSTOM"
    #   resp.access_grant.grant_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #   resp.access_grant.created_by #=> String
    #   resp.access_grant.created_at #=> Time
    #   resp.access_grant.updated_at #=> Time
    #   resp.access_grant.space_id #=> String
    #   resp.access_grant.scoped_actions #=> Array
    #   resp.access_grant.scoped_actions[0].actions #=> Array
    #   resp.access_grant.scoped_actions[0].actions[0] #=> String
    #   resp.access_grant.scoped_actions[0].resources #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].resource_type #=> String
    #   resp.access_grant.scoped_actions[0].resources[0].resource_arns #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].resource_arns[0] #=> String
    #   resp.access_grant.scoped_actions[0].resources[0].tags #=> Hash
    #   resp.access_grant.scoped_actions[0].resources[0].tags["String"] #=> String
    #   resp.access_grant.scoped_actions[0].resources[0].signal_types #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].signal_types[0] #=> String, one of "LOGS", "TRACES"
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0] #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0][0].field #=> String
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0][0].operator #=> String, one of "IN"
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0][0].values #=> Array
    #   resp.access_grant.scoped_actions[0].resources[0].row_scope_groups[0][0].values[0] #=> String
    #   resp.access_grant.scoped_actions[0].context_conditions #=> Hash
    #   resp.access_grant.scoped_actions[0].context_conditions["String"] #=> Array
    #   resp.access_grant.scoped_actions[0].context_conditions["String"][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAccessGrant AWS API Documentation
    #
    # @overload get_access_grant(params = {})
    # @param [Hash] params ({})
    def get_access_grant(params = {}, options = {})
      req = build_request(:get_access_grant, params)
      req.send_request(options)
    end

    # Retrieves an access profile by ID.
    #
    # The response indicates whether the calling principal is currently
    # allowed to assume the profile.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :profile_id
    #   The unique ID of the access profile.
    #
    # @return [Types::GetAccessProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessProfileOutput#access_profile #access_profile} => Types::AccessProfile
    #
    #
    # @example Example: Get an access profile
    #
    #   # The following example retrieves an access profile by ID, including whether the calling principal is currently allowed to
    #   # assume it. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.get_access_profile({
    #     profile_id: "analyst-readonly", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     access_profile: {
    #       name: "Analyst read-only profile", 
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/analyst-readonly", 
    #       assume_status: "ALLOWED", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       description: "Read-only access for analysts.", 
    #       profile_id: "analyst-readonly", 
    #       profile_type: "CUSTOMER_MANAGED", 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_profile({
    #     space_id: "SpaceId", # required
    #     profile_id: "ProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_profile.profile_id #=> String
    #   resp.access_profile.space_id #=> String
    #   resp.access_profile.arn #=> String
    #   resp.access_profile.name #=> String
    #   resp.access_profile.description #=> String
    #   resp.access_profile.created_at #=> Time
    #   resp.access_profile.updated_at #=> Time
    #   resp.access_profile.assume_status #=> String, one of "ALLOWED", "DENIED"
    #   resp.access_profile.profile_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAccessProfile AWS API Documentation
    #
    # @overload get_access_profile(params = {})
    # @param [Hash] params ({})
    def get_access_profile(params = {}, options = {})
      req = build_request(:get_access_profile, params)
      req.send_request(options)
    end

    # Retrieves a single alert by its identifier.
    #
    # Use ListAlerts to enumerate alerts in the space.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :alert_id
    #   The alert to retrieve.
    #
    # @return [Types::GetAlertOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAlertOutput#alert #alert} => Types::Alert
    #
    #
    # @example Example: Retrieve an alert
    #
    #   # The following example retrieves an alert by its identifier, including the live evaluation state that CreateAlert does
    #   # not report. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.get_alert({
    #     alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alert: {
    #       name: "service-error-count-elevated", 
    #       account_id: "123456789012", 
    #       alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #       alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       description: "Alerts when a service logs more errors than its accepted rate.", 
    #       notification_rules: [
    #         {
    #           target: {
    #             metadata: {
    #               "channel" => "oncall-alerts", 
    #             }, 
    #             type: "slack", 
    #             arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #           }, 
    #           trigger: {
    #             state_values: [
    #               "CRITICAL", 
    #             ], 
    #           }, 
    #         }, 
    #       ], 
    #       notification_status: "ENABLED", 
    #       profile_id: "analyst-readonly", 
    #       rule: {
    #         telemetry_rule: {
    #           condition: {
    #             comparator: "GT", 
    #             critical_threshold: 200.0, 
    #             threshold_field: "error_count", 
    #             threshold_mode: "FIELD_VALUE", 
    #             warning_threshold: 50.0, 
    #           }, 
    #           evaluation: {
    #             interval_seconds: 300, 
    #             pending_duration_seconds: 600, 
    #             recovery_duration_seconds: 300, 
    #           }, 
    #           no_data: {
    #             treat_as: "NODATA", 
    #           }, 
    #           query: {
    #             expression: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service", 
    #             language: "SQL", 
    #           }, 
    #         }, 
    #       }, 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       state: {
    #         value: "CRITICAL", 
    #         contributor_summary: {
    #           critical_count: 1, 
    #           warning_count: 3, 
    #         }, 
    #         transitioned_at: Time.parse("2026-09-17T09:11:52Z"), 
    #       }, 
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alert({
    #     space_id: "SpaceId", # required
    #     alert_id: "AlertId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alert.name #=> String
    #   resp.alert.alert_id #=> String
    #   resp.alert.description #=> String
    #   resp.alert.account_id #=> String
    #   resp.alert.space_id #=> String
    #   resp.alert.profile_id #=> String
    #   resp.alert.rule.telemetry_rule.query.language #=> String, one of "SQL", "PROMQL"
    #   resp.alert.rule.telemetry_rule.query.expression #=> String
    #   resp.alert.rule.telemetry_rule.condition.threshold_mode #=> String, one of "COUNT_OF_RESULTS", "FIELD_VALUE"
    #   resp.alert.rule.telemetry_rule.condition.threshold_field #=> String
    #   resp.alert.rule.telemetry_rule.condition.comparator #=> String, one of "GT", "LT", "GTE", "LTE"
    #   resp.alert.rule.telemetry_rule.condition.warning_threshold #=> Float
    #   resp.alert.rule.telemetry_rule.condition.critical_threshold #=> Float
    #   resp.alert.rule.telemetry_rule.evaluation.interval_seconds #=> Integer
    #   resp.alert.rule.telemetry_rule.evaluation.pending_duration_seconds #=> Integer
    #   resp.alert.rule.telemetry_rule.evaluation.recovery_duration_seconds #=> Integer
    #   resp.alert.rule.telemetry_rule.no_data.treat_as #=> String, one of "OK", "WARNING", "CRITICAL", "NODATA"
    #   resp.alert.notification_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.alert.state.value #=> String, one of "OK", "WARNING", "CRITICAL", "NODATA"
    #   resp.alert.state.transitioned_at #=> Time
    #   resp.alert.state.contributor_summary.warning_count #=> Integer
    #   resp.alert.state.contributor_summary.critical_count #=> Integer
    #   resp.alert.state.data.threshold_breached #=> Float
    #   resp.alert.notification_rules #=> Array
    #   resp.alert.notification_rules[0].trigger.state_values #=> Array
    #   resp.alert.notification_rules[0].trigger.state_values[0] #=> String, one of "OK", "WARNING", "CRITICAL", "NODATA"
    #   resp.alert.notification_rules[0].target.type #=> String, one of "sns", "slack", "pagerduty"
    #   resp.alert.notification_rules[0].target.arn #=> String
    #   resp.alert.notification_rules[0].target.metadata #=> Hash
    #   resp.alert.notification_rules[0].target.metadata["NotificationTargetMetadataMapKeyString"] #=> String
    #   resp.alert.created_at #=> Time
    #   resp.alert.updated_at #=> Time
    #   resp.alert.alert_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetAlert AWS API Documentation
    #
    # @overload get_alert(params = {})
    # @param [Hash] params ({})
    def get_alert(params = {}, options = {})
      req = build_request(:get_alert, params)
      req.send_request(options)
    end

    # Queries the context graph with filtering, traversal, and pagination
    # support.
    #
    # Pagination note: nodes and edges are returned together as a coherent
    # subgraph. Pagination cursors advance over nodes (the primary
    # collection); each page includes all edges connecting nodes within that
    # page. Callers should treat nodes as the paginated collection and edges
    # as supplementary relationship data attached to those nodes.
    #
    # @option params [Types::NodeFilters] :node_filters
    #   Criteria restricting which nodes are returned.
    #
    # @option params [Types::EdgeFilters] :edge_filters
    #   Criteria restricting which edges are returned.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   Start of the time range (UTC), inclusive.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   End of the time range (UTC), inclusive.
    #
    # @option params [Integer] :depth
    #   How many hops to traverse out from the nodes matched by nodeFilters. 0
    #   returns only the matched nodes themselves.
    #
    # @option params [Integer] :max_results
    #   The maximum number of nodes to return in a single page.
    #
    # @option params [Integer] :max_edges_per_node
    #   The maximum number of edges to return per node, bounding the fan-out
    #   of a densely connected node.
    #
    # @option params [Boolean] :include_metadata
    #   Whether to return the metadata block, semantics included, on each node
    #   and edge. Off by default because it costs an extra lookup per returned
    #   node.
    #
    # @option params [String] :next_token
    #   Pagination token from a previous response, to retrieve the next page.
    #
    # @return [Types::GetContextGraphOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContextGraphOutput#nodes #nodes} => Array&lt;Types::Node&gt;
    #   * {Types::GetContextGraphOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Query a service and its immediate dependencies
    #
    #   # The following example returns context graph nodes matching the filter and traverses one hop out to their direct
    #   # dependencies, over a one-hour window. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.get_context_graph({
    #     depth: 1, 
    #     end_time: Time.parse("2026-09-16T01:00:00Z"), 
    #     include_metadata: false, 
    #     max_results: 100, 
    #     node_filters: {
    #       namespace: [
    #         "ecommerce", 
    #       ], 
    #       node_type: "SERVICE", 
    #     }, 
    #     start_time: Time.parse("2026-09-16T00:00:00Z"), 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "eyJvZmZzZXQiOjEwMH0=", 
    #     nodes: [
    #       {
    #         name: "checkout-service", 
    #         edges: [
    #           {
    #             operations: [
    #               "POST /charges", 
    #             ], 
    #             edge_id: "edge:checkout-service->payments-service", 
    #             edge_type: "CALLS", 
    #             first_observed_at: Time.parse("2026-09-16T00:03:00Z"), 
    #             from: "svc:checkout-service", 
    #             last_observed_at: Time.parse("2026-09-16T00:58:00Z"), 
    #             signal_types: [
    #               "TRACES", 
    #             ], 
    #             sources: [
    #               "TELEMETRY", 
    #             ], 
    #             to: "svc:payments-service", 
    #           }, 
    #         ], 
    #         first_observed_at: Time.parse("2026-09-16T00:03:00Z"), 
    #         last_observed_at: Time.parse("2026-09-16T00:58:00Z"), 
    #         node_id: "svc:checkout-service", 
    #         node_properties: {
    #           cloud_provider: "aws", 
    #           namespace: "ecommerce", 
    #           region: "us-east-1", 
    #           source_account_id: "123456789012", 
    #         }, 
    #         node_type: "SERVICE", 
    #         signal_types: [
    #           "TRACES", 
    #         ], 
    #         sources: [
    #           "TELEMETRY", 
    #         ], 
    #       }, 
    #       {
    #         name: "payments-service", 
    #         first_observed_at: Time.parse("2026-09-16T00:01:00Z"), 
    #         last_observed_at: Time.parse("2026-09-16T00:59:00Z"), 
    #         node_id: "svc:payments-service", 
    #         node_properties: {
    #           cloud_provider: "aws", 
    #           namespace: "ecommerce", 
    #           region: "us-east-1", 
    #           source_account_id: "123456789012", 
    #         }, 
    #         node_type: "SERVICE", 
    #         signal_types: [
    #           "TRACES", 
    #         ], 
    #         sources: [
    #           "TELEMETRY", 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_context_graph({
    #     node_filters: {
    #       node_id: "ContextGraphId",
    #       node_type: "SERVICE", # accepts SERVICE, RESOURCE, REMOTE_SERVICE
    #       name: "ContextGraphName",
    #       tags: [
    #         {
    #           key: "KeyFilterKey", # required
    #           values: ["KeyFilterValue"],
    #         },
    #       ],
    #       telemetry_attributes: [
    #         {
    #           key: "KeyFilterKey", # required
    #           values: ["KeyFilterValue"],
    #         },
    #       ],
    #       region: ["String"],
    #       cloud_provider: ["String"],
    #       source_account_id: ["String"],
    #       namespace: ["String"],
    #       category: ["GEN_AI_AGENT"], # accepts GEN_AI_AGENT, GEN_AI_MODEL, DATABASE, MESSAGING_QUEUE, COMPUTE, STORAGE, NETWORK
    #       stage: ["String"],
    #       sources: ["VPC_FLOW_LOG"], # accepts VPC_FLOW_LOG, CLOUDTRAIL, IAM_POLICY, CODE_SEMANTICS, TELEMETRY, AZURE_VNET_FLOW_LOG, ELB_ACCESS_LOG, CLOUDFRONT_ACCESS_LOG, S3_ACCESS_LOG, WAF_ACCESS_LOG, AWS_INTEGRATION, CONFIG
    #     },
    #     edge_filters: {
    #       edge_id: "ContextGraphId",
    #       from: "ContextGraphId",
    #       to: "ContextGraphId",
    #       edge_type: "CALLS", # accepts CALLS, ACCESSES, RUNS_ON
    #       operations: ["String"],
    #       telemetry_attributes: [
    #         {
    #           key: "KeyFilterKey", # required
    #           values: ["KeyFilterValue"],
    #         },
    #       ],
    #       sources: ["VPC_FLOW_LOG"], # accepts VPC_FLOW_LOG, CLOUDTRAIL, IAM_POLICY, CODE_SEMANTICS, TELEMETRY, AZURE_VNET_FLOW_LOG, ELB_ACCESS_LOG, CLOUDFRONT_ACCESS_LOG, S3_ACCESS_LOG, WAF_ACCESS_LOG, AWS_INTEGRATION, CONFIG
    #     },
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     depth: 1,
    #     max_results: 1,
    #     max_edges_per_node: 1,
    #     include_metadata: false,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.nodes #=> Array
    #   resp.nodes[0].node_id #=> String
    #   resp.nodes[0].node_type #=> String, one of "SERVICE", "RESOURCE", "REMOTE_SERVICE"
    #   resp.nodes[0].name #=> String
    #   resp.nodes[0].alternate_names #=> Array
    #   resp.nodes[0].alternate_names[0] #=> String
    #   resp.nodes[0].tags #=> Hash
    #   resp.nodes[0].tags["String"] #=> String
    #   resp.nodes[0].node_properties.region #=> String
    #   resp.nodes[0].node_properties.cloud_provider #=> String
    #   resp.nodes[0].node_properties.source_account_id #=> String
    #   resp.nodes[0].node_properties.namespace #=> String
    #   resp.nodes[0].node_properties.category #=> String, one of "GEN_AI_AGENT", "GEN_AI_MODEL", "DATABASE", "MESSAGING_QUEUE", "COMPUTE", "STORAGE", "NETWORK"
    #   resp.nodes[0].node_properties.stage #=> String
    #   resp.nodes[0].telemetry_attributes #=> Hash
    #   resp.nodes[0].telemetry_attributes["String"] #=> String
    #   resp.nodes[0].operation_details #=> Hash
    #   resp.nodes[0].operation_details["OperationName"] #=> Array
    #   resp.nodes[0].operation_details["OperationName"][0] #=> Hash
    #   resp.nodes[0].operation_details["OperationName"][0]["OperationIdentifierKey"] #=> String
    #   resp.nodes[0].signal_types #=> Array
    #   resp.nodes[0].signal_types[0] #=> String, one of "LOGS", "METRICS", "TRACES", "CONFIG", "UNKNOWN"
    #   resp.nodes[0].sources #=> Array
    #   resp.nodes[0].sources[0] #=> String, one of "VPC_FLOW_LOG", "CLOUDTRAIL", "IAM_POLICY", "CODE_SEMANTICS", "TELEMETRY", "AZURE_VNET_FLOW_LOG", "ELB_ACCESS_LOG", "CLOUDFRONT_ACCESS_LOG", "S3_ACCESS_LOG", "WAF_ACCESS_LOG", "AWS_INTEGRATION", "CONFIG"
    #   resp.nodes[0].metadata.metrics #=> Array
    #   resp.nodes[0].metadata.metrics[0].name #=> String
    #   resp.nodes[0].metadata.metrics[0].namespace #=> String
    #   resp.nodes[0].metadata.metrics[0].preferred_stat #=> String
    #   resp.nodes[0].metadata.metrics[0].metric_type #=> String
    #   resp.nodes[0].metadata.metrics[0].attributes #=> Hash
    #   resp.nodes[0].metadata.metrics[0].attributes["String"] #=> String
    #   resp.nodes[0].metadata.metrics[0].semantics.description #=> String
    #   resp.nodes[0].metadata.metrics[0].semantics.unit #=> String
    #   resp.nodes[0].metadata.semantics.purpose #=> String
    #   resp.nodes[0].metadata.semantics.language #=> String
    #   resp.nodes[0].metadata.semantics.framework #=> String
    #   resp.nodes[0].metadata.semantics.kind #=> String
    #   resp.nodes[0].metadata.semantics.repository #=> String
    #   resp.nodes[0].metadata.logs #=> Array
    #   resp.nodes[0].metadata.logs[0].attributes #=> Hash
    #   resp.nodes[0].metadata.logs[0].attributes["String"] #=> String
    #   resp.nodes[0].metadata.traces #=> Array
    #   resp.nodes[0].metadata.traces[0].attributes #=> Hash
    #   resp.nodes[0].metadata.traces[0].attributes["String"] #=> String
    #   resp.nodes[0].first_observed_at #=> Time
    #   resp.nodes[0].last_observed_at #=> Time
    #   resp.nodes[0].edges #=> Array
    #   resp.nodes[0].edges[0].edge_id #=> String
    #   resp.nodes[0].edges[0].from #=> String
    #   resp.nodes[0].edges[0].to #=> String
    #   resp.nodes[0].edges[0].edge_type #=> String, one of "CALLS", "ACCESSES", "RUNS_ON"
    #   resp.nodes[0].edges[0].operations #=> Array
    #   resp.nodes[0].edges[0].operations[0] #=> String
    #   resp.nodes[0].edges[0].edge_properties.protocol #=> String
    #   resp.nodes[0].edges[0].edge_properties.source_port #=> String
    #   resp.nodes[0].edges[0].edge_properties.destination_port #=> String
    #   resp.nodes[0].edges[0].edge_properties.blocked #=> Boolean
    #   resp.nodes[0].edges[0].edge_properties.error_code #=> String
    #   resp.nodes[0].edges[0].edge_properties.http_status_code #=> String
    #   resp.nodes[0].edges[0].edge_properties.http_method #=> String
    #   resp.nodes[0].edges[0].edge_properties.service_initiated #=> Boolean
    #   resp.nodes[0].edges[0].edge_properties.traffic_stats.bytes #=> Integer
    #   resp.nodes[0].edges[0].edge_properties.traffic_stats.packets #=> Integer
    #   resp.nodes[0].edges[0].edge_properties.traffic_stats.flows #=> Integer
    #   resp.nodes[0].edges[0].edge_properties.traffic_stats.sent_bytes #=> Integer
    #   resp.nodes[0].edges[0].edge_properties.traffic_stats.received_bytes #=> Integer
    #   resp.nodes[0].edges[0].telemetry_attributes #=> Hash
    #   resp.nodes[0].edges[0].telemetry_attributes["String"] #=> String
    #   resp.nodes[0].edges[0].signal_types #=> Array
    #   resp.nodes[0].edges[0].signal_types[0] #=> String, one of "LOGS", "METRICS", "TRACES", "CONFIG", "UNKNOWN"
    #   resp.nodes[0].edges[0].sources #=> Array
    #   resp.nodes[0].edges[0].sources[0] #=> String, one of "VPC_FLOW_LOG", "CLOUDTRAIL", "IAM_POLICY", "CODE_SEMANTICS", "TELEMETRY", "AZURE_VNET_FLOW_LOG", "ELB_ACCESS_LOG", "CLOUDFRONT_ACCESS_LOG", "S3_ACCESS_LOG", "WAF_ACCESS_LOG", "AWS_INTEGRATION", "CONFIG"
    #   resp.nodes[0].edges[0].metadata.metrics #=> Array
    #   resp.nodes[0].edges[0].metadata.metrics[0].name #=> String
    #   resp.nodes[0].edges[0].metadata.metrics[0].namespace #=> String
    #   resp.nodes[0].edges[0].metadata.metrics[0].preferred_stat #=> String
    #   resp.nodes[0].edges[0].metadata.metrics[0].metric_type #=> String
    #   resp.nodes[0].edges[0].metadata.metrics[0].attributes #=> Hash
    #   resp.nodes[0].edges[0].metadata.metrics[0].attributes["String"] #=> String
    #   resp.nodes[0].edges[0].metadata.metrics[0].semantics.description #=> String
    #   resp.nodes[0].edges[0].metadata.metrics[0].semantics.unit #=> String
    #   resp.nodes[0].edges[0].metadata.semantics.purpose #=> String
    #   resp.nodes[0].edges[0].metadata.semantics.language #=> String
    #   resp.nodes[0].edges[0].metadata.semantics.framework #=> String
    #   resp.nodes[0].edges[0].metadata.semantics.kind #=> String
    #   resp.nodes[0].edges[0].metadata.semantics.repository #=> String
    #   resp.nodes[0].edges[0].metadata.logs #=> Array
    #   resp.nodes[0].edges[0].metadata.logs[0].attributes #=> Hash
    #   resp.nodes[0].edges[0].metadata.logs[0].attributes["String"] #=> String
    #   resp.nodes[0].edges[0].metadata.traces #=> Array
    #   resp.nodes[0].edges[0].metadata.traces[0].attributes #=> Hash
    #   resp.nodes[0].edges[0].metadata.traces[0].attributes["String"] #=> String
    #   resp.nodes[0].edges[0].first_observed_at #=> Time
    #   resp.nodes[0].edges[0].last_observed_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetContextGraph AWS API Documentation
    #
    # @overload get_context_graph(params = {})
    # @param [Hash] params ({})
    def get_context_graph(params = {}, options = {})
      req = build_request(:get_context_graph, params)
      req.send_request(options)
    end

    # Retrieves the details of a domain by ID.
    #
    # @option params [required, String] :domain_id
    #   The unique ID of the domain.
    #
    # @return [Types::GetDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainOutput#domain #domain} => Types::Domain
    #
    #
    # @example Example: Get a domain
    #
    #   # The following example retrieves the configuration and status of an Identity Center domain by its ID. Payloads are shown
    #   # as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.get_domain({
    #     domain_id: "d-1a2b3c4d5e", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     domain: {
    #       name: "prod-observability", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       custom_endpoint_urls: [
    #         "https://prod-observability.cloudwatch-omni.global.app.aws", 
    #       ], 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #       domain_endpoint_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws", 
    #       domain_id: "d-1a2b3c4d5e", 
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938", 
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #         }, 
    #       }, 
    #       identity_providers: [
    #         "IDC", 
    #       ], 
    #       region: "us-east-1", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.domain_id #=> String
    #   resp.domain.domain_arn #=> String
    #   resp.domain.name #=> String
    #   resp.domain.identity_providers #=> Array
    #   resp.domain.identity_providers[0] #=> String, one of "IAM", "IDC"
    #   resp.domain.identity_provider_configuration.identity_center_configuration.identity_center_instance_arn #=> String
    #   resp.domain.domain_endpoint_url #=> String
    #   resp.domain.custom_endpoint_urls #=> Array
    #   resp.domain.custom_endpoint_urls[0] #=> String
    #   resp.domain.identity_center_application_arn #=> String
    #   resp.domain.region #=> String
    #   resp.domain.created_at #=> Time
    #   resp.domain.updated_at #=> Time
    #   resp.domain.status #=> String, one of "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Retrieves the full detail of a single organization access grant by ID.
    #
    # @option params [required, String] :grant_id
    #   The ID of the access grant to retrieve.
    #
    # @return [Types::GetDomainAccessGrantForOrganizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainAccessGrantForOrganizationOutput#access_grant #access_grant} => Types::OrganizationAccessGrant
    #
    #
    # @example Example: Get an organization domain access grant
    #
    #   # The following example retrieves the full detail of a single organization domain access grant by ID. Payloads are shown
    #   # as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.get_domain_access_grant_for_organization({
    #     grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     access_grant: {
    #       name: "org-domain-admin", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #       domain_id: "d-1a2b3c4d5e", 
    #       grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #       grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #       grant_type: "CUSTOMER_MANAGED", 
    #       permission: "ADMIN", 
    #       principal: {
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #         principal_type: "IDC_USER", 
    #       }, 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_access_grant_for_organization({
    #     grant_id: "GrantId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_grant.grant_id #=> String
    #   resp.access_grant.grant_arn #=> String
    #   resp.access_grant.name #=> String
    #   resp.access_grant.domain_id #=> String
    #   resp.access_grant.principal.principal_type #=> String, one of "IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT"
    #   resp.access_grant.principal.principal_id #=> String
    #   resp.access_grant.principal.principal_attributes #=> Array
    #   resp.access_grant.principal.principal_attributes[0].key #=> String
    #   resp.access_grant.principal.principal_attributes[0].value #=> String
    #   resp.access_grant.permission #=> String, one of "ADMIN"
    #   resp.access_grant.grant_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #   resp.access_grant.created_by #=> String
    #   resp.access_grant.created_at #=> Time
    #   resp.access_grant.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomainAccessGrantForOrganization AWS API Documentation
    #
    # @overload get_domain_access_grant_for_organization(params = {})
    # @param [Hash] params ({})
    def get_domain_access_grant_for_organization(params = {}, options = {})
      req = build_request(:get_domain_access_grant_for_organization, params)
      req.send_request(options)
    end

    # Retrieves the details of an organization domain by ID.
    #
    # @option params [required, String] :domain_id
    #   The ID of the organization domain.
    #
    # @return [Types::GetDomainForOrganizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainForOrganizationOutput#organization_domain #organization_domain} => Types::OrganizationDomain
    #
    #
    # @example Example: Get an organization domain
    #
    #   # The following example retrieves the configuration and status of an organization-scoped domain by its ID. Payloads are
    #   # shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.get_domain_for_organization({
    #     domain_id: "d-9z8y7x6w5v", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organization_domain: {
    #       name: "prod-observability-org", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       custom_endpoint_urls: [
    #         "https://prod-observability-org.cloudwatch-omni.global.app.aws", 
    #       ], 
    #       domain_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchOrganizationDomainAccessRole", 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-domain/d-9z8y7x6w5v", 
    #       domain_endpoint_url: "https://d-9z8y7x6w5v.cloudwatch-omni.global.app.aws", 
    #       domain_id: "d-9z8y7x6w5v", 
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938", 
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #         }, 
    #       }, 
    #       identity_providers: [
    #         "IDC", 
    #       ], 
    #       organization_id: "o-a1b2c3d4e5", 
    #       owner_account_id: "123456789012", 
    #       region: "us-east-1", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_for_organization({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_domain.domain_id #=> String
    #   resp.organization_domain.domain_arn #=> String
    #   resp.organization_domain.name #=> String
    #   resp.organization_domain.domain_endpoint_url #=> String
    #   resp.organization_domain.custom_endpoint_urls #=> Array
    #   resp.organization_domain.custom_endpoint_urls[0] #=> String
    #   resp.organization_domain.organization_id #=> String
    #   resp.organization_domain.owner_account_id #=> String
    #   resp.organization_domain.identity_providers #=> Array
    #   resp.organization_domain.identity_providers[0] #=> String, one of "IAM", "IDC"
    #   resp.organization_domain.identity_provider_configuration.identity_center_configuration.identity_center_instance_arn #=> String
    #   resp.organization_domain.identity_center_application_arn #=> String
    #   resp.organization_domain.region #=> String
    #   resp.organization_domain.status #=> String, one of "ACTIVE"
    #   resp.organization_domain.domain_access_role_arn #=> String
    #   resp.organization_domain.created_at #=> Time
    #   resp.organization_domain.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetDomainForOrganization AWS API Documentation
    #
    # @overload get_domain_for_organization(params = {})
    # @param [Hash] params ({})
    def get_domain_for_organization(params = {}, options = {})
      req = build_request(:get_domain_for_organization, params)
      req.send_request(options)
    end

    # Returns the details of a single integration, identified by its
    # identifier, Amazon Resource Name, or name.
    #
    # @option params [required, Types::IntegrationIdentifier] :identifier
    #   Identifies the integration to return — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #
    # @return [Types::GetIntegrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationOutput#integration #integration} => Types::Integration
    #
    #
    # @example Example: Get an integration by id
    #
    #   # The following example returns the integration with the given id. Payloads are shown as JSON; on the wire they are
    #   # CBOR-encoded.
    #
    #   resp = client.get_integration({
    #     identifier: {
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     integration: {
    #       name: "my-aws-integration", 
    #       created_at: Time.parse("2026-09-16T00:03:00Z"), 
    #       integration_arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       integration_type: "AWS_INTEGRATION", 
    #       role_arn: "arn:aws:iam::123456789012:role/service-role/CloudWatchIntegrationRole", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T00:03:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration({
    #     identifier: { # required
    #       integration_id: "String",
    #       integration_arn: "IntegrationArn",
    #       integration_name: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.integration.integration_id #=> String
    #   resp.integration.integration_arn #=> String
    #   resp.integration.integration_type #=> String, one of "AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"
    #   resp.integration.name #=> String
    #   resp.integration.status #=> String, one of "ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"
    #   resp.integration.auth_type #=> String, one of "NONE", "OAUTH2", "API_KEY"
    #   resp.integration.credential_arn #=> String
    #   resp.integration.role_arn #=> String
    #   resp.integration.integration_attributes #=> Hash
    #   resp.integration.integration_attributes["StringMapKeyString"] #=> String
    #   resp.integration.authorization_url #=> String
    #   resp.integration.error_message #=> String
    #   resp.integration.created_at #=> Time
    #   resp.integration.updated_at #=> Time
    #   resp.integration.scope #=> String, one of "ACCOUNT", "ORGANIZATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetIntegration AWS API Documentation
    #
    # @overload get_integration(params = {})
    # @param [Hash] params ({})
    def get_integration(params = {}, options = {})
      req = build_request(:get_integration, params)
      req.send_request(options)
    end

    # Retrieves the intelligence configuration for the calling account.
    # Account is identified via FAS (caller identity). Returns the default
    # configuration if none exists yet.
    #
    # @return [Types::GetIntelligenceConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntelligenceConfigurationOutput#account_id #account_id} => String
    #   * {Types::GetIntelligenceConfigurationOutput#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetIntelligenceConfigurationOutput#updated_at #updated_at} => Time
    #   * {Types::GetIntelligenceConfigurationOutput#created_at #created_at} => Time
    #
    #
    # @example Example: Retrieve the intelligence configuration
    #
    #   # The following example retrieves the intelligence configuration for the calling account. The request carries no
    #   # parameters; the account is taken from the caller identity. Payloads are shown as JSON; on the wire they are
    #   # CBOR-encoded.
    #
    #   resp = client.get_intelligence_configuration({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_id: "123456789012", 
    #     created_at: Time.parse("2026-01-15T08:30:00Z"), 
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     updated_at: Time.parse("2026-09-16T12:00:00Z"), 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.kms_key_arn #=> String
    #   resp.updated_at #=> Time
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetIntelligenceConfiguration AWS API Documentation
    #
    # @overload get_intelligence_configuration(params = {})
    # @param [Hash] params ({})
    def get_intelligence_configuration(params = {}, options = {})
      req = build_request(:get_intelligence_configuration, params)
      req.send_request(options)
    end

    # Retrieves a dashboard by ID within a space.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :dashboard_id
    #   The unique ID of the dashboard.
    #
    # @return [Types::GetOmniDashboardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOmniDashboardOutput#omni_dashboard #omni_dashboard} => Types::OmniDashboard
    #
    #
    # @example Example: Get a dashboard
    #
    #   # The following example retrieves a dashboard by ID within a space, including its full body. Payloads are shown as JSON;
    #   # on the wire they are CBOR-encoded.
    #
    #   resp = client.get_omni_dashboard({
    #     dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     omni_dashboard: {
    #       name: "service-health-overview", 
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #       body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":12,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors\"}}]}", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #       dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #       description: "Overview of service health metrics.", 
    #       tags: {
    #         "Team" => "observability", 
    #       }, 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_omni_dashboard({
    #     space_id: "SpaceId", # required
    #     dashboard_id: "DashboardId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.omni_dashboard.dashboard_id #=> String
    #   resp.omni_dashboard.arn #=> String
    #   resp.omni_dashboard.name #=> String
    #   resp.omni_dashboard.body #=> String
    #   resp.omni_dashboard.created_by #=> String
    #   resp.omni_dashboard.description #=> String
    #   resp.omni_dashboard.tags #=> Hash
    #   resp.omni_dashboard.tags["TagKey"] #=> String
    #   resp.omni_dashboard.created_at #=> Time
    #   resp.omni_dashboard.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetOmniDashboard AWS API Documentation
    #
    # @overload get_omni_dashboard(params = {})
    # @param [Hash] params ({})
    def get_omni_dashboard(params = {}, options = {})
      req = build_request(:get_omni_dashboard, params)
      req.send_request(options)
    end

    # Retrieves the details of a space by ID.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @return [Types::GetSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpaceOutput#space #space} => Types::Space
    #
    #
    # @example Example: Get a space
    #
    #   # The following example retrieves the details of a space by ID. Payloads are shown as JSON; on the wire they are
    #   # CBOR-encoded.
    #
    #   resp = client.get_space({
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     space: {
    #       name: "prod-observability", 
    #       agent_core_evaluation_role_arn: "arn:aws:iam::123456789012:role/CloudWatchAgentCoreEvaluationRole", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       data_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchSpaceDataAccessRole", 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #       encryption_configuration: {
    #         encryption_strategy: "CUSTOMER_MANAGED", 
    #         kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       }, 
    #       owner_account_id: "123456789012", 
    #       region: "us-east-1", 
    #       space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_space({
    #     space_id: "SpaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space.space_id #=> String
    #   resp.space.name #=> String
    #   resp.space.space_arn #=> String
    #   resp.space.domain_arn #=> String
    #   resp.space.region #=> String
    #   resp.space.owner_account_id #=> String
    #   resp.space.data_access_role_arn #=> String
    #   resp.space.created_at #=> Time
    #   resp.space.updated_at #=> Time
    #   resp.space.agent_core_evaluation_role_arn #=> String
    #   resp.space.status #=> String, one of "ACTIVE", "SUSPENDED", "MOVING"
    #   resp.space.status_reason #=> String
    #   resp.space.encryption_configuration.encryption_strategy #=> String, one of "AWS_OWNED", "CUSTOMER_MANAGED"
    #   resp.space.encryption_configuration.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetSpace AWS API Documentation
    #
    # @overload get_space(params = {})
    # @param [Hash] params ({})
    def get_space(params = {}, options = {})
      req = build_request(:get_space, params)
      req.send_request(options)
    end

    # Returns temporary credentials for a space in an organization member
    # account. The credentials are valid for one hour.
    #
    # The caller must be the organization's management account or a
    # delegated administrator with access to the target space. The target
    # account must be an active member of the same organization as the
    # domain, and the space must already exist.
    #
    # @option params [required, Types::SpaceCredentialRequestContext] :context
    #   Context for credential resolution.
    #
    # @option params [required, String] :credential_type
    #   Selects which member-account credential to return. Set this to
    #   SPACE\_OPERATION.
    #
    # @return [Types::GetSpaceCredentialsForOrganizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpaceCredentialsForOrganizationOutput#credentials #credentials} => Types::AwsCredentials
    #
    #
    # @example Example: Get space credentials for an organization member account
    #
    #   # The following example returns temporary, space-scoped AWS credentials for an existing space in an organization member
    #   # account, selected by spaceId. The credentials are valid for one hour, as reflected by the expiration timestamp. Payloads
    #   # are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.get_space_credentials_for_organization({
    #     context: {
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     }, 
    #     credential_type: "SPACE_OPERATION", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     credentials: {
    #       access_key_id: "ASIAIOSFODNN7EXAMPLE", 
    #       expiration: Time.parse("2026-09-16T15:22:31Z"), 
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY", 
    #       session_token: "IQoJb3JpZ2luX2VjEXAMPLESESSIONTOKEN1234567890", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_space_credentials_for_organization({
    #     context: { # required
    #       space_id: "SpaceId",
    #       domain_id: "DomainId",
    #       target_account_id: "AccountId",
    #     },
    #     credential_type: "SPACE_OPERATION", # required, accepts SPACE_OPERATION
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetSpaceCredentialsForOrganization AWS API Documentation
    #
    # @overload get_space_credentials_for_organization(params = {})
    # @param [Hash] params ({})
    def get_space_credentials_for_organization(params = {}, options = {})
      req = build_request(:get_space_credentials_for_organization, params)
      req.send_request(options)
    end

    # Returns the results for the specified query.
    #
    # @option params [required, String] :query_id
    #   The unique ID of the query.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of result rows to return per page.
    #
    # @return [Types::GetTelemetryQueryResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTelemetryQueryResultsResponse#status #status} => String
    #   * {Types::GetTelemetryQueryResultsResponse#rows #rows} => Array&lt;Hash&lt;String,String&gt;&gt;
    #   * {Types::GetTelemetryQueryResultsResponse#next_token #next_token} => String
    #   * {Types::GetTelemetryQueryResultsResponse#statistics #statistics} => Types::QueryStatistics
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Get telemetry query results
    #
    #   # The following example retrieves a page of results for a completed query, along with execution statistics. Payloads are
    #   # shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.get_telemetry_query_results({
    #     max_results: 100, 
    #     query_id: "3b2a1c0d-7e6f-4a5b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rows: [
    #       {
    #         "error_count" => "42", 
    #         "service.name" => "checkout-service", 
    #       }, 
    #       {
    #         "error_count" => "7", 
    #         "service.name" => "payments-service", 
    #       }, 
    #     ], 
    #     statistics: {
    #       bytes_scanned: 1048576.0, 
    #       partial_results: {
    #         partial_results_detected: false, 
    #       }, 
    #       percent_complete: 100, 
    #       records_matched: 49, 
    #       records_scanned: 20000, 
    #     }, 
    #     status: "Complete", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_telemetry_query_results({
    #     query_id: "GetTelemetryQueryResultsRequestQueryIdString", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Running", "Failed", "Complete", "Cancelled"
    #   resp.rows #=> Array
    #   resp.rows[0] #=> Hash
    #   resp.rows[0]["String"] #=> String
    #   resp.next_token #=> String
    #   resp.statistics.bytes_scanned #=> Float
    #   resp.statistics.percent_complete #=> Integer
    #   resp.statistics.records_scanned #=> Integer
    #   resp.statistics.records_matched #=> Integer
    #   resp.statistics.partial_results.partial_results_detected #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetTelemetryQueryResults AWS API Documentation
    #
    # @overload get_telemetry_query_results(params = {})
    # @param [Hash] params ({})
    def get_telemetry_query_results(params = {}, options = {})
      req = build_request(:get_telemetry_query_results, params)
      req.send_request(options)
    end

    # Returns the definition and metadata of the specified view.
    #
    # @option params [required, String] :name
    #   The name of the view.
    #
    # @return [Types::GetViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetViewResponse#name #name} => String
    #   * {Types::GetViewResponse#type #type} => String
    #   * {Types::GetViewResponse#description #description} => String
    #   * {Types::GetViewResponse#definition #definition} => String
    #   * {Types::GetViewResponse#created_at #created_at} => Time
    #   * {Types::GetViewResponse#updated_at #updated_at} => Time
    #   * {Types::GetViewResponse#arn #arn} => String
    #
    #
    # @example Example: Get a view
    #
    #   # The following example returns the definition and metadata of a view. Payloads are shown as JSON; on the wire they are
    #   # CBOR-encoded.
    #
    #   resp = client.get_view({
    #     name: "view.service_errors", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "view.service_errors", 
    #     type: "USER", 
    #     arn: "arn:aws:cloudwatch:us-east-1:123456789012:view/view.service_errors", 
    #     created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service", 
    #     description: "Error counts by service", 
    #     updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_view({
    #     name: "ViewName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "USER", "MANAGED"
    #   resp.description #=> String
    #   resp.definition #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/GetView AWS API Documentation
    #
    # @overload get_view(params = {})
    # @param [Hash] params ({})
    def get_view(params = {}, options = {})
      req = build_request(:get_view, params)
      req.send_request(options)
    end

    # Returns AccessGrants, with optional filtering by domain, space,
    # principal, or permission. A grant is returned only when it matches
    # every filter supplied. With no filters, returns the grants for the
    # current account and Region.
    #
    # @option params [String] :domain_id
    #   Filter by domain ID.
    #
    # @option params [String] :space_id
    #   Filter by space ID.
    #
    # @option params [String] :principal_id
    #   Filter by principal ID.
    #
    # @option params [String] :principal_type
    #   Filter by principal type.
    #
    # @option params [String] :permission
    #   Filter by permission level.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Supply the same filters
    #   used on the request that returned it. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The maximum number of access grants to return per page. Defaults to
    #   100. A page can contain fewer results than this value even when more
    #   results remain; continue while nextToken is present.
    #
    # @return [Types::ListAccessGrantsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessGrantsOutput#items #items} => Array&lt;Types::AccessGrantSummary&gt;
    #   * {Types::ListAccessGrantsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List access grants in a space
    #
    #   # The following example lists the first page of access grants in a space and returns a nextToken to retrieve the next
    #   # page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.list_access_grants({
    #     domain_id: "d-1a2b3c4d5e", 
    #     max_results: 50, 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "analyst-read-access", 
    #         domain_id: "d-1a2b3c4d5e", 
    #         grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #         grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #         grant_type: "CUSTOMER_MANAGED", 
    #         permission: "CUSTOM", 
    #         principal: {
    #           principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #           principal_type: "IDC_USER", 
    #         }, 
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       }, 
    #       {
    #         name: "oncall-read-write", 
    #         domain_id: "d-1a2b3c4d5e", 
    #         grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-grant/8a1b2c3d-4e5f-4a6b-8c7d-9e0f1a2b3c4d", 
    #         grant_id: "8a1b2c3d-4e5f-4a6b-8c7d-9e0f1a2b3c4d", 
    #         grant_type: "CUSTOMER_MANAGED", 
    #         permission: "READ_WRITE_DELETE", 
    #         principal: {
    #           principal_id: "2f5a8c1b-6d3e-4f7a-8b9c-0d1e2f3a4b5c", 
    #           principal_type: "IDC_GROUP", 
    #         }, 
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjIwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_grants({
    #     domain_id: "DomainId",
    #     space_id: "SpaceId",
    #     principal_id: "PrincipalId",
    #     principal_type: "IDC_USER", # accepts IDC_USER, IDC_GROUP, IAM_USER, IAM_ROLE, IAM_ROOT, ACCESS_PROFILE, ALERT, AGENT
    #     permission: "SPACE_ADMIN", # accepts SPACE_ADMIN, READ, READ_WRITE_DELETE, CUSTOM
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].grant_id #=> String
    #   resp.items[0].grant_arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].principal.principal_type #=> String, one of "IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT", "ACCESS_PROFILE", "ALERT", "AGENT"
    #   resp.items[0].principal.principal_id #=> String
    #   resp.items[0].principal.principal_attributes #=> Array
    #   resp.items[0].principal.principal_attributes[0].key #=> String
    #   resp.items[0].principal.principal_attributes[0].value #=> String
    #   resp.items[0].permission #=> String, one of "SPACE_ADMIN", "READ", "READ_WRITE_DELETE", "CUSTOM"
    #   resp.items[0].grant_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #   resp.items[0].space_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAccessGrants AWS API Documentation
    #
    # @overload list_access_grants(params = {})
    # @param [Hash] params ({})
    def list_access_grants(params = {}, options = {})
      req = build_request(:list_access_grants, params)
      req.send_request(options)
    end

    # Returns the access profiles in a space.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of access profiles to return per page. Defaults to
    #   100.
    #
    # @return [Types::ListAccessProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessProfilesOutput#items #items} => Array&lt;Types::AccessProfileSummary&gt;
    #   * {Types::ListAccessProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List access profiles in a space
    #
    #   # The following example lists the first page of access profiles in a space and returns a nextToken to retrieve the next
    #   # page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.list_access_profiles({
    #     max_results: 50, 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "Analyst read-only profile", 
    #         arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/analyst-readonly", 
    #         description: "Read-only access for analysts.", 
    #         profile_id: "analyst-readonly", 
    #         profile_type: "CUSTOMER_MANAGED", 
    #       }, 
    #       {
    #         name: "On-call admin profile", 
    #         arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/oncall-admin", 
    #         description: "Full access for on-call responders.", 
    #         profile_id: "oncall-admin", 
    #         profile_type: "CUSTOMER_MANAGED", 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjIwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_profiles({
    #     space_id: "SpaceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].profile_id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].profile_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAccessProfiles AWS API Documentation
    #
    # @overload list_access_profiles(params = {})
    # @param [Hash] params ({})
    def list_access_profiles(params = {}, options = {})
      req = build_request(:list_access_profiles, params)
      req.send_request(options)
    end

    # Lists alerts within a space, optionally filtered by exact name(s), a
    # single name prefix, or exact alertId(s), with pagination.
    #
    # Use GetAlert to retrieve a single alert's full detail.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [Types::AlertFilterCriteria] :filter_criteria
    #   Filter criteria narrowing which alerts are returned. All members are
    #   optional; the three name/id filters are mutually exclusive.
    #
    # @option params [String] :sort_by
    #   The field to sort results by.
    #
    # @option params [String] :sort_order
    #   The order in which to sort results.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of alerts to return per page.
    #
    # @return [Types::ListAlertsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAlertsOutput#items #items} => Array&lt;Types::AlertSummary&gt;
    #   * {Types::ListAlertsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List alerts in a space
    #
    #   # The following example lists the first page of alerts in a space, sorted by state, and returns a nextToken to retrieve
    #   # the next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.list_alerts({
    #     filter_criteria: {
    #       name_prefix: "service-", 
    #       state_value: [
    #         "WARNING", 
    #         "CRITICAL", 
    #       ], 
    #     }, 
    #     max_results: 50, 
    #     sort_by: "STATE", 
    #     sort_order: "DESC", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "service-error-count-elevated", 
    #         alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #         alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         notification_status: "ENABLED", 
    #         profile_id: "analyst-readonly", 
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #         state: {
    #           value: "CRITICAL", 
    #           contributor_summary: {
    #             critical_count: 1, 
    #             warning_count: 3, 
    #           }, 
    #           transitioned_at: Time.parse("2026-09-17T09:11:52Z"), 
    #         }, 
    #         updated_at: Time.parse("2026-09-17T09:11:52Z"), 
    #       }, 
    #       {
    #         name: "service-checkout-5xx-responses", 
    #         alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/d4e5f6a78b9c4d0e9f1a2b3c4d5e6f70", 
    #         alert_id: "d4e5f6a78b9c4d0e9f1a2b3c4d5e6f70", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         notification_status: "DISABLED", 
    #         profile_id: "analyst-readonly", 
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #         state: {
    #           value: "WARNING", 
    #           data: {
    #             threshold_breached: 14.0, 
    #           }, 
    #           transitioned_at: Time.parse("2026-09-17T09:11:52Z"), 
    #         }, 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjIwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alerts({
    #     space_id: "SpaceId", # required
    #     filter_criteria: {
    #       names: ["AlertNameFilterListMemberString"],
    #       name_prefix: "AlertFilterCriteriaNamePrefixString",
    #       ids: ["AlertId"],
    #       state_value: ["OK"], # accepts OK, WARNING, CRITICAL, NODATA
    #       notifications_enabled: false,
    #     },
    #     sort_by: "NAME", # accepts NAME, STATE
    #     sort_order: "ASC", # accepts ASC, DESC
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].alert_id #=> String
    #   resp.items[0].space_id #=> String
    #   resp.items[0].profile_id #=> String
    #   resp.items[0].notification_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].state.value #=> String, one of "OK", "WARNING", "CRITICAL", "NODATA"
    #   resp.items[0].state.transitioned_at #=> Time
    #   resp.items[0].state.contributor_summary.warning_count #=> Integer
    #   resp.items[0].state.contributor_summary.critical_count #=> Integer
    #   resp.items[0].state.data.threshold_breached #=> Float
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].alert_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListAlerts AWS API Documentation
    #
    # @overload list_alerts(params = {})
    # @param [Hash] params ({})
    def list_alerts(params = {}, options = {})
      req = build_request(:list_alerts, params)
      req.send_request(options)
    end

    # Returns organization-level domain access grants, with optional
    # filtering by domain, principal, or permission. A grant is returned
    # only when it matches every filter supplied. With no filters, returns
    # the grants for the caller's organization.
    #
    # @option params [String] :domain_id
    #   Filter by domain ID.
    #
    # @option params [String] :principal_id
    #   Filter by principal ID.
    #
    # @option params [String] :principal_type
    #   Filter by principal type.
    #
    # @option params [String] :permission
    #   Filter by permission level.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Supply the same filters
    #   used on the request that returned it. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The maximum number of access grants to return per page. Defaults to
    #   100. A page can contain fewer results than this value even when more
    #   results remain; continue while nextToken is present.
    #
    # @return [Types::ListDomainAccessGrantsForOrganizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainAccessGrantsForOrganizationOutput#items #items} => Array&lt;Types::OrganizationAccessGrantSummary&gt;
    #   * {Types::ListDomainAccessGrantsForOrganizationOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List organization domain access grants
    #
    #   # The following example lists the first page of organization domain access grants and returns a nextToken to retrieve the
    #   # next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.list_domain_access_grants_for_organization({
    #     domain_id: "d-1a2b3c4d5e", 
    #     max_results: 50, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "org-domain-admin", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         domain_id: "d-1a2b3c4d5e", 
    #         grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #         grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d", 
    #         grant_type: "CUSTOMER_MANAGED", 
    #         permission: "ADMIN", 
    #         principal: {
    #           principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #           principal_type: "IDC_USER", 
    #         }, 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #       {
    #         name: "org-domain-admin-group", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         domain_id: "d-1a2b3c4d5e", 
    #         grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-access-grant/8a1b2c3d-4e5f-4a6b-8c7d-9e0f1a2b3c4d", 
    #         grant_id: "8a1b2c3d-4e5f-4a6b-8c7d-9e0f1a2b3c4d", 
    #         grant_type: "CUSTOMER_MANAGED", 
    #         permission: "ADMIN", 
    #         principal: {
    #           principal_id: "2f5a8c1b-6d3e-4f7a-8b9c-0d1e2f3a4b5c", 
    #           principal_type: "IDC_GROUP", 
    #         }, 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjIwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_access_grants_for_organization({
    #     domain_id: "DomainId",
    #     principal_id: "PrincipalId",
    #     principal_type: "IDC_USER", # accepts IDC_USER, IDC_GROUP, IAM_USER, IAM_ROLE, IAM_ROOT
    #     permission: "ADMIN", # accepts ADMIN
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].grant_id #=> String
    #   resp.items[0].grant_arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].principal.principal_type #=> String, one of "IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT"
    #   resp.items[0].principal.principal_id #=> String
    #   resp.items[0].principal.principal_attributes #=> Array
    #   resp.items[0].principal.principal_attributes[0].key #=> String
    #   resp.items[0].principal.principal_attributes[0].value #=> String
    #   resp.items[0].permission #=> String, one of "ADMIN"
    #   resp.items[0].grant_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListDomainAccessGrantsForOrganization AWS API Documentation
    #
    # @overload list_domain_access_grants_for_organization(params = {})
    # @param [Hash] params ({})
    def list_domain_access_grants_for_organization(params = {}, options = {})
      req = build_request(:list_domain_access_grants_for_organization, params)
      req.send_request(options)
    end

    # Returns the caller's domains: the account-scoped domain and the
    # organization-scoped domain, if either exists. At most two domains are
    # returned.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Tokens expire after 24
    #   hours.
    #
    # @option params [Integer] :max_results
    #   The maximum number of domains to return per page. Defaults to 100.
    #
    # @return [Types::ListDomainsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsOutput#items #items} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List domains
    #
    #   # The following example lists the caller's domains. At most two are returned — the account-scoped domain and the
    #   # organization-scoped domain — so there is no nextToken. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.list_domains({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "prod-observability", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #         domain_id: "d-1a2b3c4d5e", 
    #         identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #         region: "us-east-1", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #       {
    #         name: "prod-observability-org", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-domain/d-9z8y7x6w5v", 
    #         domain_id: "d-9z8y7x6w5v", 
    #         identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #         region: "us-east-1", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].domain_arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].identity_center_instance_arn #=> String
    #   resp.items[0].region #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].status #=> String, one of "ACTIVE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Lists the integrations in the account, optionally filtered by type,
    # status, or name. Results are paginated.
    #
    # @option params [String] :integration_type
    #   Returns only integrations of this provider type.
    #
    # @option params [String] :status
    #   Returns only integrations in this status.
    #
    # @option params [String] :name
    #   Returns only the integration with this exact name.
    #
    # @option params [String] :next_token
    #   Pagination token from a previous response; omit for the first page.
    #
    # @option params [Integer] :max_results
    #   Maximum number of integrations to return in one page.
    #
    # @return [Types::ListIntegrationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegrationsOutput#items #items} => Array&lt;Types::Integration&gt;
    #   * {Types::ListIntegrationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List integrations of a type
    #
    #   # The following example lists up to 20 AWS_INTEGRATION integrations in the account. Payloads are shown as JSON; on the
    #   # wire they are CBOR-encoded.
    #
    #   resp = client.list_integrations({
    #     integration_type: "AWS_INTEGRATION", 
    #     max_results: 20, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "my-aws-integration", 
    #         created_at: Time.parse("2026-09-16T00:03:00Z"), 
    #         integration_arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #         integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #         integration_type: "AWS_INTEGRATION", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-09-16T00:03:00Z"), 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjIwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integrations({
    #     integration_type: "AWS_CONFIG_SLREC", # accepts AWS_CONFIG_SLREC, SLACK, EXTERNAL_AGENT, AWS_INTEGRATION
    #     status: "ACTIVE", # accepts ACTIVE, DELETED, PENDING, PENDING_OAUTH, ERROR, FAILED
    #     name: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].integration_id #=> String
    #   resp.items[0].integration_arn #=> String
    #   resp.items[0].integration_type #=> String, one of "AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"
    #   resp.items[0].auth_type #=> String, one of "NONE", "OAUTH2", "API_KEY"
    #   resp.items[0].credential_arn #=> String
    #   resp.items[0].role_arn #=> String
    #   resp.items[0].integration_attributes #=> Hash
    #   resp.items[0].integration_attributes["StringMapKeyString"] #=> String
    #   resp.items[0].authorization_url #=> String
    #   resp.items[0].error_message #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].scope #=> String, one of "ACCOUNT", "ORGANIZATION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListIntegrations AWS API Documentation
    #
    # @overload list_integrations(params = {})
    # @param [Hash] params ({})
    def list_integrations(params = {}, options = {})
      req = build_request(:list_integrations, params)
      req.send_request(options)
    end

    # Returns the dashboards in a space, optionally filtered by name prefix.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [String] :name_prefix
    #   Filter to dashboards whose name starts with this prefix.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of dashboards to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more
    #   results remain; continue while nextToken is present.
    #
    # @return [Types::ListOmniDashboardsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOmniDashboardsOutput#items #items} => Array&lt;Types::OmniDashboardSummary&gt;
    #   * {Types::ListOmniDashboardsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List dashboards in a space
    #
    #   # The following example lists the first page of dashboards in a space and returns a nextToken to retrieve the next page.
    #   # Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.list_omni_dashboards({
    #     max_results: 50, 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "service-health-overview", 
    #         arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #         dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #         description: "Overview of service health metrics.", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #       {
    #         name: "cost-explorer-dashboard", 
    #         arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/d4e5f6a7-8b9c-4d0e-9f1a-2b3c4d5e6f70", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #         dashboard_id: "d4e5f6a7-8b9c-4d0e-9f1a-2b3c4d5e6f70", 
    #         description: "Monthly cost breakdown by service.", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjIwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_omni_dashboards({
    #     space_id: "SpaceId", # required
    #     name_prefix: "ListOmniDashboardsInputNamePrefixString",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].dashboard_id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListOmniDashboards AWS API Documentation
    #
    # @overload list_omni_dashboards(params = {})
    # @param [Hash] params ({})
    def list_omni_dashboards(params = {}, options = {})
      req = build_request(:list_omni_dashboards, params)
      req.send_request(options)
    end

    # Returns the spaces in the account, optionally filtered by domain.
    #
    # @option params [String] :domain_id
    #   Filter by domain ID.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Supply the same filters
    #   used on the request that returned it. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The maximum number of spaces to return per page. Defaults to 100. A
    #   page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    #
    # @return [Types::ListSpacesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSpacesOutput#items #items} => Array&lt;Types::SpaceSummary&gt;
    #   * {Types::ListSpacesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List spaces in a domain
    #
    #   # The following example lists the first page of spaces in a domain and returns a nextToken to retrieve the next page.
    #   # Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.list_spaces({
    #     domain_id: "d-1a2b3c4d5e", 
    #     max_results: 50, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "prod-observability", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #         owner_account_id: "123456789012", 
    #         region: "us-east-1", 
    #         space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #       {
    #         name: "staging-observability", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #         owner_account_id: "123456789012", 
    #         region: "us-east-1", 
    #         space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/b2c3d4e5-6f7a-4b8c-9d0e-1f2a3b4c5d6e", 
    #         space_id: "b2c3d4e5-6f7a-4b8c-9d0e-1f2a3b4c5d6e", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjIwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_spaces({
    #     domain_id: "DomainId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].space_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].space_arn #=> String
    #   resp.items[0].domain_arn #=> String
    #   resp.items[0].region #=> String
    #   resp.items[0].owner_account_id #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE", "SUSPENDED", "MOVING"
    #   resp.items[0].status_reason #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListSpaces AWS API Documentation
    #
    # @overload list_spaces(params = {})
    # @param [Hash] params ({})
    def list_spaces(params = {}, options = {})
      req = build_request(:list_spaces, params)
      req.send_request(options)
    end

    # Returns the spaces across all member accounts in the organization.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Tokens expire after 24
    #   hours.
    #
    # @option params [Integer] :max_results
    #   The maximum number of spaces to return per page. Defaults to 100.
    #
    # @return [Types::ListSpacesForOrganizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSpacesForOrganizationOutput#items #items} => Array&lt;Types::SpaceSummary&gt;
    #   * {Types::ListSpacesForOrganizationOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List spaces across the organization
    #
    #   # The following example lists the first page of spaces across all member accounts in the organization. The results include
    #   # spaces owned by different accounts, along with a nextToken to retrieve the next page. Payloads are shown as JSON; on the
    #   # wire they are CBOR-encoded.
    #
    #   resp = client.list_spaces_for_organization({
    #     max_results: 50, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "prod-observability", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         owner_account_id: "111122223333", 
    #         region: "us-east-1", 
    #         space_arn: "arn:aws:cloudwatch:us-east-1:111122223333:space/c1d2e3f4-5a6b-4c7d-8e9f-0a1b2c3d4e5f", 
    #         space_id: "c1d2e3f4-5a6b-4c7d-8e9f-0a1b2c3d4e5f", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #       {
    #         name: "prod-observability", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         owner_account_id: "444455556666", 
    #         region: "us-east-1", 
    #         space_arn: "arn:aws:cloudwatch:us-east-1:444455556666:space/d4e5f6a7-8b9c-4d0e-8f1a-2b3c4d5e6f7a", 
    #         space_id: "d4e5f6a7-8b9c-4d0e-8f1a-2b3c4d5e6f7a", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjIwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_spaces_for_organization({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].space_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].space_arn #=> String
    #   resp.items[0].domain_arn #=> String
    #   resp.items[0].region #=> String
    #   resp.items[0].owner_account_id #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE", "SUSPENDED", "MOVING"
    #   resp.items[0].status_reason #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListSpacesForOrganization AWS API Documentation
    #
    # @overload list_spaces_for_organization(params = {})
    # @param [Hash] params ({})
    def list_spaces_for_organization(params = {}, options = {})
      req = build_request(:list_spaces_for_organization, params)
      req.send_request(options)
    end

    # Lists fields available for telemetry queries.
    #
    # Returns a list of fields included in the specified dataset, granular
    # to telemetry type. Returned field names reflect the exact stored
    # casing and are case-sensitive when referenced in query expressions;
    # the query engine does not normalize identifier case.
    #
    # @option params [required, String] :data_set_name
    #   The name of the dataset to list fields for.
    #
    # @option params [String] :telemetry_type
    #   The type of telemetry to filter fields by.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Inclusive start of the lookback window. When omitted, the service
    #   defaults to the configured lookback before endTime.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Inclusive end of the lookback window. When omitted, the service
    #   defaults to the current time.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Reserved for future
    #   pagination; the service does not paginate at this time and returns
    #   null.
    #
    # @return [Types::ListTelemetryFieldsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTelemetryFieldsResponse#fields #fields} => Array&lt;Types::Field&gt;
    #   * {Types::ListTelemetryFieldsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List fields for a dataset
    #
    #   # The following example lists the log fields available in the specified dataset. Payloads are shown as JSON; on the wire
    #   # they are CBOR-encoded.
    #
    #   resp = client.list_telemetry_fields({
    #     data_set_name: "default", 
    #     telemetry_type: "LOGS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fields: [
    #       {
    #         name: "@timestamp", 
    #       }, 
    #       {
    #         name: "@message", 
    #       }, 
    #       {
    #         name: "attributes", 
    #         children: [
    #           {
    #             name: "http.method", 
    #           }, 
    #           {
    #             name: "http.status_code", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_telemetry_fields({
    #     data_set_name: "ListTelemetryFieldsRequestDataSetNameString", # required
    #     telemetry_type: "LOGS", # accepts LOGS, TRACES
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.fields #=> Array
    #   resp.fields[0].name #=> String
    #   resp.fields[0].children #=> Array
    #   resp.fields[0].children[0] #=> Types::Field
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListTelemetryFields AWS API Documentation
    #
    # @overload list_telemetry_fields(params = {})
    # @param [Hash] params ({})
    def list_telemetry_fields(params = {}, options = {})
      req = build_request(:list_telemetry_fields, params)
      req.send_request(options)
    end

    # Lists telemetry query sessions.
    #
    # Returns a list of telemetry query sessions owned by the caller.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of sessions to return per page.
    #
    # @return [Types::ListTelemetryQuerySessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTelemetryQuerySessionsResponse#sessions #sessions} => Array&lt;Types::SessionSummary&gt;
    #   * {Types::ListTelemetryQuerySessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List telemetry query sessions
    #
    #   # The following example lists the query sessions owned by the caller. Payloads are shown as JSON; on the wire they are
    #   # CBOR-encoded.
    #
    #   resp = client.list_telemetry_query_sessions({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "eyJvZmZzZXQiOjEwfQ==", 
    #     sessions: [
    #       {
    #         created_at: Time.parse("2026-09-16T00:00:00Z"), 
    #         last_activity_at: Time.parse("2026-09-16T00:05:00Z"), 
    #         session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f", 
    #         session_name: "prod-latency-investigation", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_telemetry_query_sessions({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].created_at #=> Time
    #   resp.sessions[0].last_activity_at #=> Time
    #   resp.sessions[0].session_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListTelemetryQuerySessions AWS API Documentation
    #
    # @overload list_telemetry_query_sessions(params = {})
    # @param [Hash] params ({})
    def list_telemetry_query_sessions(params = {}, options = {})
      req = build_request(:list_telemetry_query_sessions, params)
      req.send_request(options)
    end

    # Lists the views in the caller's account and region.
    #
    # Returns a summary for each view, optionally filtered by view type.
    # View definitions are not included — use GetView to retrieve them.
    #
    # @option params [String] :type
    #   Return only views of this ownership category.
    #
    # @option params [Integer] :max_results
    #   The maximum number of views to return per page.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @return [Types::ListViewsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListViewsResponse#items #items} => Array&lt;Types::ViewSummary&gt;
    #   * {Types::ListViewsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the views in an account and Region
    #
    #   # The following example returns a page of view summaries, filtered to user-created views. Definitions are not included —
    #   # call GetView to retrieve them. A nextToken is returned when more results are available. Payloads are shown as JSON; on
    #   # the wire they are CBOR-encoded.
    #
    #   resp = client.list_views({
    #     type: "USER", 
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "view.service_errors", 
    #         type: "USER", 
    #         created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #         description: "Error counts by service", 
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       }, 
    #     ], 
    #     next_token: "eyJvZmZzZXQiOjEwfQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_views({
    #     type: "USER", # accepts USER, MANAGED
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].type #=> String, one of "USER", "MANAGED"
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/ListViews AWS API Documentation
    #
    # @overload list_views(params = {})
    # @param [Hash] params ({})
    def list_views(params = {}, options = {})
      req = build_request(:list_views, params)
      req.send_request(options)
    end

    # Creates or updates the intelligence configuration for the calling
    # account. Account is identified via FAS (caller identity).
    #
    # @option params [String] :kms_key_arn
    #   Optional KMS key ARN to configure customer-managed encryption for
    #   anomaly data.
    #
    # @option params [Boolean] :remove_kms_key
    #   Set to true to disassociate the configured KMS key. Mutually exclusive
    #   with kmsKeyArn; the service returns ValidationException if both are
    #   provided.
    #
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeating a request with the same
    #   token applies the update at most once instead of reprocessing it.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PutIntelligenceConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutIntelligenceConfigurationOutput#account_id #account_id} => String
    #   * {Types::PutIntelligenceConfigurationOutput#kms_key_arn #kms_key_arn} => String
    #   * {Types::PutIntelligenceConfigurationOutput#updated_at #updated_at} => Time
    #   * {Types::PutIntelligenceConfigurationOutput#created_at #created_at} => Time
    #
    #
    # @example Example: Configure a customer-managed KMS key
    #
    #   # The following example sets the customer-managed KMS key used to encrypt the account's intelligence data. Payloads are
    #   # shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.put_intelligence_configuration({
    #     client_token: "b3f8c7d6-5b4a-4c3d-9e2f-1a0b2c3d4e5f", 
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_id: "123456789012", 
    #     created_at: Time.parse("2026-01-15T08:30:00Z"), 
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     updated_at: Time.parse("2026-09-16T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_intelligence_configuration({
    #     kms_key_arn: "IntelligenceKmsKeyArn",
    #     remove_kms_key: false,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.kms_key_arn #=> String
    #   resp.updated_at #=> Time
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/PutIntelligenceConfiguration AWS API Documentation
    #
    # @overload put_intelligence_configuration(params = {})
    # @param [Hash] params ({})
    def put_intelligence_configuration(params = {}, options = {})
      req = build_request(:put_intelligence_configuration, params)
      req.send_request(options)
    end

    # Searches Identity Center for users and groups in a domain. The domain
    # must be configured with Identity Center.
    #
    # To grant access to a result, pass its principalId to CreateAccessGrant
    # with a principalType of IDC\_USER for a user or IDC\_GROUP for a
    # group.
    #
    # @option params [required, String] :domain_id
    #   The ID of the domain to search within.
    #
    # @option params [required, String] :search_query
    #   A search term to match against user names, display names, and IDs.
    #   Pass * to list all principals. Maximum 128 characters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Defaults to 10. Valid only
    #   when searchQuery is *; other searches reject this parameter and
    #   return at most 10 results.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Valid only when
    #   searchQuery is *; other searches do not paginate and reject this
    #   parameter. Tokens expire after 24 hours.
    #
    # @return [Types::SearchPrincipalsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPrincipalsOutput#results #results} => Array&lt;Types::PrincipalSearchResult&gt;
    #   * {Types::SearchPrincipalsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Search principals by name
    #
    #   # The following example searches a domain for principals whose name matches a text query. A text search (any searchQuery
    #   # other than *) returns at most 10 results and does not paginate, so maxResults and nextToken are not supplied and no
    #   # nextToken is returned. To grant access to a result, pass its principalId to CreateAccessGrant with a principalType of
    #   # IDC_USER for a user or IDC_GROUP for a group. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.search_principals({
    #     domain_id: "d-1a2b3c4d5e", 
    #     search_query: "jane", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     results: [
    #       {
    #         display_name: "Jane Doe", 
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f", 
    #         principal_type: "USER", 
    #         user_name: "jane.doe", 
    #       }, 
    #       {
    #         display_name: "Jane's Analysts", 
    #         principal_id: "2f5a8c1b-6d3e-4f7a-8b9c-0d1e2f3a4b5c", 
    #         principal_type: "GROUP", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_principals({
    #     domain_id: "DomainId", # required
    #     search_query: "SearchPrincipalsInputSearchQueryString", # required
    #     max_results: 1,
    #     next_token: "SearchPrincipalsNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].principal_id #=> String
    #   resp.results[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.results[0].display_name #=> String
    #   resp.results[0].user_name #=> String
    #   resp.results[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/SearchPrincipals AWS API Documentation
    #
    # @overload search_principals(params = {})
    # @param [Hash] params ({})
    def search_principals(params = {}, options = {})
      req = build_request(:search_principals, params)
      req.send_request(options)
    end

    # Starts a telemetry query within a session.
    #
    # Submits the provided query string for execution in the specified
    # session. Use GetTelemetryQueryResults to poll for results and check
    # query status.
    #
    # @option params [required, String] :query_string
    #   The query string to execute.
    #
    # @option params [required, String] :session_id
    #   The unique ID of the session.
    #
    # @return [Types::StartTelemetryQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTelemetryQueryResponse#query_id #query_id} => String
    #   * {Types::StartTelemetryQueryResponse#session_id #session_id} => String
    #
    #
    # @example Example: Start a telemetry query
    #
    #   # The following example submits a SQL query within a session and returns the query ID used to poll for results. Payloads
    #   # are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.start_telemetry_query({
    #     query_string: "SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@timestamp` BETWEEN NOW() - INTERVAL '1 HOUR' AND NOW() ORDER BY `@timestamp` DESC LIMIT 100", 
    #     session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     query_id: "3b2a1c0d-7e6f-4a5b-8c9d-0e1f2a3b4c5d", 
    #     session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_telemetry_query({
    #     query_string: "StartTelemetryQueryRequestQueryStringString", # required
    #     session_id: "StartTelemetryQueryRequestSessionIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StartTelemetryQuery AWS API Documentation
    #
    # @overload start_telemetry_query(params = {})
    # @param [Hash] params ({})
    def start_telemetry_query(params = {}, options = {})
      req = build_request(:start_telemetry_query, params)
      req.send_request(options)
    end

    # Starts a new telemetry query session.
    #
    # A session provides a logical grouping for one or more telemetry
    # queries. The returned session ID is required when starting queries via
    # StartTelemetryQuery.
    #
    # @option params [String] :session_name
    #   A human-readable name for the session. Names under `/aws/` are
    #   reserved for service integrations.
    #
    # @return [Types::StartTelemetryQuerySessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTelemetryQuerySessionResponse#session_id #session_id} => String
    #
    #
    # @example Example: Start a telemetry query session
    #
    #   # The following example starts a session for grouping telemetry queries and returns its session ID. Payloads are shown as
    #   # JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.start_telemetry_query_session({
    #     session_name: "prod-latency-investigation", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_telemetry_query_session({
    #     session_name: "StartTelemetryQuerySessionRequestSessionNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StartTelemetryQuerySession AWS API Documentation
    #
    # @overload start_telemetry_query_session(params = {})
    # @param [Hash] params ({})
    def start_telemetry_query_session(params = {}, options = {})
      req = build_request(:start_telemetry_query_session, params)
      req.send_request(options)
    end

    # Stops a running telemetry query.
    #
    # @option params [required, String] :query_id
    #   The unique ID of the query.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Stop a running telemetry query
    #
    #   # The following example stops a running query by its ID. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.stop_telemetry_query({
    #     query_id: "3b2a1c0d-7e6f-4a5b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_telemetry_query({
    #     query_id: "StopTelemetryQueryRequestQueryIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StopTelemetryQuery AWS API Documentation
    #
    # @overload stop_telemetry_query(params = {})
    # @param [Hash] params ({})
    def stop_telemetry_query(params = {}, options = {})
      req = build_request(:stop_telemetry_query, params)
      req.send_request(options)
    end

    # Stops a telemetry query session.
    #
    # Terminates the specified session. After a session is stopped it cannot
    # be reused.
    #
    # @option params [required, String] :session_id
    #   The unique ID of the session.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Stop a telemetry query session
    #
    #   # The following example terminates the specified session. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.stop_telemetry_query_session({
    #     session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_telemetry_query_session({
    #     session_id: "StopTelemetryQuerySessionRequestSessionIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/StopTelemetryQuerySession AWS API Documentation
    #
    # @overload stop_telemetry_query_session(params = {})
    # @param [Hash] params ({})
    def stop_telemetry_query_session(params = {}, options = {})
      req = build_request(:stop_telemetry_query_session, params)
      req.send_request(options)
    end

    # Updates the name or description of an access profile.
    #
    # Only the provided fields are changed; omitted fields are left
    # unchanged.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :profile_id
    #   The unique ID of the access profile to update.
    #
    # @option params [String] :name
    #   A new name for the access profile. Omit to leave unchanged.
    #
    # @option params [String] :description
    #   A new description of the access profile. Omit to leave unchanged.
    #
    # @return [Types::UpdateAccessProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccessProfileOutput#access_profile #access_profile} => Types::AccessProfile
    #
    #
    # @example Example: Update an access profile description
    #
    #   # The following example updates only the description of an access profile; the name is left unchanged. Payloads are shown
    #   # as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.update_access_profile({
    #     description: "Read-only access for analysts and on-call responders.", 
    #     profile_id: "analyst-readonly", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     access_profile: {
    #       name: "Analyst read-only profile", 
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/analyst-readonly", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       description: "Read-only access for analysts and on-call responders.", 
    #       profile_id: "analyst-readonly", 
    #       profile_type: "CUSTOMER_MANAGED", 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_profile({
    #     space_id: "SpaceId", # required
    #     profile_id: "ProfileId", # required
    #     name: "AccessProfileName",
    #     description: "UpdateAccessProfileInputDescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_profile.profile_id #=> String
    #   resp.access_profile.space_id #=> String
    #   resp.access_profile.arn #=> String
    #   resp.access_profile.name #=> String
    #   resp.access_profile.description #=> String
    #   resp.access_profile.created_at #=> Time
    #   resp.access_profile.updated_at #=> Time
    #   resp.access_profile.assume_status #=> String, one of "ALLOWED", "DENIED"
    #   resp.access_profile.profile_type #=> String, one of "SERVICE_MANAGED", "CUSTOMER_MANAGED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateAccessProfile AWS API Documentation
    #
    # @overload update_access_profile(params = {})
    # @param [Hash] params ({})
    def update_access_profile(params = {}, options = {})
      req = build_request(:update_access_profile, params)
      req.send_request(options)
    end

    # Updates an existing alert.
    #
    # Only non-null fields overwrite existing values.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :alert_id
    #   The alert to update.
    #
    # @option params [String] :profile_id
    #   The ID of the access profile associated with the alert.
    #
    # @option params [String] :name
    #   A new display name for the alert. Omit to leave the name unchanged
    #   (apply-if-present / PATCH). Same constraints as CreateAlert.name; the
    #   name is not the alert's identity, so a rename never changes the
    #   alertId.
    #
    # @option params [String] :description
    #   A new description of the alert. Omit to leave unchanged.
    #
    # @option params [Types::Rule] :rule
    #   The rule that defines how the alert is evaluated. Omit to leave
    #   unchanged. Each sub-block is replaced whole when present: \{@code
    #   query}, \{@code condition}, \{@code evaluation} and \{@code noData}
    #   are applied only when supplied, and within a supplied block an omitted
    #   optional member is cleared to unset (null/absent) rather than
    #   preserved from the stored alert or defaulted. See \{@link
    #   AlertCondition} and \{@link AlertEvaluation}.
    #
    # @option params [Boolean] :notifications_enabled
    #   Whether actions (notifications) are enabled for this alert. Omitted =
    #   leave existing value unchanged.
    #
    # @option params [Array<Types::NotificationRule>] :notification_rules
    #   Replaces the entire notification rule list when present; full-replace,
    #   not merge. Omitted = leave existing rules unchanged. An empty list
    #   clears all rules (the alert keeps evaluating; only notifications
    #   stop).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Raise an alert's thresholds
    #
    #   # The following example replaces only the condition of an alert's rule; the query, the evaluation cadence and the
    #   # notification rules are left unchanged. A supplied condition is replaced whole rather than merged, so every threshold to
    #   # keep is sent again. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.update_alert({
    #     alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f", 
    #     rule: {
    #       telemetry_rule: {
    #         condition: {
    #           comparator: "GT", 
    #           critical_threshold: 400.0, 
    #           threshold_field: "error_count", 
    #           threshold_mode: "FIELD_VALUE", 
    #           warning_threshold: 100.0, 
    #         }, 
    #       }, 
    #     }, 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alert({
    #     space_id: "SpaceId", # required
    #     alert_id: "AlertId", # required
    #     profile_id: "ProfileId",
    #     name: "UpdateAlertInputNameString",
    #     description: "UpdateAlertInputDescriptionString",
    #     rule: {
    #       telemetry_rule: {
    #         query: {
    #           language: "SQL", # required, accepts SQL, PROMQL
    #           expression: "AlertRuleQueryExpressionString", # required
    #         },
    #         condition: {
    #           threshold_mode: "COUNT_OF_RESULTS", # accepts COUNT_OF_RESULTS, FIELD_VALUE
    #           threshold_field: "AlertConditionThresholdFieldString",
    #           comparator: "GT", # accepts GT, LT, GTE, LTE
    #           warning_threshold: 1.0,
    #           critical_threshold: 1.0,
    #         },
    #         evaluation: {
    #           interval_seconds: 1, # required
    #           pending_duration_seconds: 1,
    #           recovery_duration_seconds: 1,
    #         },
    #         no_data: {
    #           treat_as: "OK", # required, accepts OK, WARNING, CRITICAL, NODATA
    #         },
    #       },
    #     },
    #     notifications_enabled: false,
    #     notification_rules: [
    #       {
    #         trigger: { # required
    #           state_values: ["OK"], # accepts OK, WARNING, CRITICAL, NODATA
    #         },
    #         target: { # required
    #           type: "sns", # required, accepts sns, slack, pagerduty
    #           arn: "NotificationTargetArnString", # required
    #           metadata: {
    #             "NotificationTargetMetadataMapKeyString" => "NotificationTargetMetadataMapValueString",
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateAlert AWS API Documentation
    #
    # @overload update_alert(params = {})
    # @param [Hash] params ({})
    def update_alert(params = {}, options = {})
      req = build_request(:update_alert, params)
      req.send_request(options)
    end

    # Updates a domain's name or identity provider configuration.
    #
    # Only the provided fields are changed; omitted fields are left
    # unchanged. Renaming a domain also changes the endpoint URLs derived
    # from its name.
    #
    # @option params [required, String] :domain_id
    #   The unique ID of the domain to update.
    #
    # @option params [String] :name
    #   A new name for the domain. Omit to leave unchanged. Must be 3-63
    #   characters: lowercase letters, numbers, and hyphens. It must begin and
    #   end with a letter or number and cannot contain consecutive hyphens.
    #
    # @option params [Array<String>] :identity_providers
    #   The identity providers to configure for the domain.
    #
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Identity provider configuration for the domain.
    #
    # @return [Types::UpdateDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainOutput#domain #domain} => Types::Domain
    #
    #
    # @example Example: Rename a domain
    #
    #   # The following example performs a partial update that changes only the domain name; the omitted fields are left
    #   # unchanged. Renaming the domain also updates the endpoint URLs derived from its name, and updatedAt advances past
    #   # createdAt. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.update_domain({
    #     name: "prod-observability-metrics", 
    #     domain_id: "d-1a2b3c4d5e", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     domain: {
    #       name: "prod-observability-metrics", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       custom_endpoint_urls: [
    #         "https://prod-observability-metrics.cloudwatch-omni.global.app.aws", 
    #       ], 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #       domain_endpoint_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws", 
    #       domain_id: "d-1a2b3c4d5e", 
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938", 
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #         }, 
    #       }, 
    #       identity_providers: [
    #         "IDC", 
    #       ], 
    #       region: "us-east-1", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain({
    #     domain_id: "DomainId", # required
    #     name: "UpdateDomainInputNameString",
    #     identity_providers: ["IAM"], # accepts IAM, IDC
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.domain_id #=> String
    #   resp.domain.domain_arn #=> String
    #   resp.domain.name #=> String
    #   resp.domain.identity_providers #=> Array
    #   resp.domain.identity_providers[0] #=> String, one of "IAM", "IDC"
    #   resp.domain.identity_provider_configuration.identity_center_configuration.identity_center_instance_arn #=> String
    #   resp.domain.domain_endpoint_url #=> String
    #   resp.domain.custom_endpoint_urls #=> Array
    #   resp.domain.custom_endpoint_urls[0] #=> String
    #   resp.domain.identity_center_application_arn #=> String
    #   resp.domain.region #=> String
    #   resp.domain.created_at #=> Time
    #   resp.domain.updated_at #=> Time
    #   resp.domain.status #=> String, one of "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateDomain AWS API Documentation
    #
    # @overload update_domain(params = {})
    # @param [Hash] params ({})
    def update_domain(params = {}, options = {})
      req = build_request(:update_domain, params)
      req.send_request(options)
    end

    # Updates an organization domain's name or identity provider
    # configuration. Call this operation in the Region where the domain was
    # created.
    #
    # Only the provided fields are changed; omitted fields are left
    # unchanged. Renaming a domain also changes the endpoint URLs derived
    # from its name.
    #
    # @option params [required, String] :domain_id
    #   The ID of the organization domain to update.
    #
    # @option params [String] :name
    #   A new name for the organization domain. Omit to leave unchanged. Must
    #   be 3-63 characters: lowercase letters, numbers, and hyphens. It must
    #   begin and end with a letter or number and cannot contain consecutive
    #   hyphens.
    #
    # @option params [Array<String>] :identity_providers
    #   The identity providers to configure for the domain. Omit to leave
    #   unchanged.
    #
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Identity provider configuration for the domain. Omit to leave
    #   unchanged.
    #
    # @return [Types::UpdateDomainForOrganizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainForOrganizationOutput#organization_domain #organization_domain} => Types::OrganizationDomain
    #
    #
    # @example Example: Rename an organization domain
    #
    #   # The following example performs a partial update that changes only the organization domain name; the omitted fields are
    #   # left unchanged. The endpoint URLs derived from the name are updated, and updatedAt advances past createdAt. Payloads are
    #   # shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.update_domain_for_organization({
    #     name: "prod-observability-org-metrics", 
    #     domain_id: "d-9z8y7x6w5v", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organization_domain: {
    #       name: "prod-observability-org-metrics", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       custom_endpoint_urls: [
    #         "https://prod-observability-org-metrics.cloudwatch-omni.global.app.aws", 
    #       ], 
    #       domain_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchOrganizationDomainAccessRole", 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-domain/d-9z8y7x6w5v", 
    #       domain_endpoint_url: "https://d-9z8y7x6w5v.cloudwatch-omni.global.app.aws", 
    #       domain_id: "d-9z8y7x6w5v", 
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938", 
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef", 
    #         }, 
    #       }, 
    #       identity_providers: [
    #         "IDC", 
    #       ], 
    #       organization_id: "o-a1b2c3d4e5", 
    #       owner_account_id: "123456789012", 
    #       region: "us-east-1", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_for_organization({
    #     domain_id: "DomainId", # required
    #     name: "UpdateDomainForOrganizationInputNameString",
    #     identity_providers: ["IAM"], # accepts IAM, IDC
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_domain.domain_id #=> String
    #   resp.organization_domain.domain_arn #=> String
    #   resp.organization_domain.name #=> String
    #   resp.organization_domain.domain_endpoint_url #=> String
    #   resp.organization_domain.custom_endpoint_urls #=> Array
    #   resp.organization_domain.custom_endpoint_urls[0] #=> String
    #   resp.organization_domain.organization_id #=> String
    #   resp.organization_domain.owner_account_id #=> String
    #   resp.organization_domain.identity_providers #=> Array
    #   resp.organization_domain.identity_providers[0] #=> String, one of "IAM", "IDC"
    #   resp.organization_domain.identity_provider_configuration.identity_center_configuration.identity_center_instance_arn #=> String
    #   resp.organization_domain.identity_center_application_arn #=> String
    #   resp.organization_domain.region #=> String
    #   resp.organization_domain.status #=> String, one of "ACTIVE"
    #   resp.organization_domain.domain_access_role_arn #=> String
    #   resp.organization_domain.created_at #=> Time
    #   resp.organization_domain.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateDomainForOrganization AWS API Documentation
    #
    # @overload update_domain_for_organization(params = {})
    # @param [Hash] params ({})
    def update_domain_for_organization(params = {}, options = {})
      req = build_request(:update_domain_for_organization, params)
      req.send_request(options)
    end

    # Updates an existing integration, identified by its id, ARN, or name.
    # Only the fields you provide are changed.
    #
    # @option params [required, Types::IntegrationIdentifier] :identifier
    #   Identifies the integration to update — exactly one of integrationId,
    #   integrationArn, or integrationName.
    #
    # @option params [Types::IntegrationCredential] :credential
    #   The replacement credential used to authenticate with the provider.
    #
    # @option params [Hash<String,String>] :integration_attributes
    #   The provider-specific attributes to associate with the integration.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name of the IAM role assumed to access the
    #   integration.
    #
    # @return [Types::UpdateIntegrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIntegrationOutput#integration #integration} => Types::Integration
    #
    #
    # @example Example: Update an integration's attributes
    #
    #   # The following example replaces the provider-specific attributes of the integration identified by its id. Payloads are
    #   # shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.update_integration({
    #     identifier: {
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #     }, 
    #     integration_attributes: {
    #       "notificationChannel" => "ops-oncall", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     integration: {
    #       name: "my-aws-integration", 
    #       created_at: Time.parse("2026-09-16T00:03:00Z"), 
    #       integration_arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       integration_attributes: {
    #         "notificationChannel" => "ops-oncall", 
    #       }, 
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       integration_type: "AWS_INTEGRATION", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-16T12:00:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration({
    #     identifier: { # required
    #       integration_id: "String",
    #       integration_arn: "IntegrationArn",
    #       integration_name: "String",
    #     },
    #     credential: {
    #       oauth_code_credential: {
    #         auth_code: "OAuthCodeCredentialAuthCodeString", # required
    #       },
    #       oauth_client_credential: {
    #         client_id: "String", # required
    #         client_secret: "SensitiveString", # required
    #         provider_id: "String",
    #       },
    #       api_key_credential: {
    #         api_key_value: "ApiKeyCredentialApiKeyValueString", # required
    #       },
    #     },
    #     integration_attributes: {
    #       "StringMapKeyString" => "StringMapValueString",
    #     },
    #     role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.integration.integration_id #=> String
    #   resp.integration.integration_arn #=> String
    #   resp.integration.integration_type #=> String, one of "AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"
    #   resp.integration.name #=> String
    #   resp.integration.status #=> String, one of "ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"
    #   resp.integration.auth_type #=> String, one of "NONE", "OAUTH2", "API_KEY"
    #   resp.integration.credential_arn #=> String
    #   resp.integration.role_arn #=> String
    #   resp.integration.integration_attributes #=> Hash
    #   resp.integration.integration_attributes["StringMapKeyString"] #=> String
    #   resp.integration.authorization_url #=> String
    #   resp.integration.error_message #=> String
    #   resp.integration.created_at #=> Time
    #   resp.integration.updated_at #=> Time
    #   resp.integration.scope #=> String, one of "ACCOUNT", "ORGANIZATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateIntegration AWS API Documentation
    #
    # @overload update_integration(params = {})
    # @param [Hash] params ({})
    def update_integration(params = {}, options = {})
      req = build_request(:update_integration, params)
      req.send_request(options)
    end

    # Updates an existing dashboard within a space.
    #
    # Only the provided fields are changed; omitted fields are left
    # unchanged.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space.
    #
    # @option params [required, String] :dashboard_id
    #   The unique ID of the dashboard.
    #
    # @option params [String] :body
    #   The new dashboard definition, as a JSON document. Maximum 1 MiB. Omit
    #   to leave unchanged.
    #
    # @option params [String] :name
    #   A new name for the dashboard. Omit to leave unchanged.
    #
    # @option params [String] :description
    #   A new description of the dashboard. Omit to leave unchanged.
    #
    # @return [Types::UpdateOmniDashboardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOmniDashboardOutput#omni_dashboard #omni_dashboard} => Types::OmniDashboard
    #
    #
    # @example Example: Update a dashboard body
    #
    #   # The following example updates only the body of a dashboard; the name and description are left unchanged. Payloads are
    #   # shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.update_omni_dashboard({
    #     body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":24,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"],[\"AWS/Lambda\",\"Throttles\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors and Throttles\"}}]}", 
    #     dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     omni_dashboard: {
    #       name: "service-health-overview", 
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #       body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":24,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"],[\"AWS/Lambda\",\"Throttles\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors and Throttles\"}}]}", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin", 
    #       dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f", 
    #       description: "Overview of service health metrics.", 
    #       tags: {
    #         "Team" => "observability", 
    #       }, 
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_omni_dashboard({
    #     space_id: "SpaceId", # required
    #     dashboard_id: "DashboardId", # required
    #     body: "UpdateOmniDashboardInputBodyString",
    #     name: "UpdateOmniDashboardInputNameString",
    #     description: "UpdateOmniDashboardInputDescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.omni_dashboard.dashboard_id #=> String
    #   resp.omni_dashboard.arn #=> String
    #   resp.omni_dashboard.name #=> String
    #   resp.omni_dashboard.body #=> String
    #   resp.omni_dashboard.created_by #=> String
    #   resp.omni_dashboard.description #=> String
    #   resp.omni_dashboard.tags #=> Hash
    #   resp.omni_dashboard.tags["TagKey"] #=> String
    #   resp.omni_dashboard.created_at #=> Time
    #   resp.omni_dashboard.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateOmniDashboard AWS API Documentation
    #
    # @overload update_omni_dashboard(params = {})
    # @param [Hash] params ({})
    def update_omni_dashboard(params = {}, options = {})
      req = build_request(:update_omni_dashboard, params)
      req.send_request(options)
    end

    # Updates a space.
    #
    # Only the provided fields are changed; omitted fields are left
    # unchanged.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the space to update.
    #
    # @option params [String] :name
    #   A new name for the space. Omit to leave unchanged. Must be 3-64
    #   characters: lowercase letters, numbers, and hyphens. It must begin and
    #   end with a letter or number and cannot contain consecutive hyphens.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   How to encrypt the space's data at rest. Omit to leave encryption
    #   unchanged. Pass `encryptionStrategy` AWS\_OWNED to stop using a
    #   customer managed key and revert to service owned encryption.
    #
    # @return [Types::UpdateSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSpaceOutput#space #space} => Types::Space
    #
    #
    # @example Example: Rename a space
    #
    #   # The following example updates only the name of a space; omitted fields are left unchanged. The response returns the full
    #   # space with a later updatedAt timestamp. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #
    #   resp = client.update_space({
    #     name: "prod-observability-team", 
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     space: {
    #       name: "prod-observability-team", 
    #       agent_core_evaluation_role_arn: "arn:aws:iam::123456789012:role/CloudWatchAgentCoreEvaluationRole", 
    #       created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #       data_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchSpaceDataAccessRole", 
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e", 
    #       encryption_configuration: {
    #         encryption_strategy: "CUSTOMER_MANAGED", 
    #         kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       }, 
    #       owner_account_id: "123456789012", 
    #       region: "us-east-1", 
    #       space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_space({
    #     space_id: "SpaceId", # required
    #     name: "UpdateSpaceInputNameString",
    #     encryption_configuration: {
    #       encryption_strategy: "AWS_OWNED", # required, accepts AWS_OWNED, CUSTOMER_MANAGED
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.space.space_id #=> String
    #   resp.space.name #=> String
    #   resp.space.space_arn #=> String
    #   resp.space.domain_arn #=> String
    #   resp.space.region #=> String
    #   resp.space.owner_account_id #=> String
    #   resp.space.data_access_role_arn #=> String
    #   resp.space.created_at #=> Time
    #   resp.space.updated_at #=> Time
    #   resp.space.agent_core_evaluation_role_arn #=> String
    #   resp.space.status #=> String, one of "ACTIVE", "SUSPENDED", "MOVING"
    #   resp.space.status_reason #=> String
    #   resp.space.encryption_configuration.encryption_strategy #=> String, one of "AWS_OWNED", "CUSTOMER_MANAGED"
    #   resp.space.encryption_configuration.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateSpace AWS API Documentation
    #
    # @overload update_space(params = {})
    # @param [Hash] params ({})
    def update_space(params = {}, options = {})
      req = build_request(:update_space, params)
      req.send_request(options)
    end

    # Updates an existing view's definition and/or description.
    #
    # Only the fields you provide are changed. Managed views cannot be
    # updated.
    #
    # @option params [required, String] :name
    #   The name of the view to update.
    #
    # @option params [String] :definition
    #   The new SQL query that defines the view. Omit to leave unchanged.
    #
    # @option params [String] :description
    #   The new description of the view. Omit to leave unchanged.
    #
    # @return [Types::UpdateViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateViewResponse#name #name} => String
    #   * {Types::UpdateViewResponse#type #type} => String
    #   * {Types::UpdateViewResponse#description #description} => String
    #   * {Types::UpdateViewResponse#definition #definition} => String
    #   * {Types::UpdateViewResponse#created_at #created_at} => Time
    #   * {Types::UpdateViewResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateViewResponse#arn #arn} => String
    #
    #
    # @example Example: Update a view's definition
    #
    #   # The following example changes only the definition; the omitted description is left unchanged. Managed views cannot be
    #   # updated. The response carries the view's effective configuration. Payloads are shown as JSON; on the wire they are
    #   # CBOR-encoded.
    #
    #   resp = client.update_view({
    #     name: "view.service_errors", 
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE status['code'] IN ('2', 'ERROR') GROUP BY service", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "view.service_errors", 
    #     type: "USER", 
    #     arn: "arn:aws:cloudwatch:us-east-1:123456789012:view/view.service_errors", 
    #     created_at: Time.parse("2026-09-16T14:22:31Z"), 
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE status['code'] IN ('2', 'ERROR') GROUP BY service", 
    #     description: "Error counts by service", 
    #     updated_at: Time.parse("2026-09-17T09:11:52Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_view({
    #     name: "ViewName", # required
    #     definition: "ViewDefinition",
    #     description: "ViewDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "USER", "MANAGED"
    #   resp.description #=> String
    #   resp.definition #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudwatchomni-2025-01-01/UpdateView AWS API Documentation
    #
    # @overload update_view(params = {})
    # @param [Hash] params ({})
    def update_view(params = {}, options = {})
      req = build_request(:update_view, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CloudWatchOmni')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cloudwatchomni'
      context[:gem_version] = '1.0.0'
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
