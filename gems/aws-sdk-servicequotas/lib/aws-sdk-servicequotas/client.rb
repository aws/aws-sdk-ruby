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

module Aws::ServiceQuotas
  # An API client for ServiceQuotas.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ServiceQuotas::Client.new(
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

    @identifier = :servicequotas

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
    add_plugin(Aws::ServiceQuotas::Plugins::Endpoints)

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
    #   @option options [Aws::ServiceQuotas::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ServiceQuotas::EndpointParameters`.
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

    # Associates your quota request template with your organization. When a
    # new Amazon Web Services account is created in your organization, the
    # quota increase requests in the template are automatically applied to
    # the account. You can add a quota increase request for any adjustable
    # quota to your template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/AssociateServiceQuotaTemplate AWS API Documentation
    #
    # @overload associate_service_quota_template(params = {})
    # @param [Hash] params ({})
    def associate_service_quota_template(params = {}, options = {})
      req = build_request(:associate_service_quota_template, params)
      req.send_request(options)
    end

    # Creates a Support case for an existing quota increase request. This
    # call only creates a Support case if the request has a `Pending`
    # status.
    #
    # @option params [required, String] :request_id
    #   The ID of the pending quota increase request for which you want to
    #   open a Support case.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_support_case({
    #     request_id: "RequestId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/CreateSupportCase AWS API Documentation
    #
    # @overload create_support_case(params = {})
    # @param [Hash] params ({})
    def create_support_case(params = {}, options = {})
      req = build_request(:create_support_case, params)
      req.send_request(options)
    end

    # Deletes the quota increase request for the specified quota from your
    # quota request template.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [required, String] :quota_code
    #   Specifies the quota identifier. To find the quota code for a specific
    #   quota, use the ListServiceQuotas operation, and look for the
    #   `QuotaCode` response in the output for the quota you want.
    #
    # @option params [required, String] :aws_region
    #   Specifies the Amazon Web Services Region for which the request was
    #   made.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_quota_increase_request_from_template({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     aws_region: "AwsRegion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DeleteServiceQuotaIncreaseRequestFromTemplate AWS API Documentation
    #
    # @overload delete_service_quota_increase_request_from_template(params = {})
    # @param [Hash] params ({})
    def delete_service_quota_increase_request_from_template(params = {}, options = {})
      req = build_request(:delete_service_quota_increase_request_from_template, params)
      req.send_request(options)
    end

    # Disables your quota request template. After a template is disabled,
    # the quota increase requests in the template are not applied to new
    # Amazon Web Services accounts in your organization. Disabling a quota
    # request template does not apply its quota increase requests.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DisassociateServiceQuotaTemplate AWS API Documentation
    #
    # @overload disassociate_service_quota_template(params = {})
    # @param [Hash] params ({})
    def disassociate_service_quota_template(params = {}, options = {})
      req = build_request(:disassociate_service_quota_template, params)
      req.send_request(options)
    end

    # Retrieves the default value for the specified quota. The default value
    # does not reflect any quota increases.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [required, String] :quota_code
    #   Specifies the quota identifier. To find the quota code for a specific
    #   quota, use the ListServiceQuotas operation, and look for the
    #   `QuotaCode` response in the output for the quota you want.
    #
    # @return [Types::GetAWSDefaultServiceQuotaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAWSDefaultServiceQuotaResponse#quota #quota} => Types::ServiceQuota
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aws_default_service_quota({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quota.service_code #=> String
    #   resp.quota.service_name #=> String
    #   resp.quota.quota_arn #=> String
    #   resp.quota.quota_code #=> String
    #   resp.quota.quota_name #=> String
    #   resp.quota.value #=> Float
    #   resp.quota.unit #=> String
    #   resp.quota.adjustable #=> Boolean
    #   resp.quota.global_quota #=> Boolean
    #   resp.quota.usage_metric.metric_namespace #=> String
    #   resp.quota.usage_metric.metric_name #=> String
    #   resp.quota.usage_metric.metric_dimensions #=> Hash
    #   resp.quota.usage_metric.metric_dimensions["MetricDimensionName"] #=> String
    #   resp.quota.usage_metric.metric_statistic_recommendation #=> String
    #   resp.quota.period.period_value #=> Integer
    #   resp.quota.period.period_unit #=> String, one of "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"
    #   resp.quota.error_reason.error_code #=> String, one of "DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    #   resp.quota.error_reason.error_message #=> String
    #   resp.quota.quota_applied_at_level #=> String, one of "ACCOUNT", "RESOURCE", "ALL"
    #   resp.quota.quota_context.context_scope #=> String, one of "RESOURCE", "ACCOUNT"
    #   resp.quota.quota_context.context_scope_type #=> String
    #   resp.quota.quota_context.context_id #=> String
    #   resp.quota.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAWSDefaultServiceQuota AWS API Documentation
    #
    # @overload get_aws_default_service_quota(params = {})
    # @param [Hash] params ({})
    def get_aws_default_service_quota(params = {}, options = {})
      req = build_request(:get_aws_default_service_quota, params)
      req.send_request(options)
    end

    # Retrieves the status of the association for the quota request
    # template.
    #
    # @return [Types::GetAssociationForServiceQuotaTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssociationForServiceQuotaTemplateResponse#service_quota_template_association_status #service_quota_template_association_status} => String
    #
    # @example Response structure
    #
    #   resp.service_quota_template_association_status #=> String, one of "ASSOCIATED", "DISASSOCIATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAssociationForServiceQuotaTemplate AWS API Documentation
    #
    # @overload get_association_for_service_quota_template(params = {})
    # @param [Hash] params ({})
    def get_association_for_service_quota_template(params = {}, options = {})
      req = build_request(:get_association_for_service_quota_template, params)
      req.send_request(options)
    end

    # Retrieves information about the specified quota increase request.
    #
    # @option params [required, String] :request_id
    #   Specifies the ID of the quota increase request.
    #
    # @return [Types::GetRequestedServiceQuotaChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRequestedServiceQuotaChangeResponse#requested_quota #requested_quota} => Types::RequestedServiceQuotaChange
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_requested_service_quota_change({
    #     request_id: "RequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.requested_quota.id #=> String
    #   resp.requested_quota.case_id #=> String
    #   resp.requested_quota.service_code #=> String
    #   resp.requested_quota.service_name #=> String
    #   resp.requested_quota.quota_code #=> String
    #   resp.requested_quota.quota_name #=> String
    #   resp.requested_quota.desired_value #=> Float
    #   resp.requested_quota.status #=> String, one of "PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"
    #   resp.requested_quota.created #=> Time
    #   resp.requested_quota.last_updated #=> Time
    #   resp.requested_quota.requester #=> String
    #   resp.requested_quota.quota_arn #=> String
    #   resp.requested_quota.global_quota #=> Boolean
    #   resp.requested_quota.unit #=> String
    #   resp.requested_quota.quota_requested_at_level #=> String, one of "ACCOUNT", "RESOURCE", "ALL"
    #   resp.requested_quota.quota_context.context_scope #=> String, one of "RESOURCE", "ACCOUNT"
    #   resp.requested_quota.quota_context.context_scope_type #=> String
    #   resp.requested_quota.quota_context.context_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetRequestedServiceQuotaChange AWS API Documentation
    #
    # @overload get_requested_service_quota_change(params = {})
    # @param [Hash] params ({})
    def get_requested_service_quota_change(params = {}, options = {})
      req = build_request(:get_requested_service_quota_change, params)
      req.send_request(options)
    end

    # Retrieves the applied quota value for the specified account-level or
    # resource-level quota. For some quotas, only the default values are
    # available. If the applied quota value is not available for a quota,
    # the quota is not retrieved.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [required, String] :quota_code
    #   Specifies the quota identifier. To find the quota code for a specific
    #   quota, use the ListServiceQuotas operation, and look for the
    #   `QuotaCode` response in the output for the quota you want.
    #
    # @option params [String] :context_id
    #   Specifies the resource with an Amazon Resource Name (ARN).
    #
    # @return [Types::GetServiceQuotaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceQuotaResponse#quota #quota} => Types::ServiceQuota
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_quota({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     context_id: "QuotaContextId",
    #   })
    #
    # @example Response structure
    #
    #   resp.quota.service_code #=> String
    #   resp.quota.service_name #=> String
    #   resp.quota.quota_arn #=> String
    #   resp.quota.quota_code #=> String
    #   resp.quota.quota_name #=> String
    #   resp.quota.value #=> Float
    #   resp.quota.unit #=> String
    #   resp.quota.adjustable #=> Boolean
    #   resp.quota.global_quota #=> Boolean
    #   resp.quota.usage_metric.metric_namespace #=> String
    #   resp.quota.usage_metric.metric_name #=> String
    #   resp.quota.usage_metric.metric_dimensions #=> Hash
    #   resp.quota.usage_metric.metric_dimensions["MetricDimensionName"] #=> String
    #   resp.quota.usage_metric.metric_statistic_recommendation #=> String
    #   resp.quota.period.period_value #=> Integer
    #   resp.quota.period.period_unit #=> String, one of "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"
    #   resp.quota.error_reason.error_code #=> String, one of "DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    #   resp.quota.error_reason.error_message #=> String
    #   resp.quota.quota_applied_at_level #=> String, one of "ACCOUNT", "RESOURCE", "ALL"
    #   resp.quota.quota_context.context_scope #=> String, one of "RESOURCE", "ACCOUNT"
    #   resp.quota.quota_context.context_scope_type #=> String
    #   resp.quota.quota_context.context_id #=> String
    #   resp.quota.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuota AWS API Documentation
    #
    # @overload get_service_quota(params = {})
    # @param [Hash] params ({})
    def get_service_quota(params = {}, options = {})
      req = build_request(:get_service_quota, params)
      req.send_request(options)
    end

    # Retrieves information about the specified quota increase request in
    # your quota request template.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [required, String] :quota_code
    #   Specifies the quota identifier. To find the quota code for a specific
    #   quota, use the ListServiceQuotas operation, and look for the
    #   `QuotaCode` response in the output for the quota you want.
    #
    # @option params [required, String] :aws_region
    #   Specifies the Amazon Web Services Region for which you made the
    #   request.
    #
    # @return [Types::GetServiceQuotaIncreaseRequestFromTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceQuotaIncreaseRequestFromTemplateResponse#service_quota_increase_request_in_template #service_quota_increase_request_in_template} => Types::ServiceQuotaIncreaseRequestInTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_quota_increase_request_from_template({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     aws_region: "AwsRegion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_quota_increase_request_in_template.service_code #=> String
    #   resp.service_quota_increase_request_in_template.service_name #=> String
    #   resp.service_quota_increase_request_in_template.quota_code #=> String
    #   resp.service_quota_increase_request_in_template.quota_name #=> String
    #   resp.service_quota_increase_request_in_template.desired_value #=> Float
    #   resp.service_quota_increase_request_in_template.aws_region #=> String
    #   resp.service_quota_increase_request_in_template.unit #=> String
    #   resp.service_quota_increase_request_in_template.global_quota #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuotaIncreaseRequestFromTemplate AWS API Documentation
    #
    # @overload get_service_quota_increase_request_from_template(params = {})
    # @param [Hash] params ({})
    def get_service_quota_increase_request_from_template(params = {}, options = {})
      req = build_request(:get_service_quota_increase_request_from_template, params)
      req.send_request(options)
    end

    # Lists the default values for the quotas for the specified Amazon Web
    # Services service. A default value does not reflect any quota
    # increases.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [String] :next_token
    #   Specifies a value for receiving additional results after you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional items
    #   exist beyond those included in the current response, the `NextToken`
    #   response element is present and has a value (is not null). Include
    #   that value as the `NextToken` request parameter in the next call to
    #   the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @return [Types::ListAWSDefaultServiceQuotasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAWSDefaultServiceQuotasResponse#next_token #next_token} => String
    #   * {Types::ListAWSDefaultServiceQuotasResponse#quotas #quotas} => Array&lt;Types::ServiceQuota&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aws_default_service_quotas({
    #     service_code: "ServiceCode", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.quotas #=> Array
    #   resp.quotas[0].service_code #=> String
    #   resp.quotas[0].service_name #=> String
    #   resp.quotas[0].quota_arn #=> String
    #   resp.quotas[0].quota_code #=> String
    #   resp.quotas[0].quota_name #=> String
    #   resp.quotas[0].value #=> Float
    #   resp.quotas[0].unit #=> String
    #   resp.quotas[0].adjustable #=> Boolean
    #   resp.quotas[0].global_quota #=> Boolean
    #   resp.quotas[0].usage_metric.metric_namespace #=> String
    #   resp.quotas[0].usage_metric.metric_name #=> String
    #   resp.quotas[0].usage_metric.metric_dimensions #=> Hash
    #   resp.quotas[0].usage_metric.metric_dimensions["MetricDimensionName"] #=> String
    #   resp.quotas[0].usage_metric.metric_statistic_recommendation #=> String
    #   resp.quotas[0].period.period_value #=> Integer
    #   resp.quotas[0].period.period_unit #=> String, one of "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"
    #   resp.quotas[0].error_reason.error_code #=> String, one of "DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    #   resp.quotas[0].error_reason.error_message #=> String
    #   resp.quotas[0].quota_applied_at_level #=> String, one of "ACCOUNT", "RESOURCE", "ALL"
    #   resp.quotas[0].quota_context.context_scope #=> String, one of "RESOURCE", "ACCOUNT"
    #   resp.quotas[0].quota_context.context_scope_type #=> String
    #   resp.quotas[0].quota_context.context_id #=> String
    #   resp.quotas[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListAWSDefaultServiceQuotas AWS API Documentation
    #
    # @overload list_aws_default_service_quotas(params = {})
    # @param [Hash] params ({})
    def list_aws_default_service_quotas(params = {}, options = {})
      req = build_request(:list_aws_default_service_quotas, params)
      req.send_request(options)
    end

    # Retrieves the quota increase requests for the specified Amazon Web
    # Services service. Filter responses to return quota requests at either
    # the account level, resource level, or all levels. Responses include
    # any open or closed requests within 90 days.
    #
    # @option params [String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [String] :status
    #   Specifies that you want to filter the results to only the requests
    #   with the matching status.
    #
    # @option params [String] :next_token
    #   Specifies a value for receiving additional results after you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional items
    #   exist beyond those included in the current response, the `NextToken`
    #   response element is present and has a value (is not null). Include
    #   that value as the `NextToken` request parameter in the next call to
    #   the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @option params [String] :quota_requested_at_level
    #   Filters the response to return quota requests for the `ACCOUNT`,
    #   `RESOURCE`, or `ALL` levels. `ACCOUNT` is the default.
    #
    # @return [Types::ListRequestedServiceQuotaChangeHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRequestedServiceQuotaChangeHistoryResponse#next_token #next_token} => String
    #   * {Types::ListRequestedServiceQuotaChangeHistoryResponse#requested_quotas #requested_quotas} => Array&lt;Types::RequestedServiceQuotaChange&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_requested_service_quota_change_history({
    #     service_code: "ServiceCode",
    #     status: "PENDING", # accepts PENDING, CASE_OPENED, APPROVED, DENIED, CASE_CLOSED, NOT_APPROVED, INVALID_REQUEST
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quota_requested_at_level: "ACCOUNT", # accepts ACCOUNT, RESOURCE, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.requested_quotas #=> Array
    #   resp.requested_quotas[0].id #=> String
    #   resp.requested_quotas[0].case_id #=> String
    #   resp.requested_quotas[0].service_code #=> String
    #   resp.requested_quotas[0].service_name #=> String
    #   resp.requested_quotas[0].quota_code #=> String
    #   resp.requested_quotas[0].quota_name #=> String
    #   resp.requested_quotas[0].desired_value #=> Float
    #   resp.requested_quotas[0].status #=> String, one of "PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"
    #   resp.requested_quotas[0].created #=> Time
    #   resp.requested_quotas[0].last_updated #=> Time
    #   resp.requested_quotas[0].requester #=> String
    #   resp.requested_quotas[0].quota_arn #=> String
    #   resp.requested_quotas[0].global_quota #=> Boolean
    #   resp.requested_quotas[0].unit #=> String
    #   resp.requested_quotas[0].quota_requested_at_level #=> String, one of "ACCOUNT", "RESOURCE", "ALL"
    #   resp.requested_quotas[0].quota_context.context_scope #=> String, one of "RESOURCE", "ACCOUNT"
    #   resp.requested_quotas[0].quota_context.context_scope_type #=> String
    #   resp.requested_quotas[0].quota_context.context_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistory AWS API Documentation
    #
    # @overload list_requested_service_quota_change_history(params = {})
    # @param [Hash] params ({})
    def list_requested_service_quota_change_history(params = {}, options = {})
      req = build_request(:list_requested_service_quota_change_history, params)
      req.send_request(options)
    end

    # Retrieves the quota increase requests for the specified quota. Filter
    # responses to return quota requests at either the account level,
    # resource level, or all levels.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [required, String] :quota_code
    #   Specifies the quota identifier. To find the quota code for a specific
    #   quota, use the ListServiceQuotas operation, and look for the
    #   `QuotaCode` response in the output for the quota you want.
    #
    # @option params [String] :status
    #   Specifies that you want to filter the results to only the requests
    #   with the matching status.
    #
    # @option params [String] :next_token
    #   Specifies a value for receiving additional results after you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional items
    #   exist beyond those included in the current response, the `NextToken`
    #   response element is present and has a value (is not null). Include
    #   that value as the `NextToken` request parameter in the next call to
    #   the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @option params [String] :quota_requested_at_level
    #   Filters the response to return quota requests for the `ACCOUNT`,
    #   `RESOURCE`, or `ALL` levels. `ACCOUNT` is the default.
    #
    # @return [Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse#next_token #next_token} => String
    #   * {Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse#requested_quotas #requested_quotas} => Array&lt;Types::RequestedServiceQuotaChange&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_requested_service_quota_change_history_by_quota({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     status: "PENDING", # accepts PENDING, CASE_OPENED, APPROVED, DENIED, CASE_CLOSED, NOT_APPROVED, INVALID_REQUEST
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quota_requested_at_level: "ACCOUNT", # accepts ACCOUNT, RESOURCE, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.requested_quotas #=> Array
    #   resp.requested_quotas[0].id #=> String
    #   resp.requested_quotas[0].case_id #=> String
    #   resp.requested_quotas[0].service_code #=> String
    #   resp.requested_quotas[0].service_name #=> String
    #   resp.requested_quotas[0].quota_code #=> String
    #   resp.requested_quotas[0].quota_name #=> String
    #   resp.requested_quotas[0].desired_value #=> Float
    #   resp.requested_quotas[0].status #=> String, one of "PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"
    #   resp.requested_quotas[0].created #=> Time
    #   resp.requested_quotas[0].last_updated #=> Time
    #   resp.requested_quotas[0].requester #=> String
    #   resp.requested_quotas[0].quota_arn #=> String
    #   resp.requested_quotas[0].global_quota #=> Boolean
    #   resp.requested_quotas[0].unit #=> String
    #   resp.requested_quotas[0].quota_requested_at_level #=> String, one of "ACCOUNT", "RESOURCE", "ALL"
    #   resp.requested_quotas[0].quota_context.context_scope #=> String, one of "RESOURCE", "ACCOUNT"
    #   resp.requested_quotas[0].quota_context.context_scope_type #=> String
    #   resp.requested_quotas[0].quota_context.context_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistoryByQuota AWS API Documentation
    #
    # @overload list_requested_service_quota_change_history_by_quota(params = {})
    # @param [Hash] params ({})
    def list_requested_service_quota_change_history_by_quota(params = {}, options = {})
      req = build_request(:list_requested_service_quota_change_history_by_quota, params)
      req.send_request(options)
    end

    # Lists the quota increase requests in the specified quota request
    # template.
    #
    # @option params [String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [String] :aws_region
    #   Specifies the Amazon Web Services Region for which you made the
    #   request.
    #
    # @option params [String] :next_token
    #   Specifies a value for receiving additional results after you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional items
    #   exist beyond those included in the current response, the `NextToken`
    #   response element is present and has a value (is not null). Include
    #   that value as the `NextToken` request parameter in the next call to
    #   the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @return [Types::ListServiceQuotaIncreaseRequestsInTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceQuotaIncreaseRequestsInTemplateResponse#service_quota_increase_request_in_template_list #service_quota_increase_request_in_template_list} => Array&lt;Types::ServiceQuotaIncreaseRequestInTemplate&gt;
    #   * {Types::ListServiceQuotaIncreaseRequestsInTemplateResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_quota_increase_requests_in_template({
    #     service_code: "ServiceCode",
    #     aws_region: "AwsRegion",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.service_quota_increase_request_in_template_list #=> Array
    #   resp.service_quota_increase_request_in_template_list[0].service_code #=> String
    #   resp.service_quota_increase_request_in_template_list[0].service_name #=> String
    #   resp.service_quota_increase_request_in_template_list[0].quota_code #=> String
    #   resp.service_quota_increase_request_in_template_list[0].quota_name #=> String
    #   resp.service_quota_increase_request_in_template_list[0].desired_value #=> Float
    #   resp.service_quota_increase_request_in_template_list[0].aws_region #=> String
    #   resp.service_quota_increase_request_in_template_list[0].unit #=> String
    #   resp.service_quota_increase_request_in_template_list[0].global_quota #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotaIncreaseRequestsInTemplate AWS API Documentation
    #
    # @overload list_service_quota_increase_requests_in_template(params = {})
    # @param [Hash] params ({})
    def list_service_quota_increase_requests_in_template(params = {}, options = {})
      req = build_request(:list_service_quota_increase_requests_in_template, params)
      req.send_request(options)
    end

    # Lists the applied quota values for the specified Amazon Web Services
    # service. For some quotas, only the default values are available. If
    # the applied quota value is not available for a quota, the quota is not
    # retrieved. Filter responses to return applied quota values at either
    # the account level, resource level, or all levels.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [String] :next_token
    #   Specifies a value for receiving additional results after you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional items
    #   exist beyond those included in the current response, the `NextToken`
    #   response element is present and has a value (is not null). Include
    #   that value as the `NextToken` request parameter in the next call to
    #   the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @option params [String] :quota_code
    #   Specifies the quota identifier. To find the quota code for a specific
    #   quota, use the ListServiceQuotas operation, and look for the
    #   `QuotaCode` response in the output for the quota you want.
    #
    # @option params [String] :quota_applied_at_level
    #   Filters the response to return applied quota values for the `ACCOUNT`,
    #   `RESOURCE`, or `ALL` levels. `ACCOUNT` is the default.
    #
    # @return [Types::ListServiceQuotasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceQuotasResponse#next_token #next_token} => String
    #   * {Types::ListServiceQuotasResponse#quotas #quotas} => Array&lt;Types::ServiceQuota&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_quotas({
    #     service_code: "ServiceCode", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quota_code: "QuotaCode",
    #     quota_applied_at_level: "ACCOUNT", # accepts ACCOUNT, RESOURCE, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.quotas #=> Array
    #   resp.quotas[0].service_code #=> String
    #   resp.quotas[0].service_name #=> String
    #   resp.quotas[0].quota_arn #=> String
    #   resp.quotas[0].quota_code #=> String
    #   resp.quotas[0].quota_name #=> String
    #   resp.quotas[0].value #=> Float
    #   resp.quotas[0].unit #=> String
    #   resp.quotas[0].adjustable #=> Boolean
    #   resp.quotas[0].global_quota #=> Boolean
    #   resp.quotas[0].usage_metric.metric_namespace #=> String
    #   resp.quotas[0].usage_metric.metric_name #=> String
    #   resp.quotas[0].usage_metric.metric_dimensions #=> Hash
    #   resp.quotas[0].usage_metric.metric_dimensions["MetricDimensionName"] #=> String
    #   resp.quotas[0].usage_metric.metric_statistic_recommendation #=> String
    #   resp.quotas[0].period.period_value #=> Integer
    #   resp.quotas[0].period.period_unit #=> String, one of "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"
    #   resp.quotas[0].error_reason.error_code #=> String, one of "DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    #   resp.quotas[0].error_reason.error_message #=> String
    #   resp.quotas[0].quota_applied_at_level #=> String, one of "ACCOUNT", "RESOURCE", "ALL"
    #   resp.quotas[0].quota_context.context_scope #=> String, one of "RESOURCE", "ACCOUNT"
    #   resp.quotas[0].quota_context.context_scope_type #=> String
    #   resp.quotas[0].quota_context.context_id #=> String
    #   resp.quotas[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotas AWS API Documentation
    #
    # @overload list_service_quotas(params = {})
    # @param [Hash] params ({})
    def list_service_quotas(params = {}, options = {})
      req = build_request(:list_service_quotas, params)
      req.send_request(options)
    end

    # Lists the names and codes for the Amazon Web Services services
    # integrated with Service Quotas.
    #
    # @option params [String] :next_token
    #   Specifies a value for receiving additional results after you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional items
    #   exist beyond those included in the current response, the `NextToken`
    #   response element is present and has a value (is not null). Include
    #   that value as the `NextToken` request parameter in the next call to
    #   the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #   * {Types::ListServicesResponse#services #services} => Array&lt;Types::ServiceInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.services #=> Array
    #   resp.services[0].service_code #=> String
    #   resp.services[0].service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Returns a list of the tags assigned to the specified applied quota.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the applied quota for which you
    #   want to list tags. You can get this information by using the Service
    #   Quotas console, or by listing the quotas using the
    #   [list-service-quotas][1] CLI command or the [ListServiceQuotas][2]
    #   Amazon Web Services API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html
    #   [2]: https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds a quota increase request to your quota request template.
    #
    # @option params [required, String] :quota_code
    #   Specifies the quota identifier. To find the quota code for a specific
    #   quota, use the ListServiceQuotas operation, and look for the
    #   `QuotaCode` response in the output for the quota you want.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [required, String] :aws_region
    #   Specifies the Amazon Web Services Region to which the template
    #   applies.
    #
    # @option params [required, Float] :desired_value
    #   Specifies the new, increased value for the quota.
    #
    # @return [Types::PutServiceQuotaIncreaseRequestIntoTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutServiceQuotaIncreaseRequestIntoTemplateResponse#service_quota_increase_request_in_template #service_quota_increase_request_in_template} => Types::ServiceQuotaIncreaseRequestInTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_service_quota_increase_request_into_template({
    #     quota_code: "QuotaCode", # required
    #     service_code: "ServiceCode", # required
    #     aws_region: "AwsRegion", # required
    #     desired_value: 1.0, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_quota_increase_request_in_template.service_code #=> String
    #   resp.service_quota_increase_request_in_template.service_name #=> String
    #   resp.service_quota_increase_request_in_template.quota_code #=> String
    #   resp.service_quota_increase_request_in_template.quota_name #=> String
    #   resp.service_quota_increase_request_in_template.desired_value #=> Float
    #   resp.service_quota_increase_request_in_template.aws_region #=> String
    #   resp.service_quota_increase_request_in_template.unit #=> String
    #   resp.service_quota_increase_request_in_template.global_quota #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/PutServiceQuotaIncreaseRequestIntoTemplate AWS API Documentation
    #
    # @overload put_service_quota_increase_request_into_template(params = {})
    # @param [Hash] params ({})
    def put_service_quota_increase_request_into_template(params = {}, options = {})
      req = build_request(:put_service_quota_increase_request_into_template, params)
      req.send_request(options)
    end

    # Submits a quota increase request for the specified quota at the
    # account or resource level.
    #
    # @option params [required, String] :service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #
    # @option params [required, String] :quota_code
    #   Specifies the quota identifier. To find the quota code for a specific
    #   quota, use the ListServiceQuotas operation, and look for the
    #   `QuotaCode` response in the output for the quota you want.
    #
    # @option params [required, Float] :desired_value
    #   Specifies the new, increased value for the quota.
    #
    # @option params [String] :context_id
    #   Specifies the resource with an Amazon Resource Name (ARN).
    #
    # @option params [Boolean] :support_case_allowed
    #   Specifies if an Amazon Web Services Support case can be opened for the
    #   quota increase request. This parameter is optional.
    #
    #   By default, this flag is set to `True` and Amazon Web Services may
    #   create a support case for some quota increase requests. You can set
    #   this flag to `False` if you do not want a support case created when
    #   you request a quota increase. If you set the flag to `False`, Amazon
    #   Web Services does not open a support case and updates the request
    #   status to `Not approved`.
    #
    # @return [Types::RequestServiceQuotaIncreaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestServiceQuotaIncreaseResponse#requested_quota #requested_quota} => Types::RequestedServiceQuotaChange
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_service_quota_increase({
    #     service_code: "ServiceCode", # required
    #     quota_code: "QuotaCode", # required
    #     desired_value: 1.0, # required
    #     context_id: "QuotaContextId",
    #     support_case_allowed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.requested_quota.id #=> String
    #   resp.requested_quota.case_id #=> String
    #   resp.requested_quota.service_code #=> String
    #   resp.requested_quota.service_name #=> String
    #   resp.requested_quota.quota_code #=> String
    #   resp.requested_quota.quota_name #=> String
    #   resp.requested_quota.desired_value #=> Float
    #   resp.requested_quota.status #=> String, one of "PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED", "NOT_APPROVED", "INVALID_REQUEST"
    #   resp.requested_quota.created #=> Time
    #   resp.requested_quota.last_updated #=> Time
    #   resp.requested_quota.requester #=> String
    #   resp.requested_quota.quota_arn #=> String
    #   resp.requested_quota.global_quota #=> Boolean
    #   resp.requested_quota.unit #=> String
    #   resp.requested_quota.quota_requested_at_level #=> String, one of "ACCOUNT", "RESOURCE", "ALL"
    #   resp.requested_quota.quota_context.context_scope #=> String, one of "RESOURCE", "ACCOUNT"
    #   resp.requested_quota.quota_context.context_scope_type #=> String
    #   resp.requested_quota.quota_context.context_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/RequestServiceQuotaIncrease AWS API Documentation
    #
    # @overload request_service_quota_increase(params = {})
    # @param [Hash] params ({})
    def request_service_quota_increase(params = {}, options = {})
      req = build_request(:request_service_quota_increase, params)
      req.send_request(options)
    end

    # Adds tags to the specified applied quota. You can include one or more
    # tags to add to the quota.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the applied quota. You can get this
    #   information by using the Service Quotas console, or by listing the
    #   quotas using the [list-service-quotas][1] CLI command or the
    #   [ListServiceQuotas][2] Amazon Web Services API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html
    #   [2]: https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags that you want to add to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified applied quota. You can specify one or
    # more tags to remove.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the applied quota that you want to
    #   untag. You can get this information by using the Service Quotas
    #   console, or by listing the quotas using the [list-service-quotas][1]
    #   CLI command or the [ListServiceQuotas][2] Amazon Web Services API
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html
    #   [2]: https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags that you want to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ServiceQuotas')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-servicequotas'
      context[:gem_version] = '1.58.0'
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
