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

module Aws::Artifact
  # An API client for Artifact.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Artifact::Client.new(
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

    @identifier = :artifact

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
    add_plugin(Aws::Artifact::Plugins::Endpoints)

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
    #   @option options [Aws::Artifact::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Artifact::EndpointParameters`.
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

    # Get the account settings for Artifact.
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#account_settings #account_settings} => Types::AccountSettings
    #
    #
    # @example Example: Invoke GetAccountSettings operation
    #
    #   # Get the current account settings.
    #
    #   resp = client.get_account_settings({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_settings: {
    #       notification_subscription_status: "SUBSCRIBED", 
    #     }, 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_settings.notification_subscription_status #=> String, one of "SUBSCRIBED", "NOT_SUBSCRIBED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Get the content for a single report.
    #
    # @option params [required, String] :report_id
    #   Unique resource ID for the report resource.
    #
    # @option params [Integer] :report_version
    #   Version for the report resource.
    #
    # @option params [required, String] :term_token
    #   Unique download token provided by GetTermForReport API.
    #
    # @return [Types::GetReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReportResponse#document_presigned_url #document_presigned_url} => String
    #
    #
    # @example Example: Invoke GetReport operation on the latest version of a specific report
    #
    #   # The GetReport operation is invoked on a reportId and on a optional version.
    #   # Callers must provide a termToken, which is provided by the GetTermForReport
    #   # operation. If callers do not provide a version, it will default to the
    #   # report's latest version
    #
    #   resp = client.get_report({
    #     report_id: "report-abcdef0123456789", 
    #     term_token: "term-token-abcdefghijklm01234567890", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     document_presigned_url: "<Presigned S3 URL>", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_report({
    #     report_id: "ReportId", # required
    #     report_version: 1,
    #     term_token: "ShortStringAttribute", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document_presigned_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetReport AWS API Documentation
    #
    # @overload get_report(params = {})
    # @param [Hash] params ({})
    def get_report(params = {}, options = {})
      req = build_request(:get_report, params)
      req.send_request(options)
    end

    # Get the metadata for a single report.
    #
    # @option params [required, String] :report_id
    #   Unique resource ID for the report resource.
    #
    # @option params [Integer] :report_version
    #   Version for the report resource.
    #
    # @return [Types::GetReportMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReportMetadataResponse#report_details #report_details} => Types::ReportDetail
    #
    #
    # @example Example: Invoke GetReportMetadata operation on the latest version of a specific report
    #
    #   # The GetReportMetadata operation is invoked on a reportId and on a optional version.
    #   # If callers do not provide a version, it will default to the report's latest version.
    #
    #   resp = client.get_report_metadata({
    #     report_id: "report-bqhUJF3FrQZsMJpb", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     report_details: {
    #       version: 1, 
    #       name: "Name of report", 
    #       arn: "arn:aws:artifact:us-east-1::report/report-abcdef0123456789:1", 
    #       category: "Artifact Category", 
    #       company_name: "AWS", 
    #       created_at: Time.parse("2022-05-27T23:17:00.343940Z"), 
    #       description: "Description of report", 
    #       id: "report-abcdef0123456789", 
    #       period_end: Time.parse("2022-04-01T20:32:04Z"), 
    #       period_start: Time.parse("2022-04-01T20:32:04Z"), 
    #       product_name: "Product of report", 
    #       series: "Artifact Series", 
    #       state: "PUBLISHED", 
    #       term_arn: "arn:aws:artifact:us-east-1::term/term-abcdef0123456789:1", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_report_metadata({
    #     report_id: "ReportId", # required
    #     report_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.report_details.id #=> String
    #   resp.report_details.name #=> String
    #   resp.report_details.description #=> String
    #   resp.report_details.period_start #=> Time
    #   resp.report_details.period_end #=> Time
    #   resp.report_details.created_at #=> Time
    #   resp.report_details.last_modified_at #=> Time
    #   resp.report_details.deleted_at #=> Time
    #   resp.report_details.state #=> String, one of "PUBLISHED", "UNPUBLISHED"
    #   resp.report_details.arn #=> String
    #   resp.report_details.series #=> String
    #   resp.report_details.category #=> String
    #   resp.report_details.company_name #=> String
    #   resp.report_details.product_name #=> String
    #   resp.report_details.term_arn #=> String
    #   resp.report_details.version #=> Integer
    #   resp.report_details.acceptance_type #=> String, one of "PASSTHROUGH", "EXPLICIT"
    #   resp.report_details.sequence_number #=> Integer
    #   resp.report_details.upload_state #=> String, one of "PROCESSING", "COMPLETE", "FAILED", "FAULT"
    #   resp.report_details.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetReportMetadata AWS API Documentation
    #
    # @overload get_report_metadata(params = {})
    # @param [Hash] params ({})
    def get_report_metadata(params = {}, options = {})
      req = build_request(:get_report_metadata, params)
      req.send_request(options)
    end

    # Get the Term content associated with a single report.
    #
    # @option params [required, String] :report_id
    #   Unique resource ID for the report resource.
    #
    # @option params [Integer] :report_version
    #   Version for the report resource.
    #
    # @return [Types::GetTermForReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTermForReportResponse#document_presigned_url #document_presigned_url} => String
    #   * {Types::GetTermForReportResponse#term_token #term_token} => String
    #
    #
    # @example Example: Invoke GetTermForReport operation on the latest version of a specific report
    #
    #   # The GetTermForReport operation is invoked on a reportId and on a optional version.
    #   # If callers do not provide a version, it will default to the report's latest version.
    #
    #   resp = client.get_term_for_report({
    #     report_id: "report-abcdef0123456789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     document_presigned_url: "<Presigned S3 URL>", 
    #     term_token: "term-token-abcdefghijklm01234567890", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_term_for_report({
    #     report_id: "ReportId", # required
    #     report_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.document_presigned_url #=> String
    #   resp.term_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetTermForReport AWS API Documentation
    #
    # @overload get_term_for_report(params = {})
    # @param [Hash] params ({})
    def get_term_for_report(params = {}, options = {})
      req = build_request(:get_term_for_report, params)
      req.send_request(options)
    end

    # List active customer-agreements applicable to calling identity.
    #
    # @option params [Integer] :max_results
    #   Maximum number of resources to return in the paginated response.
    #
    # @option params [String] :next_token
    #   Pagination token to request the next page of resources.
    #
    # @return [Types::ListCustomerAgreementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomerAgreementsResponse#customer_agreements #customer_agreements} => Array&lt;Types::CustomerAgreementSummary&gt;
    #   * {Types::ListCustomerAgreementsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListCustomerAgreements operation
    #
    #   # The ListCustomerAgreements operation returns a collection of customer-agreement resources in the ACTIVE state for the
    #   # calling credential.
    #
    #   resp = client.list_customer_agreements({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     customer_agreements: [
    #       {
    #         name: "Name of agreement", 
    #         type: "DEFAULT", 
    #         acceptance_terms: [
    #           "terms acknowledged when agreement was accepted", 
    #         ], 
    #         agreement_arn: "arn:aws:artifact:::agreement/agreement-abcdef0123456789", 
    #         arn: "arn:aws:artifact::111111111111:customer-agreement/customer-agreement-abcdef0123456789", 
    #         aws_account_id: "111111111111", 
    #         description: "Description of agreement", 
    #         effective_start: Time.parse("2022-04-01T20:32:04Z"), 
    #         id: "customer-agreement-abcdef0123456789", 
    #         state: "ACTIVE", 
    #         terminate_terms: [
    #           "terms that must be acknowledged to terminate this agreement", 
    #         ], 
    #       }, 
    #     ], 
    #     next_token: "gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_customer_agreements({
    #     max_results: 1,
    #     next_token: "NextTokenAttribute",
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_agreements #=> Array
    #   resp.customer_agreements[0].name #=> String
    #   resp.customer_agreements[0].arn #=> String
    #   resp.customer_agreements[0].id #=> String
    #   resp.customer_agreements[0].agreement_arn #=> String
    #   resp.customer_agreements[0].aws_account_id #=> String
    #   resp.customer_agreements[0].organization_arn #=> String
    #   resp.customer_agreements[0].effective_start #=> Time
    #   resp.customer_agreements[0].effective_end #=> Time
    #   resp.customer_agreements[0].state #=> String, one of "ACTIVE", "CUSTOMER_TERMINATED", "AWS_TERMINATED"
    #   resp.customer_agreements[0].description #=> String
    #   resp.customer_agreements[0].acceptance_terms #=> Array
    #   resp.customer_agreements[0].acceptance_terms[0] #=> String
    #   resp.customer_agreements[0].terminate_terms #=> Array
    #   resp.customer_agreements[0].terminate_terms[0] #=> String
    #   resp.customer_agreements[0].type #=> String, one of "CUSTOM", "DEFAULT", "MODIFIED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListCustomerAgreements AWS API Documentation
    #
    # @overload list_customer_agreements(params = {})
    # @param [Hash] params ({})
    def list_customer_agreements(params = {}, options = {})
      req = build_request(:list_customer_agreements, params)
      req.send_request(options)
    end

    # List available reports.
    #
    # @option params [Integer] :max_results
    #   Maximum number of resources to return in the paginated response.
    #
    # @option params [String] :next_token
    #   Pagination token to request the next page of resources.
    #
    # @return [Types::ListReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportsResponse#reports #reports} => Array&lt;Types::ReportSummary&gt;
    #   * {Types::ListReportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListReports operation
    #
    #   # The ListReports operation returns a collection of report resources.
    #
    #   resp = client.list_reports({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7gPFEGk7CF4wS901w7ppYclt7", 
    #     reports: [
    #       {
    #         version: 1, 
    #         name: "Name of report", 
    #         arn: "arn:aws:artifact:us-east-1::report/report-abcdef0123456789", 
    #         category: "Artifact Category", 
    #         company_name: "AWS", 
    #         description: "Description of report", 
    #         id: "report-abcdef0123456789", 
    #         period_end: Time.parse("2022-04-01T20:32:04Z"), 
    #         period_start: Time.parse("2022-04-01T20:32:04Z"), 
    #         product_name: "Product of report", 
    #         series: "Artifact Series", 
    #         state: "PUBLISHED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reports({
    #     max_results: 1,
    #     next_token: "NextTokenAttribute",
    #   })
    #
    # @example Response structure
    #
    #   resp.reports #=> Array
    #   resp.reports[0].id #=> String
    #   resp.reports[0].name #=> String
    #   resp.reports[0].state #=> String, one of "PUBLISHED", "UNPUBLISHED"
    #   resp.reports[0].arn #=> String
    #   resp.reports[0].version #=> Integer
    #   resp.reports[0].upload_state #=> String, one of "PROCESSING", "COMPLETE", "FAILED", "FAULT"
    #   resp.reports[0].description #=> String
    #   resp.reports[0].period_start #=> Time
    #   resp.reports[0].period_end #=> Time
    #   resp.reports[0].series #=> String
    #   resp.reports[0].category #=> String
    #   resp.reports[0].company_name #=> String
    #   resp.reports[0].product_name #=> String
    #   resp.reports[0].status_message #=> String
    #   resp.reports[0].acceptance_type #=> String, one of "PASSTHROUGH", "EXPLICIT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListReports AWS API Documentation
    #
    # @overload list_reports(params = {})
    # @param [Hash] params ({})
    def list_reports(params = {}, options = {})
      req = build_request(:list_reports, params)
      req.send_request(options)
    end

    # Put the account settings for Artifact.
    #
    # @option params [String] :notification_subscription_status
    #   Desired notification subscription status.
    #
    # @return [Types::PutAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAccountSettingsResponse#account_settings #account_settings} => Types::AccountSettings
    #
    #
    # @example Example: Invoke PutAccountSettings operation
    #
    #   # Set the account settings.
    #
    #   resp = client.put_account_settings({
    #     notification_subscription_status: "SUBSCRIBED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_settings: {
    #       notification_subscription_status: "SUBSCRIBED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_settings({
    #     notification_subscription_status: "SUBSCRIBED", # accepts SUBSCRIBED, NOT_SUBSCRIBED
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.notification_subscription_status #=> String, one of "SUBSCRIBED", "NOT_SUBSCRIBED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/PutAccountSettings AWS API Documentation
    #
    # @overload put_account_settings(params = {})
    # @param [Hash] params ({})
    def put_account_settings(params = {}, options = {})
      req = build_request(:put_account_settings, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Artifact')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-artifact'
      context[:gem_version] = '1.24.0'
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
