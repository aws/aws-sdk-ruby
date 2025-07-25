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

module Aws::SecurityIR
  # An API client for SecurityIR.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SecurityIR::Client.new(
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

    @identifier = :securityir

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
    add_plugin(Aws::SecurityIR::Plugins::Endpoints)

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
    #   @option options [Aws::SecurityIR::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SecurityIR::EndpointParameters`.
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

    # Grants permission to view an existing membership.
    #
    # @option params [required, String] :membership_id
    #   Required element used in combination with BatchGetMemberAccountDetails
    #   to identify the membership ID to query.
    #
    # @option params [required, Array<String>] :account_ids
    #   Optional element to query the membership relationship status to a
    #   provided list of account IDs.
    #
    # @return [Types::BatchGetMemberAccountDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetMemberAccountDetailsResponse#items #items} => Array&lt;Types::GetMembershipAccountDetailItem&gt;
    #   * {Types::BatchGetMemberAccountDetailsResponse#errors #errors} => Array&lt;Types::GetMembershipAccountDetailError&gt;
    #
    #
    # @example Example: Invoke BatchGetMemberAccountDetails
    #
    #   resp = client.batch_get_member_account_details({
    #     account_ids: [
    #       "123412341234", 
    #     ], 
    #     membership_id: "m-abcd1234efgh", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         account_id: "123412341234", 
    #         relationship_status: "Associated", 
    #         relationship_type: "Organization", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_member_account_details({
    #     membership_id: "MembershipId", # required
    #     account_ids: ["AWSAccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].account_id #=> String
    #   resp.items[0].relationship_status #=> String, one of "Associated", "Disassociated"
    #   resp.items[0].relationship_type #=> String, one of "Organization"
    #   resp.errors #=> Array
    #   resp.errors[0].account_id #=> String
    #   resp.errors[0].error #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/BatchGetMemberAccountDetails AWS API Documentation
    #
    # @overload batch_get_member_account_details(params = {})
    # @param [Hash] params ({})
    def batch_get_member_account_details(params = {}, options = {})
      req = build_request(:batch_get_member_account_details, params)
      req.send_request(options)
    end

    # Grants permissions to cancel an existing membership.
    #
    # @option params [required, String] :membership_id
    #   Required element used in combination with CancelMembershipRequest to
    #   identify the membership ID to cancel.
    #
    # @return [Types::CancelMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelMembershipResponse#membership_id #membership_id} => String
    #
    #
    # @example Example: Invoke CancelMembership
    #
    #   resp = client.cancel_membership({
    #     membership_id: "m-abcd1234efgh", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     membership_id: "m-abcd1234efgh", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_membership({
    #     membership_id: "MembershipId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CancelMembership AWS API Documentation
    #
    # @overload cancel_membership(params = {})
    # @param [Hash] params ({})
    def cancel_membership(params = {}, options = {})
      req = build_request(:cancel_membership, params)
      req.send_request(options)
    end

    # Grants permission to close an existing case.
    #
    # @option params [required, String] :case_id
    #   Required element used in combination with CloseCase to identify the
    #   case ID to close.
    #
    # @return [Types::CloseCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CloseCaseResponse#case_status #case_status} => String
    #   * {Types::CloseCaseResponse#closed_date #closed_date} => Time
    #
    #
    # @example Example: Invoke CloseCase
    #
    #   resp = client.close_case({
    #     case_id: "8403556009", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     case_status: "Closed", 
    #     closed_date: Time.parse("2024-02-27T17:01:33.000Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.close_case({
    #     case_id: "CaseId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.case_status #=> String, one of "Submitted", "Acknowledged", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities", "Ready to Close", "Closed"
    #   resp.closed_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CloseCase AWS API Documentation
    #
    # @overload close_case(params = {})
    # @param [Hash] params ({})
    def close_case(params = {}, options = {})
      req = build_request(:close_case, params)
      req.send_request(options)
    end

    # Grants permission to create a new case.
    #
    # @option params [String] :client_token
    #   Required element used in combination with CreateCase.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :resolver_type
    #   Required element used in combination with CreateCase to identify the
    #   resolver type. Available resolvers include self-supported \|
    #   aws-supported.
    #
    # @option params [required, String] :title
    #   Required element used in combination with CreateCase to provide a
    #   title for the new case.
    #
    # @option params [required, String] :description
    #   Required element used in combination with CreateCase to provide a
    #   description for the new case.
    #
    # @option params [required, String] :engagement_type
    #   Required element used in combination with CreateCase to provide an
    #   engagement type for the new cases. Available engagement types include
    #   Security Incident \| Investigation
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :reported_incident_start_date
    #   Required element used in combination with CreateCase to provide an
    #   initial start date for the unauthorized activity.
    #
    # @option params [required, Array<String>] :impacted_accounts
    #   Required element used in combination with CreateCase to provide a list
    #   of impacted accounts.
    #
    # @option params [required, Array<Types::Watcher>] :watchers
    #   Required element used in combination with CreateCase to provide a list
    #   of entities to receive notifications for case updates.
    #
    # @option params [Array<Types::ThreatActorIp>] :threat_actor_ip_addresses
    #   An optional element used in combination with CreateCase to provide a
    #   list of suspicious internet protocol addresses associated with
    #   unauthorized activity.
    #
    # @option params [Array<String>] :impacted_services
    #   An optional element used in combination with CreateCase to provide a
    #   list of services impacted.
    #
    # @option params [Array<Types::ImpactedAwsRegion>] :impacted_aws_regions
    #   An optional element used in combination with CreateCase to provide a
    #   list of impacted regions.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional element used in combination with CreateCase to add
    #   customer specified tags to a case.
    #
    # @return [Types::CreateCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCaseResponse#case_id #case_id} => String
    #
    #
    # @example Example: Invoke CreateCase
    #
    #   resp = client.create_case({
    #     description: "Case description", 
    #     engagement_type: "Investigation", 
    #     impacted_accounts: [
    #       "000000000000", 
    #       "111111111111", 
    #     ], 
    #     impacted_aws_regions: [
    #       {
    #         region: "ap-southeast-1", 
    #       }, 
    #     ], 
    #     impacted_services: [
    #       "Amazon EC2", 
    #       "Amazon EKS", 
    #     ], 
    #     reported_incident_start_date: Time.parse("2023-03-27T15:32:01.789Z"), 
    #     resolver_type: "Self", 
    #     threat_actor_ip_addresses: [
    #       {
    #         ip_address: "192.168.192.168", 
    #         user_agent: "Browser", 
    #       }, 
    #     ], 
    #     title: "My sample case", 
    #     watchers: [
    #       {
    #         name: "Alice", 
    #         email: "alice@example.com", 
    #         job_title: "CEO", 
    #       }, 
    #       {
    #         name: "Bob", 
    #         email: "bob@example.com", 
    #         job_title: "CFO", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_case({
    #     client_token: "CreateCaseRequestClientTokenString",
    #     resolver_type: "AWS", # required, accepts AWS, Self
    #     title: "CaseTitle", # required
    #     description: "CaseDescription", # required
    #     engagement_type: "Security Incident", # required, accepts Security Incident, Investigation
    #     reported_incident_start_date: Time.now, # required
    #     impacted_accounts: ["AWSAccountId"], # required
    #     watchers: [ # required
    #       {
    #         email: "EmailAddress", # required
    #         name: "PersonName",
    #         job_title: "JobTitle",
    #       },
    #     ],
    #     threat_actor_ip_addresses: [
    #       {
    #         ip_address: "IPAddress", # required
    #         user_agent: "UserAgent",
    #       },
    #     ],
    #     impacted_services: ["AwsService"],
    #     impacted_aws_regions: [
    #       {
    #         region: "af-south-1", # required, accepts af-south-1, ap-east-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, ap-south-1, ap-south-2, ap-southeast-1, ap-southeast-2, ap-southeast-3, ap-southeast-4, ap-southeast-5, ap-southeast-7, ca-central-1, ca-west-1, cn-north-1, cn-northwest-1, eu-central-1, eu-central-2, eu-north-1, eu-south-1, eu-south-2, eu-west-1, eu-west-2, eu-west-3, il-central-1, me-central-1, me-south-1, mx-central-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.case_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateCase AWS API Documentation
    #
    # @overload create_case(params = {})
    # @param [Hash] params ({})
    def create_case(params = {}, options = {})
      req = build_request(:create_case, params)
      req.send_request(options)
    end

    # Grants permission to add a comment to an existing case.
    #
    # @option params [required, String] :case_id
    #   Required element used in combination with CreateCaseComment to specify
    #   a case ID.
    #
    # @option params [String] :client_token
    #   An optional element used in combination with CreateCaseComment.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :body
    #   Required element used in combination with CreateCaseComment to add
    #   content for the new comment.
    #
    # @return [Types::CreateCaseCommentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCaseCommentResponse#comment_id #comment_id} => String
    #
    #
    # @example Example: Invoke CreateCaseComment
    #
    #   resp = client.create_case_comment({
    #     body: "Case comment body.", 
    #     case_id: "8403556009", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     comment_id: "000000", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_case_comment({
    #     case_id: "CaseId", # required
    #     client_token: "CreateCaseCommentRequestClientTokenString",
    #     body: "CommentBody", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateCaseComment AWS API Documentation
    #
    # @overload create_case_comment(params = {})
    # @param [Hash] params ({})
    def create_case_comment(params = {}, options = {})
      req = build_request(:create_case_comment, params)
      req.send_request(options)
    end

    # Grants permissions to create a new membership.
    #
    # @option params [String] :client_token
    #   An optional element used in combination with CreateMembership.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :membership_name
    #   Required element use in combination with CreateMembership to create a
    #   name for the membership.
    #
    # @option params [required, Array<Types::IncidentResponder>] :incident_response_team
    #   Required element use in combination with CreateMembership to add
    #   customer incident response team members and trusted partners to the
    #   membership.
    #
    # @option params [Array<Types::OptInFeature>] :opt_in_features
    #   Optional element to enable the monitoring and investigation opt-in
    #   features for the service.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional element for customer configured tags.
    #
    # @return [Types::CreateMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMembershipResponse#membership_id #membership_id} => String
    #
    #
    # @example Example: Invoke CreateMembership
    #
    #   resp = client.create_membership({
    #     incident_response_team: [
    #       {
    #         name: "Bob Jones", 
    #         email: "bob.jones@gmail.com", 
    #         job_title: "Security Responder", 
    #       }, 
    #       {
    #         name: "Alice", 
    #         email: "alice@example.com", 
    #         job_title: "CEO", 
    #       }, 
    #     ], 
    #     membership_name: "Example Membership Name.", 
    #     opt_in_features: [
    #       {
    #         feature_name: "Triage", 
    #         is_enabled: true, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     membership_id: "m-abcd1234efgh", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_membership({
    #     client_token: "CreateMembershipRequestClientTokenString",
    #     membership_name: "MembershipName", # required
    #     incident_response_team: [ # required
    #       {
    #         name: "IncidentResponderName", # required
    #         job_title: "JobTitle", # required
    #         email: "EmailAddress", # required
    #       },
    #     ],
    #     opt_in_features: [
    #       {
    #         feature_name: "Triage", # required, accepts Triage
    #         is_enabled: false, # required
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/CreateMembership AWS API Documentation
    #
    # @overload create_membership(params = {})
    # @param [Hash] params ({})
    def create_membership(params = {}, options = {})
      req = build_request(:create_membership, params)
      req.send_request(options)
    end

    # Grant permission to view a designated case.
    #
    # @option params [required, String] :case_id
    #   Required element for GetCase to identify the requested case ID.
    #
    # @return [Types::GetCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCaseResponse#title #title} => String
    #   * {Types::GetCaseResponse#case_arn #case_arn} => String
    #   * {Types::GetCaseResponse#description #description} => String
    #   * {Types::GetCaseResponse#case_status #case_status} => String
    #   * {Types::GetCaseResponse#engagement_type #engagement_type} => String
    #   * {Types::GetCaseResponse#reported_incident_start_date #reported_incident_start_date} => Time
    #   * {Types::GetCaseResponse#actual_incident_start_date #actual_incident_start_date} => Time
    #   * {Types::GetCaseResponse#impacted_aws_regions #impacted_aws_regions} => Array&lt;Types::ImpactedAwsRegion&gt;
    #   * {Types::GetCaseResponse#threat_actor_ip_addresses #threat_actor_ip_addresses} => Array&lt;Types::ThreatActorIp&gt;
    #   * {Types::GetCaseResponse#pending_action #pending_action} => String
    #   * {Types::GetCaseResponse#impacted_accounts #impacted_accounts} => Array&lt;String&gt;
    #   * {Types::GetCaseResponse#watchers #watchers} => Array&lt;Types::Watcher&gt;
    #   * {Types::GetCaseResponse#created_date #created_date} => Time
    #   * {Types::GetCaseResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::GetCaseResponse#closure_code #closure_code} => String
    #   * {Types::GetCaseResponse#resolver_type #resolver_type} => String
    #   * {Types::GetCaseResponse#impacted_services #impacted_services} => Array&lt;String&gt;
    #   * {Types::GetCaseResponse#case_attachments #case_attachments} => Array&lt;Types::CaseAttachmentAttributes&gt;
    #   * {Types::GetCaseResponse#closed_date #closed_date} => Time
    #
    #
    # @example Example: Invoke GetCase
    #
    #   resp = client.get_case({
    #     case_id: "8403556009", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     actual_incident_start_date: Time.parse("2023-03-27T15:32:01.789Z"), 
    #     case_arn: "arn:aws:security-ir:us-west-1:123456789012:case/1234567890", 
    #     case_status: "Submitted", 
    #     created_date: Time.parse("2023-01-27T15:32:01.789Z"), 
    #     description: "Case description", 
    #     engagement_type: "Investigation", 
    #     impacted_accounts: [
    #       "000000000000", 
    #       "111111111111", 
    #     ], 
    #     impacted_aws_regions: [
    #       {
    #         region: "ap-southeast-1", 
    #       }, 
    #     ], 
    #     impacted_services: [
    #       "Amazon EC2", 
    #       "Amazon EKS", 
    #     ], 
    #     last_updated_date: Time.parse("2023-02-27T15:32:01.789Z"), 
    #     pending_action: "Customer", 
    #     reported_incident_start_date: Time.parse("2023-03-27T15:32:01.789Z"), 
    #     resolver_type: "Self", 
    #     threat_actor_ip_addresses: [
    #       {
    #         ip_address: "192.168.192.168", 
    #         user_agent: "Browser", 
    #       }, 
    #     ], 
    #     title: "My sample case", 
    #     watchers: [
    #       {
    #         name: "Alice", 
    #         email: "alice@example.com", 
    #         job_title: "CEO", 
    #       }, 
    #       {
    #         name: "Bob", 
    #         email: "bob@example.com", 
    #         job_title: "CFO", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_case({
    #     case_id: "CaseId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.title #=> String
    #   resp.case_arn #=> String
    #   resp.description #=> String
    #   resp.case_status #=> String, one of "Submitted", "Acknowledged", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities", "Ready to Close", "Closed"
    #   resp.engagement_type #=> String, one of "Security Incident", "Investigation"
    #   resp.reported_incident_start_date #=> Time
    #   resp.actual_incident_start_date #=> Time
    #   resp.impacted_aws_regions #=> Array
    #   resp.impacted_aws_regions[0].region #=> String, one of "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
    #   resp.threat_actor_ip_addresses #=> Array
    #   resp.threat_actor_ip_addresses[0].ip_address #=> String
    #   resp.threat_actor_ip_addresses[0].user_agent #=> String
    #   resp.pending_action #=> String, one of "Customer", "None"
    #   resp.impacted_accounts #=> Array
    #   resp.impacted_accounts[0] #=> String
    #   resp.watchers #=> Array
    #   resp.watchers[0].email #=> String
    #   resp.watchers[0].name #=> String
    #   resp.watchers[0].job_title #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.closure_code #=> String, one of "Investigation Completed", "Not Resolved", "False Positive", "Duplicate"
    #   resp.resolver_type #=> String, one of "AWS", "Self"
    #   resp.impacted_services #=> Array
    #   resp.impacted_services[0] #=> String
    #   resp.case_attachments #=> Array
    #   resp.case_attachments[0].attachment_id #=> String
    #   resp.case_attachments[0].file_name #=> String
    #   resp.case_attachments[0].attachment_status #=> String, one of "Verified", "Failed", "Pending"
    #   resp.case_attachments[0].creator #=> String
    #   resp.case_attachments[0].created_date #=> Time
    #   resp.closed_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCase AWS API Documentation
    #
    # @overload get_case(params = {})
    # @param [Hash] params ({})
    def get_case(params = {}, options = {})
      req = build_request(:get_case, params)
      req.send_request(options)
    end

    # Grants permission to obtain an Amazon S3 presigned URL to download an
    # attachment.
    #
    # @option params [required, String] :case_id
    #   Required element for GetCaseAttachmentDownloadUrl to identify the case
    #   ID for downloading an attachment from.
    #
    # @option params [required, String] :attachment_id
    #   Required element for GetCaseAttachmentDownloadUrl to identify the
    #   attachment ID for downloading an attachment.
    #
    # @return [Types::GetCaseAttachmentDownloadUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCaseAttachmentDownloadUrlResponse#attachment_presigned_url #attachment_presigned_url} => String
    #
    #
    # @example Example: Invoke GetCaseAttachmentDownloadUrl
    #
    #   resp = client.get_case_attachment_download_url({
    #     attachment_id: "3C5A6B89-1DEF-4C2D-A5B6-123456789ABC", 
    #     case_id: "8403556009", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attachment_presigned_url: "https://presignedurl.com", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_case_attachment_download_url({
    #     case_id: "CaseId", # required
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment_presigned_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCaseAttachmentDownloadUrl AWS API Documentation
    #
    # @overload get_case_attachment_download_url(params = {})
    # @param [Hash] params ({})
    def get_case_attachment_download_url(params = {}, options = {})
      req = build_request(:get_case_attachment_download_url, params)
      req.send_request(options)
    end

    # Grants permission to upload an attachment to a case.
    #
    # @option params [required, String] :case_id
    #   Required element for GetCaseAttachmentUploadUrl to identify the case
    #   ID for uploading an attachment to.
    #
    # @option params [required, String] :file_name
    #   Required element for GetCaseAttachmentUploadUrl to identify the file
    #   name of the attachment to upload.
    #
    # @option params [required, Integer] :content_length
    #   Required element for GetCaseAttachmentUploadUrl to identify the size
    #   od the file attachment.
    #
    # @option params [String] :client_token
    #   Optional element for customer provided token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::GetCaseAttachmentUploadUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCaseAttachmentUploadUrlResponse#attachment_presigned_url #attachment_presigned_url} => String
    #
    #
    # @example Example: Invoke GetCaseAttachmentUploadUrl
    #
    #   resp = client.get_case_attachment_upload_url({
    #     case_id: "8403556009", 
    #     content_length: 1500, 
    #     file_name: "TestFileName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attachment_presigned_url: "https://presignedurl.com", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_case_attachment_upload_url({
    #     case_id: "CaseId", # required
    #     file_name: "FileName", # required
    #     content_length: 1, # required
    #     client_token: "GetCaseAttachmentUploadUrlRequestClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment_presigned_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetCaseAttachmentUploadUrl AWS API Documentation
    #
    # @overload get_case_attachment_upload_url(params = {})
    # @param [Hash] params ({})
    def get_case_attachment_upload_url(params = {}, options = {})
      req = build_request(:get_case_attachment_upload_url, params)
      req.send_request(options)
    end

    # Grants permission to get details of a designated service membership.
    #
    # @option params [required, String] :membership_id
    #   Required element for GetMembership to identify the membership ID to
    #   query.
    #
    # @return [Types::GetMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMembershipResponse#membership_id #membership_id} => String
    #   * {Types::GetMembershipResponse#account_id #account_id} => String
    #   * {Types::GetMembershipResponse#region #region} => String
    #   * {Types::GetMembershipResponse#membership_name #membership_name} => String
    #   * {Types::GetMembershipResponse#membership_arn #membership_arn} => String
    #   * {Types::GetMembershipResponse#membership_status #membership_status} => String
    #   * {Types::GetMembershipResponse#membership_activation_timestamp #membership_activation_timestamp} => Time
    #   * {Types::GetMembershipResponse#membership_deactivation_timestamp #membership_deactivation_timestamp} => Time
    #   * {Types::GetMembershipResponse#customer_type #customer_type} => String
    #   * {Types::GetMembershipResponse#number_of_accounts_covered #number_of_accounts_covered} => Integer
    #   * {Types::GetMembershipResponse#incident_response_team #incident_response_team} => Array&lt;Types::IncidentResponder&gt;
    #   * {Types::GetMembershipResponse#opt_in_features #opt_in_features} => Array&lt;Types::OptInFeature&gt;
    #
    #
    # @example Example: Invoke GetMembership
    #
    #   resp = client.get_membership({
    #     membership_id: "m-abcd1234efgh", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_id: "123412341234", 
    #     customer_type: "Standalone", 
    #     incident_response_team: [
    #       {
    #         name: "Bob Jones", 
    #         email: "bob.jones@gmail.com", 
    #         job_title: "Security Responder", 
    #       }, 
    #       {
    #         name: "Alice", 
    #         email: "alice@example.com", 
    #         job_title: "CEO", 
    #       }, 
    #     ], 
    #     membership_activation_timestamp: Time.parse("2023-03-27T15:32:01.789Z"), 
    #     membership_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh", 
    #     membership_deactivation_timestamp: Time.parse("2023-04-27T15:32:01.789Z"), 
    #     membership_id: "m-abcd1234efgh", 
    #     membership_name: "Example Membership", 
    #     membership_status: "Active", 
    #     number_of_accounts_covered: 50, 
    #     opt_in_features: [
    #       {
    #         feature_name: "Triage", 
    #         is_enabled: true, 
    #       }, 
    #     ], 
    #     region: "af-south-1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_membership({
    #     membership_id: "MembershipId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_id #=> String
    #   resp.account_id #=> String
    #   resp.region #=> String, one of "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
    #   resp.membership_name #=> String
    #   resp.membership_arn #=> String
    #   resp.membership_status #=> String, one of "Active", "Cancelled", "Terminated"
    #   resp.membership_activation_timestamp #=> Time
    #   resp.membership_deactivation_timestamp #=> Time
    #   resp.customer_type #=> String, one of "Standalone", "Organization"
    #   resp.number_of_accounts_covered #=> Integer
    #   resp.incident_response_team #=> Array
    #   resp.incident_response_team[0].name #=> String
    #   resp.incident_response_team[0].job_title #=> String
    #   resp.incident_response_team[0].email #=> String
    #   resp.opt_in_features #=> Array
    #   resp.opt_in_features[0].feature_name #=> String, one of "Triage"
    #   resp.opt_in_features[0].is_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/GetMembership AWS API Documentation
    #
    # @overload get_membership(params = {})
    # @param [Hash] params ({})
    def get_membership(params = {}, options = {})
      req = build_request(:get_membership, params)
      req.send_request(options)
    end

    # Grants permissions to view the aidt log for edits made to a designated
    # case.
    #
    # @option params [String] :next_token
    #   Optional element for a customer provided token.
    #
    # @option params [Integer] :max_results
    #   Optional element to identify how many results to obtain. There is a
    #   maximum value of 25.
    #
    # @option params [required, String] :case_id
    #   Required element used with ListCaseEdits to identify the case to
    #   query.
    #
    # @return [Types::ListCaseEditsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCaseEditsResponse#next_token #next_token} => String
    #   * {Types::ListCaseEditsResponse#items #items} => Array&lt;Types::CaseEditItem&gt;
    #   * {Types::ListCaseEditsResponse#total #total} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListCaseEdits
    #
    #   resp = client.list_case_edits({
    #     case_id: "8403556009", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         action: "Add comment", 
    #         event_timestamp: Time.parse("2023-03-27T15:32:01.789Z"), 
    #         message: "Added comment to ask question to responder.", 
    #         principal: "00000000000", 
    #       }, 
    #     ], 
    #     total: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_case_edits({
    #     next_token: "ListCaseEditsRequestNextTokenString",
    #     max_results: 1,
    #     case_id: "CaseId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].event_timestamp #=> Time
    #   resp.items[0].principal #=> String
    #   resp.items[0].action #=> String
    #   resp.items[0].message #=> String
    #   resp.total #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCaseEdits AWS API Documentation
    #
    # @overload list_case_edits(params = {})
    # @param [Hash] params ({})
    def list_case_edits(params = {}, options = {})
      req = build_request(:list_case_edits, params)
      req.send_request(options)
    end

    # Grants permission to list all cases the requester has access to.
    #
    # @option params [String] :next_token
    #   Optional element.
    #
    # @option params [Integer] :max_results
    #   Optional element for ListCases to limit the number of responses.
    #
    # @return [Types::ListCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCasesResponse#next_token #next_token} => String
    #   * {Types::ListCasesResponse#items #items} => Array&lt;Types::ListCasesItem&gt;
    #   * {Types::ListCasesResponse#total #total} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListCases
    #
    #   resp = client.list_cases({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         case_arn: "arn:aws:security-ir:us-west-1:123456789012:case/1234567890", 
    #         case_id: "8403556009", 
    #         case_status: "Acknowledged", 
    #         created_date: Time.parse("2023-01-27T15:32:01.789Z"), 
    #         engagement_type: "Security Incident", 
    #         last_updated_date: Time.parse("2023-03-27T15:32:01.789Z"), 
    #         pending_action: "None", 
    #         resolver_type: "Self", 
    #         title: "Example case title", 
    #       }, 
    #     ], 
    #     total: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cases({
    #     next_token: "ListCasesRequestNextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].case_id #=> String
    #   resp.items[0].last_updated_date #=> Time
    #   resp.items[0].title #=> String
    #   resp.items[0].case_arn #=> String
    #   resp.items[0].engagement_type #=> String, one of "Security Incident", "Investigation"
    #   resp.items[0].case_status #=> String, one of "Submitted", "Acknowledged", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities", "Ready to Close", "Closed"
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].closed_date #=> Time
    #   resp.items[0].resolver_type #=> String, one of "AWS", "Self"
    #   resp.items[0].pending_action #=> String, one of "Customer", "None"
    #   resp.total #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListCases AWS API Documentation
    #
    # @overload list_cases(params = {})
    # @param [Hash] params ({})
    def list_cases(params = {}, options = {})
      req = build_request(:list_cases, params)
      req.send_request(options)
    end

    # Grants permissions to list and view comments for a designated case.
    #
    # @option params [String] :next_token
    #   Optional element.
    #
    # @option params [Integer] :max_results
    #   Optional element for ListComments to limit the number of responses.
    #
    # @option params [required, String] :case_id
    #   Required element for ListComments to designate the case to query.
    #
    # @return [Types::ListCommentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCommentsResponse#next_token #next_token} => String
    #   * {Types::ListCommentsResponse#items #items} => Array&lt;Types::ListCommentsItem&gt;
    #   * {Types::ListCommentsResponse#total #total} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListComments
    #
    #   resp = client.list_comments({
    #     case_id: "8403556009", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         body: "Case comment body.", 
    #         comment_id: "000000", 
    #       }, 
    #     ], 
    #     total: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_comments({
    #     next_token: "ListCommentsRequestNextTokenString",
    #     max_results: 1,
    #     case_id: "CaseId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].comment_id #=> String
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].last_updated_date #=> Time
    #   resp.items[0].creator #=> String
    #   resp.items[0].last_updated_by #=> String
    #   resp.items[0].body #=> String
    #   resp.total #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListComments AWS API Documentation
    #
    # @overload list_comments(params = {})
    # @param [Hash] params ({})
    def list_comments(params = {}, options = {})
      req = build_request(:list_comments, params)
      req.send_request(options)
    end

    # Grants permission to query the memberships a principal has access to.
    #
    # @option params [String] :next_token
    #   Optional element.
    #
    # @option params [Integer] :max_results
    #   Request element for ListMemberships to limit the number of responses.
    #
    # @return [Types::ListMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembershipsResponse#next_token #next_token} => String
    #   * {Types::ListMembershipsResponse#items #items} => Array&lt;Types::ListMembershipItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListMemberships
    #
    #   resp = client.list_memberships({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         account_id: "123123123123", 
    #         membership_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh", 
    #         membership_id: "m-abcd1234efgh", 
    #         membership_status: "Cancelled", 
    #         region: "af-south-1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_memberships({
    #     next_token: "ListMembershipsRequestNextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].membership_id #=> String
    #   resp.items[0].account_id #=> String
    #   resp.items[0].region #=> String, one of "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "ca-central-1", "ca-west-1", "cn-north-1", "cn-northwest-1", "eu-central-1", "eu-central-2", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "il-central-1", "me-central-1", "me-south-1", "mx-central-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
    #   resp.items[0].membership_arn #=> String
    #   resp.items[0].membership_status #=> String, one of "Active", "Cancelled", "Terminated"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListMemberships AWS API Documentation
    #
    # @overload list_memberships(params = {})
    # @param [Hash] params ({})
    def list_memberships(params = {}, options = {})
      req = build_request(:list_memberships, params)
      req.send_request(options)
    end

    # Grants permission to view currently configured tags on a resource.
    #
    # @option params [required, String] :resource_arn
    #   Required element for ListTagsForResource to provide the ARN to
    #   identify a specific resource.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Invoke ListTagsForResource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "key" => "example-tag-key", 
    #       "value" => "example-tag-value", 
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Grants permission to add a tag(s) to a designated resource.
    #
    # @option params [required, String] :resource_arn
    #   Required element for TagResource to identify the ARN for the resource
    #   to add a tag to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Required element for ListTagsForResource to provide the content for a
    #   tag.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Invoke TagResource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh", 
    #     tags: {
    #       "key" => "example-tag-key", 
    #       "value" => "example-tag-value", 
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
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Grants permission to remove a tag(s) from a designate resource.
    #
    # @option params [required, String] :resource_arn
    #   Required element for UnTagResource to identify the ARN for the
    #   resource to remove a tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Required element for UnTagResource to identify tag to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Invoke UntagResource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:security-ir:us-west-1:123456789012:membership/m-abcd1234efgh", 
    #     tag_keys: [
    #       "example-tag-key", 
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Grants permission to update an existing case.
    #
    # @option params [required, String] :case_id
    #   Required element for UpdateCase to identify the case ID for updates.
    #
    # @option params [String] :title
    #   Optional element for UpdateCase to provide content for the title
    #   field.
    #
    # @option params [String] :description
    #   Optional element for UpdateCase to provide content for the description
    #   field.
    #
    # @option params [Time,DateTime,Date,Integer,String] :reported_incident_start_date
    #   Optional element for UpdateCase to provide content for the customer
    #   reported incident start date field.
    #
    # @option params [Time,DateTime,Date,Integer,String] :actual_incident_start_date
    #   Optional element for UpdateCase to provide content for the incident
    #   start date field.
    #
    # @option params [String] :engagement_type
    #   Optional element for UpdateCase to provide content for the engagement
    #   type field. `Available engagement types include Security Incident |
    #   Investigation`.
    #
    # @option params [Array<Types::Watcher>] :watchers_to_add
    #   Optional element for UpdateCase to provide content to add additional
    #   watchers to a case.
    #
    # @option params [Array<Types::Watcher>] :watchers_to_delete
    #   Optional element for UpdateCase to provide content to remove existing
    #   watchers from a case.
    #
    # @option params [Array<Types::ThreatActorIp>] :threat_actor_ip_addresses_to_add
    #   Optional element for UpdateCase to provide content to add additional
    #   suspicious IP addresses related to a case.
    #
    # @option params [Array<Types::ThreatActorIp>] :threat_actor_ip_addresses_to_delete
    #   Optional element for UpdateCase to provide content to remove
    #   suspicious IP addresses from a case.
    #
    # @option params [Array<String>] :impacted_services_to_add
    #   Optional element for UpdateCase to provide content to add services
    #   impacted.
    #
    # @option params [Array<String>] :impacted_services_to_delete
    #   Optional element for UpdateCase to provide content to remove services
    #   impacted.
    #
    # @option params [Array<Types::ImpactedAwsRegion>] :impacted_aws_regions_to_add
    #   Optional element for UpdateCase to provide content to add regions
    #   impacted.
    #
    # @option params [Array<Types::ImpactedAwsRegion>] :impacted_aws_regions_to_delete
    #   Optional element for UpdateCase to provide content to remove regions
    #   impacted.
    #
    # @option params [Array<String>] :impacted_accounts_to_add
    #   Optional element for UpdateCase to provide content to add accounts
    #   impacted.
    #
    # @option params [Array<String>] :impacted_accounts_to_delete
    #   Optional element for UpdateCase to provide content to add accounts
    #   impacted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Invoke UpdateCase
    #
    #   resp = client.update_case({
    #     actual_incident_start_date: Time.parse("2023-03-25T15:32:01.789Z"), 
    #     case_id: "8403556009", 
    #     description: "Case description", 
    #     engagement_type: "Investigation", 
    #     impacted_accounts_to_add: [
    #       "000000000000", 
    #     ], 
    #     impacted_accounts_to_delete: [
    #       "111111111111", 
    #     ], 
    #     impacted_aws_regions_to_add: [
    #       {
    #         region: "ap-southeast-1", 
    #       }, 
    #     ], 
    #     impacted_aws_regions_to_delete: [
    #       {
    #         region: "us-east-1", 
    #       }, 
    #     ], 
    #     impacted_services_to_add: [
    #       "Amazon EC2", 
    #     ], 
    #     impacted_services_to_delete: [
    #       "Amazon EKS", 
    #     ], 
    #     reported_incident_start_date: Time.parse("2023-03-27T15:32:01.789Z"), 
    #     threat_actor_ip_addresses_to_add: [
    #       {
    #         ip_address: "190.160.190.160", 
    #         user_agent: "Browser", 
    #       }, 
    #     ], 
    #     threat_actor_ip_addresses_to_delete: [
    #       {
    #         ip_address: "192.168.192.168", 
    #         user_agent: "Browser", 
    #       }, 
    #     ], 
    #     title: "My sample case", 
    #     watchers_to_add: [
    #       {
    #         name: "Same", 
    #         email: "Sam@example.com", 
    #         job_title: "CEO", 
    #       }, 
    #     ], 
    #     watchers_to_delete: [
    #       {
    #         name: "Bob", 
    #         email: "bob@example.com", 
    #         job_title: "CFO", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_case({
    #     case_id: "CaseId", # required
    #     title: "CaseTitle",
    #     description: "CaseDescription",
    #     reported_incident_start_date: Time.now,
    #     actual_incident_start_date: Time.now,
    #     engagement_type: "Security Incident", # accepts Security Incident, Investigation
    #     watchers_to_add: [
    #       {
    #         email: "EmailAddress", # required
    #         name: "PersonName",
    #         job_title: "JobTitle",
    #       },
    #     ],
    #     watchers_to_delete: [
    #       {
    #         email: "EmailAddress", # required
    #         name: "PersonName",
    #         job_title: "JobTitle",
    #       },
    #     ],
    #     threat_actor_ip_addresses_to_add: [
    #       {
    #         ip_address: "IPAddress", # required
    #         user_agent: "UserAgent",
    #       },
    #     ],
    #     threat_actor_ip_addresses_to_delete: [
    #       {
    #         ip_address: "IPAddress", # required
    #         user_agent: "UserAgent",
    #       },
    #     ],
    #     impacted_services_to_add: ["AwsService"],
    #     impacted_services_to_delete: ["AwsService"],
    #     impacted_aws_regions_to_add: [
    #       {
    #         region: "af-south-1", # required, accepts af-south-1, ap-east-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, ap-south-1, ap-south-2, ap-southeast-1, ap-southeast-2, ap-southeast-3, ap-southeast-4, ap-southeast-5, ap-southeast-7, ca-central-1, ca-west-1, cn-north-1, cn-northwest-1, eu-central-1, eu-central-2, eu-north-1, eu-south-1, eu-south-2, eu-west-1, eu-west-2, eu-west-3, il-central-1, me-central-1, me-south-1, mx-central-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2
    #       },
    #     ],
    #     impacted_aws_regions_to_delete: [
    #       {
    #         region: "af-south-1", # required, accepts af-south-1, ap-east-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, ap-south-1, ap-south-2, ap-southeast-1, ap-southeast-2, ap-southeast-3, ap-southeast-4, ap-southeast-5, ap-southeast-7, ca-central-1, ca-west-1, cn-north-1, cn-northwest-1, eu-central-1, eu-central-2, eu-north-1, eu-south-1, eu-south-2, eu-west-1, eu-west-2, eu-west-3, il-central-1, me-central-1, me-south-1, mx-central-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2
    #       },
    #     ],
    #     impacted_accounts_to_add: ["AWSAccountId"],
    #     impacted_accounts_to_delete: ["AWSAccountId"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCase AWS API Documentation
    #
    # @overload update_case(params = {})
    # @param [Hash] params ({})
    def update_case(params = {}, options = {})
      req = build_request(:update_case, params)
      req.send_request(options)
    end

    # Grants permission to update an existing case comment.
    #
    # @option params [required, String] :case_id
    #   Required element for UpdateCaseComment to identify the case ID
    #   containing the comment to be updated.
    #
    # @option params [required, String] :comment_id
    #   Required element for UpdateCaseComment to identify the case ID to be
    #   updated.
    #
    # @option params [required, String] :body
    #   Required element for UpdateCaseComment to identify the content for the
    #   comment to be updated.
    #
    # @return [Types::UpdateCaseCommentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCaseCommentResponse#comment_id #comment_id} => String
    #   * {Types::UpdateCaseCommentResponse#body #body} => String
    #
    #
    # @example Example: Invoke UpdateCaseComment
    #
    #   resp = client.update_case_comment({
    #     body: "Updated case comment.", 
    #     case_id: "8403556009", 
    #     comment_id: "000000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     body: "Updated case comment.", 
    #     comment_id: "000000", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_case_comment({
    #     case_id: "CaseId", # required
    #     comment_id: "CommentId", # required
    #     body: "CommentBody", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comment_id #=> String
    #   resp.body #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCaseComment AWS API Documentation
    #
    # @overload update_case_comment(params = {})
    # @param [Hash] params ({})
    def update_case_comment(params = {}, options = {})
      req = build_request(:update_case_comment, params)
      req.send_request(options)
    end

    # Grants permission to update the status for a designated cases. Options
    # include `Submitted | Detection and Analysis | Eradication, Containment
    # and Recovery | Post-Incident Activities | Closed`.
    #
    # @option params [required, String] :case_id
    #   Required element for UpdateCaseStatus to identify the case to update.
    #
    # @option params [required, String] :case_status
    #   Required element for UpdateCaseStatus to identify the status for a
    #   case. Options include `Submitted | Detection and Analysis |
    #   Containment, Eradication and Recovery | Post-incident Activities`.
    #
    # @return [Types::UpdateCaseStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCaseStatusResponse#case_status #case_status} => String
    #
    #
    # @example Example: Invoke UpdateCaseStatus
    #
    #   resp = client.update_case_status({
    #     case_id: "8403556009", 
    #     case_status: "Post-incident Activities", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     case_status: "Post-incident Activities", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_case_status({
    #     case_id: "CaseId", # required
    #     case_status: "Submitted", # required, accepts Submitted, Detection and Analysis, Containment, Eradication and Recovery, Post-incident Activities
    #   })
    #
    # @example Response structure
    #
    #   resp.case_status #=> String, one of "Submitted", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateCaseStatus AWS API Documentation
    #
    # @overload update_case_status(params = {})
    # @param [Hash] params ({})
    def update_case_status(params = {}, options = {})
      req = build_request(:update_case_status, params)
      req.send_request(options)
    end

    # Grants access to UpdateMembership to change membership configuration.
    #
    # @option params [required, String] :membership_id
    #   Required element for UpdateMembership to identify the membership to
    #   update.
    #
    # @option params [String] :membership_name
    #   Optional element for UpdateMembership to update the membership name.
    #
    # @option params [Array<Types::IncidentResponder>] :incident_response_team
    #   Optional element for UpdateMembership to update the membership name.
    #
    # @option params [Array<Types::OptInFeature>] :opt_in_features
    #   Optional element for UpdateMembership to enable or disable opt-in
    #   features for the service.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Invoke UpdateMembership
    #
    #   resp = client.update_membership({
    #     incident_response_team: [
    #       {
    #         name: "Bob Jones", 
    #         email: "bob.jones@gmail.com", 
    #         job_title: "Security Responder", 
    #       }, 
    #       {
    #         name: "Alice", 
    #         email: "alice@example.com", 
    #         job_title: "CEO", 
    #       }, 
    #     ], 
    #     membership_id: "m-abcd1234efgh", 
    #     membership_name: "New membership name", 
    #     opt_in_features: [
    #       {
    #         feature_name: "Triage", 
    #         is_enabled: true, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_membership({
    #     membership_id: "MembershipId", # required
    #     membership_name: "MembershipName",
    #     incident_response_team: [
    #       {
    #         name: "IncidentResponderName", # required
    #         job_title: "JobTitle", # required
    #         email: "EmailAddress", # required
    #       },
    #     ],
    #     opt_in_features: [
    #       {
    #         feature_name: "Triage", # required, accepts Triage
    #         is_enabled: false, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateMembership AWS API Documentation
    #
    # @overload update_membership(params = {})
    # @param [Hash] params ({})
    def update_membership(params = {}, options = {})
      req = build_request(:update_membership, params)
      req.send_request(options)
    end

    # Grants permission to update the resolver type for a case.
    #
    # This is a one-way action and cannot be reversed.
    #
    # Options include self-supported &gt; AWS-supported.
    #
    # @option params [required, String] :case_id
    #   Required element for UpdateResolverType to identify the case to
    #   update.
    #
    # @option params [required, String] :resolver_type
    #   Required element for UpdateResolverType to identify the new resolver.
    #
    # @return [Types::UpdateResolverTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResolverTypeResponse#case_id #case_id} => String
    #   * {Types::UpdateResolverTypeResponse#case_status #case_status} => String
    #   * {Types::UpdateResolverTypeResponse#resolver_type #resolver_type} => String
    #
    #
    # @example Example: Invoke UpdateResolverType
    #
    #   resp = client.update_resolver_type({
    #     case_id: "8403556009", 
    #     resolver_type: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     case_id: "8403556009", 
    #     case_status: "Detection and Analysis", 
    #     resolver_type: "AWS", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_type({
    #     case_id: "CaseId", # required
    #     resolver_type: "AWS", # required, accepts AWS, Self
    #   })
    #
    # @example Response structure
    #
    #   resp.case_id #=> String
    #   resp.case_status #=> String, one of "Submitted", "Acknowledged", "Detection and Analysis", "Containment, Eradication and Recovery", "Post-incident Activities", "Ready to Close", "Closed"
    #   resp.resolver_type #=> String, one of "AWS", "Self"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10/UpdateResolverType AWS API Documentation
    #
    # @overload update_resolver_type(params = {})
    # @param [Hash] params ({})
    def update_resolver_type(params = {}, options = {})
      req = build_request(:update_resolver_type, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SecurityIR')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-securityir'
      context[:gem_version] = '1.8.0'
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
