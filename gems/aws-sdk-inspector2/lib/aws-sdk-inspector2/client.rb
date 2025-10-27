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

module Aws::Inspector2
  # An API client for Inspector2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Inspector2::Client.new(
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

    @identifier = :inspector2

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
    add_plugin(Aws::Inspector2::Plugins::Endpoints)

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
    #   @option options [Aws::Inspector2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Inspector2::EndpointParameters`.
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

    # Associates an Amazon Web Services account with an Amazon Inspector
    # delegated administrator. An HTTP 200 response indicates the
    # association was successfully started, but doesn’t indicate whether it
    # was completed. You can check if the association completed by using
    # [ListMembers][1] for multiple accounts or [GetMembers][2] for a single
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html
    # [2]: https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the member account to be
    #   associated.
    #
    # @return [Types::AssociateMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateMemberResponse#account_id #account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AssociateMember AWS API Documentation
    #
    # @overload associate_member(params = {})
    # @param [Hash] params ({})
    def associate_member(params = {}, options = {})
      req = build_request(:associate_member, params)
      req.send_request(options)
    end

    # Associates multiple code repositories with an Amazon Inspector code
    # security scan configuration.
    #
    # @option params [required, Array<Types::AssociateConfigurationRequest>] :associate_configuration_requests
    #   A list of code repositories to associate with the specified scan
    #   configuration.
    #
    # @return [Types::BatchAssociateCodeSecurityScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateCodeSecurityScanConfigurationResponse#failed_associations #failed_associations} => Array&lt;Types::FailedAssociationResult&gt;
    #   * {Types::BatchAssociateCodeSecurityScanConfigurationResponse#successful_associations #successful_associations} => Array&lt;Types::SuccessfulAssociationResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_code_security_scan_configuration({
    #     associate_configuration_requests: [ # required
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn", # required
    #         resource: { # required
    #           project_id: "ProjectId",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_associations #=> Array
    #   resp.failed_associations[0].scan_configuration_arn #=> String
    #   resp.failed_associations[0].resource.project_id #=> String
    #   resp.failed_associations[0].status_code #=> String, one of "INTERNAL_ERROR", "ACCESS_DENIED", "SCAN_CONFIGURATION_NOT_FOUND", "INVALID_INPUT", "RESOURCE_NOT_FOUND", "QUOTA_EXCEEDED"
    #   resp.failed_associations[0].status_message #=> String
    #   resp.successful_associations #=> Array
    #   resp.successful_associations[0].scan_configuration_arn #=> String
    #   resp.successful_associations[0].resource.project_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchAssociateCodeSecurityScanConfiguration AWS API Documentation
    #
    # @overload batch_associate_code_security_scan_configuration(params = {})
    # @param [Hash] params ({})
    def batch_associate_code_security_scan_configuration(params = {}, options = {})
      req = build_request(:batch_associate_code_security_scan_configuration, params)
      req.send_request(options)
    end

    # Disassociates multiple code repositories from an Amazon Inspector code
    # security scan configuration.
    #
    # @option params [required, Array<Types::DisassociateConfigurationRequest>] :disassociate_configuration_requests
    #   A list of code repositories to disassociate from the specified scan
    #   configuration.
    #
    # @return [Types::BatchDisassociateCodeSecurityScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateCodeSecurityScanConfigurationResponse#failed_associations #failed_associations} => Array&lt;Types::FailedAssociationResult&gt;
    #   * {Types::BatchDisassociateCodeSecurityScanConfigurationResponse#successful_associations #successful_associations} => Array&lt;Types::SuccessfulAssociationResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_code_security_scan_configuration({
    #     disassociate_configuration_requests: [ # required
    #       {
    #         scan_configuration_arn: "ScanConfigurationArn", # required
    #         resource: { # required
    #           project_id: "ProjectId",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_associations #=> Array
    #   resp.failed_associations[0].scan_configuration_arn #=> String
    #   resp.failed_associations[0].resource.project_id #=> String
    #   resp.failed_associations[0].status_code #=> String, one of "INTERNAL_ERROR", "ACCESS_DENIED", "SCAN_CONFIGURATION_NOT_FOUND", "INVALID_INPUT", "RESOURCE_NOT_FOUND", "QUOTA_EXCEEDED"
    #   resp.failed_associations[0].status_message #=> String
    #   resp.successful_associations #=> Array
    #   resp.successful_associations[0].scan_configuration_arn #=> String
    #   resp.successful_associations[0].resource.project_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchDisassociateCodeSecurityScanConfiguration AWS API Documentation
    #
    # @overload batch_disassociate_code_security_scan_configuration(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_code_security_scan_configuration(params = {}, options = {})
      req = build_request(:batch_disassociate_code_security_scan_configuration, params)
      req.send_request(options)
    end

    # Retrieves the Amazon Inspector status of multiple Amazon Web Services
    # accounts within your environment.
    #
    # @option params [Array<String>] :account_ids
    #   The 12-digit Amazon Web Services account IDs of the accounts to
    #   retrieve Amazon Inspector status for.
    #
    # @return [Types::BatchGetAccountStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAccountStatusResponse#accounts #accounts} => Array&lt;Types::AccountState&gt;
    #   * {Types::BatchGetAccountStatusResponse#failed_accounts #failed_accounts} => Array&lt;Types::FailedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_account_status({
    #     account_ids: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].state.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].state.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.accounts[0].state.error_message #=> String
    #   resp.accounts[0].resource_state.ec2.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_state.ec2.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.accounts[0].resource_state.ec2.error_message #=> String
    #   resp.accounts[0].resource_state.ecr.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_state.ecr.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.accounts[0].resource_state.ecr.error_message #=> String
    #   resp.accounts[0].resource_state.lambda.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_state.lambda.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.accounts[0].resource_state.lambda.error_message #=> String
    #   resp.accounts[0].resource_state.lambda_code.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_state.lambda_code.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.accounts[0].resource_state.lambda_code.error_message #=> String
    #   resp.accounts[0].resource_state.code_repository.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_state.code_repository.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.accounts[0].resource_state.code_repository.error_message #=> String
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0].account_id #=> String
    #   resp.failed_accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.code_repository #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.failed_accounts[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetAccountStatus AWS API Documentation
    #
    # @overload batch_get_account_status(params = {})
    # @param [Hash] params ({})
    def batch_get_account_status(params = {}, options = {})
      req = build_request(:batch_get_account_status, params)
      req.send_request(options)
    end

    # Retrieves code snippets from findings that Amazon Inspector detected
    # code vulnerabilities in.
    #
    # @option params [required, Array<String>] :finding_arns
    #   An array of finding ARNs for the findings you want to retrieve code
    #   snippets from.
    #
    # @return [Types::BatchGetCodeSnippetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCodeSnippetResponse#code_snippet_results #code_snippet_results} => Array&lt;Types::CodeSnippetResult&gt;
    #   * {Types::BatchGetCodeSnippetResponse#errors #errors} => Array&lt;Types::CodeSnippetError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_code_snippet({
    #     finding_arns: ["FindingArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_snippet_results #=> Array
    #   resp.code_snippet_results[0].finding_arn #=> String
    #   resp.code_snippet_results[0].start_line #=> Integer
    #   resp.code_snippet_results[0].end_line #=> Integer
    #   resp.code_snippet_results[0].code_snippet #=> Array
    #   resp.code_snippet_results[0].code_snippet[0].content #=> String
    #   resp.code_snippet_results[0].code_snippet[0].line_number #=> Integer
    #   resp.code_snippet_results[0].suggested_fixes #=> Array
    #   resp.code_snippet_results[0].suggested_fixes[0].description #=> String
    #   resp.code_snippet_results[0].suggested_fixes[0].code #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].finding_arn #=> String
    #   resp.errors[0].error_code #=> String, one of "INTERNAL_ERROR", "ACCESS_DENIED", "CODE_SNIPPET_NOT_FOUND", "INVALID_INPUT"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetCodeSnippet AWS API Documentation
    #
    # @overload batch_get_code_snippet(params = {})
    # @param [Hash] params ({})
    def batch_get_code_snippet(params = {}, options = {})
      req = build_request(:batch_get_code_snippet, params)
      req.send_request(options)
    end

    # Gets vulnerability details for findings.
    #
    # @option params [required, Array<String>] :finding_arns
    #   A list of finding ARNs.
    #
    # @return [Types::BatchGetFindingDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFindingDetailsResponse#finding_details #finding_details} => Array&lt;Types::FindingDetail&gt;
    #   * {Types::BatchGetFindingDetailsResponse#errors #errors} => Array&lt;Types::FindingDetailsError&gt;
    #
    #
    # @example Example: Sample BatchGetFindingDetails Call
    #
    #   resp = client.batch_get_finding_details({
    #     finding_arns: [
    #       "arn:aws:inspector2:eu-west-1:123456789012:finding/78b88cc9aa1d78b6e14fde90d774dde7", 
    #       "arn:aws:inspector2:eu-west-1:111111111111:finding/78b88cc9aa1d78b6e14fde90d874dde7", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #       {
    #         error_code: "ACCESS_DENIED", 
    #         error_message: "You don't have permission to access this finding", 
    #         finding_arn: "arn:aws:inspector2:eu-west-1:111111111111:finding/78b88cc9aa1d78b6e14fde90d874dde7", 
    #       }, 
    #     ], 
    #     finding_details: [
    #       {
    #         cisa_data: {
    #           action: "For all affected software assets for which updates exist, the only acceptable remediation actions are: 1) Apply updates; OR 2) remove affected assets from agency networks.", 
    #           date_added: Time.parse(1688580990), 
    #           date_due: Time.parse(1688580999), 
    #         }, 
    #         cwes: [
    #           "cwe-1234", 
    #         ], 
    #         epss_score: 0.85, 
    #         evidences: [
    #           {
    #             evidence_detail: "2 sightings on 1 source", 
    #             evidence_rule: "Historically Linked to Penetration Testing Tools", 
    #             severity: "Low", 
    #           }, 
    #         ], 
    #         exploit_observed: {
    #           first_seen: Time.parse(1688580800), 
    #           last_seen: Time.parse(1688580990), 
    #         }, 
    #         finding_arn: "arn:aws:inspector2:eu-west-1:123456789012:finding/78b88cc9aa1d78b6e14fde90d774dde7", 
    #         reference_urls: [
    #           "https://nvd.nist.gov/vuln/detail/CVE-2019-20367", 
    #         ], 
    #         risk_score: 66, 
    #         tools: [
    #           "Metasploit", 
    #         ], 
    #         ttps: [
    #           "TA0001", 
    #           "TA0002", 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_finding_details({
    #     finding_arns: ["FindingArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_details #=> Array
    #   resp.finding_details[0].finding_arn #=> String
    #   resp.finding_details[0].cisa_data.date_added #=> Time
    #   resp.finding_details[0].cisa_data.date_due #=> Time
    #   resp.finding_details[0].cisa_data.action #=> String
    #   resp.finding_details[0].risk_score #=> Integer
    #   resp.finding_details[0].evidences #=> Array
    #   resp.finding_details[0].evidences[0].evidence_rule #=> String
    #   resp.finding_details[0].evidences[0].evidence_detail #=> String
    #   resp.finding_details[0].evidences[0].severity #=> String
    #   resp.finding_details[0].ttps #=> Array
    #   resp.finding_details[0].ttps[0] #=> String
    #   resp.finding_details[0].tools #=> Array
    #   resp.finding_details[0].tools[0] #=> String
    #   resp.finding_details[0].exploit_observed.last_seen #=> Time
    #   resp.finding_details[0].exploit_observed.first_seen #=> Time
    #   resp.finding_details[0].reference_urls #=> Array
    #   resp.finding_details[0].reference_urls[0] #=> String
    #   resp.finding_details[0].cwes #=> Array
    #   resp.finding_details[0].cwes[0] #=> String
    #   resp.finding_details[0].epss_score #=> Float
    #   resp.errors #=> Array
    #   resp.errors[0].finding_arn #=> String
    #   resp.errors[0].error_code #=> String, one of "INTERNAL_ERROR", "ACCESS_DENIED", "FINDING_DETAILS_NOT_FOUND", "INVALID_INPUT"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetFindingDetails AWS API Documentation
    #
    # @overload batch_get_finding_details(params = {})
    # @param [Hash] params ({})
    def batch_get_finding_details(params = {}, options = {})
      req = build_request(:batch_get_finding_details, params)
      req.send_request(options)
    end

    # Gets free trial status for multiple Amazon Web Services accounts.
    #
    # @option params [required, Array<String>] :account_ids
    #   The account IDs to get free trial status for.
    #
    # @return [Types::BatchGetFreeTrialInfoResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFreeTrialInfoResponse#accounts #accounts} => Array&lt;Types::FreeTrialAccountInfo&gt;
    #   * {Types::BatchGetFreeTrialInfoResponse#failed_accounts #failed_accounts} => Array&lt;Types::FreeTrialInfoError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_free_trial_info({
    #     account_ids: ["MeteringAccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].free_trial_info #=> Array
    #   resp.accounts[0].free_trial_info[0].type #=> String, one of "EC2", "ECR", "LAMBDA", "LAMBDA_CODE", "CODE_REPOSITORY"
    #   resp.accounts[0].free_trial_info[0].start #=> Time
    #   resp.accounts[0].free_trial_info[0].end #=> Time
    #   resp.accounts[0].free_trial_info[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0].account_id #=> String
    #   resp.failed_accounts[0].code #=> String, one of "ACCESS_DENIED", "INTERNAL_ERROR"
    #   resp.failed_accounts[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetFreeTrialInfo AWS API Documentation
    #
    # @overload batch_get_free_trial_info(params = {})
    # @param [Hash] params ({})
    def batch_get_free_trial_info(params = {}, options = {})
      req = build_request(:batch_get_free_trial_info, params)
      req.send_request(options)
    end

    # Retrieves Amazon Inspector deep inspection activation status of
    # multiple member accounts within your organization. You must be the
    # delegated administrator of an organization in Amazon Inspector to use
    # this API.
    #
    # @option params [Array<String>] :account_ids
    #   The unique identifiers for the Amazon Web Services accounts to
    #   retrieve Amazon Inspector deep inspection activation status for.
    #
    # @return [Types::BatchGetMemberEc2DeepInspectionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetMemberEc2DeepInspectionStatusResponse#account_ids #account_ids} => Array&lt;Types::MemberAccountEc2DeepInspectionStatusState&gt;
    #   * {Types::BatchGetMemberEc2DeepInspectionStatusResponse#failed_account_ids #failed_account_ids} => Array&lt;Types::FailedMemberAccountEc2DeepInspectionStatusState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_member_ec2_deep_inspection_status({
    #     account_ids: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0].account_id #=> String
    #   resp.account_ids[0].status #=> String, one of "ACTIVATED", "DEACTIVATED", "PENDING", "FAILED"
    #   resp.account_ids[0].error_message #=> String
    #   resp.failed_account_ids #=> Array
    #   resp.failed_account_ids[0].account_id #=> String
    #   resp.failed_account_ids[0].ec2_scan_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_account_ids[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetMemberEc2DeepInspectionStatus AWS API Documentation
    #
    # @overload batch_get_member_ec2_deep_inspection_status(params = {})
    # @param [Hash] params ({})
    def batch_get_member_ec2_deep_inspection_status(params = {}, options = {})
      req = build_request(:batch_get_member_ec2_deep_inspection_status, params)
      req.send_request(options)
    end

    # Activates or deactivates Amazon Inspector deep inspection for the
    # provided member accounts in your organization. You must be the
    # delegated administrator of an organization in Amazon Inspector to use
    # this API.
    #
    # @option params [required, Array<Types::MemberAccountEc2DeepInspectionStatus>] :account_ids
    #   The unique identifiers for the Amazon Web Services accounts to change
    #   Amazon Inspector deep inspection status for.
    #
    # @return [Types::BatchUpdateMemberEc2DeepInspectionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateMemberEc2DeepInspectionStatusResponse#account_ids #account_ids} => Array&lt;Types::MemberAccountEc2DeepInspectionStatusState&gt;
    #   * {Types::BatchUpdateMemberEc2DeepInspectionStatusResponse#failed_account_ids #failed_account_ids} => Array&lt;Types::FailedMemberAccountEc2DeepInspectionStatusState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_member_ec2_deep_inspection_status({
    #     account_ids: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         activate_deep_inspection: false, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0].account_id #=> String
    #   resp.account_ids[0].status #=> String, one of "ACTIVATED", "DEACTIVATED", "PENDING", "FAILED"
    #   resp.account_ids[0].error_message #=> String
    #   resp.failed_account_ids #=> Array
    #   resp.failed_account_ids[0].account_id #=> String
    #   resp.failed_account_ids[0].ec2_scan_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_account_ids[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchUpdateMemberEc2DeepInspectionStatus AWS API Documentation
    #
    # @overload batch_update_member_ec2_deep_inspection_status(params = {})
    # @param [Hash] params ({})
    def batch_update_member_ec2_deep_inspection_status(params = {}, options = {})
      req = build_request(:batch_update_member_ec2_deep_inspection_status, params)
      req.send_request(options)
    end

    # Cancels the given findings report.
    #
    # @option params [required, String] :report_id
    #   The ID of the report to be canceled.
    #
    # @return [Types::CancelFindingsReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelFindingsReportResponse#report_id #report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_findings_report({
    #     report_id: "ReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CancelFindingsReport AWS API Documentation
    #
    # @overload cancel_findings_report(params = {})
    # @param [Hash] params ({})
    def cancel_findings_report(params = {}, options = {})
      req = build_request(:cancel_findings_report, params)
      req.send_request(options)
    end

    # Cancels a software bill of materials (SBOM) report.
    #
    # @option params [required, String] :report_id
    #   The report ID of the SBOM export to cancel.
    #
    # @return [Types::CancelSbomExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelSbomExportResponse#report_id #report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_sbom_export({
    #     report_id: "ReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CancelSbomExport AWS API Documentation
    #
    # @overload cancel_sbom_export(params = {})
    # @param [Hash] params ({})
    def cancel_sbom_export(params = {}, options = {})
      req = build_request(:cancel_sbom_export, params)
      req.send_request(options)
    end

    # Creates a CIS scan configuration.
    #
    # @option params [required, String] :scan_name
    #   The scan name for the CIS scan configuration.
    #
    # @option params [required, String] :security_level
    #   The security level for the CIS scan configuration. Security level
    #   refers to the Benchmark levels that CIS assigns to a profile.
    #
    # @option params [required, Types::Schedule] :schedule
    #   The schedule for the CIS scan configuration.
    #
    # @option params [required, Types::CreateCisTargets] :targets
    #   The targets for the CIS scan configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the CIS scan configuration.
    #
    # @return [Types::CreateCisScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCisScanConfigurationResponse#scan_configuration_arn #scan_configuration_arn} => String
    #
    #
    # @example Example: Sample CreateCisScanConfiguration Call
    #
    #   resp = client.create_cis_scan_configuration({
    #     scan_name: "sample", 
    #     schedule: {
    #       daily: {
    #         start_time: {
    #           time_of_day: "12:34", 
    #           timezone: "UTC", 
    #         }, 
    #       }, 
    #     }, 
    #     security_level: "LEVEL_1", 
    #     targets: {
    #       account_ids: [
    #         "SELF", 
    #       ], 
    #       target_resource_tags: {
    #         "key" => [
    #           "value", 
    #         ], 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cis_scan_configuration({
    #     scan_name: "CisScanName", # required
    #     security_level: "LEVEL_1", # required, accepts LEVEL_1, LEVEL_2
    #     schedule: { # required
    #       one_time: {
    #       },
    #       daily: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #       },
    #       weekly: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #         days: ["SUN"], # required, accepts SUN, MON, TUE, WED, THU, FRI, SAT
    #       },
    #       monthly: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #         day: "SUN", # required, accepts SUN, MON, TUE, WED, THU, FRI, SAT
    #       },
    #     },
    #     targets: { # required
    #       account_ids: ["TargetAccount"], # required
    #       target_resource_tags: { # required
    #         "TargetResourceTagsKey" => ["TargetResourceTagsValue"],
    #       },
    #     },
    #     tags: {
    #       "MapKey" => "MapValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCisScanConfiguration AWS API Documentation
    #
    # @overload create_cis_scan_configuration(params = {})
    # @param [Hash] params ({})
    def create_cis_scan_configuration(params = {}, options = {})
      req = build_request(:create_cis_scan_configuration, params)
      req.send_request(options)
    end

    # Creates a code security integration with a source code repository
    # provider.
    #
    # After calling the `CreateCodeSecurityIntegration` operation, you
    # complete authentication and authorization with your provider. Next you
    # call the `UpdateCodeSecurityIntegration` operation to provide the
    # `details` to complete the integration setup
    #
    # @option params [required, String] :name
    #   The name of the code security integration.
    #
    # @option params [required, String] :type
    #   The type of repository provider for the integration.
    #
    # @option params [Types::CreateIntegrationDetail] :details
    #   The integration details specific to the repository provider type.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the code security integration.
    #
    # @return [Types::CreateCodeSecurityIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeSecurityIntegrationResponse#integration_arn #integration_arn} => String
    #   * {Types::CreateCodeSecurityIntegrationResponse#status #status} => String
    #   * {Types::CreateCodeSecurityIntegrationResponse#authorization_url #authorization_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_security_integration({
    #     name: "IntegrationName", # required
    #     type: "GITLAB_SELF_MANAGED", # required, accepts GITLAB_SELF_MANAGED, GITHUB
    #     details: {
    #       gitlab_self_managed: {
    #         instance_url: "InstanceUrl", # required
    #         access_token: "GitLabAccessToken", # required
    #       },
    #     },
    #     tags: {
    #       "MapKey" => "MapValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_arn #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "ACTIVE", "INACTIVE", "DISABLING"
    #   resp.authorization_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCodeSecurityIntegration AWS API Documentation
    #
    # @overload create_code_security_integration(params = {})
    # @param [Hash] params ({})
    def create_code_security_integration(params = {}, options = {})
      req = build_request(:create_code_security_integration, params)
      req.send_request(options)
    end

    # Creates a scan configuration for code security scanning.
    #
    # @option params [required, String] :name
    #   The name of the scan configuration.
    #
    # @option params [required, String] :level
    #   The security level for the scan configuration.
    #
    # @option params [required, Types::CodeSecurityScanConfiguration] :configuration
    #   The configuration settings for the code security scan.
    #
    # @option params [Types::ScopeSettings] :scope_settings
    #   The scope settings that define which repositories will be scanned.
    #   Include this parameter to create a default scan configuration.
    #   Otherwise Amazon Inspector creates a general scan configuration.
    #
    #   A default scan configuration automatically applies to all existing and
    #   future projects imported into Amazon Inspector. Use the
    #   `BatchAssociateCodeSecurityScanConfiguration` operation to associate a
    #   general scan configuration with projects.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the scan configuration.
    #
    # @return [Types::CreateCodeSecurityScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeSecurityScanConfigurationResponse#scan_configuration_arn #scan_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_security_scan_configuration({
    #     name: "ScanConfigurationName", # required
    #     level: "ORGANIZATION", # required, accepts ORGANIZATION, ACCOUNT
    #     configuration: { # required
    #       periodic_scan_configuration: {
    #         frequency: "WEEKLY", # accepts WEEKLY, MONTHLY, NEVER
    #         frequency_expression: "FrequencyExpression",
    #       },
    #       continuous_integration_scan_configuration: {
    #         supported_events: ["PULL_REQUEST"], # required, accepts PULL_REQUEST, PUSH
    #       },
    #       rule_set_categories: ["SAST"], # required, accepts SAST, IAC, SCA
    #     },
    #     scope_settings: {
    #       project_selection_scope: "ALL", # accepts ALL
    #     },
    #     tags: {
    #       "MapKey" => "MapValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCodeSecurityScanConfiguration AWS API Documentation
    #
    # @overload create_code_security_scan_configuration(params = {})
    # @param [Hash] params ({})
    def create_code_security_scan_configuration(params = {}, options = {})
      req = build_request(:create_code_security_scan_configuration, params)
      req.send_request(options)
    end

    # Creates a filter resource using specified filter criteria. When the
    # filter action is set to `SUPPRESS` this action creates a suppression
    # rule.
    #
    # @option params [required, String] :action
    #   Defines the action that is to be applied to the findings that match
    #   the filter.
    #
    # @option params [String] :description
    #   A description of the filter.
    #
    # @option params [required, Types::FilterCriteria] :filter_criteria
    #   Defines the criteria to be used in the filter for querying findings.
    #
    # @option params [required, String] :name
    #   The name of the filter. Minimum length of 3. Maximum length of 64.
    #   Valid characters include alphanumeric characters, dot (.), underscore
    #   (\_), and dash (-). Spaces are not allowed.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags for the filter.
    #
    # @option params [String] :reason
    #   The reason for creating the filter.
    #
    # @return [Types::CreateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFilterResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_filter({
    #     action: "NONE", # required, accepts NONE, SUPPRESS
    #     description: "FilterDescription",
    #     filter_criteria: { # required
    #       finding_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       title: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "MapKey", # required
    #           value: "MapValue",
    #         },
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1,
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0,
    #           },
    #           release: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         },
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #     },
    #     name: "FilterName", # required
    #     tags: {
    #       "MapKey" => "MapValue",
    #     },
    #     reason: "FilterReason",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFilter AWS API Documentation
    #
    # @overload create_filter(params = {})
    # @param [Hash] params ({})
    def create_filter(params = {}, options = {})
      req = build_request(:create_filter, params)
      req.send_request(options)
    end

    # Creates a finding report. By default only `ACTIVE` findings are
    # returned in the report. To see `SUPRESSED` or `CLOSED` findings you
    # must specify a value for the `findingStatus` filter criteria.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   The filter criteria to apply to the results of the finding report.
    #
    # @option params [required, String] :report_format
    #   The format to generate the report in.
    #
    # @option params [required, Types::Destination] :s3_destination
    #   The Amazon S3 export destination for the report.
    #
    # @return [Types::CreateFindingsReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFindingsReportResponse#report_id #report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_findings_report({
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       title: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "MapKey", # required
    #           value: "MapValue",
    #         },
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1,
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0,
    #           },
    #           release: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         },
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #     },
    #     report_format: "CSV", # required, accepts CSV, JSON
    #     s3_destination: { # required
    #       bucket_name: "String", # required
    #       key_prefix: "String",
    #       kms_key_arn: "String", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFindingsReport AWS API Documentation
    #
    # @overload create_findings_report(params = {})
    # @param [Hash] params ({})
    def create_findings_report(params = {}, options = {})
      req = build_request(:create_findings_report, params)
      req.send_request(options)
    end

    # Creates a software bill of materials (SBOM) report.
    #
    # @option params [Types::ResourceFilterCriteria] :resource_filter_criteria
    #   The resource filter criteria for the software bill of materials (SBOM)
    #   report.
    #
    # @option params [required, String] :report_format
    #   The output format for the software bill of materials (SBOM) report.
    #
    # @option params [required, Types::Destination] :s3_destination
    #   Contains details of the Amazon S3 bucket and KMS key used to export
    #   findings.
    #
    # @return [Types::CreateSbomExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSbomExportResponse#report_id #report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sbom_export({
    #     resource_filter_criteria: {
    #       account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #     },
    #     report_format: "CYCLONEDX_1_4", # required, accepts CYCLONEDX_1_4, SPDX_2_3
    #     s3_destination: { # required
    #       bucket_name: "String", # required
    #       key_prefix: "String",
    #       kms_key_arn: "String", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateSbomExport AWS API Documentation
    #
    # @overload create_sbom_export(params = {})
    # @param [Hash] params ({})
    def create_sbom_export(params = {}, options = {})
      req = build_request(:create_sbom_export, params)
      req.send_request(options)
    end

    # Deletes a CIS scan configuration.
    #
    # @option params [required, String] :scan_configuration_arn
    #   The ARN of the CIS scan configuration.
    #
    # @return [Types::DeleteCisScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCisScanConfigurationResponse#scan_configuration_arn #scan_configuration_arn} => String
    #
    #
    # @example Example: Sample DeleteCisScanConfiguration Call
    #
    #   resp = client.delete_cis_scan_configuration({
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cis_scan_configuration({
    #     scan_configuration_arn: "CisScanConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCisScanConfiguration AWS API Documentation
    #
    # @overload delete_cis_scan_configuration(params = {})
    # @param [Hash] params ({})
    def delete_cis_scan_configuration(params = {}, options = {})
      req = build_request(:delete_cis_scan_configuration, params)
      req.send_request(options)
    end

    # Deletes a code security integration.
    #
    # @option params [required, String] :integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration to
    #   delete.
    #
    # @return [Types::DeleteCodeSecurityIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCodeSecurityIntegrationResponse#integration_arn #integration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_code_security_integration({
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCodeSecurityIntegration AWS API Documentation
    #
    # @overload delete_code_security_integration(params = {})
    # @param [Hash] params ({})
    def delete_code_security_integration(params = {}, options = {})
      req = build_request(:delete_code_security_integration, params)
      req.send_request(options)
    end

    # Deletes a code security scan configuration.
    #
    # @option params [required, String] :scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to delete.
    #
    # @return [Types::DeleteCodeSecurityScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCodeSecurityScanConfigurationResponse#scan_configuration_arn #scan_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_code_security_scan_configuration({
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCodeSecurityScanConfiguration AWS API Documentation
    #
    # @overload delete_code_security_scan_configuration(params = {})
    # @param [Hash] params ({})
    def delete_code_security_scan_configuration(params = {}, options = {})
      req = build_request(:delete_code_security_scan_configuration, params)
      req.send_request(options)
    end

    # Deletes a filter resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Number (ARN) of the filter to be deleted.
    #
    # @return [Types::DeleteFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFilterResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_filter({
    #     arn: "FilterArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteFilter AWS API Documentation
    #
    # @overload delete_filter(params = {})
    # @param [Hash] params ({})
    def delete_filter(params = {}, options = {})
      req = build_request(:delete_filter, params)
      req.send_request(options)
    end

    # Describe Amazon Inspector configuration settings for an Amazon Web
    # Services organization.
    #
    # @return [Types::DescribeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable #auto_enable} => Types::AutoEnable
    #   * {Types::DescribeOrganizationConfigurationResponse#max_account_limit_reached #max_account_limit_reached} => Boolean
    #
    # @example Response structure
    #
    #   resp.auto_enable.ec2 #=> Boolean
    #   resp.auto_enable.ecr #=> Boolean
    #   resp.auto_enable.lambda #=> Boolean
    #   resp.auto_enable.lambda_code #=> Boolean
    #   resp.auto_enable.code_repository #=> Boolean
    #   resp.max_account_limit_reached #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DescribeOrganizationConfiguration AWS API Documentation
    #
    # @overload describe_organization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_organization_configuration(params = {}, options = {})
      req = build_request(:describe_organization_configuration, params)
      req.send_request(options)
    end

    # Disables Amazon Inspector scans for one or more Amazon Web Services
    # accounts. Disabling all scan types in an account disables the Amazon
    # Inspector service.
    #
    # @option params [Array<String>] :account_ids
    #   An array of account IDs you want to disable Amazon Inspector scans
    #   for.
    #
    # @option params [Array<String>] :resource_types
    #   The resource scan types you want to disable.
    #
    # @return [Types::DisableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::DisableResponse#failed_accounts #failed_accounts} => Array&lt;Types::FailedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable({
    #     account_ids: ["AccountId"],
    #     resource_types: ["EC2"], # accepts EC2, ECR, LAMBDA, LAMBDA_CODE, CODE_REPOSITORY
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.code_repository #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0].account_id #=> String
    #   resp.failed_accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.code_repository #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.failed_accounts[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Disable AWS API Documentation
    #
    # @overload disable(params = {})
    # @param [Hash] params ({})
    def disable(params = {}, options = {})
      req = build_request(:disable, params)
      req.send_request(options)
    end

    # Disables the Amazon Inspector delegated administrator for your
    # organization.
    #
    # @option params [required, String] :delegated_admin_account_id
    #   The Amazon Web Services account ID of the current Amazon Inspector
    #   delegated administrator.
    #
    # @return [Types::DisableDelegatedAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableDelegatedAdminAccountResponse#delegated_admin_account_id #delegated_admin_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_delegated_admin_account({
    #     delegated_admin_account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.delegated_admin_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisableDelegatedAdminAccount AWS API Documentation
    #
    # @overload disable_delegated_admin_account(params = {})
    # @param [Hash] params ({})
    def disable_delegated_admin_account(params = {}, options = {})
      req = build_request(:disable_delegated_admin_account, params)
      req.send_request(options)
    end

    # Disassociates a member account from an Amazon Inspector delegated
    # administrator.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the member account to
    #   disassociate.
    #
    # @return [Types::DisassociateMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateMemberResponse#account_id #account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisassociateMember AWS API Documentation
    #
    # @overload disassociate_member(params = {})
    # @param [Hash] params ({})
    def disassociate_member(params = {}, options = {})
      req = build_request(:disassociate_member, params)
      req.send_request(options)
    end

    # Enables Amazon Inspector scans for one or more Amazon Web Services
    # accounts.
    #
    # @option params [Array<String>] :account_ids
    #   A list of account IDs you want to enable Amazon Inspector scans for.
    #
    # @option params [required, Array<String>] :resource_types
    #   The resource scan types you want to enable.
    #
    # @option params [String] :client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::EnableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::EnableResponse#failed_accounts #failed_accounts} => Array&lt;Types::FailedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable({
    #     account_ids: ["AccountId"],
    #     resource_types: ["EC2"], # required, accepts EC2, ECR, LAMBDA, LAMBDA_CODE, CODE_REPOSITORY
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.code_repository #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0].account_id #=> String
    #   resp.failed_accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.code_repository #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED", "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED", "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED"
    #   resp.failed_accounts[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Enable AWS API Documentation
    #
    # @overload enable(params = {})
    # @param [Hash] params ({})
    def enable(params = {}, options = {})
      req = build_request(:enable, params)
      req.send_request(options)
    end

    # Enables the Amazon Inspector delegated administrator for your
    # Organizations organization.
    #
    # @option params [required, String] :delegated_admin_account_id
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator.
    #
    # @option params [String] :client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::EnableDelegatedAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableDelegatedAdminAccountResponse#delegated_admin_account_id #delegated_admin_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_delegated_admin_account({
    #     delegated_admin_account_id: "AccountId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.delegated_admin_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EnableDelegatedAdminAccount AWS API Documentation
    #
    # @overload enable_delegated_admin_account(params = {})
    # @param [Hash] params ({})
    def enable_delegated_admin_account(params = {}, options = {})
      req = build_request(:enable_delegated_admin_account, params)
      req.send_request(options)
    end

    # Retrieves a CIS scan report.
    #
    # @option params [required, String] :scan_arn
    #   The scan ARN.
    #
    # @option params [Array<String>] :target_accounts
    #   The target accounts.
    #
    # @option params [String] :report_format
    #   The format of the report. Valid values are `PDF` and `CSV`. If no
    #   value is specified, the report format defaults to `PDF`.
    #
    # @return [Types::GetCisScanReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCisScanReportResponse#url #url} => String
    #   * {Types::GetCisScanReportResponse#status #status} => String
    #
    #
    # @example Example: Sample GetCisScanReport Call
    #
    #   resp = client.get_cis_scan_report({
    #     report_format: "PDF", 
    #     scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     status: "SUCCEEDED", 
    #     url: "www.s3.amazon.com/abcdef", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cis_scan_report({
    #     scan_arn: "CisScanArn", # required
    #     target_accounts: ["AccountId"],
    #     report_format: "PDF", # accepts PDF, CSV
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #   resp.status #=> String, one of "SUCCEEDED", "FAILED", "IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCisScanReport AWS API Documentation
    #
    # @overload get_cis_scan_report(params = {})
    # @param [Hash] params ({})
    def get_cis_scan_report(params = {}, options = {})
      req = build_request(:get_cis_scan_report, params)
      req.send_request(options)
    end

    # Retrieves CIS scan result details.
    #
    # @option params [required, String] :scan_arn
    #   The scan ARN.
    #
    # @option params [required, String] :target_resource_id
    #   The target resource ID.
    #
    # @option params [required, String] :account_id
    #   The account ID.
    #
    # @option params [Types::CisScanResultDetailsFilterCriteria] :filter_criteria
    #   The filter criteria.
    #
    # @option params [String] :sort_by
    #   The sort by order.
    #
    # @option params [String] :sort_order
    #   The sort order.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request that's used to retrieve
    #   the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of CIS scan result details to be returned in a
    #   single page of results.
    #
    # @return [Types::GetCisScanResultDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCisScanResultDetailsResponse#scan_result_details #scan_result_details} => Array&lt;Types::CisScanResultDetails&gt;
    #   * {Types::GetCisScanResultDetailsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample GetCisScanResultDetails Call
    #
    #   resp = client.get_cis_scan_result_details({
    #     account_id: "123412341234", 
    #     scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38", 
    #     target_resource_id: "i-12341234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scan_result_details: [
    #       {
    #         account_id: "123412341234", 
    #         check_description: "description", 
    #         check_id: "1.1.1.1", 
    #         level: "LEVEL_1", 
    #         platform: "AMAZON_LINUX_2", 
    #         remediation: "fix", 
    #         scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38", 
    #         status: "PASSED", 
    #         target_resource_id: "i-12341234", 
    #         title: "title1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cis_scan_result_details({
    #     scan_arn: "CisScanArn", # required
    #     target_resource_id: "ResourceId", # required
    #     account_id: "AccountId", # required
    #     filter_criteria: {
    #       finding_status_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           value: "PASSED", # required, accepts PASSED, FAILED, SKIPPED
    #         },
    #       ],
    #       check_id_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       title_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       security_level_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           value: "LEVEL_1", # required, accepts LEVEL_1, LEVEL_2
    #         },
    #       ],
    #       finding_arn_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #     },
    #     sort_by: "CHECK_ID", # accepts CHECK_ID, STATUS
    #     sort_order: "ASC", # accepts ASC, DESC
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_result_details #=> Array
    #   resp.scan_result_details[0].scan_arn #=> String
    #   resp.scan_result_details[0].account_id #=> String
    #   resp.scan_result_details[0].target_resource_id #=> String
    #   resp.scan_result_details[0].platform #=> String
    #   resp.scan_result_details[0].status #=> String, one of "PASSED", "FAILED", "SKIPPED"
    #   resp.scan_result_details[0].status_reason #=> String
    #   resp.scan_result_details[0].check_id #=> String
    #   resp.scan_result_details[0].title #=> String
    #   resp.scan_result_details[0].check_description #=> String
    #   resp.scan_result_details[0].remediation #=> String
    #   resp.scan_result_details[0].level #=> String, one of "LEVEL_1", "LEVEL_2"
    #   resp.scan_result_details[0].finding_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCisScanResultDetails AWS API Documentation
    #
    # @overload get_cis_scan_result_details(params = {})
    # @param [Hash] params ({})
    def get_cis_scan_result_details(params = {}, options = {})
      req = build_request(:get_cis_scan_result_details, params)
      req.send_request(options)
    end

    # Returns a list of clusters and metadata associated with an image.
    #
    # @option params [required, Types::ClusterForImageFilterCriteria] :filter
    #   The resource Id for the Amazon ECR image.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in a single page of
    #   results.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request used to retrieve the next
    #   page of results.
    #
    # @return [Types::GetClustersForImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClustersForImageResponse#cluster #cluster} => Array&lt;Types::ClusterInformation&gt;
    #   * {Types::GetClustersForImageResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_clusters_for_image({
    #     filter: { # required
    #       resource_id: "ClusterForImageFilterCriteriaResourceIdString", # required
    #     },
    #     max_results: 1,
    #     next_token: "GetClustersForImageNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster #=> Array
    #   resp.cluster[0].cluster_arn #=> String
    #   resp.cluster[0].cluster_details #=> Array
    #   resp.cluster[0].cluster_details[0].last_in_use #=> Time
    #   resp.cluster[0].cluster_details[0].running_unit_count #=> Integer
    #   resp.cluster[0].cluster_details[0].stopped_unit_count #=> Integer
    #   resp.cluster[0].cluster_details[0].cluster_metadata.aws_ecs_metadata_details.details_group #=> String
    #   resp.cluster[0].cluster_details[0].cluster_metadata.aws_ecs_metadata_details.task_definition_arn #=> String
    #   resp.cluster[0].cluster_details[0].cluster_metadata.aws_eks_metadata_details.namespace #=> String
    #   resp.cluster[0].cluster_details[0].cluster_metadata.aws_eks_metadata_details.workload_info_list #=> Array
    #   resp.cluster[0].cluster_details[0].cluster_metadata.aws_eks_metadata_details.workload_info_list[0].name #=> String
    #   resp.cluster[0].cluster_details[0].cluster_metadata.aws_eks_metadata_details.workload_info_list[0].type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetClustersForImage AWS API Documentation
    #
    # @overload get_clusters_for_image(params = {})
    # @param [Hash] params ({})
    def get_clusters_for_image(params = {}, options = {})
      req = build_request(:get_clusters_for_image, params)
      req.send_request(options)
    end

    # Retrieves information about a code security integration.
    #
    # @option params [required, String] :integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration to
    #   retrieve.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags associated with the code security integration.
    #
    # @return [Types::GetCodeSecurityIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeSecurityIntegrationResponse#integration_arn #integration_arn} => String
    #   * {Types::GetCodeSecurityIntegrationResponse#name #name} => String
    #   * {Types::GetCodeSecurityIntegrationResponse#type #type} => String
    #   * {Types::GetCodeSecurityIntegrationResponse#status #status} => String
    #   * {Types::GetCodeSecurityIntegrationResponse#status_reason #status_reason} => String
    #   * {Types::GetCodeSecurityIntegrationResponse#created_on #created_on} => Time
    #   * {Types::GetCodeSecurityIntegrationResponse#last_update_on #last_update_on} => Time
    #   * {Types::GetCodeSecurityIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetCodeSecurityIntegrationResponse#authorization_url #authorization_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_security_integration({
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #     tags: {
    #       "MapKey" => "MapValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "GITLAB_SELF_MANAGED", "GITHUB"
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "ACTIVE", "INACTIVE", "DISABLING"
    #   resp.status_reason #=> String
    #   resp.created_on #=> Time
    #   resp.last_update_on #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["MapKey"] #=> String
    #   resp.authorization_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityIntegration AWS API Documentation
    #
    # @overload get_code_security_integration(params = {})
    # @param [Hash] params ({})
    def get_code_security_integration(params = {}, options = {})
      req = build_request(:get_code_security_integration, params)
      req.send_request(options)
    end

    # Retrieves information about a specific code security scan.
    #
    # @option params [required, Types::CodeSecurityResource] :resource
    #   The resource identifier for the code repository that was scanned.
    #
    # @option params [required, String] :scan_id
    #   The unique identifier of the scan to retrieve.
    #
    # @return [Types::GetCodeSecurityScanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeSecurityScanResponse#scan_id #scan_id} => String
    #   * {Types::GetCodeSecurityScanResponse#resource #resource} => Types::CodeSecurityResource
    #   * {Types::GetCodeSecurityScanResponse#account_id #account_id} => String
    #   * {Types::GetCodeSecurityScanResponse#status #status} => String
    #   * {Types::GetCodeSecurityScanResponse#status_reason #status_reason} => String
    #   * {Types::GetCodeSecurityScanResponse#created_at #created_at} => Time
    #   * {Types::GetCodeSecurityScanResponse#updated_at #updated_at} => Time
    #   * {Types::GetCodeSecurityScanResponse#last_commit_id #last_commit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_security_scan({
    #     resource: { # required
    #       project_id: "ProjectId",
    #     },
    #     scan_id: "CodeSecurityUuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_id #=> String
    #   resp.resource.project_id #=> String
    #   resp.account_id #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "SKIPPED"
    #   resp.status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.last_commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityScan AWS API Documentation
    #
    # @overload get_code_security_scan(params = {})
    # @param [Hash] params ({})
    def get_code_security_scan(params = {}, options = {})
      req = build_request(:get_code_security_scan, params)
      req.send_request(options)
    end

    # Retrieves information about a code security scan configuration.
    #
    # @option params [required, String] :scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to retrieve.
    #
    # @return [Types::GetCodeSecurityScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeSecurityScanConfigurationResponse#scan_configuration_arn #scan_configuration_arn} => String
    #   * {Types::GetCodeSecurityScanConfigurationResponse#name #name} => String
    #   * {Types::GetCodeSecurityScanConfigurationResponse#configuration #configuration} => Types::CodeSecurityScanConfiguration
    #   * {Types::GetCodeSecurityScanConfigurationResponse#level #level} => String
    #   * {Types::GetCodeSecurityScanConfigurationResponse#scope_settings #scope_settings} => Types::ScopeSettings
    #   * {Types::GetCodeSecurityScanConfigurationResponse#created_at #created_at} => Time
    #   * {Types::GetCodeSecurityScanConfigurationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetCodeSecurityScanConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_security_scan_configuration({
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_configuration_arn #=> String
    #   resp.name #=> String
    #   resp.configuration.periodic_scan_configuration.frequency #=> String, one of "WEEKLY", "MONTHLY", "NEVER"
    #   resp.configuration.periodic_scan_configuration.frequency_expression #=> String
    #   resp.configuration.continuous_integration_scan_configuration.supported_events #=> Array
    #   resp.configuration.continuous_integration_scan_configuration.supported_events[0] #=> String, one of "PULL_REQUEST", "PUSH"
    #   resp.configuration.rule_set_categories #=> Array
    #   resp.configuration.rule_set_categories[0] #=> String, one of "SAST", "IAC", "SCA"
    #   resp.level #=> String, one of "ORGANIZATION", "ACCOUNT"
    #   resp.scope_settings.project_selection_scope #=> String, one of "ALL"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["MapKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityScanConfiguration AWS API Documentation
    #
    # @overload get_code_security_scan_configuration(params = {})
    # @param [Hash] params ({})
    def get_code_security_scan_configuration(params = {}, options = {})
      req = build_request(:get_code_security_scan_configuration, params)
      req.send_request(options)
    end

    # Retrieves setting configurations for Inspector scans.
    #
    # @return [Types::GetConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationResponse#ecr_configuration #ecr_configuration} => Types::EcrConfigurationState
    #   * {Types::GetConfigurationResponse#ec2_configuration #ec2_configuration} => Types::Ec2ConfigurationState
    #
    # @example Response structure
    #
    #   resp.ecr_configuration.rescan_duration_state.rescan_duration #=> String, one of "LIFETIME", "DAYS_30", "DAYS_180", "DAYS_14", "DAYS_60", "DAYS_90"
    #   resp.ecr_configuration.rescan_duration_state.status #=> String, one of "SUCCESS", "PENDING", "FAILED"
    #   resp.ecr_configuration.rescan_duration_state.updated_at #=> Time
    #   resp.ecr_configuration.rescan_duration_state.pull_date_rescan_duration #=> String, one of "DAYS_14", "DAYS_30", "DAYS_60", "DAYS_90", "DAYS_180"
    #   resp.ecr_configuration.rescan_duration_state.pull_date_rescan_mode #=> String, one of "LAST_PULL_DATE", "LAST_IN_USE_AT"
    #   resp.ec2_configuration.scan_mode_state.scan_mode #=> String, one of "EC2_SSM_AGENT_BASED", "EC2_HYBRID"
    #   resp.ec2_configuration.scan_mode_state.scan_mode_status #=> String, one of "SUCCESS", "PENDING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetConfiguration AWS API Documentation
    #
    # @overload get_configuration(params = {})
    # @param [Hash] params ({})
    def get_configuration(params = {}, options = {})
      req = build_request(:get_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about the Amazon Inspector delegated
    # administrator for your organization.
    #
    # @return [Types::GetDelegatedAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDelegatedAdminAccountResponse#delegated_admin #delegated_admin} => Types::DelegatedAdmin
    #
    # @example Response structure
    #
    #   resp.delegated_admin.account_id #=> String
    #   resp.delegated_admin.relationship_status #=> String, one of "CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetDelegatedAdminAccount AWS API Documentation
    #
    # @overload get_delegated_admin_account(params = {})
    # @param [Hash] params ({})
    def get_delegated_admin_account(params = {}, options = {})
      req = build_request(:get_delegated_admin_account, params)
      req.send_request(options)
    end

    # Retrieves the activation status of Amazon Inspector deep inspection
    # and custom paths associated with your account.
    #
    # @return [Types::GetEc2DeepInspectionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEc2DeepInspectionConfigurationResponse#package_paths #package_paths} => Array&lt;String&gt;
    #   * {Types::GetEc2DeepInspectionConfigurationResponse#org_package_paths #org_package_paths} => Array&lt;String&gt;
    #   * {Types::GetEc2DeepInspectionConfigurationResponse#status #status} => String
    #   * {Types::GetEc2DeepInspectionConfigurationResponse#error_message #error_message} => String
    #
    # @example Response structure
    #
    #   resp.package_paths #=> Array
    #   resp.package_paths[0] #=> String
    #   resp.org_package_paths #=> Array
    #   resp.org_package_paths[0] #=> String
    #   resp.status #=> String, one of "ACTIVATED", "DEACTIVATED", "PENDING", "FAILED"
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEc2DeepInspectionConfiguration AWS API Documentation
    #
    # @overload get_ec2_deep_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def get_ec2_deep_inspection_configuration(params = {}, options = {})
      req = build_request(:get_ec2_deep_inspection_configuration, params)
      req.send_request(options)
    end

    # Gets an encryption key.
    #
    # @option params [required, String] :scan_type
    #   The scan type the key encrypts.
    #
    # @option params [required, String] :resource_type
    #   The resource type the key encrypts.
    #
    # @return [Types::GetEncryptionKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEncryptionKeyResponse#kms_key_id #kms_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_encryption_key({
    #     scan_type: "NETWORK", # required, accepts NETWORK, PACKAGE, CODE
    #     resource_type: "AWS_EC2_INSTANCE", # required, accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_ECR_REPOSITORY, AWS_LAMBDA_FUNCTION, CODE_REPOSITORY
    #   })
    #
    # @example Response structure
    #
    #   resp.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEncryptionKey AWS API Documentation
    #
    # @overload get_encryption_key(params = {})
    # @param [Hash] params ({})
    def get_encryption_key(params = {}, options = {})
      req = build_request(:get_encryption_key, params)
      req.send_request(options)
    end

    # Gets the status of a findings report.
    #
    # @option params [String] :report_id
    #   The ID of the report to retrieve the status of.
    #
    # @return [Types::GetFindingsReportStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsReportStatusResponse#report_id #report_id} => String
    #   * {Types::GetFindingsReportStatusResponse#status #status} => String
    #   * {Types::GetFindingsReportStatusResponse#error_code #error_code} => String
    #   * {Types::GetFindingsReportStatusResponse#error_message #error_message} => String
    #   * {Types::GetFindingsReportStatusResponse#destination #destination} => Types::Destination
    #   * {Types::GetFindingsReportStatusResponse#filter_criteria #filter_criteria} => Types::FilterCriteria
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_report_status({
    #     report_id: "ReportId",
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #   resp.status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "CANCELLED", "FAILED"
    #   resp.error_code #=> String, one of "INTERNAL_ERROR", "INVALID_PERMISSIONS", "NO_FINDINGS_FOUND", "BUCKET_NOT_FOUND", "INCOMPATIBLE_BUCKET_REGION", "MALFORMED_KMS_KEY"
    #   resp.error_message #=> String
    #   resp.destination.bucket_name #=> String
    #   resp.destination.key_prefix #=> String
    #   resp.destination.kms_key_arn #=> String
    #   resp.filter_criteria.finding_arn #=> Array
    #   resp.filter_criteria.finding_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.finding_arn[0].value #=> String
    #   resp.filter_criteria.aws_account_id #=> Array
    #   resp.filter_criteria.aws_account_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.aws_account_id[0].value #=> String
    #   resp.filter_criteria.finding_type #=> Array
    #   resp.filter_criteria.finding_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.finding_type[0].value #=> String
    #   resp.filter_criteria.severity #=> Array
    #   resp.filter_criteria.severity[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.severity[0].value #=> String
    #   resp.filter_criteria.first_observed_at #=> Array
    #   resp.filter_criteria.first_observed_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.first_observed_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.last_observed_at #=> Array
    #   resp.filter_criteria.last_observed_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.last_observed_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.updated_at #=> Array
    #   resp.filter_criteria.updated_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.updated_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.finding_status #=> Array
    #   resp.filter_criteria.finding_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.finding_status[0].value #=> String
    #   resp.filter_criteria.title #=> Array
    #   resp.filter_criteria.title[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.title[0].value #=> String
    #   resp.filter_criteria.inspector_score #=> Array
    #   resp.filter_criteria.inspector_score[0].upper_inclusive #=> Float
    #   resp.filter_criteria.inspector_score[0].lower_inclusive #=> Float
    #   resp.filter_criteria.resource_type #=> Array
    #   resp.filter_criteria.resource_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.resource_type[0].value #=> String
    #   resp.filter_criteria.resource_id #=> Array
    #   resp.filter_criteria.resource_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.resource_id[0].value #=> String
    #   resp.filter_criteria.resource_tags #=> Array
    #   resp.filter_criteria.resource_tags[0].comparison #=> String, one of "EQUALS"
    #   resp.filter_criteria.resource_tags[0].key #=> String
    #   resp.filter_criteria.resource_tags[0].value #=> String
    #   resp.filter_criteria.ec2_instance_image_id #=> Array
    #   resp.filter_criteria.ec2_instance_image_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ec2_instance_image_id[0].value #=> String
    #   resp.filter_criteria.ec2_instance_vpc_id #=> Array
    #   resp.filter_criteria.ec2_instance_vpc_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ec2_instance_vpc_id[0].value #=> String
    #   resp.filter_criteria.ec2_instance_subnet_id #=> Array
    #   resp.filter_criteria.ec2_instance_subnet_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ec2_instance_subnet_id[0].value #=> String
    #   resp.filter_criteria.ecr_image_pushed_at #=> Array
    #   resp.filter_criteria.ecr_image_pushed_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.ecr_image_pushed_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.ecr_image_architecture #=> Array
    #   resp.filter_criteria.ecr_image_architecture[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_architecture[0].value #=> String
    #   resp.filter_criteria.ecr_image_registry #=> Array
    #   resp.filter_criteria.ecr_image_registry[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_registry[0].value #=> String
    #   resp.filter_criteria.ecr_image_repository_name #=> Array
    #   resp.filter_criteria.ecr_image_repository_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_repository_name[0].value #=> String
    #   resp.filter_criteria.ecr_image_tags #=> Array
    #   resp.filter_criteria.ecr_image_tags[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_tags[0].value #=> String
    #   resp.filter_criteria.ecr_image_hash #=> Array
    #   resp.filter_criteria.ecr_image_hash[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_hash[0].value #=> String
    #   resp.filter_criteria.ecr_image_last_in_use_at #=> Array
    #   resp.filter_criteria.ecr_image_last_in_use_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.ecr_image_last_in_use_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.ecr_image_in_use_count #=> Array
    #   resp.filter_criteria.ecr_image_in_use_count[0].upper_inclusive #=> Float
    #   resp.filter_criteria.ecr_image_in_use_count[0].lower_inclusive #=> Float
    #   resp.filter_criteria.port_range #=> Array
    #   resp.filter_criteria.port_range[0].begin_inclusive #=> Integer
    #   resp.filter_criteria.port_range[0].end_inclusive #=> Integer
    #   resp.filter_criteria.network_protocol #=> Array
    #   resp.filter_criteria.network_protocol[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.network_protocol[0].value #=> String
    #   resp.filter_criteria.component_id #=> Array
    #   resp.filter_criteria.component_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.component_id[0].value #=> String
    #   resp.filter_criteria.component_type #=> Array
    #   resp.filter_criteria.component_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.component_type[0].value #=> String
    #   resp.filter_criteria.vulnerability_id #=> Array
    #   resp.filter_criteria.vulnerability_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerability_id[0].value #=> String
    #   resp.filter_criteria.vulnerability_source #=> Array
    #   resp.filter_criteria.vulnerability_source[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerability_source[0].value #=> String
    #   resp.filter_criteria.vendor_severity #=> Array
    #   resp.filter_criteria.vendor_severity[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vendor_severity[0].value #=> String
    #   resp.filter_criteria.vulnerable_packages #=> Array
    #   resp.filter_criteria.vulnerable_packages[0].name.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].name.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].version.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].version.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].epoch.upper_inclusive #=> Float
    #   resp.filter_criteria.vulnerable_packages[0].epoch.lower_inclusive #=> Float
    #   resp.filter_criteria.vulnerable_packages[0].release.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].release.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].architecture.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].architecture.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].source_layer_hash.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].source_layer_hash.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].source_lambda_layer_arn.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].source_lambda_layer_arn.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].file_path.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].file_path.value #=> String
    #   resp.filter_criteria.related_vulnerabilities #=> Array
    #   resp.filter_criteria.related_vulnerabilities[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.related_vulnerabilities[0].value #=> String
    #   resp.filter_criteria.fix_available #=> Array
    #   resp.filter_criteria.fix_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.fix_available[0].value #=> String
    #   resp.filter_criteria.lambda_function_name #=> Array
    #   resp.filter_criteria.lambda_function_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_name[0].value #=> String
    #   resp.filter_criteria.lambda_function_layers #=> Array
    #   resp.filter_criteria.lambda_function_layers[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_layers[0].value #=> String
    #   resp.filter_criteria.lambda_function_runtime #=> Array
    #   resp.filter_criteria.lambda_function_runtime[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_runtime[0].value #=> String
    #   resp.filter_criteria.lambda_function_last_modified_at #=> Array
    #   resp.filter_criteria.lambda_function_last_modified_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.lambda_function_last_modified_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.lambda_function_execution_role_arn #=> Array
    #   resp.filter_criteria.lambda_function_execution_role_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_execution_role_arn[0].value #=> String
    #   resp.filter_criteria.exploit_available #=> Array
    #   resp.filter_criteria.exploit_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.exploit_available[0].value #=> String
    #   resp.filter_criteria.code_vulnerability_detector_name #=> Array
    #   resp.filter_criteria.code_vulnerability_detector_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.code_vulnerability_detector_name[0].value #=> String
    #   resp.filter_criteria.code_vulnerability_detector_tags #=> Array
    #   resp.filter_criteria.code_vulnerability_detector_tags[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.code_vulnerability_detector_tags[0].value #=> String
    #   resp.filter_criteria.code_vulnerability_file_path #=> Array
    #   resp.filter_criteria.code_vulnerability_file_path[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.code_vulnerability_file_path[0].value #=> String
    #   resp.filter_criteria.epss_score #=> Array
    #   resp.filter_criteria.epss_score[0].upper_inclusive #=> Float
    #   resp.filter_criteria.epss_score[0].lower_inclusive #=> Float
    #   resp.filter_criteria.code_repository_project_name #=> Array
    #   resp.filter_criteria.code_repository_project_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.code_repository_project_name[0].value #=> String
    #   resp.filter_criteria.code_repository_provider_type #=> Array
    #   resp.filter_criteria.code_repository_provider_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.code_repository_provider_type[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetFindingsReportStatus AWS API Documentation
    #
    # @overload get_findings_report_status(params = {})
    # @param [Hash] params ({})
    def get_findings_report_status(params = {}, options = {})
      req = build_request(:get_findings_report_status, params)
      req.send_request(options)
    end

    # Gets member information for your organization.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the member account to retrieve
    #   information on.
    #
    # @return [Types::GetMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemberResponse#member #member} => Types::Member
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.account_id #=> String
    #   resp.member.relationship_status #=> String, one of "CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"
    #   resp.member.delegated_admin_account_id #=> String
    #   resp.member.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetMember AWS API Documentation
    #
    # @overload get_member(params = {})
    # @param [Hash] params ({})
    def get_member(params = {}, options = {})
      req = build_request(:get_member, params)
      req.send_request(options)
    end

    # Gets details of a software bill of materials (SBOM) report.
    #
    # @option params [required, String] :report_id
    #   The report ID of the SBOM export to get details for.
    #
    # @return [Types::GetSbomExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSbomExportResponse#report_id #report_id} => String
    #   * {Types::GetSbomExportResponse#format #format} => String
    #   * {Types::GetSbomExportResponse#status #status} => String
    #   * {Types::GetSbomExportResponse#error_code #error_code} => String
    #   * {Types::GetSbomExportResponse#error_message #error_message} => String
    #   * {Types::GetSbomExportResponse#s3_destination #s3_destination} => Types::Destination
    #   * {Types::GetSbomExportResponse#filter_criteria #filter_criteria} => Types::ResourceFilterCriteria
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sbom_export({
    #     report_id: "ReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #   resp.format #=> String, one of "CYCLONEDX_1_4", "SPDX_2_3"
    #   resp.status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "CANCELLED", "FAILED"
    #   resp.error_code #=> String, one of "INTERNAL_ERROR", "INVALID_PERMISSIONS", "NO_FINDINGS_FOUND", "BUCKET_NOT_FOUND", "INCOMPATIBLE_BUCKET_REGION", "MALFORMED_KMS_KEY"
    #   resp.error_message #=> String
    #   resp.s3_destination.bucket_name #=> String
    #   resp.s3_destination.key_prefix #=> String
    #   resp.s3_destination.kms_key_arn #=> String
    #   resp.filter_criteria.account_id #=> Array
    #   resp.filter_criteria.account_id[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.account_id[0].value #=> String
    #   resp.filter_criteria.resource_id #=> Array
    #   resp.filter_criteria.resource_id[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.resource_id[0].value #=> String
    #   resp.filter_criteria.resource_type #=> Array
    #   resp.filter_criteria.resource_type[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.resource_type[0].value #=> String
    #   resp.filter_criteria.ecr_repository_name #=> Array
    #   resp.filter_criteria.ecr_repository_name[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_repository_name[0].value #=> String
    #   resp.filter_criteria.lambda_function_name #=> Array
    #   resp.filter_criteria.lambda_function_name[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_name[0].value #=> String
    #   resp.filter_criteria.ecr_image_tags #=> Array
    #   resp.filter_criteria.ecr_image_tags[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_tags[0].value #=> String
    #   resp.filter_criteria.ec2_instance_tags #=> Array
    #   resp.filter_criteria.ec2_instance_tags[0].comparison #=> String, one of "EQUALS"
    #   resp.filter_criteria.ec2_instance_tags[0].key #=> String
    #   resp.filter_criteria.ec2_instance_tags[0].value #=> String
    #   resp.filter_criteria.lambda_function_tags #=> Array
    #   resp.filter_criteria.lambda_function_tags[0].comparison #=> String, one of "EQUALS"
    #   resp.filter_criteria.lambda_function_tags[0].key #=> String
    #   resp.filter_criteria.lambda_function_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetSbomExport AWS API Documentation
    #
    # @overload get_sbom_export(params = {})
    # @param [Hash] params ({})
    def get_sbom_export(params = {}, options = {})
      req = build_request(:get_sbom_export, params)
      req.send_request(options)
    end

    # Lists the permissions an account has to configure Amazon Inspector.
    #
    # @option params [String] :service
    #   The service scan type to check permissions for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results the response can return. If your request
    #   would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the NextToken value returned from the
    #   previous request to continue listing results after the first page.
    #
    # @return [Types::ListAccountPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountPermissionsResponse#permissions #permissions} => Array&lt;Types::Permission&gt;
    #   * {Types::ListAccountPermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_permissions({
    #     service: "EC2", # accepts EC2, ECR, LAMBDA
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].service #=> String, one of "EC2", "ECR", "LAMBDA"
    #   resp.permissions[0].operation #=> String, one of "ENABLE_SCANNING", "DISABLE_SCANNING", "ENABLE_REPOSITORY", "DISABLE_REPOSITORY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListAccountPermissions AWS API Documentation
    #
    # @overload list_account_permissions(params = {})
    # @param [Hash] params ({})
    def list_account_permissions(params = {}, options = {})
      req = build_request(:list_account_permissions, params)
      req.send_request(options)
    end

    # Lists CIS scan configurations.
    #
    # @option params [Types::ListCisScanConfigurationsFilterCriteria] :filter_criteria
    #   The CIS scan configuration filter criteria.
    #
    # @option params [String] :sort_by
    #   The CIS scan configuration sort by order.
    #
    # @option params [String] :sort_order
    #   The CIS scan configuration sort order order.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request that's used to retrieve
    #   the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of CIS scan configurations to be returned in a
    #   single page of results.
    #
    # @return [Types::ListCisScanConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCisScanConfigurationsResponse#scan_configurations #scan_configurations} => Array&lt;Types::CisScanConfiguration&gt;
    #   * {Types::ListCisScanConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample ListCisScanConfigurations Call
    #
    #   resp = client.list_cis_scan_configurations({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scan_configurations: [
    #       {
    #         owner_id: "123412341234", 
    #         scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38", 
    #         scan_name: "sample", 
    #         schedule: {
    #           daily: {
    #             start_time: {
    #               time_of_day: "12:34", 
    #               timezone: "UTC", 
    #             }, 
    #           }, 
    #         }, 
    #         security_level: "LEVEL_1", 
    #         targets: {
    #           account_ids: [
    #             "123412341234", 
    #           ], 
    #           target_resource_tags: {
    #             "key" => [
    #               "value", 
    #             ], 
    #           }, 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cis_scan_configurations({
    #     filter_criteria: {
    #       scan_name_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       target_resource_tag_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString", # required
    #         },
    #       ],
    #       scan_configuration_arn_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #     },
    #     sort_by: "SCAN_NAME", # accepts SCAN_NAME, SCAN_CONFIGURATION_ARN
    #     sort_order: "ASC", # accepts ASC, DESC
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_configurations #=> Array
    #   resp.scan_configurations[0].scan_configuration_arn #=> String
    #   resp.scan_configurations[0].owner_id #=> String
    #   resp.scan_configurations[0].scan_name #=> String
    #   resp.scan_configurations[0].security_level #=> String, one of "LEVEL_1", "LEVEL_2"
    #   resp.scan_configurations[0].schedule.daily.start_time.time_of_day #=> String
    #   resp.scan_configurations[0].schedule.daily.start_time.timezone #=> String
    #   resp.scan_configurations[0].schedule.weekly.start_time.time_of_day #=> String
    #   resp.scan_configurations[0].schedule.weekly.start_time.timezone #=> String
    #   resp.scan_configurations[0].schedule.weekly.days #=> Array
    #   resp.scan_configurations[0].schedule.weekly.days[0] #=> String, one of "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"
    #   resp.scan_configurations[0].schedule.monthly.start_time.time_of_day #=> String
    #   resp.scan_configurations[0].schedule.monthly.start_time.timezone #=> String
    #   resp.scan_configurations[0].schedule.monthly.day #=> String, one of "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"
    #   resp.scan_configurations[0].targets.account_ids #=> Array
    #   resp.scan_configurations[0].targets.account_ids[0] #=> String
    #   resp.scan_configurations[0].targets.target_resource_tags #=> Hash
    #   resp.scan_configurations[0].targets.target_resource_tags["TargetResourceTagsKey"] #=> Array
    #   resp.scan_configurations[0].targets.target_resource_tags["TargetResourceTagsKey"][0] #=> String
    #   resp.scan_configurations[0].tags #=> Hash
    #   resp.scan_configurations[0].tags["MapKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanConfigurations AWS API Documentation
    #
    # @overload list_cis_scan_configurations(params = {})
    # @param [Hash] params ({})
    def list_cis_scan_configurations(params = {}, options = {})
      req = build_request(:list_cis_scan_configurations, params)
      req.send_request(options)
    end

    # Lists scan results aggregated by checks.
    #
    # @option params [required, String] :scan_arn
    #   The scan ARN.
    #
    # @option params [Types::CisScanResultsAggregatedByChecksFilterCriteria] :filter_criteria
    #   The filter criteria.
    #
    # @option params [String] :sort_by
    #   The sort by order.
    #
    # @option params [String] :sort_order
    #   The sort order.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request that's used to retrieve
    #   the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of scan results aggregated by checks to be returned
    #   in a single page of results.
    #
    # @return [Types::ListCisScanResultsAggregatedByChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCisScanResultsAggregatedByChecksResponse#check_aggregations #check_aggregations} => Array&lt;Types::CisCheckAggregation&gt;
    #   * {Types::ListCisScanResultsAggregatedByChecksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample ListCisScanResultsAggregatedByChecks Call
    #
    #   resp = client.list_cis_scan_results_aggregated_by_checks({
    #     scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     check_aggregations: [
    #       {
    #         account_id: "123412341234", 
    #         check_description: "description", 
    #         check_id: "1.1.1.1", 
    #         level: "LEVEL_1", 
    #         platform: "AMAZON_LINUX_2", 
    #         scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38", 
    #         status_counts: {
    #           failed: 0, 
    #           passed: 2, 
    #           skipped: 1, 
    #         }, 
    #         title: "title1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cis_scan_results_aggregated_by_checks({
    #     scan_arn: "CisScanArn", # required
    #     filter_criteria: {
    #       account_id_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       check_id_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       title_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       platform_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       failed_resources_filters: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1,
    #         },
    #       ],
    #       security_level_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           value: "LEVEL_1", # required, accepts LEVEL_1, LEVEL_2
    #         },
    #       ],
    #     },
    #     sort_by: "CHECK_ID", # accepts CHECK_ID, TITLE, PLATFORM, FAILED_COUNTS, SECURITY_LEVEL
    #     sort_order: "ASC", # accepts ASC, DESC
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.check_aggregations #=> Array
    #   resp.check_aggregations[0].scan_arn #=> String
    #   resp.check_aggregations[0].check_id #=> String
    #   resp.check_aggregations[0].title #=> String
    #   resp.check_aggregations[0].check_description #=> String
    #   resp.check_aggregations[0].level #=> String, one of "LEVEL_1", "LEVEL_2"
    #   resp.check_aggregations[0].account_id #=> String
    #   resp.check_aggregations[0].status_counts.failed #=> Integer
    #   resp.check_aggregations[0].status_counts.skipped #=> Integer
    #   resp.check_aggregations[0].status_counts.passed #=> Integer
    #   resp.check_aggregations[0].platform #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanResultsAggregatedByChecks AWS API Documentation
    #
    # @overload list_cis_scan_results_aggregated_by_checks(params = {})
    # @param [Hash] params ({})
    def list_cis_scan_results_aggregated_by_checks(params = {}, options = {})
      req = build_request(:list_cis_scan_results_aggregated_by_checks, params)
      req.send_request(options)
    end

    # Lists scan results aggregated by a target resource.
    #
    # @option params [required, String] :scan_arn
    #   The scan ARN.
    #
    # @option params [Types::CisScanResultsAggregatedByTargetResourceFilterCriteria] :filter_criteria
    #   The filter criteria.
    #
    # @option params [String] :sort_by
    #   The sort by order.
    #
    # @option params [String] :sort_order
    #   The sort order.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request that's used to retrieve
    #   the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of scan results aggregated by a target resource to
    #   be returned in a single page of results.
    #
    # @return [Types::ListCisScanResultsAggregatedByTargetResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCisScanResultsAggregatedByTargetResourceResponse#target_resource_aggregations #target_resource_aggregations} => Array&lt;Types::CisTargetResourceAggregation&gt;
    #   * {Types::ListCisScanResultsAggregatedByTargetResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample ListCisScanResultsAggregatedByTargetResource Call
    #
    #   resp = client.list_cis_scan_results_aggregated_by_target_resource({
    #     scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     target_resource_aggregations: [
    #       {
    #         account_id: "123412341234", 
    #         platform: "AMAZON_LINUX_2", 
    #         scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38", 
    #         status_counts: {
    #           failed: 0, 
    #           passed: 2, 
    #           skipped: 1, 
    #         }, 
    #         target_resource_id: "i-12341234", 
    #         target_resource_tags: {
    #           "key" => [
    #             "value", 
    #           ], 
    #         }, 
    #         target_status: "COMPLETED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cis_scan_results_aggregated_by_target_resource({
    #     scan_arn: "CisScanArn", # required
    #     filter_criteria: {
    #       account_id_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       status_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           value: "PASSED", # required, accepts PASSED, FAILED, SKIPPED
    #         },
    #       ],
    #       check_id_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       target_resource_id_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       target_resource_tag_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString", # required
    #         },
    #       ],
    #       platform_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       target_status_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           value: "TIMED_OUT", # required, accepts TIMED_OUT, CANCELLED, COMPLETED
    #         },
    #       ],
    #       target_status_reason_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           value: "SCAN_IN_PROGRESS", # required, accepts SCAN_IN_PROGRESS, UNSUPPORTED_OS, SSM_UNMANAGED
    #         },
    #       ],
    #       failed_checks_filters: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1,
    #         },
    #       ],
    #     },
    #     sort_by: "RESOURCE_ID", # accepts RESOURCE_ID, FAILED_COUNTS, ACCOUNT_ID, PLATFORM, TARGET_STATUS, TARGET_STATUS_REASON
    #     sort_order: "ASC", # accepts ASC, DESC
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.target_resource_aggregations #=> Array
    #   resp.target_resource_aggregations[0].scan_arn #=> String
    #   resp.target_resource_aggregations[0].target_resource_id #=> String
    #   resp.target_resource_aggregations[0].account_id #=> String
    #   resp.target_resource_aggregations[0].target_resource_tags #=> Hash
    #   resp.target_resource_aggregations[0].target_resource_tags["TargetResourceTagsKey"] #=> Array
    #   resp.target_resource_aggregations[0].target_resource_tags["TargetResourceTagsKey"][0] #=> String
    #   resp.target_resource_aggregations[0].status_counts.failed #=> Integer
    #   resp.target_resource_aggregations[0].status_counts.skipped #=> Integer
    #   resp.target_resource_aggregations[0].status_counts.passed #=> Integer
    #   resp.target_resource_aggregations[0].platform #=> String
    #   resp.target_resource_aggregations[0].target_status #=> String, one of "TIMED_OUT", "CANCELLED", "COMPLETED"
    #   resp.target_resource_aggregations[0].target_status_reason #=> String, one of "SCAN_IN_PROGRESS", "UNSUPPORTED_OS", "SSM_UNMANAGED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanResultsAggregatedByTargetResource AWS API Documentation
    #
    # @overload list_cis_scan_results_aggregated_by_target_resource(params = {})
    # @param [Hash] params ({})
    def list_cis_scan_results_aggregated_by_target_resource(params = {}, options = {})
      req = build_request(:list_cis_scan_results_aggregated_by_target_resource, params)
      req.send_request(options)
    end

    # Returns a CIS scan list.
    #
    # @option params [Types::ListCisScansFilterCriteria] :filter_criteria
    #   The CIS scan filter criteria.
    #
    # @option params [String] :detail_level
    #   The detail applied to the CIS scan.
    #
    # @option params [String] :sort_by
    #   The CIS scans sort by order.
    #
    # @option params [String] :sort_order
    #   The CIS scans sort order.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request that's used to retrieve
    #   the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned.
    #
    # @return [Types::ListCisScansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCisScansResponse#scans #scans} => Array&lt;Types::CisScan&gt;
    #   * {Types::ListCisScansResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample ListCisScans Call
    #
    #   resp = client.list_cis_scans({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scans: [
    #       {
    #         failed_checks: 2, 
    #         scan_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-scan/624b746d-e080-44ae-8c1d-48e653365a38", 
    #         scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38", 
    #         scan_date: Time.parse("2023-04-12T23:20:50.52Z"), 
    #         scan_name: "sample", 
    #         scheduled_by: "Delegated Admin", 
    #         security_level: "LEVEL_1", 
    #         status: "COMPLETED", 
    #         targets: {
    #           account_ids: [
    #             "123412341234", 
    #           ], 
    #           target_resource_tags: {
    #             "key" => [
    #               "value", 
    #             ], 
    #           }, 
    #         }, 
    #         total_checks: 150, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cis_scans({
    #     filter_criteria: {
    #       scan_name_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       target_resource_tag_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString", # required
    #         },
    #       ],
    #       target_resource_id_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       scan_status_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           value: "FAILED", # required, accepts FAILED, COMPLETED, CANCELLED, IN_PROGRESS
    #         },
    #       ],
    #       scan_at_filters: [
    #         {
    #           earliest_scan_start_time: Time.now,
    #           latest_scan_start_time: Time.now,
    #         },
    #       ],
    #       scan_configuration_arn_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       scan_arn_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       scheduled_by_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #       failed_checks_filters: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1,
    #         },
    #       ],
    #       target_account_id_filters: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "String", # required
    #         },
    #       ],
    #     },
    #     detail_level: "ORGANIZATION", # accepts ORGANIZATION, MEMBER
    #     sort_by: "STATUS", # accepts STATUS, SCHEDULED_BY, SCAN_START_DATE, FAILED_CHECKS
    #     sort_order: "ASC", # accepts ASC, DESC
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scans #=> Array
    #   resp.scans[0].scan_arn #=> String
    #   resp.scans[0].scan_configuration_arn #=> String
    #   resp.scans[0].status #=> String, one of "FAILED", "COMPLETED", "CANCELLED", "IN_PROGRESS"
    #   resp.scans[0].scan_name #=> String
    #   resp.scans[0].scan_date #=> Time
    #   resp.scans[0].failed_checks #=> Integer
    #   resp.scans[0].total_checks #=> Integer
    #   resp.scans[0].targets.account_ids #=> Array
    #   resp.scans[0].targets.account_ids[0] #=> String
    #   resp.scans[0].targets.target_resource_tags #=> Hash
    #   resp.scans[0].targets.target_resource_tags["TargetResourceTagsKey"] #=> Array
    #   resp.scans[0].targets.target_resource_tags["TargetResourceTagsKey"][0] #=> String
    #   resp.scans[0].scheduled_by #=> String
    #   resp.scans[0].security_level #=> String, one of "LEVEL_1", "LEVEL_2"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScans AWS API Documentation
    #
    # @overload list_cis_scans(params = {})
    # @param [Hash] params ({})
    def list_cis_scans(params = {}, options = {})
      req = build_request(:list_cis_scans, params)
      req.send_request(options)
    end

    # Lists all code security integrations in your account.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the NextToken value returned from
    #   the previous request to continue listing results after the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListCodeSecurityIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeSecurityIntegrationsResponse#integrations #integrations} => Array&lt;Types::CodeSecurityIntegrationSummary&gt;
    #   * {Types::ListCodeSecurityIntegrationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_security_integrations({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.integrations #=> Array
    #   resp.integrations[0].integration_arn #=> String
    #   resp.integrations[0].name #=> String
    #   resp.integrations[0].type #=> String, one of "GITLAB_SELF_MANAGED", "GITHUB"
    #   resp.integrations[0].status #=> String, one of "PENDING", "IN_PROGRESS", "ACTIVE", "INACTIVE", "DISABLING"
    #   resp.integrations[0].status_reason #=> String
    #   resp.integrations[0].created_on #=> Time
    #   resp.integrations[0].last_update_on #=> Time
    #   resp.integrations[0].tags #=> Hash
    #   resp.integrations[0].tags["MapKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityIntegrations AWS API Documentation
    #
    # @overload list_code_security_integrations(params = {})
    # @param [Hash] params ({})
    def list_code_security_integrations(params = {}, options = {})
      req = build_request(:list_code_security_integrations, params)
      req.send_request(options)
    end

    # Lists the associations between code repositories and Amazon Inspector
    # code security scan configurations.
    #
    # @option params [required, String] :scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to list
    #   associations for.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If your
    #   request would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @return [Types::ListCodeSecurityScanConfigurationAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeSecurityScanConfigurationAssociationsResponse#associations #associations} => Array&lt;Types::CodeSecurityScanConfigurationAssociationSummary&gt;
    #   * {Types::ListCodeSecurityScanConfigurationAssociationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_security_scan_configuration_associations({
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].resource.project_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityScanConfigurationAssociations AWS API Documentation
    #
    # @overload list_code_security_scan_configuration_associations(params = {})
    # @param [Hash] params ({})
    def list_code_security_scan_configuration_associations(params = {}, options = {})
      req = build_request(:list_code_security_scan_configuration_associations, params)
      req.send_request(options)
    end

    # Lists all code security scan configurations in your account.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the NextToken value returned from
    #   the previous request to continue listing results after the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListCodeSecurityScanConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeSecurityScanConfigurationsResponse#configurations #configurations} => Array&lt;Types::CodeSecurityScanConfigurationSummary&gt;
    #   * {Types::ListCodeSecurityScanConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_security_scan_configurations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0].scan_configuration_arn #=> String
    #   resp.configurations[0].name #=> String
    #   resp.configurations[0].owner_account_id #=> String
    #   resp.configurations[0].periodic_scan_frequency #=> String, one of "WEEKLY", "MONTHLY", "NEVER"
    #   resp.configurations[0].frequency_expression #=> String
    #   resp.configurations[0].continuous_integration_scan_supported_events #=> Array
    #   resp.configurations[0].continuous_integration_scan_supported_events[0] #=> String, one of "PULL_REQUEST", "PUSH"
    #   resp.configurations[0].rule_set_categories #=> Array
    #   resp.configurations[0].rule_set_categories[0] #=> String, one of "SAST", "IAC", "SCA"
    #   resp.configurations[0].scope_settings.project_selection_scope #=> String, one of "ALL"
    #   resp.configurations[0].tags #=> Hash
    #   resp.configurations[0].tags["MapKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityScanConfigurations AWS API Documentation
    #
    # @overload list_code_security_scan_configurations(params = {})
    # @param [Hash] params ({})
    def list_code_security_scan_configurations(params = {}, options = {})
      req = build_request(:list_code_security_scan_configurations, params)
      req.send_request(options)
    end

    # Lists coverage details for your environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results the response can return. If your request
    #   would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   An object that contains details on the filters to apply to the
    #   coverage data for your environment.
    #
    # @return [Types::ListCoverageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoverageResponse#next_token #next_token} => String
    #   * {Types::ListCoverageResponse#covered_resources #covered_resources} => Array&lt;Types::CoveredResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_coverage({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter_criteria: {
    #       scan_status_code: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_status_reason: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       last_scanned_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       scan_mode: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       image_pulled_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1,
    #         },
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       code_repository_provider_type_visibility: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       last_scanned_commit_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.covered_resources #=> Array
    #   resp.covered_resources[0].resource_type #=> String, one of "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE", "AWS_ECR_REPOSITORY", "AWS_LAMBDA_FUNCTION", "CODE_REPOSITORY"
    #   resp.covered_resources[0].resource_id #=> String
    #   resp.covered_resources[0].account_id #=> String
    #   resp.covered_resources[0].scan_type #=> String, one of "NETWORK", "PACKAGE", "CODE"
    #   resp.covered_resources[0].scan_status.status_code #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.covered_resources[0].scan_status.reason #=> String, one of "PENDING_INITIAL_SCAN", "ACCESS_DENIED", "INTERNAL_ERROR", "UNMANAGED_EC2_INSTANCE", "UNSUPPORTED_OS", "SCAN_ELIGIBILITY_EXPIRED", "RESOURCE_TERMINATED", "SUCCESSFUL", "NO_RESOURCES_FOUND", "IMAGE_SIZE_EXCEEDED", "SCAN_FREQUENCY_MANUAL", "SCAN_FREQUENCY_SCAN_ON_PUSH", "EC2_INSTANCE_STOPPED", "PENDING_DISABLE", "NO_INVENTORY", "STALE_INVENTORY", "EXCLUDED_BY_TAG", "UNSUPPORTED_RUNTIME", "UNSUPPORTED_MEDIA_TYPE", "UNSUPPORTED_CONFIG_FILE", "DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED", "DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED", "DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED", "DEEP_INSPECTION_NO_INVENTORY", "AGENTLESS_INSTANCE_STORAGE_LIMIT_EXCEEDED", "AGENTLESS_INSTANCE_COLLECTION_TIME_LIMIT_EXCEEDED", "PENDING_REVIVAL_SCAN", "INTEGRATION_CONNECTION_LOST", "ACCESS_DENIED_TO_ENCRYPTION_KEY", "UNSUPPORTED_LANGUAGE", "NO_SCAN_CONFIGURATION_ASSOCIATED", "SCAN_IN_PROGRESS"
    #   resp.covered_resources[0].resource_metadata.ecr_repository.name #=> String
    #   resp.covered_resources[0].resource_metadata.ecr_repository.scan_frequency #=> String, one of "MANUAL", "SCAN_ON_PUSH", "CONTINUOUS_SCAN"
    #   resp.covered_resources[0].resource_metadata.ecr_image.tags #=> Array
    #   resp.covered_resources[0].resource_metadata.ecr_image.tags[0] #=> String
    #   resp.covered_resources[0].resource_metadata.ecr_image.image_pulled_at #=> Time
    #   resp.covered_resources[0].resource_metadata.ecr_image.last_in_use_at #=> Time
    #   resp.covered_resources[0].resource_metadata.ecr_image.in_use_count #=> Integer
    #   resp.covered_resources[0].resource_metadata.ec2.tags #=> Hash
    #   resp.covered_resources[0].resource_metadata.ec2.tags["MapKey"] #=> String
    #   resp.covered_resources[0].resource_metadata.ec2.ami_id #=> String
    #   resp.covered_resources[0].resource_metadata.ec2.platform #=> String, one of "WINDOWS", "LINUX", "UNKNOWN", "MACOS"
    #   resp.covered_resources[0].resource_metadata.lambda_function.function_tags #=> Hash
    #   resp.covered_resources[0].resource_metadata.lambda_function.function_tags["MapKey"] #=> String
    #   resp.covered_resources[0].resource_metadata.lambda_function.layers #=> Array
    #   resp.covered_resources[0].resource_metadata.lambda_function.layers[0] #=> String
    #   resp.covered_resources[0].resource_metadata.lambda_function.function_name #=> String
    #   resp.covered_resources[0].resource_metadata.lambda_function.runtime #=> String, one of "NODEJS", "NODEJS_12_X", "NODEJS_14_X", "NODEJS_16_X", "JAVA_8", "JAVA_8_AL2", "JAVA_11", "PYTHON_3_7", "PYTHON_3_8", "PYTHON_3_9", "UNSUPPORTED", "NODEJS_18_X", "GO_1_X", "JAVA_17", "PYTHON_3_10", "PYTHON_3_11", "DOTNETCORE_3_1", "DOTNET_6", "DOTNET_7", "RUBY_2_7", "RUBY_3_2"
    #   resp.covered_resources[0].resource_metadata.code_repository.project_name #=> String
    #   resp.covered_resources[0].resource_metadata.code_repository.integration_arn #=> String
    #   resp.covered_resources[0].resource_metadata.code_repository.provider_type #=> String
    #   resp.covered_resources[0].resource_metadata.code_repository.provider_type_visibility #=> String
    #   resp.covered_resources[0].resource_metadata.code_repository.last_scanned_commit_id #=> String
    #   resp.covered_resources[0].resource_metadata.code_repository.scan_configuration.periodic_scan_configurations #=> Array
    #   resp.covered_resources[0].resource_metadata.code_repository.scan_configuration.periodic_scan_configurations[0].frequency_expression #=> String
    #   resp.covered_resources[0].resource_metadata.code_repository.scan_configuration.periodic_scan_configurations[0].rule_set_categories #=> Array
    #   resp.covered_resources[0].resource_metadata.code_repository.scan_configuration.periodic_scan_configurations[0].rule_set_categories[0] #=> String, one of "SAST", "IAC", "SCA"
    #   resp.covered_resources[0].resource_metadata.code_repository.scan_configuration.continuous_integration_scan_configurations #=> Array
    #   resp.covered_resources[0].resource_metadata.code_repository.scan_configuration.continuous_integration_scan_configurations[0].supported_event #=> String, one of "PULL_REQUEST", "PUSH"
    #   resp.covered_resources[0].resource_metadata.code_repository.scan_configuration.continuous_integration_scan_configurations[0].rule_set_categories #=> Array
    #   resp.covered_resources[0].resource_metadata.code_repository.scan_configuration.continuous_integration_scan_configurations[0].rule_set_categories[0] #=> String, one of "SAST", "IAC", "SCA"
    #   resp.covered_resources[0].resource_metadata.code_repository.on_demand_scan.last_scanned_commit_id #=> String
    #   resp.covered_resources[0].resource_metadata.code_repository.on_demand_scan.last_scan_at #=> Time
    #   resp.covered_resources[0].resource_metadata.code_repository.on_demand_scan.scan_status.status_code #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.covered_resources[0].resource_metadata.code_repository.on_demand_scan.scan_status.reason #=> String, one of "PENDING_INITIAL_SCAN", "ACCESS_DENIED", "INTERNAL_ERROR", "UNMANAGED_EC2_INSTANCE", "UNSUPPORTED_OS", "SCAN_ELIGIBILITY_EXPIRED", "RESOURCE_TERMINATED", "SUCCESSFUL", "NO_RESOURCES_FOUND", "IMAGE_SIZE_EXCEEDED", "SCAN_FREQUENCY_MANUAL", "SCAN_FREQUENCY_SCAN_ON_PUSH", "EC2_INSTANCE_STOPPED", "PENDING_DISABLE", "NO_INVENTORY", "STALE_INVENTORY", "EXCLUDED_BY_TAG", "UNSUPPORTED_RUNTIME", "UNSUPPORTED_MEDIA_TYPE", "UNSUPPORTED_CONFIG_FILE", "DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED", "DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED", "DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED", "DEEP_INSPECTION_NO_INVENTORY", "AGENTLESS_INSTANCE_STORAGE_LIMIT_EXCEEDED", "AGENTLESS_INSTANCE_COLLECTION_TIME_LIMIT_EXCEEDED", "PENDING_REVIVAL_SCAN", "INTEGRATION_CONNECTION_LOST", "ACCESS_DENIED_TO_ENCRYPTION_KEY", "UNSUPPORTED_LANGUAGE", "NO_SCAN_CONFIGURATION_ASSOCIATED", "SCAN_IN_PROGRESS"
    #   resp.covered_resources[0].last_scanned_at #=> Time
    #   resp.covered_resources[0].scan_mode #=> String, one of "EC2_SSM_AGENT_BASED", "EC2_AGENTLESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverage AWS API Documentation
    #
    # @overload list_coverage(params = {})
    # @param [Hash] params ({})
    def list_coverage(params = {}, options = {})
      req = build_request(:list_coverage, params)
      req.send_request(options)
    end

    # Lists Amazon Inspector coverage statistics for your environment.
    #
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   An object that contains details on the filters to apply to the
    #   coverage data for your environment.
    #
    # @option params [String] :group_by
    #   The value to group the results by.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::ListCoverageStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoverageStatisticsResponse#counts_by_group #counts_by_group} => Array&lt;Types::Counts&gt;
    #   * {Types::ListCoverageStatisticsResponse#total_counts #total_counts} => Integer
    #   * {Types::ListCoverageStatisticsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_coverage_statistics({
    #     filter_criteria: {
    #       scan_status_code: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_status_reason: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       last_scanned_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       scan_mode: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       image_pulled_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1,
    #           lower_inclusive: 1,
    #         },
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       code_repository_provider_type_visibility: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       last_scanned_commit_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #     },
    #     group_by: "SCAN_STATUS_CODE", # accepts SCAN_STATUS_CODE, SCAN_STATUS_REASON, ACCOUNT_ID, RESOURCE_TYPE, ECR_REPOSITORY_NAME
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.counts_by_group #=> Array
    #   resp.counts_by_group[0].count #=> Integer
    #   resp.counts_by_group[0].group_key #=> String, one of "SCAN_STATUS_CODE", "SCAN_STATUS_REASON", "ACCOUNT_ID", "RESOURCE_TYPE", "ECR_REPOSITORY_NAME"
    #   resp.total_counts #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageStatistics AWS API Documentation
    #
    # @overload list_coverage_statistics(params = {})
    # @param [Hash] params ({})
    def list_coverage_statistics(params = {}, options = {})
      req = build_request(:list_coverage_statistics, params)
      req.send_request(options)
    end

    # Lists information about the Amazon Inspector delegated administrator
    # of your organization.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results the response can return. If your request
    #   would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #
    # @return [Types::ListDelegatedAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDelegatedAdminAccountsResponse#delegated_admin_accounts #delegated_admin_accounts} => Array&lt;Types::DelegatedAdminAccount&gt;
    #   * {Types::ListDelegatedAdminAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delegated_admin_accounts({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.delegated_admin_accounts #=> Array
    #   resp.delegated_admin_accounts[0].account_id #=> String
    #   resp.delegated_admin_accounts[0].status #=> String, one of "ENABLED", "DISABLE_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListDelegatedAdminAccounts AWS API Documentation
    #
    # @overload list_delegated_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_delegated_admin_accounts(params = {}, options = {})
      req = build_request(:list_delegated_admin_accounts, params)
      req.send_request(options)
    end

    # Lists the filters associated with your account.
    #
    # @option params [Array<String>] :arns
    #   The Amazon resource number (ARN) of the filter.
    #
    # @option params [String] :action
    #   The action the filter applies to matched findings.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results the response can return. If your request
    #   would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @return [Types::ListFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFiltersResponse#filters #filters} => Array&lt;Types::Filter&gt;
    #   * {Types::ListFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filters({
    #     arns: ["FilterArn"],
    #     action: "NONE", # accepts NONE, SUPPRESS
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.filters #=> Array
    #   resp.filters[0].arn #=> String
    #   resp.filters[0].owner_id #=> String
    #   resp.filters[0].name #=> String
    #   resp.filters[0].criteria.finding_arn #=> Array
    #   resp.filters[0].criteria.finding_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.finding_arn[0].value #=> String
    #   resp.filters[0].criteria.aws_account_id #=> Array
    #   resp.filters[0].criteria.aws_account_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.aws_account_id[0].value #=> String
    #   resp.filters[0].criteria.finding_type #=> Array
    #   resp.filters[0].criteria.finding_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.finding_type[0].value #=> String
    #   resp.filters[0].criteria.severity #=> Array
    #   resp.filters[0].criteria.severity[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.severity[0].value #=> String
    #   resp.filters[0].criteria.first_observed_at #=> Array
    #   resp.filters[0].criteria.first_observed_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.first_observed_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.last_observed_at #=> Array
    #   resp.filters[0].criteria.last_observed_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.last_observed_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.updated_at #=> Array
    #   resp.filters[0].criteria.updated_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.updated_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.finding_status #=> Array
    #   resp.filters[0].criteria.finding_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.finding_status[0].value #=> String
    #   resp.filters[0].criteria.title #=> Array
    #   resp.filters[0].criteria.title[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.title[0].value #=> String
    #   resp.filters[0].criteria.inspector_score #=> Array
    #   resp.filters[0].criteria.inspector_score[0].upper_inclusive #=> Float
    #   resp.filters[0].criteria.inspector_score[0].lower_inclusive #=> Float
    #   resp.filters[0].criteria.resource_type #=> Array
    #   resp.filters[0].criteria.resource_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.resource_type[0].value #=> String
    #   resp.filters[0].criteria.resource_id #=> Array
    #   resp.filters[0].criteria.resource_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.resource_id[0].value #=> String
    #   resp.filters[0].criteria.resource_tags #=> Array
    #   resp.filters[0].criteria.resource_tags[0].comparison #=> String, one of "EQUALS"
    #   resp.filters[0].criteria.resource_tags[0].key #=> String
    #   resp.filters[0].criteria.resource_tags[0].value #=> String
    #   resp.filters[0].criteria.ec2_instance_image_id #=> Array
    #   resp.filters[0].criteria.ec2_instance_image_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ec2_instance_image_id[0].value #=> String
    #   resp.filters[0].criteria.ec2_instance_vpc_id #=> Array
    #   resp.filters[0].criteria.ec2_instance_vpc_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ec2_instance_vpc_id[0].value #=> String
    #   resp.filters[0].criteria.ec2_instance_subnet_id #=> Array
    #   resp.filters[0].criteria.ec2_instance_subnet_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ec2_instance_subnet_id[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_pushed_at #=> Array
    #   resp.filters[0].criteria.ecr_image_pushed_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.ecr_image_pushed_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.ecr_image_architecture #=> Array
    #   resp.filters[0].criteria.ecr_image_architecture[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_architecture[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_registry #=> Array
    #   resp.filters[0].criteria.ecr_image_registry[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_registry[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_repository_name #=> Array
    #   resp.filters[0].criteria.ecr_image_repository_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_repository_name[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_tags #=> Array
    #   resp.filters[0].criteria.ecr_image_tags[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_tags[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_hash #=> Array
    #   resp.filters[0].criteria.ecr_image_hash[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_hash[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_last_in_use_at #=> Array
    #   resp.filters[0].criteria.ecr_image_last_in_use_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.ecr_image_last_in_use_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.ecr_image_in_use_count #=> Array
    #   resp.filters[0].criteria.ecr_image_in_use_count[0].upper_inclusive #=> Float
    #   resp.filters[0].criteria.ecr_image_in_use_count[0].lower_inclusive #=> Float
    #   resp.filters[0].criteria.port_range #=> Array
    #   resp.filters[0].criteria.port_range[0].begin_inclusive #=> Integer
    #   resp.filters[0].criteria.port_range[0].end_inclusive #=> Integer
    #   resp.filters[0].criteria.network_protocol #=> Array
    #   resp.filters[0].criteria.network_protocol[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.network_protocol[0].value #=> String
    #   resp.filters[0].criteria.component_id #=> Array
    #   resp.filters[0].criteria.component_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.component_id[0].value #=> String
    #   resp.filters[0].criteria.component_type #=> Array
    #   resp.filters[0].criteria.component_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.component_type[0].value #=> String
    #   resp.filters[0].criteria.vulnerability_id #=> Array
    #   resp.filters[0].criteria.vulnerability_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerability_id[0].value #=> String
    #   resp.filters[0].criteria.vulnerability_source #=> Array
    #   resp.filters[0].criteria.vulnerability_source[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerability_source[0].value #=> String
    #   resp.filters[0].criteria.vendor_severity #=> Array
    #   resp.filters[0].criteria.vendor_severity[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vendor_severity[0].value #=> String
    #   resp.filters[0].criteria.vulnerable_packages #=> Array
    #   resp.filters[0].criteria.vulnerable_packages[0].name.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].name.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].version.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].version.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].epoch.upper_inclusive #=> Float
    #   resp.filters[0].criteria.vulnerable_packages[0].epoch.lower_inclusive #=> Float
    #   resp.filters[0].criteria.vulnerable_packages[0].release.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].release.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].architecture.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].architecture.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].source_layer_hash.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].source_layer_hash.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].source_lambda_layer_arn.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].source_lambda_layer_arn.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].file_path.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].file_path.value #=> String
    #   resp.filters[0].criteria.related_vulnerabilities #=> Array
    #   resp.filters[0].criteria.related_vulnerabilities[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.related_vulnerabilities[0].value #=> String
    #   resp.filters[0].criteria.fix_available #=> Array
    #   resp.filters[0].criteria.fix_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.fix_available[0].value #=> String
    #   resp.filters[0].criteria.lambda_function_name #=> Array
    #   resp.filters[0].criteria.lambda_function_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.lambda_function_name[0].value #=> String
    #   resp.filters[0].criteria.lambda_function_layers #=> Array
    #   resp.filters[0].criteria.lambda_function_layers[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.lambda_function_layers[0].value #=> String
    #   resp.filters[0].criteria.lambda_function_runtime #=> Array
    #   resp.filters[0].criteria.lambda_function_runtime[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.lambda_function_runtime[0].value #=> String
    #   resp.filters[0].criteria.lambda_function_last_modified_at #=> Array
    #   resp.filters[0].criteria.lambda_function_last_modified_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.lambda_function_last_modified_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.lambda_function_execution_role_arn #=> Array
    #   resp.filters[0].criteria.lambda_function_execution_role_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.lambda_function_execution_role_arn[0].value #=> String
    #   resp.filters[0].criteria.exploit_available #=> Array
    #   resp.filters[0].criteria.exploit_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.exploit_available[0].value #=> String
    #   resp.filters[0].criteria.code_vulnerability_detector_name #=> Array
    #   resp.filters[0].criteria.code_vulnerability_detector_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.code_vulnerability_detector_name[0].value #=> String
    #   resp.filters[0].criteria.code_vulnerability_detector_tags #=> Array
    #   resp.filters[0].criteria.code_vulnerability_detector_tags[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.code_vulnerability_detector_tags[0].value #=> String
    #   resp.filters[0].criteria.code_vulnerability_file_path #=> Array
    #   resp.filters[0].criteria.code_vulnerability_file_path[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.code_vulnerability_file_path[0].value #=> String
    #   resp.filters[0].criteria.epss_score #=> Array
    #   resp.filters[0].criteria.epss_score[0].upper_inclusive #=> Float
    #   resp.filters[0].criteria.epss_score[0].lower_inclusive #=> Float
    #   resp.filters[0].criteria.code_repository_project_name #=> Array
    #   resp.filters[0].criteria.code_repository_project_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.code_repository_project_name[0].value #=> String
    #   resp.filters[0].criteria.code_repository_provider_type #=> Array
    #   resp.filters[0].criteria.code_repository_provider_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.code_repository_provider_type[0].value #=> String
    #   resp.filters[0].action #=> String, one of "NONE", "SUPPRESS"
    #   resp.filters[0].created_at #=> Time
    #   resp.filters[0].updated_at #=> Time
    #   resp.filters[0].description #=> String
    #   resp.filters[0].reason #=> String
    #   resp.filters[0].tags #=> Hash
    #   resp.filters[0].tags["MapKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFilters AWS API Documentation
    #
    # @overload list_filters(params = {})
    # @param [Hash] params ({})
    def list_filters(params = {}, options = {})
      req = build_request(:list_filters, params)
      req.send_request(options)
    end

    # Lists aggregated finding data for your environment based on specific
    # criteria.
    #
    # @option params [required, String] :aggregation_type
    #   The type of the aggregation request.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results the response can return. If your request
    #   would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @option params [Array<Types::StringFilter>] :account_ids
    #   The Amazon Web Services account IDs to retrieve finding aggregation
    #   data for.
    #
    # @option params [Types::AggregationRequest] :aggregation_request
    #   Details of the aggregation request that is used to filter your
    #   aggregation results.
    #
    # @return [Types::ListFindingAggregationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingAggregationsResponse#aggregation_type #aggregation_type} => String
    #   * {Types::ListFindingAggregationsResponse#responses #responses} => Array&lt;Types::AggregationResponse&gt;
    #   * {Types::ListFindingAggregationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_finding_aggregations({
    #     aggregation_type: "FINDING_TYPE", # required, accepts FINDING_TYPE, PACKAGE, TITLE, REPOSITORY, AMI, AWS_EC2_INSTANCE, AWS_ECR_CONTAINER, IMAGE_LAYER, ACCOUNT, AWS_LAMBDA_FUNCTION, LAMBDA_LAYER, CODE_REPOSITORY
    #     next_token: "NextToken",
    #     max_results: 1,
    #     account_ids: [
    #       {
    #         comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #         value: "StringInput", # required
    #       },
    #     ],
    #     aggregation_request: {
    #       account_aggregation: {
    #         finding_type: "NETWORK_REACHABILITY", # accepts NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY
    #         resource_type: "AWS_EC2_INSTANCE", # accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION, CODE_REPOSITORY
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #       },
    #       ami_aggregation: {
    #         amis: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL, AFFECTED_INSTANCES
    #       },
    #       aws_ecr_container_aggregation: {
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         image_shas: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         repositories: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         architectures: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         image_tags: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         last_in_use_at: [
    #           {
    #             start_inclusive: Time.now,
    #             end_inclusive: Time.now,
    #           },
    #         ],
    #         in_use_count: [
    #           {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0,
    #           },
    #         ],
    #       },
    #       ec2_instance_aggregation: {
    #         amis: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         operating_systems: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         instance_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         instance_tags: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS
    #             key: "MapKey", # required
    #             value: "MapValue",
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "NETWORK_FINDINGS", # accepts NETWORK_FINDINGS, CRITICAL, HIGH, ALL
    #       },
    #       finding_type_aggregation: {
    #         finding_type: "NETWORK_REACHABILITY", # accepts NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY
    #         resource_type: "AWS_EC2_INSTANCE", # accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION, CODE_REPOSITORY
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #       },
    #       image_layer_aggregation: {
    #         repositories: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         layer_hashes: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #       },
    #       package_aggregation: {
    #         package_names: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #       },
    #       repository_aggregation: {
    #         repositories: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL, AFFECTED_IMAGES
    #       },
    #       title_aggregation: {
    #         titles: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         vulnerability_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         resource_type: "AWS_EC2_INSTANCE", # accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION, CODE_REPOSITORY
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         finding_type: "NETWORK_REACHABILITY", # accepts NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY
    #       },
    #       lambda_layer_aggregation: {
    #         function_names: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         layer_arns: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #       },
    #       lambda_function_aggregation: {
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         function_names: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         runtimes: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         function_tags: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS
    #             key: "MapKey", # required
    #             value: "MapValue",
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #       },
    #       code_repository_aggregation: {
    #         project_names: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         provider_types: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_order: "ASC", # accepts ASC, DESC
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregation_type #=> String, one of "FINDING_TYPE", "PACKAGE", "TITLE", "REPOSITORY", "AMI", "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER", "IMAGE_LAYER", "ACCOUNT", "AWS_LAMBDA_FUNCTION", "LAMBDA_LAYER", "CODE_REPOSITORY"
    #   resp.responses #=> Array
    #   resp.responses[0].account_aggregation.account_id #=> String
    #   resp.responses[0].account_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].account_aggregation.exploit_available_count #=> Integer
    #   resp.responses[0].account_aggregation.fix_available_count #=> Integer
    #   resp.responses[0].ami_aggregation.ami #=> String
    #   resp.responses[0].ami_aggregation.account_id #=> String
    #   resp.responses[0].ami_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].ami_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].ami_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].ami_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].ami_aggregation.affected_instances #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.resource_id #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.image_sha #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.repository #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.architecture #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.image_tags #=> Array
    #   resp.responses[0].aws_ecr_container_aggregation.image_tags[0] #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.account_id #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.last_in_use_at #=> Time
    #   resp.responses[0].aws_ecr_container_aggregation.in_use_count #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.instance_id #=> String
    #   resp.responses[0].ec2_instance_aggregation.ami #=> String
    #   resp.responses[0].ec2_instance_aggregation.operating_system #=> String
    #   resp.responses[0].ec2_instance_aggregation.instance_tags #=> Hash
    #   resp.responses[0].ec2_instance_aggregation.instance_tags["MapKey"] #=> String
    #   resp.responses[0].ec2_instance_aggregation.account_id #=> String
    #   resp.responses[0].ec2_instance_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.network_findings #=> Integer
    #   resp.responses[0].finding_type_aggregation.account_id #=> String
    #   resp.responses[0].finding_type_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].finding_type_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].finding_type_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].finding_type_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].finding_type_aggregation.exploit_available_count #=> Integer
    #   resp.responses[0].finding_type_aggregation.fix_available_count #=> Integer
    #   resp.responses[0].image_layer_aggregation.repository #=> String
    #   resp.responses[0].image_layer_aggregation.resource_id #=> String
    #   resp.responses[0].image_layer_aggregation.layer_hash #=> String
    #   resp.responses[0].image_layer_aggregation.account_id #=> String
    #   resp.responses[0].image_layer_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].image_layer_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].image_layer_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].image_layer_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].package_aggregation.package_name #=> String
    #   resp.responses[0].package_aggregation.account_id #=> String
    #   resp.responses[0].package_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].package_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].package_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].package_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].repository_aggregation.repository #=> String
    #   resp.responses[0].repository_aggregation.account_id #=> String
    #   resp.responses[0].repository_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].repository_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].repository_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].repository_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].repository_aggregation.affected_images #=> Integer
    #   resp.responses[0].title_aggregation.title #=> String
    #   resp.responses[0].title_aggregation.vulnerability_id #=> String
    #   resp.responses[0].title_aggregation.account_id #=> String
    #   resp.responses[0].title_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].title_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].title_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].title_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].lambda_layer_aggregation.function_name #=> String
    #   resp.responses[0].lambda_layer_aggregation.resource_id #=> String
    #   resp.responses[0].lambda_layer_aggregation.layer_arn #=> String
    #   resp.responses[0].lambda_layer_aggregation.account_id #=> String
    #   resp.responses[0].lambda_layer_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].lambda_layer_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].lambda_layer_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].lambda_layer_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].lambda_function_aggregation.resource_id #=> String
    #   resp.responses[0].lambda_function_aggregation.function_name #=> String
    #   resp.responses[0].lambda_function_aggregation.runtime #=> String
    #   resp.responses[0].lambda_function_aggregation.lambda_tags #=> Hash
    #   resp.responses[0].lambda_function_aggregation.lambda_tags["MapKey"] #=> String
    #   resp.responses[0].lambda_function_aggregation.account_id #=> String
    #   resp.responses[0].lambda_function_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].lambda_function_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].lambda_function_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].lambda_function_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].lambda_function_aggregation.last_modified_at #=> Time
    #   resp.responses[0].code_repository_aggregation.project_names #=> String
    #   resp.responses[0].code_repository_aggregation.provider_type #=> String
    #   resp.responses[0].code_repository_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].code_repository_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].code_repository_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].code_repository_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].code_repository_aggregation.exploit_available_active_findings_count #=> Integer
    #   resp.responses[0].code_repository_aggregation.fix_available_active_findings_count #=> Integer
    #   resp.responses[0].code_repository_aggregation.account_id #=> String
    #   resp.responses[0].code_repository_aggregation.resource_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingAggregations AWS API Documentation
    #
    # @overload list_finding_aggregations(params = {})
    # @param [Hash] params ({})
    def list_finding_aggregations(params = {}, options = {})
      req = build_request(:list_finding_aggregations, params)
      req.send_request(options)
    end

    # Lists findings for your environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results the response can return. If your request
    #   would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   Details on the filters to apply to your finding results.
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Details on the sort criteria to apply to your finding results.
    #
    # @return [Types::ListFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsResponse#next_token #next_token} => String
    #   * {Types::ListFindingsResponse#findings #findings} => Array&lt;Types::Finding&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       title: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "MapKey", # required
    #           value: "MapValue",
    #         },
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1,
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0,
    #           },
    #           release: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         },
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #     },
    #     sort_criteria: {
    #       field: "AWS_ACCOUNT_ID", # required, accepts AWS_ACCOUNT_ID, FINDING_TYPE, SEVERITY, FIRST_OBSERVED_AT, LAST_OBSERVED_AT, FINDING_STATUS, RESOURCE_TYPE, ECR_IMAGE_PUSHED_AT, ECR_IMAGE_REPOSITORY_NAME, ECR_IMAGE_REGISTRY, NETWORK_PROTOCOL, COMPONENT_TYPE, VULNERABILITY_ID, VULNERABILITY_SOURCE, INSPECTOR_SCORE, VENDOR_SEVERITY, EPSS_SCORE
    #       sort_order: "ASC", # required, accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.findings #=> Array
    #   resp.findings[0].finding_arn #=> String
    #   resp.findings[0].aws_account_id #=> String
    #   resp.findings[0].type #=> String, one of "NETWORK_REACHABILITY", "PACKAGE_VULNERABILITY", "CODE_VULNERABILITY"
    #   resp.findings[0].description #=> String
    #   resp.findings[0].title #=> String
    #   resp.findings[0].remediation.recommendation.text #=> String
    #   resp.findings[0].remediation.recommendation.url #=> String
    #   resp.findings[0].severity #=> String, one of "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNTRIAGED"
    #   resp.findings[0].first_observed_at #=> Time
    #   resp.findings[0].last_observed_at #=> Time
    #   resp.findings[0].updated_at #=> Time
    #   resp.findings[0].status #=> String, one of "ACTIVE", "SUPPRESSED", "CLOSED"
    #   resp.findings[0].resources #=> Array
    #   resp.findings[0].resources[0].type #=> String, one of "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE", "AWS_ECR_REPOSITORY", "AWS_LAMBDA_FUNCTION", "CODE_REPOSITORY"
    #   resp.findings[0].resources[0].id #=> String
    #   resp.findings[0].resources[0].partition #=> String
    #   resp.findings[0].resources[0].region #=> String
    #   resp.findings[0].resources[0].tags #=> Hash
    #   resp.findings[0].resources[0].tags["MapKey"] #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.type #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.image_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses[0] #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses[0] #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.key_name #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.iam_instance_profile_arn #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.subnet_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.launched_at #=> Time
    #   resp.findings[0].resources[0].details.aws_ec2_instance.platform #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.repository_name #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.image_tags #=> Array
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.image_tags[0] #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.pushed_at #=> Time
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.author #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.architecture #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.image_hash #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.registry #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.platform #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.last_in_use_at #=> Time
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.in_use_count #=> Integer
    #   resp.findings[0].resources[0].details.aws_lambda_function.function_name #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.runtime #=> String, one of "NODEJS", "NODEJS_12_X", "NODEJS_14_X", "NODEJS_16_X", "JAVA_8", "JAVA_8_AL2", "JAVA_11", "PYTHON_3_7", "PYTHON_3_8", "PYTHON_3_9", "UNSUPPORTED", "NODEJS_18_X", "GO_1_X", "JAVA_17", "PYTHON_3_10", "PYTHON_3_11", "DOTNETCORE_3_1", "DOTNET_6", "DOTNET_7", "RUBY_2_7", "RUBY_3_2"
    #   resp.findings[0].resources[0].details.aws_lambda_function.code_sha_256 #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.version #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.execution_role_arn #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.layers #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.layers[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.subnet_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.subnet_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.security_group_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.security_group_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.package_type #=> String, one of "IMAGE", "ZIP"
    #   resp.findings[0].resources[0].details.aws_lambda_function.architectures #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.architectures[0] #=> String, one of "X86_64", "ARM64"
    #   resp.findings[0].resources[0].details.aws_lambda_function.last_modified_at #=> Time
    #   resp.findings[0].resources[0].details.code_repository.project_name #=> String
    #   resp.findings[0].resources[0].details.code_repository.integration_arn #=> String
    #   resp.findings[0].resources[0].details.code_repository.provider_type #=> String, one of "GITHUB", "GITLAB_SELF_MANAGED"
    #   resp.findings[0].inspector_score #=> Float
    #   resp.findings[0].inspector_score_details.adjusted_cvss.score_source #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.cvss_source #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.version #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.score #=> Float
    #   resp.findings[0].inspector_score_details.adjusted_cvss.scoring_vector #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments #=> Array
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments[0].metric #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments[0].reason #=> String
    #   resp.findings[0].network_reachability_details.open_port_range.begin #=> Integer
    #   resp.findings[0].network_reachability_details.open_port_range.end #=> Integer
    #   resp.findings[0].network_reachability_details.protocol #=> String, one of "TCP", "UDP"
    #   resp.findings[0].network_reachability_details.network_path.steps #=> Array
    #   resp.findings[0].network_reachability_details.network_path.steps[0].component_id #=> String
    #   resp.findings[0].network_reachability_details.network_path.steps[0].component_type #=> String
    #   resp.findings[0].network_reachability_details.network_path.steps[0].component_arn #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerability_id #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages #=> Array
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].name #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].version #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].source_layer_hash #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].epoch #=> Integer
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].release #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].arch #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].package_manager #=> String, one of "BUNDLER", "CARGO", "COMPOSER", "NPM", "NUGET", "PIPENV", "POETRY", "YARN", "GOBINARY", "GOMOD", "JAR", "OS", "PIP", "PYTHONPKG", "NODEPKG", "POM", "GEMSPEC", "DOTNET_CORE"
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].file_path #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].fixed_in_version #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].remediation #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].source_lambda_layer_arn #=> String
    #   resp.findings[0].package_vulnerability_details.source #=> String
    #   resp.findings[0].package_vulnerability_details.cvss #=> Array
    #   resp.findings[0].package_vulnerability_details.cvss[0].base_score #=> Float
    #   resp.findings[0].package_vulnerability_details.cvss[0].scoring_vector #=> String
    #   resp.findings[0].package_vulnerability_details.cvss[0].version #=> String
    #   resp.findings[0].package_vulnerability_details.cvss[0].source #=> String
    #   resp.findings[0].package_vulnerability_details.related_vulnerabilities #=> Array
    #   resp.findings[0].package_vulnerability_details.related_vulnerabilities[0] #=> String
    #   resp.findings[0].package_vulnerability_details.source_url #=> String
    #   resp.findings[0].package_vulnerability_details.vendor_severity #=> String
    #   resp.findings[0].package_vulnerability_details.vendor_created_at #=> Time
    #   resp.findings[0].package_vulnerability_details.vendor_updated_at #=> Time
    #   resp.findings[0].package_vulnerability_details.reference_urls #=> Array
    #   resp.findings[0].package_vulnerability_details.reference_urls[0] #=> String
    #   resp.findings[0].fix_available #=> String, one of "YES", "NO", "PARTIAL"
    #   resp.findings[0].exploit_available #=> String, one of "YES", "NO"
    #   resp.findings[0].exploitability_details.last_known_exploit_at #=> Time
    #   resp.findings[0].code_vulnerability_details.file_path.file_name #=> String
    #   resp.findings[0].code_vulnerability_details.file_path.file_path #=> String
    #   resp.findings[0].code_vulnerability_details.file_path.start_line #=> Integer
    #   resp.findings[0].code_vulnerability_details.file_path.end_line #=> Integer
    #   resp.findings[0].code_vulnerability_details.detector_tags #=> Array
    #   resp.findings[0].code_vulnerability_details.detector_tags[0] #=> String
    #   resp.findings[0].code_vulnerability_details.reference_urls #=> Array
    #   resp.findings[0].code_vulnerability_details.reference_urls[0] #=> String
    #   resp.findings[0].code_vulnerability_details.rule_id #=> String
    #   resp.findings[0].code_vulnerability_details.source_lambda_layer_arn #=> String
    #   resp.findings[0].code_vulnerability_details.detector_id #=> String
    #   resp.findings[0].code_vulnerability_details.detector_name #=> String
    #   resp.findings[0].code_vulnerability_details.cwes #=> Array
    #   resp.findings[0].code_vulnerability_details.cwes[0] #=> String
    #   resp.findings[0].epss.score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindings AWS API Documentation
    #
    # @overload list_findings(params = {})
    # @param [Hash] params ({})
    def list_findings(params = {}, options = {})
      req = build_request(:list_findings, params)
      req.send_request(options)
    end

    # List members associated with the Amazon Inspector delegated
    # administrator for your organization.
    #
    # @option params [Boolean] :only_associated
    #   Specifies whether to list only currently associated members if `True`
    #   or to list all members within the organization if `False`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results the response can return. If your request
    #   would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #
    # @return [Types::ListMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     only_associated: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].relationship_status #=> String, one of "CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"
    #   resp.members[0].delegated_admin_account_id #=> String
    #   resp.members[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Lists all tags attached to a given resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon resource number (ARN) of the resource to list tags of.
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
    #   resp.tags["MapKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the Amazon Inspector usage totals over the last 30 days.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results the response can return. If your request
    #   would return more than the maximum the response will return a
    #   `nextToken` value, use this value when you call the action again to
    #   get the remaining results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #
    # @option params [Array<String>] :account_ids
    #   The Amazon Web Services account IDs to retrieve usage totals for.
    #
    # @return [Types::ListUsageTotalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsageTotalsResponse#next_token #next_token} => String
    #   * {Types::ListUsageTotalsResponse#totals #totals} => Array&lt;Types::UsageTotal&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_usage_totals({
    #     max_results: 1,
    #     next_token: "ListUsageTotalsNextToken",
    #     account_ids: ["UsageAccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.totals #=> Array
    #   resp.totals[0].account_id #=> String
    #   resp.totals[0].usage #=> Array
    #   resp.totals[0].usage[0].type #=> String, one of "EC2_INSTANCE_HOURS", "ECR_INITIAL_SCAN", "ECR_RESCAN", "LAMBDA_FUNCTION_HOURS", "LAMBDA_FUNCTION_CODE_HOURS", "CODE_REPOSITORY_SAST", "CODE_REPOSITORY_IAC", "CODE_REPOSITORY_SCA", "EC2_AGENTLESS_INSTANCE_HOURS"
    #   resp.totals[0].usage[0].total #=> Float
    #   resp.totals[0].usage[0].estimated_monthly_cost #=> Float
    #   resp.totals[0].usage[0].currency #=> String, one of "USD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListUsageTotals AWS API Documentation
    #
    # @overload list_usage_totals(params = {})
    # @param [Hash] params ({})
    def list_usage_totals(params = {}, options = {})
      req = build_request(:list_usage_totals, params)
      req.send_request(options)
    end

    # Resets an encryption key. After the key is reset your resources will
    # be encrypted by an Amazon Web Services owned key.
    #
    # @option params [required, String] :scan_type
    #   The scan type the key encrypts.
    #
    # @option params [required, String] :resource_type
    #   The resource type the key encrypts.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_encryption_key({
    #     scan_type: "NETWORK", # required, accepts NETWORK, PACKAGE, CODE
    #     resource_type: "AWS_EC2_INSTANCE", # required, accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_ECR_REPOSITORY, AWS_LAMBDA_FUNCTION, CODE_REPOSITORY
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResetEncryptionKey AWS API Documentation
    #
    # @overload reset_encryption_key(params = {})
    # @param [Hash] params ({})
    def reset_encryption_key(params = {}, options = {})
      req = build_request(:reset_encryption_key, params)
      req.send_request(options)
    end

    # Lists Amazon Inspector coverage details for a specific vulnerability.
    #
    # @option params [required, Types::SearchVulnerabilitiesFilterCriteria] :filter_criteria
    #   The criteria used to filter the results of a vulnerability search.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::SearchVulnerabilitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchVulnerabilitiesResponse#vulnerabilities #vulnerabilities} => Array&lt;Types::Vulnerability&gt;
    #   * {Types::SearchVulnerabilitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_vulnerabilities({
    #     filter_criteria: { # required
    #       vulnerability_ids: ["VulnId"], # required
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.vulnerabilities #=> Array
    #   resp.vulnerabilities[0].id #=> String
    #   resp.vulnerabilities[0].cwes #=> Array
    #   resp.vulnerabilities[0].cwes[0] #=> String
    #   resp.vulnerabilities[0].cisa_data.date_added #=> Time
    #   resp.vulnerabilities[0].cisa_data.date_due #=> Time
    #   resp.vulnerabilities[0].cisa_data.action #=> String
    #   resp.vulnerabilities[0].source #=> String, one of "NVD"
    #   resp.vulnerabilities[0].description #=> String
    #   resp.vulnerabilities[0].atig_data.first_seen #=> Time
    #   resp.vulnerabilities[0].atig_data.last_seen #=> Time
    #   resp.vulnerabilities[0].atig_data.targets #=> Array
    #   resp.vulnerabilities[0].atig_data.targets[0] #=> String
    #   resp.vulnerabilities[0].atig_data.ttps #=> Array
    #   resp.vulnerabilities[0].atig_data.ttps[0] #=> String
    #   resp.vulnerabilities[0].vendor_severity #=> String
    #   resp.vulnerabilities[0].cvss4.base_score #=> Float
    #   resp.vulnerabilities[0].cvss4.scoring_vector #=> String
    #   resp.vulnerabilities[0].cvss3.base_score #=> Float
    #   resp.vulnerabilities[0].cvss3.scoring_vector #=> String
    #   resp.vulnerabilities[0].related_vulnerabilities #=> Array
    #   resp.vulnerabilities[0].related_vulnerabilities[0] #=> String
    #   resp.vulnerabilities[0].cvss2.base_score #=> Float
    #   resp.vulnerabilities[0].cvss2.scoring_vector #=> String
    #   resp.vulnerabilities[0].vendor_created_at #=> Time
    #   resp.vulnerabilities[0].vendor_updated_at #=> Time
    #   resp.vulnerabilities[0].source_url #=> String
    #   resp.vulnerabilities[0].reference_urls #=> Array
    #   resp.vulnerabilities[0].reference_urls[0] #=> String
    #   resp.vulnerabilities[0].exploit_observed.last_seen #=> Time
    #   resp.vulnerabilities[0].exploit_observed.first_seen #=> Time
    #   resp.vulnerabilities[0].detection_platforms #=> Array
    #   resp.vulnerabilities[0].detection_platforms[0] #=> String
    #   resp.vulnerabilities[0].epss.score #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SearchVulnerabilities AWS API Documentation
    #
    # @overload search_vulnerabilities(params = {})
    # @param [Hash] params ({})
    def search_vulnerabilities(params = {}, options = {})
      req = build_request(:search_vulnerabilities, params)
      req.send_request(options)
    end

    # Sends a CIS session health. This API is used by the Amazon Inspector
    # SSM plugin to communicate with the Amazon Inspector service. The
    # Amazon Inspector SSM plugin calls this API to start a CIS scan session
    # for the scan ID supplied by the service.
    #
    # @option params [required, String] :scan_job_id
    #   A unique identifier for the scan job.
    #
    # @option params [required, String] :session_token
    #   The unique token that identifies the CIS session.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample SendCisSessionHealth Call
    #
    #   resp = client.send_cis_session_health({
    #     scan_job_id: "624b746d-e080-44ae-8c1d-48e653365a38", 
    #     session_token: "624b746d-e080-44ae-8c1d-48e653365a31", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_cis_session_health({
    #     scan_job_id: "UUID", # required
    #     session_token: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SendCisSessionHealth AWS API Documentation
    #
    # @overload send_cis_session_health(params = {})
    # @param [Hash] params ({})
    def send_cis_session_health(params = {}, options = {})
      req = build_request(:send_cis_session_health, params)
      req.send_request(options)
    end

    # Sends a CIS session telemetry. This API is used by the Amazon
    # Inspector SSM plugin to communicate with the Amazon Inspector service.
    # The Amazon Inspector SSM plugin calls this API to start a CIS scan
    # session for the scan ID supplied by the service.
    #
    # @option params [required, String] :scan_job_id
    #   A unique identifier for the scan job.
    #
    # @option params [required, String] :session_token
    #   The unique token that identifies the CIS session.
    #
    # @option params [required, Array<Types::CisSessionMessage>] :messages
    #   The CIS session telemetry messages.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample SendCisSessionTelemetry Call
    #
    #   resp = client.send_cis_session_telemetry({
    #     messages: [
    #       {
    #         cis_rule_details: "dGVzdCBleGFtcGxlCg==", 
    #         rule_id: "1.12.1", 
    #         status: "FAILED", 
    #       }, 
    #       {
    #         cis_rule_details: "dGVzdCBleGFtcGxlCg==dGVzdCBleGFtcGxlCg", 
    #         rule_id: "1.2.1", 
    #         status: "PASSED", 
    #       }, 
    #     ], 
    #     scan_job_id: "624b746d-e080-44ae-8c1d-48e653365a38", 
    #     session_token: "624b746d-e080-44ae-8c1d-48e653365a31", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_cis_session_telemetry({
    #     scan_job_id: "UUID", # required
    #     session_token: "UUID", # required
    #     messages: [ # required
    #       {
    #         rule_id: "RuleId", # required
    #         status: "FAILED", # required, accepts FAILED, PASSED, NOT_EVALUATED, INFORMATIONAL, UNKNOWN, NOT_APPLICABLE, ERROR
    #         cis_rule_details: "data", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SendCisSessionTelemetry AWS API Documentation
    #
    # @overload send_cis_session_telemetry(params = {})
    # @param [Hash] params ({})
    def send_cis_session_telemetry(params = {}, options = {})
      req = build_request(:send_cis_session_telemetry, params)
      req.send_request(options)
    end

    # Starts a CIS session. This API is used by the Amazon Inspector SSM
    # plugin to communicate with the Amazon Inspector service. The Amazon
    # Inspector SSM plugin calls this API to start a CIS scan session for
    # the scan ID supplied by the service.
    #
    # @option params [required, String] :scan_job_id
    #   A unique identifier for the scan job.
    #
    # @option params [required, Types::StartCisSessionMessage] :message
    #   The start CIS session message.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample SendCisSessionHealth Call
    #
    #   resp = client.start_cis_session({
    #     message: {
    #       session_token: "624b746d-e080-44ae-8c1d-48e653365a31", 
    #     }, 
    #     scan_job_id: "624b746d-e080-44ae-8c1d-48e653365a38", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_cis_session({
    #     scan_job_id: "UUID", # required
    #     message: { # required
    #       session_token: "UUID", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StartCisSession AWS API Documentation
    #
    # @overload start_cis_session(params = {})
    # @param [Hash] params ({})
    def start_cis_session(params = {}, options = {})
      req = build_request(:start_cis_session, params)
      req.send_request(options)
    end

    # Initiates a code security scan on a specified repository.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::CodeSecurityResource] :resource
    #   The resource identifier for the code repository to scan.
    #
    # @return [Types::StartCodeSecurityScanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCodeSecurityScanResponse#scan_id #scan_id} => String
    #   * {Types::StartCodeSecurityScanResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_code_security_scan({
    #     client_token: "CodeSecurityClientToken",
    #     resource: { # required
    #       project_id: "ProjectId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_id #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "SKIPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StartCodeSecurityScan AWS API Documentation
    #
    # @overload start_code_security_scan(params = {})
    # @param [Hash] params ({})
    def start_code_security_scan(params = {}, options = {})
      req = build_request(:start_code_security_scan, params)
      req.send_request(options)
    end

    # Stops a CIS session. This API is used by the Amazon Inspector SSM
    # plugin to communicate with the Amazon Inspector service. The Amazon
    # Inspector SSM plugin calls this API to stop a CIS scan session for the
    # scan ID supplied by the service.
    #
    # @option params [required, String] :scan_job_id
    #   A unique identifier for the scan job.
    #
    # @option params [required, String] :session_token
    #   The unique token that identifies the CIS session.
    #
    # @option params [required, Types::StopCisSessionMessage] :message
    #   The stop CIS session message.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample StopCisSession Call
    #
    #   resp = client.stop_cis_session({
    #     message: {
    #       benchmark_profile: "xccdf_org.cisecurity.benchmarks_profile_Level_1", 
    #       benchmark_version: "2.0.0", 
    #       compute_platform: {
    #         version: "20.04", 
    #         product: "ubuntu", 
    #         vendor: "canonical", 
    #       }, 
    #       progress: {
    #         error_checks: 1, 
    #         failed_checks: 0, 
    #         informational_checks: 1, 
    #         not_applicable_checks: 0, 
    #         not_evaluated_checks: 2, 
    #         successful_checks: 5, 
    #         total_checks: 10, 
    #         unknown_checks: 0, 
    #       }, 
    #       reason: "Failure Reason", 
    #       status: "FAILED", 
    #     }, 
    #     scan_job_id: "624b746d-e080-44ae-8c1d-48e653365a38", 
    #     session_token: "624b746d-e080-44ae-8c1d-48e653365a31", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_cis_session({
    #     scan_job_id: "UUID", # required
    #     session_token: "UUID", # required
    #     message: { # required
    #       status: "SUCCESS", # required, accepts SUCCESS, FAILED, INTERRUPTED, UNSUPPORTED_OS
    #       reason: "Reason",
    #       progress: { # required
    #         total_checks: 1,
    #         successful_checks: 1,
    #         failed_checks: 1,
    #         not_evaluated_checks: 1,
    #         unknown_checks: 1,
    #         not_applicable_checks: 1,
    #         informational_checks: 1,
    #         error_checks: 1,
    #       },
    #       compute_platform: {
    #         vendor: "Vendor",
    #         product: "Product",
    #         version: "PlatformVersion",
    #       },
    #       benchmark_version: "BenchmarkVersion",
    #       benchmark_profile: "BenchmarkProfile",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StopCisSession AWS API Documentation
    #
    # @overload stop_cis_session(params = {})
    # @param [Hash] params ({})
    def stop_cis_session(params = {}, options = {})
      req = build_request(:stop_cis_session, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to apply a tag to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to be added to a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "MapKey" => "MapValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a CIS scan configuration.
    #
    # @option params [required, String] :scan_configuration_arn
    #   The CIS scan configuration ARN.
    #
    # @option params [String] :scan_name
    #   The scan name for the CIS scan configuration.
    #
    # @option params [String] :security_level
    #   The security level for the CIS scan configuration. Security level
    #   refers to the Benchmark levels that CIS assigns to a profile.
    #
    # @option params [Types::Schedule] :schedule
    #   The schedule for the CIS scan configuration.
    #
    # @option params [Types::UpdateCisTargets] :targets
    #   The targets for the CIS scan configuration.
    #
    # @return [Types::UpdateCisScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCisScanConfigurationResponse#scan_configuration_arn #scan_configuration_arn} => String
    #
    #
    # @example Example: Sample UpdateCisScanConfiguration Call
    #
    #   resp = client.update_cis_scan_configuration({
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38", 
    #     scan_name: "sample_new", 
    #     schedule: {
    #       daily: {
    #         start_time: {
    #           time_of_day: "12:56", 
    #           timezone: "UTC", 
    #         }, 
    #       }, 
    #     }, 
    #     security_level: "LEVEL_2", 
    #     targets: {
    #       account_ids: [
    #         "SELF", 
    #       ], 
    #       target_resource_tags: {
    #         "key2" => [
    #           "value2", 
    #         ], 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scan_configuration_arn: "arn:aws:inspector2:us-east-1:123412341234:owner/123412341234/cis-configuration/624b746d-e080-44ae-8c1d-48e653365a38", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cis_scan_configuration({
    #     scan_configuration_arn: "CisScanConfigurationArn", # required
    #     scan_name: "CisScanName",
    #     security_level: "LEVEL_1", # accepts LEVEL_1, LEVEL_2
    #     schedule: {
    #       one_time: {
    #       },
    #       daily: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #       },
    #       weekly: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #         days: ["SUN"], # required, accepts SUN, MON, TUE, WED, THU, FRI, SAT
    #       },
    #       monthly: {
    #         start_time: { # required
    #           time_of_day: "TimeOfDay", # required
    #           timezone: "Timezone", # required
    #         },
    #         day: "SUN", # required, accepts SUN, MON, TUE, WED, THU, FRI, SAT
    #       },
    #     },
    #     targets: {
    #       account_ids: ["TargetAccount"],
    #       target_resource_tags: {
    #         "TargetResourceTagsKey" => ["TargetResourceTagsValue"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCisScanConfiguration AWS API Documentation
    #
    # @overload update_cis_scan_configuration(params = {})
    # @param [Hash] params ({})
    def update_cis_scan_configuration(params = {}, options = {})
      req = build_request(:update_cis_scan_configuration, params)
      req.send_request(options)
    end

    # Updates an existing code security integration.
    #
    # After calling the `CreateCodeSecurityIntegration` operation, you
    # complete authentication and authorization with your provider. Next you
    # call the `UpdateCodeSecurityIntegration` operation to provide the
    # `details` to complete the integration setup
    #
    # @option params [required, String] :integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration to
    #   update.
    #
    # @option params [required, Types::UpdateIntegrationDetails] :details
    #   The updated integration details specific to the repository provider
    #   type.
    #
    # @return [Types::UpdateCodeSecurityIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCodeSecurityIntegrationResponse#integration_arn #integration_arn} => String
    #   * {Types::UpdateCodeSecurityIntegrationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_code_security_integration({
    #     integration_arn: "CodeSecurityIntegrationArn", # required
    #     details: { # required
    #       gitlab_self_managed: {
    #         auth_code: "GitLabAuthCode", # required
    #       },
    #       github: {
    #         code: "GitHubAuthCode", # required
    #         installation_id: "GitHubInstallationId", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_arn #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "ACTIVE", "INACTIVE", "DISABLING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCodeSecurityIntegration AWS API Documentation
    #
    # @overload update_code_security_integration(params = {})
    # @param [Hash] params ({})
    def update_code_security_integration(params = {}, options = {})
      req = build_request(:update_code_security_integration, params)
      req.send_request(options)
    end

    # Updates an existing code security scan configuration.
    #
    # @option params [required, String] :scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to update.
    #
    # @option params [required, Types::CodeSecurityScanConfiguration] :configuration
    #   The updated configuration settings for the code security scan.
    #
    # @return [Types::UpdateCodeSecurityScanConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCodeSecurityScanConfigurationResponse#scan_configuration_arn #scan_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_code_security_scan_configuration({
    #     scan_configuration_arn: "ScanConfigurationArn", # required
    #     configuration: { # required
    #       periodic_scan_configuration: {
    #         frequency: "WEEKLY", # accepts WEEKLY, MONTHLY, NEVER
    #         frequency_expression: "FrequencyExpression",
    #       },
    #       continuous_integration_scan_configuration: {
    #         supported_events: ["PULL_REQUEST"], # required, accepts PULL_REQUEST, PUSH
    #       },
    #       rule_set_categories: ["SAST"], # required, accepts SAST, IAC, SCA
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCodeSecurityScanConfiguration AWS API Documentation
    #
    # @overload update_code_security_scan_configuration(params = {})
    # @param [Hash] params ({})
    def update_code_security_scan_configuration(params = {}, options = {})
      req = build_request(:update_code_security_scan_configuration, params)
      req.send_request(options)
    end

    # Updates setting configurations for your Amazon Inspector account. When
    # you use this API as an Amazon Inspector delegated administrator this
    # updates the setting for all accounts you manage. Member accounts in an
    # organization cannot update this setting.
    #
    # @option params [Types::EcrConfiguration] :ecr_configuration
    #   Specifies how the ECR automated re-scan will be updated for your
    #   environment.
    #
    # @option params [Types::Ec2Configuration] :ec2_configuration
    #   Specifies how the Amazon EC2 automated scan will be updated for your
    #   environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration({
    #     ecr_configuration: {
    #       rescan_duration: "LIFETIME", # required, accepts LIFETIME, DAYS_30, DAYS_180, DAYS_14, DAYS_60, DAYS_90
    #       pull_date_rescan_duration: "DAYS_14", # accepts DAYS_14, DAYS_30, DAYS_60, DAYS_90, DAYS_180
    #       pull_date_rescan_mode: "LAST_PULL_DATE", # accepts LAST_PULL_DATE, LAST_IN_USE_AT
    #     },
    #     ec2_configuration: {
    #       scan_mode: "EC2_SSM_AGENT_BASED", # required, accepts EC2_SSM_AGENT_BASED, EC2_HYBRID
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateConfiguration AWS API Documentation
    #
    # @overload update_configuration(params = {})
    # @param [Hash] params ({})
    def update_configuration(params = {}, options = {})
      req = build_request(:update_configuration, params)
      req.send_request(options)
    end

    # Activates, deactivates Amazon Inspector deep inspection, or updates
    # custom paths for your account.
    #
    # @option params [Boolean] :activate_deep_inspection
    #   Specify `TRUE` to activate Amazon Inspector deep inspection in your
    #   account, or `FALSE` to deactivate. Member accounts in an organization
    #   cannot deactivate deep inspection, instead the delegated administrator
    #   for the organization can deactivate a member account using
    #   [BatchUpdateMemberEc2DeepInspectionStatus][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/inspector/v2/APIReference/API_BatchUpdateMemberEc2DeepInspectionStatus.html
    #
    # @option params [Array<String>] :package_paths
    #   The Amazon Inspector deep inspection custom paths you are adding for
    #   your account.
    #
    # @return [Types::UpdateEc2DeepInspectionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEc2DeepInspectionConfigurationResponse#package_paths #package_paths} => Array&lt;String&gt;
    #   * {Types::UpdateEc2DeepInspectionConfigurationResponse#org_package_paths #org_package_paths} => Array&lt;String&gt;
    #   * {Types::UpdateEc2DeepInspectionConfigurationResponse#status #status} => String
    #   * {Types::UpdateEc2DeepInspectionConfigurationResponse#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ec2_deep_inspection_configuration({
    #     activate_deep_inspection: false,
    #     package_paths: ["Path"],
    #   })
    #
    # @example Response structure
    #
    #   resp.package_paths #=> Array
    #   resp.package_paths[0] #=> String
    #   resp.org_package_paths #=> Array
    #   resp.org_package_paths[0] #=> String
    #   resp.status #=> String, one of "ACTIVATED", "DEACTIVATED", "PENDING", "FAILED"
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEc2DeepInspectionConfiguration AWS API Documentation
    #
    # @overload update_ec2_deep_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def update_ec2_deep_inspection_configuration(params = {}, options = {})
      req = build_request(:update_ec2_deep_inspection_configuration, params)
      req.send_request(options)
    end

    # Updates an encryption key. A `ResourceNotFoundException` means that an
    # Amazon Web Services owned key is being used for encryption.
    #
    # @option params [required, String] :kms_key_id
    #   A KMS key ID for the encryption key.
    #
    # @option params [required, String] :scan_type
    #   The scan type for the encryption key.
    #
    # @option params [required, String] :resource_type
    #   The resource type for the encryption key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_encryption_key({
    #     kms_key_id: "KmsKeyArn", # required
    #     scan_type: "NETWORK", # required, accepts NETWORK, PACKAGE, CODE
    #     resource_type: "AWS_EC2_INSTANCE", # required, accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_ECR_REPOSITORY, AWS_LAMBDA_FUNCTION, CODE_REPOSITORY
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEncryptionKey AWS API Documentation
    #
    # @overload update_encryption_key(params = {})
    # @param [Hash] params ({})
    def update_encryption_key(params = {}, options = {})
      req = build_request(:update_encryption_key, params)
      req.send_request(options)
    end

    # Specifies the action that is to be applied to the findings that match
    # the filter.
    #
    # @option params [String] :action
    #   Specifies the action that is to be applied to the findings that match
    #   the filter.
    #
    # @option params [String] :description
    #   A description of the filter.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   Defines the criteria to be update in the filter.
    #
    # @option params [String] :name
    #   The name of the filter.
    #
    # @option params [required, String] :filter_arn
    #   The Amazon Resource Number (ARN) of the filter to update.
    #
    # @option params [String] :reason
    #   The reason the filter was updated.
    #
    # @return [Types::UpdateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFilterResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_filter({
    #     action: "NONE", # accepts NONE, SUPPRESS
    #     description: "FilterDescription",
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       title: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "MapKey", # required
    #           value: "MapValue",
    #         },
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_last_in_use_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_in_use_count: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1,
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerable_packages: [
    #         {
    #           name: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             upper_inclusive: 1.0,
    #             lower_inclusive: 1.0,
    #           },
    #           release: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           architecture: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           file_path: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         },
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now,
    #         },
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       epss_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0,
    #         },
    #       ],
    #       code_repository_project_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_repository_provider_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #     },
    #     name: "FilterName",
    #     filter_arn: "FilterArn", # required
    #     reason: "FilterReason",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateFilter AWS API Documentation
    #
    # @overload update_filter(params = {})
    # @param [Hash] params ({})
    def update_filter(params = {}, options = {})
      req = build_request(:update_filter, params)
      req.send_request(options)
    end

    # Updates the Amazon Inspector deep inspection custom paths for your
    # organization. You must be an Amazon Inspector delegated administrator
    # to use this API.
    #
    # @option params [required, Array<String>] :org_package_paths
    #   The Amazon Inspector deep inspection custom paths you are adding for
    #   your organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_org_ec2_deep_inspection_configuration({
    #     org_package_paths: ["Path"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateOrgEc2DeepInspectionConfiguration AWS API Documentation
    #
    # @overload update_org_ec2_deep_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def update_org_ec2_deep_inspection_configuration(params = {}, options = {})
      req = build_request(:update_org_ec2_deep_inspection_configuration, params)
      req.send_request(options)
    end

    # Updates the configurations for your Amazon Inspector organization.
    #
    # @option params [required, Types::AutoEnable] :auto_enable
    #   Defines which scan types are enabled automatically for new members of
    #   your Amazon Inspector organization.
    #
    # @return [Types::UpdateOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOrganizationConfigurationResponse#auto_enable #auto_enable} => Types::AutoEnable
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration({
    #     auto_enable: { # required
    #       ec2: false, # required
    #       ecr: false, # required
    #       lambda: false,
    #       lambda_code: false,
    #       code_repository: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_enable.ec2 #=> Boolean
    #   resp.auto_enable.ecr #=> Boolean
    #   resp.auto_enable.lambda #=> Boolean
    #   resp.auto_enable.lambda_code #=> Boolean
    #   resp.auto_enable.code_repository #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateOrganizationConfiguration AWS API Documentation
    #
    # @overload update_organization_configuration(params = {})
    # @param [Hash] params ({})
    def update_organization_configuration(params = {}, options = {})
      req = build_request(:update_organization_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Inspector2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-inspector2'
      context[:gem_version] = '1.62.0'
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
