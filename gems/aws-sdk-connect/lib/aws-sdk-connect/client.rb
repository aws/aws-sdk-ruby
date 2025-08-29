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

module Aws::Connect
  # An API client for Connect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Connect::Client.new(
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

    @identifier = :connect

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
    add_plugin(Aws::Connect::Plugins::Endpoints)

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
    #   @option options [Aws::Connect::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Connect::EndpointParameters`.
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

    # Activates an evaluation form in the specified Amazon Connect instance.
    # After the evaluation form is activated, it is available to start new
    # evaluations based on the form.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [required, Integer] :evaluation_form_version
    #   The version of the evaluation form to activate. If the version
    #   property is not provided, the latest version of the evaluation form is
    #   activated.
    #
    # @return [Types::ActivateEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateEvaluationFormResponse#evaluation_form_id #evaluation_form_id} => String
    #   * {Types::ActivateEvaluationFormResponse#evaluation_form_arn #evaluation_form_arn} => String
    #   * {Types::ActivateEvaluationFormResponse#evaluation_form_version #evaluation_form_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_id #=> String
    #   resp.evaluation_form_arn #=> String
    #   resp.evaluation_form_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ActivateEvaluationForm AWS API Documentation
    #
    # @overload activate_evaluation_form(params = {})
    # @param [Hash] params ({})
    def activate_evaluation_form(params = {}, options = {})
      req = build_request(:activate_evaluation_form, params)
      req.send_request(options)
    end

    # Associates the specified dataset for a Amazon Connect instance with
    # the target account. You can associate only one dataset in a single
    # call.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :data_set_id
    #   The identifier of the dataset to associate with the target account.
    #
    # @option params [String] :target_account_id
    #   The identifier of the target account. Use to associate a dataset to a
    #   different account than the one containing the Amazon Connect instance.
    #   If not specified, by default this value is the Amazon Web Services
    #   account that has the Amazon Connect instance.
    #
    # @return [Types::AssociateAnalyticsDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAnalyticsDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::AssociateAnalyticsDataSetResponse#target_account_id #target_account_id} => String
    #   * {Types::AssociateAnalyticsDataSetResponse#resource_share_id #resource_share_id} => String
    #   * {Types::AssociateAnalyticsDataSetResponse#resource_share_arn #resource_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_analytics_data_set({
    #     instance_id: "InstanceId", # required
    #     data_set_id: "DataSetId", # required
    #     target_account_id: "AWSAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_id #=> String
    #   resp.target_account_id #=> String
    #   resp.resource_share_id #=> String
    #   resp.resource_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateAnalyticsDataSet AWS API Documentation
    #
    # @overload associate_analytics_data_set(params = {})
    # @param [Hash] params ({})
    def associate_analytics_data_set(params = {}, options = {})
      req = build_request(:associate_analytics_data_set, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Associates an approved origin to an Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :origin
    #   The domain to add to your allow list.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_approved_origin({
    #     instance_id: "InstanceId", # required
    #     origin: "Origin", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateApprovedOrigin AWS API Documentation
    #
    # @overload associate_approved_origin(params = {})
    # @param [Hash] params ({})
    def associate_approved_origin(params = {}, options = {})
      req = build_request(:associate_approved_origin, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Allows the specified Amazon Connect instance to access the specified
    # Amazon Lex or Amazon Lex V2 bot.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Types::LexBot] :lex_bot
    #   Configuration information of an Amazon Lex bot.
    #
    # @option params [Types::LexV2Bot] :lex_v2_bot
    #   The Amazon Lex V2 bot to associate with the instance.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_bot({
    #     instance_id: "InstanceId", # required
    #     lex_bot: {
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #     lex_v2_bot: {
    #       alias_arn: "AliasArn",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateBot AWS API Documentation
    #
    # @overload associate_bot(params = {})
    # @param [Hash] params ({})
    def associate_bot(params = {}, options = {})
      req = build_request(:associate_bot, params)
      req.send_request(options)
    end

    # Associates an existing vocabulary as the default. Contact Lens for
    # Amazon Connect uses the vocabulary in post-call and real-time analysis
    # sessions for the given language.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #
    # @option params [String] :vocabulary_id
    #   The identifier of the custom vocabulary. If this is empty, the default
    #   is set to none.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_default_vocabulary({
    #     instance_id: "InstanceId", # required
    #     language_code: "ar-AE", # required, accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN, en-NZ, en-ZA, ca-ES, da-DK, fi-FI, id-ID, ms-MY, nl-NL, no-NO, pl-PL, sv-SE, tl-PH
    #     vocabulary_id: "VocabularyId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateDefaultVocabulary AWS API Documentation
    #
    # @overload associate_default_vocabulary(params = {})
    # @param [Hash] params ({})
    def associate_default_vocabulary(params = {}, options = {})
      req = build_request(:associate_default_vocabulary, params)
      req.send_request(options)
    end

    # Associates a connect resource to a flow.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource.
    #
    #   * Amazon Web Services End User Messaging SMS phone number ARN when
    #     using `SMS_PHONE_NUMBER`
    #
    #   * Amazon Web Services End User Messaging Social phone number ARN when
    #     using `WHATSAPP_MESSAGING_PHONE_NUMBER`
    #
    # @option params [required, String] :flow_id
    #   The identifier of the flow.
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_flow({
    #     instance_id: "InstanceId", # required
    #     resource_id: "ARN", # required
    #     flow_id: "ARN", # required
    #     resource_type: "SMS_PHONE_NUMBER", # required, accepts SMS_PHONE_NUMBER, INBOUND_EMAIL, OUTBOUND_EMAIL, ANALYTICS_CONNECTOR, WHATSAPP_MESSAGING_PHONE_NUMBER
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateFlow AWS API Documentation
    #
    # @overload associate_flow(params = {})
    # @param [Hash] params ({})
    def associate_flow(params = {}, options = {})
      req = build_request(:associate_flow, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Associates a storage resource type for the first time. You can only
    # associate one type of storage configuration in a single call. This
    # means, for example, that you can't define an instance with multiple
    # S3 buckets for storing chat transcripts.
    #
    # This API does not create a resource that doesn't exist. It only
    # associates it to the instance. Ensure that the resource being
    # specified in the storage configuration, like an S3 bucket, exists when
    # being used for association.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :resource_type
    #   A valid resource type. To [enable streaming for real-time analysis of
    #   contacts][1], use the following types:
    #
    #   * For chat contacts, use `REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS`.
    #
    #   * For voice contacts, use `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS`.
    #
    #   <note markdown="1"> `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` is deprecated, but it is still
    #   supported and will apply only to VOICE channel contacts. Use
    #   `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS` for voice contacts moving
    #   forward.
    #
    #    If you have previously associated a stream with
    #   `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS`, no action is needed to update
    #   the stream to `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-contact-analysis-segment-streams.html
    #
    # @option params [required, Types::InstanceStorageConfig] :storage_config
    #   A valid storage type.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::AssociateInstanceStorageConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateInstanceStorageConfigResponse#association_id #association_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_instance_storage_config({
    #     instance_id: "InstanceId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS, REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS, REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS, EMAIL_MESSAGES
    #     storage_config: { # required
    #       association_id: "AssociationId",
    #       storage_type: "S3", # required, accepts S3, KINESIS_VIDEO_STREAM, KINESIS_STREAM, KINESIS_FIREHOSE
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "Prefix", # required
    #         encryption_config: {
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: "Prefix", # required
    #         retention_period_hours: 1, # required
    #         encryption_config: { # required
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: "ARN", # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: "ARN", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateInstanceStorageConfig AWS API Documentation
    #
    # @overload associate_instance_storage_config(params = {})
    # @param [Hash] params ({})
    def associate_instance_storage_config(params = {}, options = {})
      req = build_request(:associate_instance_storage_config, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Allows the specified Amazon Connect instance to access the specified
    # Lambda function.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :function_arn
    #   The Amazon Resource Name (ARN) for the Lambda function being
    #   associated. Maximum number of characters allowed is 140.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_lambda_function({
    #     instance_id: "InstanceId", # required
    #     function_arn: "FunctionArn", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateLambdaFunction AWS API Documentation
    #
    # @overload associate_lambda_function(params = {})
    # @param [Hash] params ({})
    def associate_lambda_function(params = {}, options = {})
      req = build_request(:associate_lambda_function, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Allows the specified Amazon Connect instance to access the specified
    # Amazon Lex V1 bot. This API only supports the association of Amazon
    # Lex V1 bots.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Types::LexBot] :lex_bot
    #   The Amazon Lex bot to associate with the instance.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_lex_bot({
    #     instance_id: "InstanceId", # required
    #     lex_bot: { # required
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateLexBot AWS API Documentation
    #
    # @overload associate_lex_bot(params = {})
    # @param [Hash] params ({})
    def associate_lex_bot(params = {}, options = {})
      req = build_request(:associate_lex_bot, params)
      req.send_request(options)
    end

    # Associates a flow with a phone number claimed to your Amazon Connect
    # instance.
    #
    # If the number is claimed to a traffic distribution group, and you are
    # calling this API using an instance in the Amazon Web Services Region
    # where the traffic distribution group was created, you can use either a
    # full phone number ARN or UUID value for the `PhoneNumberId` URI
    # request parameter. However, if the number is claimed to a traffic
    # distribution group and you are calling this API using an instance in
    # the alternate Amazon Web Services Region associated with the traffic
    # distribution group, you must provide a full phone number ARN. If a
    # UUID is provided in this scenario, you will receive a
    # `ResourceNotFoundException`.
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_number_contact_flow({
    #     phone_number_id: "PhoneNumberId", # required
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociatePhoneNumberContactFlow AWS API Documentation
    #
    # @overload associate_phone_number_contact_flow(params = {})
    # @param [Hash] params ({})
    def associate_phone_number_contact_flow(params = {}, options = {})
      req = build_request(:associate_phone_number_contact_flow, params)
      req.send_request(options)
    end

    # Associates a set of quick connects with a queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, Array<String>] :quick_connect_ids
    #   The quick connects to associate with this queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_queue_quick_connects({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     quick_connect_ids: ["QuickConnectId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateQueueQuickConnects AWS API Documentation
    #
    # @overload associate_queue_quick_connects(params = {})
    # @param [Hash] params ({})
    def associate_queue_quick_connects(params = {}, options = {})
      req = build_request(:associate_queue_quick_connects, params)
      req.send_request(options)
    end

    # Associates a set of queues with a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The queues to associate with this routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_configs: [ # required
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT, TASK, EMAIL
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateRoutingProfileQueues AWS API Documentation
    #
    # @overload associate_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def associate_routing_profile_queues(params = {}, options = {})
      req = build_request(:associate_routing_profile_queues, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Associates a security key to the instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :key
    #   A valid security key in PEM format as a String.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::AssociateSecurityKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateSecurityKeyResponse#association_id #association_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_security_key({
    #     instance_id: "InstanceId", # required
    #     key: "PEM", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateSecurityKey AWS API Documentation
    #
    # @overload associate_security_key(params = {})
    # @param [Hash] params ({})
    def associate_security_key(params = {}, options = {})
      req = build_request(:associate_security_key, params)
      req.send_request(options)
    end

    # Associates an agent with a traffic distribution group. This API can be
    # called only in the Region where the traffic distribution group is
    # created.
    #
    # @option params [required, String] :traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN of the traffic distribution group.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account. This can be the ID or the ARN of
    #   the user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_traffic_distribution_group_user({
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateTrafficDistributionGroupUser AWS API Documentation
    #
    # @overload associate_traffic_distribution_group_user(params = {})
    # @param [Hash] params ({})
    def associate_traffic_distribution_group_user(params = {}, options = {})
      req = build_request(:associate_traffic_distribution_group_user, params)
      req.send_request(options)
    end

    # Associates a set of proficiencies with a user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN of the instance).
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, Array<Types::UserProficiency>] :user_proficiencies
    #   The proficiencies to associate with the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_user_proficiencies({
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #     user_proficiencies: [ # required
    #       {
    #         attribute_name: "PredefinedAttributeName", # required
    #         attribute_value: "PredefinedAttributeStringValue", # required
    #         level: 1.0, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateUserProficiencies AWS API Documentation
    #
    # @overload associate_user_proficiencies(params = {})
    # @param [Hash] params ({})
    def associate_user_proficiencies(params = {}, options = {})
      req = build_request(:associate_user_proficiencies, params)
      req.send_request(options)
    end

    # Associates a list of analytics datasets for a given Amazon Connect
    # instance to a target account. You can associate multiple datasets in a
    # single call.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Array<String>] :data_set_ids
    #   An array of dataset identifiers to associate.
    #
    # @option params [String] :target_account_id
    #   The identifier of the target account. Use to associate a dataset to a
    #   different account than the one containing the Amazon Connect instance.
    #   If not specified, by default this value is the Amazon Web Services
    #   account that has the Amazon Connect instance.
    #
    # @return [Types::BatchAssociateAnalyticsDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateAnalyticsDataSetResponse#created #created} => Array&lt;Types::AnalyticsDataAssociationResult&gt;
    #   * {Types::BatchAssociateAnalyticsDataSetResponse#errors #errors} => Array&lt;Types::ErrorResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_analytics_data_set({
    #     instance_id: "InstanceId", # required
    #     data_set_ids: ["DataSetId"], # required
    #     target_account_id: "AWSAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.created #=> Array
    #   resp.created[0].data_set_id #=> String
    #   resp.created[0].target_account_id #=> String
    #   resp.created[0].resource_share_id #=> String
    #   resp.created[0].resource_share_arn #=> String
    #   resp.created[0].resource_share_status #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchAssociateAnalyticsDataSet AWS API Documentation
    #
    # @overload batch_associate_analytics_data_set(params = {})
    # @param [Hash] params ({})
    def batch_associate_analytics_data_set(params = {}, options = {})
      req = build_request(:batch_associate_analytics_data_set, params)
      req.send_request(options)
    end

    # Removes a list of analytics datasets associated with a given Amazon
    # Connect instance. You can disassociate multiple datasets in a single
    # call.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Array<String>] :data_set_ids
    #   An array of associated dataset identifiers to remove.
    #
    # @option params [String] :target_account_id
    #   The identifier of the target account. Use to disassociate a dataset
    #   from a different account than the one containing the Amazon Connect
    #   instance. If not specified, by default this value is the Amazon Web
    #   Services account that has the Amazon Connect instance.
    #
    # @return [Types::BatchDisassociateAnalyticsDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateAnalyticsDataSetResponse#deleted #deleted} => Array&lt;String&gt;
    #   * {Types::BatchDisassociateAnalyticsDataSetResponse#errors #errors} => Array&lt;Types::ErrorResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_analytics_data_set({
    #     instance_id: "InstanceId", # required
    #     data_set_ids: ["DataSetId"], # required
    #     target_account_id: "AWSAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted #=> Array
    #   resp.deleted[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchDisassociateAnalyticsDataSet AWS API Documentation
    #
    # @overload batch_disassociate_analytics_data_set(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_analytics_data_set(params = {}, options = {})
      req = build_request(:batch_disassociate_analytics_data_set, params)
      req.send_request(options)
    end

    # Allows you to retrieve metadata about multiple attached files on an
    # associated resource. Each attached file provided in the input list
    # must be associated with the input AssociatedResourceArn.
    #
    # @option params [required, Array<String>] :file_ids
    #   The unique identifiers of the attached file resource.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Connect instance.
    #
    # @option params [required, String] :associated_resource_arn
    #   The resource to which the attached file is (being) uploaded to. The
    #   supported resources are [Cases][1] and [Email][2].
    #
    #   <note markdown="1"> This value must be a valid ARN.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/cases.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html
    #
    # @return [Types::BatchGetAttachedFileMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAttachedFileMetadataResponse#files #files} => Array&lt;Types::AttachedFile&gt;
    #   * {Types::BatchGetAttachedFileMetadataResponse#errors #errors} => Array&lt;Types::AttachedFileError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_attached_file_metadata({
    #     file_ids: ["FileId"], # required
    #     instance_id: "InstanceId", # required
    #     associated_resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.files #=> Array
    #   resp.files[0].creation_time #=> String
    #   resp.files[0].file_arn #=> String
    #   resp.files[0].file_id #=> String
    #   resp.files[0].file_name #=> String
    #   resp.files[0].file_size_in_bytes #=> Integer
    #   resp.files[0].file_status #=> String, one of "APPROVED", "REJECTED", "PROCESSING", "FAILED"
    #   resp.files[0].created_by.connect_user_arn #=> String
    #   resp.files[0].created_by.aws_identity_arn #=> String
    #   resp.files[0].file_use_case_type #=> String, one of "EMAIL_MESSAGE", "ATTACHMENT"
    #   resp.files[0].associated_resource_arn #=> String
    #   resp.files[0].tags #=> Hash
    #   resp.files[0].tags["TagKey"] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].file_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchGetAttachedFileMetadata AWS API Documentation
    #
    # @overload batch_get_attached_file_metadata(params = {})
    # @param [Hash] params ({})
    def batch_get_attached_file_metadata(params = {}, options = {})
      req = build_request(:batch_get_attached_file_metadata, params)
      req.send_request(options)
    end

    # Retrieve the flow associations for the given resources.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Array<String>] :resource_ids
    #   A list of resource identifiers to retrieve flow associations.
    #
    #   * Amazon Web Services End User Messaging SMS phone number ARN when
    #     using `SMS_PHONE_NUMBER`
    #
    #   * Amazon Web Services End User Messaging Social phone number ARN when
    #     using `WHATSAPP_MESSAGING_PHONE_NUMBER`
    #
    # @option params [String] :resource_type
    #   The type of resource association.
    #
    # @return [Types::BatchGetFlowAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFlowAssociationResponse#flow_association_summary_list #flow_association_summary_list} => Array&lt;Types::FlowAssociationSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_flow_association({
    #     instance_id: "InstanceId", # required
    #     resource_ids: ["ARN"], # required
    #     resource_type: "WHATSAPP_MESSAGING_PHONE_NUMBER", # accepts WHATSAPP_MESSAGING_PHONE_NUMBER, VOICE_PHONE_NUMBER, INBOUND_EMAIL, OUTBOUND_EMAIL, ANALYTICS_CONNECTOR
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_association_summary_list #=> Array
    #   resp.flow_association_summary_list[0].resource_id #=> String
    #   resp.flow_association_summary_list[0].flow_id #=> String
    #   resp.flow_association_summary_list[0].resource_type #=> String, one of "WHATSAPP_MESSAGING_PHONE_NUMBER", "VOICE_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchGetFlowAssociation AWS API Documentation
    #
    # @overload batch_get_flow_association(params = {})
    # @param [Hash] params ({})
    def batch_get_flow_association(params = {}, options = {})
      req = build_request(:batch_get_flow_association, params)
      req.send_request(options)
    end

    # <note markdown="1"> Only the Amazon Connect outbound campaigns service principal is
    # allowed to assume a role in your account and call this API.
    #
    #  </note>
    #
    # Allows you to create a batch of contacts in Amazon Connect. The
    # outbound campaigns capability ingests dial requests via the
    # [PutDialRequestBatch][1] API. It then uses BatchPutContact to create
    # contacts corresponding to those dial requests. If agents are
    # available, the dial requests are dialed out, which results in a voice
    # call. The resulting voice call uses the same contactId that was
    # created by BatchPutContact.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect-outbound/latest/APIReference/API_PutDialRequestBatch.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Array<Types::ContactDataRequest>] :contact_data_request_list
    #   List of individual contact requests.
    #
    # @return [Types::BatchPutContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutContactResponse#successful_request_list #successful_request_list} => Array&lt;Types::SuccessfulRequest&gt;
    #   * {Types::BatchPutContactResponse#failed_request_list #failed_request_list} => Array&lt;Types::FailedRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_contact({
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     contact_data_request_list: [ # required
    #       {
    #         system_endpoint: {
    #           type: "TELEPHONE_NUMBER", # accepts TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS
    #           address: "EndpointAddress",
    #         },
    #         customer_endpoint: {
    #           type: "TELEPHONE_NUMBER", # accepts TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS
    #           address: "EndpointAddress",
    #         },
    #         request_identifier: "RequestIdentifier",
    #         queue_id: "QueueId",
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         campaign: {
    #           campaign_id: "CampaignId",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_request_list #=> Array
    #   resp.successful_request_list[0].request_identifier #=> String
    #   resp.successful_request_list[0].contact_id #=> String
    #   resp.failed_request_list #=> Array
    #   resp.failed_request_list[0].request_identifier #=> String
    #   resp.failed_request_list[0].failure_reason_code #=> String, one of "INVALID_ATTRIBUTE_KEY", "INVALID_CUSTOMER_ENDPOINT", "INVALID_SYSTEM_ENDPOINT", "INVALID_QUEUE", "MISSING_CAMPAIGN", "MISSING_CUSTOMER_ENDPOINT", "MISSING_QUEUE_ID_AND_SYSTEM_ENDPOINT", "REQUEST_THROTTLED", "IDEMPOTENCY_EXCEPTION", "INTERNAL_ERROR"
    #   resp.failed_request_list[0].failure_reason_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchPutContact AWS API Documentation
    #
    # @overload batch_put_contact(params = {})
    # @param [Hash] params ({})
    def batch_put_contact(params = {}, options = {})
      req = build_request(:batch_put_contact, params)
      req.send_request(options)
    end

    # Claims an available phone number to your Amazon Connect instance or
    # traffic distribution group. You can call this API only in the same
    # Amazon Web Services Region where the Amazon Connect instance or
    # traffic distribution group was created.
    #
    # For more information about how to use this operation, see [Claim a
    # phone number in your country][1] and [Claim phone numbers to traffic
    # distribution groups][2] in the *Amazon Connect Administrator Guide*.
    #
    # You can call the [SearchAvailablePhoneNumbers][3] API for available
    # phone numbers that you can claim. Call the [DescribePhoneNumber][4]
    # API to verify the status of a previous [ClaimPhoneNumber][5]
    # operation.
    #
    # If you plan to claim and release numbers frequently, contact us for a
    # service quota exception. Otherwise, it is possible you will be blocked
    # from claiming and releasing any more numbers until up to 180 days past
    # the oldest number released has expired.
    #
    # By default you can claim and release up to 200% of your maximum number
    # of active phone numbers. If you claim and release phone numbers using
    # the UI or API during a rolling 180 day cycle that exceeds 200% of your
    # phone number service level quota, you will be blocked from claiming
    # any more numbers until 180 days past the oldest number released has
    # expired.
    #
    # For example, if you already have 99 claimed numbers and a service
    # level quota of 99 phone numbers, and in any 180 day period you release
    # 99, claim 99, and then release 99, you will have exceeded the 200%
    # limit. At that point you are blocked from claiming any more numbers
    # until you open an Amazon Web Services support ticket.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-number.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-numbers-traffic-distribution-groups.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html
    # [4]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    # [5]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html
    #
    # @option params [String] :target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
    #   distribution groups that phone number inbound traffic is routed
    #   through. You must enter `InstanceId` or `TargetArn`.
    #
    # @option params [String] :instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance. You must enter `InstanceId` or
    #   `TargetArn`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :phone_number
    #   The phone number you want to claim. Phone numbers are formatted `[+]
    #   [country code] [subscriber number including area code]`.
    #
    # @option params [String] :phone_number_description
    #   The description of the phone number.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   Pattern:
    #   `^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$`
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::ClaimPhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClaimPhoneNumberResponse#phone_number_id #phone_number_id} => String
    #   * {Types::ClaimPhoneNumberResponse#phone_number_arn #phone_number_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.claim_phone_number({
    #     target_arn: "ARN",
    #     instance_id: "InstanceId",
    #     phone_number: "PhoneNumber", # required
    #     phone_number_description: "PhoneNumberDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_id #=> String
    #   resp.phone_number_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ClaimPhoneNumber AWS API Documentation
    #
    # @overload claim_phone_number(params = {})
    # @param [Hash] params ({})
    def claim_phone_number(params = {}, options = {})
      req = build_request(:claim_phone_number, params)
      req.send_request(options)
    end

    # Allows you to confirm that the attached file has been uploaded using
    # the pre-signed URL provided in the StartAttachedFileUpload API.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :file_id
    #   The unique identifier of the attached file resource.
    #
    # @option params [required, String] :associated_resource_arn
    #   The resource to which the attached file is (being) uploaded to. The
    #   supported resources are [Cases][1] and [Email][2].
    #
    #   <note markdown="1"> This value must be a valid ARN.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/cases.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_attached_file_upload({
    #     instance_id: "InstanceId", # required
    #     file_id: "FileId", # required
    #     associated_resource_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CompleteAttachedFileUpload AWS API Documentation
    #
    # @overload complete_attached_file_upload(params = {})
    # @param [Hash] params ({})
    def complete_attached_file_upload(params = {}, options = {})
      req = build_request(:complete_attached_file_upload, params)
      req.send_request(options)
    end

    # Creates an agent status for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the status.
    #
    # @option params [String] :description
    #   The description of the status.
    #
    # @option params [required, String] :state
    #   The state of the status.
    #
    # @option params [Integer] :display_order
    #   The display order of the status.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateAgentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentStatusResponse#agent_status_arn #agent_status_arn} => String
    #   * {Types::CreateAgentStatusResponse#agent_status_id #agent_status_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_status({
    #     instance_id: "InstanceId", # required
    #     name: "AgentStatusName", # required
    #     description: "AgentStatusDescription",
    #     state: "ENABLED", # required, accepts ENABLED, DISABLED
    #     display_order: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_status_arn #=> String
    #   resp.agent_status_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateAgentStatus AWS API Documentation
    #
    # @overload create_agent_status(params = {})
    # @param [Hash] params ({})
    def create_agent_status(params = {}, options = {})
      req = build_request(:create_agent_status, params)
      req.send_request(options)
    end

    # Only the VOICE, EMAIL, and TASK channels are supported.
    #
    #  * For VOICE: The supported initiation method is `TRANSFER`. The
    #   contacts created with this initiation method have a subtype
    #   `connect:ExternalAudio`.
    #
    # * For EMAIL: The supported initiation methods are `OUTBOUND`,
    #   `AGENT_REPLY`, and `FLOW`.
    #
    # * For TASK: The supported initiation method is `API`. Contacts created
    #   with this API have a sub-type of `connect:ExternalTask`.
    #
    # Creates a new VOICE, EMAIL, or TASK contact.
    #
    # After a contact is created, you can move it to the desired state by
    # using the `InitiateAs` parameter. While you can use API to create task
    # contacts that are in the `COMPLETED` state, you must contact Amazon
    # Web Services Support before using it for bulk import use cases. Bulk
    # import causes your requests to be throttled or fail if your
    # CreateContact limits aren't high enough.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [String] :related_contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [Hash<String,Types::Reference>] :references
    #   A formatted URL that is shown to an agent in the Contact Control Panel
    #   (CCP). Tasks can have the following reference types at the time of
    #   creation: `URL` \| `NUMBER` \| `STRING` \| `DATE` \| `EMAIL` \|
    #   `ATTACHMENT`.
    #
    # @option params [required, String] :channel
    #   The channel for the contact.
    #
    #   The CHAT channel is not supported. The following information is
    #   incorrect. We're working to correct it.
    #
    # @option params [required, String] :initiation_method
    #   Indicates how the contact was initiated.
    #
    #   CreateContact only supports the following initiation methods. Valid
    #   values by channel are:
    #
    #    * For VOICE: `TRANSFER` and the subtype `connect:ExternalAudio`
    #
    #   * For EMAIL: `OUTBOUND` \| `AGENT_REPLY` \| `FLOW`
    #
    #   * For TASK: `API`
    #
    #    The other channels listed below are incorrect. We're working to
    #   correct this information.
    #
    # @option params [Integer] :expiry_duration_in_minutes
    #   Number of minutes the contact will be active for before expiring
    #
    # @option params [Types::UserInfo] :user_info
    #   User details for the contact
    #
    #   UserInfo is required when creating an EMAIL contact with `OUTBOUND`
    #   and `AGENT_REPLY` contact initiation methods.
    #
    # @option params [String] :initiate_as
    #   Initial state of the contact when it's created. Only TASK channel
    #   contacts can be initiated with `COMPLETED` state.
    #
    # @option params [String] :name
    #   The name of a the contact.
    #
    # @option params [String] :description
    #   A description of the contact.
    #
    # @option params [Hash<String,Types::SegmentAttributeValue>] :segment_attributes
    #   A set of system defined key-value pairs stored on individual contact
    #   segments (unique contact ID) using an attribute map. The attributes
    #   are standard Amazon Connect attributes. They can be accessed in flows.
    #
    #   Attribute keys can include only alphanumeric, -, and \_.
    #
    #   This field can be used to set Segment Contact Expiry as a duration in
    #   minutes.
    #
    #   <note markdown="1"> To set contact expiry, a ValueMap must be specified containing the
    #   integer number of minutes the contact will be active for before
    #   expiring, with `SegmentAttributes` like \{ ` "connect:ContactExpiry":
    #   {"ValueMap" : { "ExpiryDuration": { "ValueInteger": 135}}}}`.
    #
    #    </note>
    #
    # @option params [String] :previous_contact_id
    #   The ID of the previous contact when creating a transfer contact. This
    #   value can be provided only for external audio contacts. For more
    #   information, see [Integrate Amazon Connect Contact Lens with external
    #   voice systems][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html
    #
    # @return [Types::CreateContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactResponse#contact_id #contact_id} => String
    #   * {Types::CreateContactResponse#contact_arn #contact_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact({
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     related_contact_id: "ContactId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL", # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #         status: "AVAILABLE", # accepts AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason",
    #       },
    #     },
    #     channel: "VOICE", # required, accepts VOICE, CHAT, TASK, EMAIL
    #     initiation_method: "INBOUND", # required, accepts INBOUND, OUTBOUND, TRANSFER, QUEUE_TRANSFER, CALLBACK, API, DISCONNECT, MONITOR, EXTERNAL_OUTBOUND, WEBRTC_API, AGENT_REPLY, FLOW
    #     expiry_duration_in_minutes: 1,
    #     user_info: {
    #       user_id: "AgentResourceId",
    #     },
    #     initiate_as: "CONNECTED_TO_USER", # accepts CONNECTED_TO_USER, COMPLETED
    #     name: "Name",
    #     description: "Description",
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           },
    #         },
    #         value_integer: 1,
    #       },
    #     },
    #     previous_contact_id: "ContactId",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.contact_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContact AWS API Documentation
    #
    # @overload create_contact(params = {})
    # @param [Hash] params ({})
    def create_contact(params = {}, options = {})
      req = build_request(:create_contact, params)
      req.send_request(options)
    end

    # Creates a flow for the specified Amazon Connect instance.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :name
    #   The name of the flow.
    #
    # @option params [required, String] :type
    #   The type of the flow. For descriptions of the available types, see
    #   [Choose a flow type][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types
    #
    # @option params [String] :description
    #   The description of the flow.
    #
    # @option params [required, String] :content
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 256000.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
    #
    # @option params [String] :status
    #   Indicates the flow status as either `SAVED` or `PUBLISHED`. The
    #   `PUBLISHED` status will initiate validation on the content. the
    #   `SAVED` status does not initiate validation of the content. `SAVED` \|
    #   `PUBLISHED`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateContactFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactFlowResponse#contact_flow_id #contact_flow_id} => String
    #   * {Types::CreateContactFlowResponse#contact_flow_arn #contact_flow_arn} => String
    #   * {Types::CreateContactFlowResponse#flow_content_sha_256 #flow_content_sha_256} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_flow({
    #     instance_id: "InstanceId", # required
    #     name: "ContactFlowName", # required
    #     type: "CONTACT_FLOW", # required, accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER, CAMPAIGN
    #     description: "ContactFlowDescription",
    #     content: "ContactFlowContent", # required
    #     status: "PUBLISHED", # accepts PUBLISHED, SAVED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_id #=> String
    #   resp.contact_flow_arn #=> String
    #   resp.flow_content_sha_256 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlow AWS API Documentation
    #
    # @overload create_contact_flow(params = {})
    # @param [Hash] params ({})
    def create_contact_flow(params = {}, options = {})
      req = build_request(:create_contact_flow, params)
      req.send_request(options)
    end

    # Creates a flow module for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the flow module.
    #
    # @option params [String] :description
    #   The description of the flow module.
    #
    # @option params [required, String] :content
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateContactFlowModuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactFlowModuleResponse#id #id} => String
    #   * {Types::CreateContactFlowModuleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_flow_module({
    #     instance_id: "InstanceId", # required
    #     name: "ContactFlowModuleName", # required
    #     description: "ContactFlowModuleDescription",
    #     content: "ContactFlowModuleContent", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlowModule AWS API Documentation
    #
    # @overload create_contact_flow_module(params = {})
    # @param [Hash] params ({})
    def create_contact_flow_module(params = {}, options = {})
      req = build_request(:create_contact_flow_module, params)
      req.send_request(options)
    end

    # Publishes a new version of the flow provided. Versions are immutable
    # and monotonically increasing. If the `FlowContentSha256` provided is
    # different from the `FlowContentSha256` of the `$LATEST` published flow
    # content, then an error is returned. This API only supports creating
    # versions for flows of type `Campaign`.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :description
    #   The description of the flow version.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [String] :flow_content_sha_256
    #   Indicates the checksum value of the flow content.
    #
    # @option params [Integer] :contact_flow_version
    #   The identifier of the flow version.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time
    #   The Amazon Web Services Region where this resource was last modified.
    #
    # @option params [String] :last_modified_region
    #   The Amazon Web Services Region where this resource was last modified.
    #
    # @return [Types::CreateContactFlowVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactFlowVersionResponse#contact_flow_arn #contact_flow_arn} => String
    #   * {Types::CreateContactFlowVersionResponse#version #version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_flow_version({
    #     instance_id: "InstanceId", # required
    #     description: "ContactFlowDescription",
    #     contact_flow_id: "ARN", # required
    #     flow_content_sha_256: "FlowContentSha256",
    #     contact_flow_version: 1,
    #     last_modified_time: Time.now,
    #     last_modified_region: "RegionName",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_arn #=> String
    #   resp.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlowVersion AWS API Documentation
    #
    # @overload create_contact_flow_version(params = {})
    # @param [Hash] params ({})
    def create_contact_flow_version(params = {}, options = {})
      req = build_request(:create_contact_flow_version, params)
      req.send_request(options)
    end

    # Create new email address in the specified Amazon Connect instance. For
    # more information about email addresses, see [Create email
    # addresses][1] in the Amazon Connect Administrator Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html
    #
    # @option params [String] :description
    #   The description of the email address.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :email_address
    #   The email address, including the domain.
    #
    # @option params [String] :display_name
    #   The display name of email address
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateEmailAddressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEmailAddressResponse#email_address_id #email_address_id} => String
    #   * {Types::CreateEmailAddressResponse#email_address_arn #email_address_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_address({
    #     description: "Description",
    #     instance_id: "InstanceId", # required
    #     email_address: "EmailAddress", # required
    #     display_name: "EmailAddressDisplayName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.email_address_id #=> String
    #   resp.email_address_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateEmailAddress AWS API Documentation
    #
    # @overload create_email_address(params = {})
    # @param [Hash] params ({})
    def create_email_address(params = {}, options = {})
      req = build_request(:create_email_address, params)
      req.send_request(options)
    end

    # Creates an evaluation form in the specified Amazon Connect instance.
    # The form can be used to define questions related to agent performance,
    # and create sections to organize such questions. Question and section
    # identifiers cannot be duplicated within the same evaluation form.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :title
    #   A title of the evaluation form.
    #
    # @option params [String] :description
    #   The description of the evaluation form.
    #
    # @option params [required, Array<Types::EvaluationFormItem>] :items
    #   Items that are part of the evaluation form. The total number of
    #   sections and questions must not exceed 100 each. Questions must be
    #   contained in a section.
    #
    # @option params [Types::EvaluationFormScoringStrategy] :scoring_strategy
    #   A scoring strategy of the evaluation form.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEvaluationFormResponse#evaluation_form_id #evaluation_form_id} => String
    #   * {Types::CreateEvaluationFormResponse#evaluation_form_arn #evaluation_form_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     title: "EvaluationFormTitle", # required
    #     description: "EvaluationFormDescription",
    #     items: [ # required
    #       {
    #         section: {
    #           title: "EvaluationFormSectionTitle", # required
    #           ref_id: "ReferenceId", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           items: { # required
    #             # recursive EvaluationFormItemsList
    #           },
    #           weight: 1.0,
    #         },
    #         question: {
    #           title: "EvaluationFormQuestionTitle", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           ref_id: "ReferenceId", # required
    #           not_applicable_enabled: false,
    #           question_type: "TEXT", # required, accepts TEXT, SINGLESELECT, NUMERIC
    #           question_type_properties: {
    #             numeric: {
    #               min_value: 1, # required
    #               max_value: 1, # required
    #               options: [
    #                 {
    #                   min_value: 1, # required
    #                   max_value: 1, # required
    #                   score: 1,
    #                   automatic_fail: false,
    #                 },
    #               ],
    #               automation: {
    #                 property_value: {
    #                   label: "OVERALL_CUSTOMER_SENTIMENT_SCORE", # required, accepts OVERALL_CUSTOMER_SENTIMENT_SCORE, OVERALL_AGENT_SENTIMENT_SCORE, NON_TALK_TIME, NON_TALK_TIME_PERCENTAGE, NUMBER_OF_INTERRUPTIONS, CONTACT_DURATION, AGENT_INTERACTION_DURATION, CUSTOMER_HOLD_TIME
    #                 },
    #               },
    #             },
    #             single_select: {
    #               options: [ # required
    #                 {
    #                   ref_id: "ReferenceId", # required
    #                   text: "EvaluationFormSingleSelectQuestionOptionText", # required
    #                   score: 1,
    #                   automatic_fail: false,
    #                 },
    #               ],
    #               display_as: "DROPDOWN", # accepts DROPDOWN, RADIO
    #               automation: {
    #                 options: [ # required
    #                   {
    #                     rule_category: {
    #                       category: "SingleSelectQuestionRuleCategoryAutomationLabel", # required
    #                       condition: "PRESENT", # required, accepts PRESENT, NOT_PRESENT
    #                       option_ref_id: "ReferenceId", # required
    #                     },
    #                   },
    #                 ],
    #                 default_option_ref_id: "ReferenceId",
    #               },
    #             },
    #           },
    #           weight: 1.0,
    #         },
    #       },
    #     ],
    #     scoring_strategy: {
    #       mode: "QUESTION_ONLY", # required, accepts QUESTION_ONLY, SECTION_ONLY
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_id #=> String
    #   resp.evaluation_form_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateEvaluationForm AWS API Documentation
    #
    # @overload create_evaluation_form(params = {})
    # @param [Hash] params ({})
    def create_evaluation_form(params = {}, options = {})
      req = build_request(:create_evaluation_form, params)
      req.send_request(options)
    end

    # Creates hours of operation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the hours of operation.
    #
    # @option params [String] :description
    #   The description of the hours of operation.
    #
    # @option params [required, String] :time_zone
    #   The time zone of the hours of operation.
    #
    # @option params [required, Array<Types::HoursOfOperationConfig>] :config
    #   Configuration information for the hours of operation: day, start time,
    #   and end time.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateHoursOfOperationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHoursOfOperationResponse#hours_of_operation_id #hours_of_operation_id} => String
    #   * {Types::CreateHoursOfOperationResponse#hours_of_operation_arn #hours_of_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "HoursOfOperationDescription",
    #     time_zone: "TimeZone", # required
    #     config: [ # required
    #       {
    #         day: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         start_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation_id #=> String
    #   resp.hours_of_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateHoursOfOperation AWS API Documentation
    #
    # @overload create_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def create_hours_of_operation(params = {}, options = {})
      req = build_request(:create_hours_of_operation, params)
      req.send_request(options)
    end

    # Creates an hours of operation override in an Amazon Connect hours of
    # operation resource.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation
    #
    # @option params [required, String] :name
    #   The name of the hours of operation override.
    #
    # @option params [String] :description
    #   The description of the hours of operation override.
    #
    # @option params [required, Array<Types::HoursOfOperationOverrideConfig>] :config
    #   Configuration information for the hours of operation override: day,
    #   start time, and end time.
    #
    # @option params [required, String] :effective_from
    #   The date from when the hours of operation override is effective.
    #
    # @option params [required, String] :effective_till
    #   The date until when the hours of operation override is effective.
    #
    # @return [Types::CreateHoursOfOperationOverrideResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHoursOfOperationOverrideResponse#hours_of_operation_override_id #hours_of_operation_override_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hours_of_operation_override({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     name: "CommonHumanReadableName", # required
    #     description: "CommonHumanReadableDescription",
    #     config: [ # required
    #       {
    #         day: "SUNDAY", # accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         start_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       },
    #     ],
    #     effective_from: "HoursOfOperationOverrideYearMonthDayDateFormat", # required
    #     effective_till: "HoursOfOperationOverrideYearMonthDayDateFormat", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation_override_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateHoursOfOperationOverride AWS API Documentation
    #
    # @overload create_hours_of_operation_override(params = {})
    # @param [Hash] params ({})
    def create_hours_of_operation_override(params = {}, options = {})
      req = build_request(:create_hours_of_operation_override, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Initiates an Amazon Connect instance with all the supported channels
    # enabled. It does not attach any storage, such as Amazon Simple Storage
    # Service (Amazon S3) or Amazon Kinesis. It also does not allow for any
    # configurations on features, such as Contact Lens for Amazon Connect.
    #
    # For more information, see [Create an Amazon Connect instance][1] in
    # the *Amazon Connect Administrator Guide*.
    #
    # Amazon Connect enforces a limit on the total number of instances that
    # you can create or delete in 30 days. If you exceed this limit, you
    # will get an error message indicating there has been an excessive
    # number of attempts at creating or deleting instances. You must wait 30
    # days before you can restart creating and deleting instances in your
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-instances.html
    #
    # @option params [String] :client_token
    #   The idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identity_management_type
    #   The type of identity management for your Amazon Connect users.
    #
    # @option params [String] :instance_alias
    #   The name for your instance.
    #
    # @option params [String] :directory_id
    #   The identifier for the directory.
    #
    # @option params [required, Boolean] :inbound_calls_enabled
    #   Your contact center handles incoming contacts.
    #
    # @option params [required, Boolean] :outbound_calls_enabled
    #   Your contact center allows outbound calls.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, `{ "tags": {"key1":"value1", "key2":"value2"} }`.
    #
    # @return [Types::CreateInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceResponse#id #id} => String
    #   * {Types::CreateInstanceResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance({
    #     client_token: "ClientToken",
    #     identity_management_type: "SAML", # required, accepts SAML, CONNECT_MANAGED, EXISTING_DIRECTORY
    #     instance_alias: "DirectoryAlias",
    #     directory_id: "DirectoryId",
    #     inbound_calls_enabled: false, # required
    #     outbound_calls_enabled: false, # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateInstance AWS API Documentation
    #
    # @overload create_instance(params = {})
    # @param [Hash] params ({})
    def create_instance(params = {}, options = {})
      req = build_request(:create_instance, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services resource association with an Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_type
    #   The type of information to be ingested.
    #
    # @option params [required, String] :integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #
    #   <note markdown="1"> When integrating with Amazon Web Services End User Messaging, the
    #   Amazon Connect and Amazon Web Services End User Messaging instances
    #   must be in the same account.
    #
    #    </note>
    #
    # @option params [String] :source_application_url
    #   The URL for the external application. This field is only required for
    #   the EVENT integration type.
    #
    # @option params [String] :source_application_name
    #   The name of the external application. This field is only required for
    #   the EVENT integration type.
    #
    # @option params [String] :source_type
    #   The type of the data source. This field is only required for the EVENT
    #   integration type.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateIntegrationAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationAssociationResponse#integration_association_id #integration_association_id} => String
    #   * {Types::CreateIntegrationAssociationResponse#integration_association_arn #integration_association_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration_association({
    #     instance_id: "InstanceId", # required
    #     integration_type: "EVENT", # required, accepts EVENT, VOICE_ID, PINPOINT_APP, WISDOM_ASSISTANT, WISDOM_KNOWLEDGE_BASE, WISDOM_QUICK_RESPONSES, Q_MESSAGE_TEMPLATES, CASES_DOMAIN, APPLICATION, FILE_SCANNER, SES_IDENTITY, ANALYTICS_CONNECTOR, CALL_TRANSFER_CONNECTOR, COGNITO_USER_POOL
    #     integration_arn: "ARN", # required
    #     source_application_url: "URI",
    #     source_application_name: "SourceApplicationName",
    #     source_type: "SALESFORCE", # accepts SALESFORCE, ZENDESK, CASES
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_association_id #=> String
    #   resp.integration_association_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateIntegrationAssociation AWS API Documentation
    #
    # @overload create_integration_association(params = {})
    # @param [Hash] params ({})
    def create_integration_association(params = {}, options = {})
      req = build_request(:create_integration_association, params)
      req.send_request(options)
    end

    # Adds a new participant into an on-going chat contact or webRTC call.
    # For more information, see [Customize chat flow experiences by
    # integrating custom participants][1] or [Enable multi-user web, in-app,
    # and video calling][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-multiuser-inapp.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   Supports contacts in the CHAT channel and VOICE (WebRTC) channels. For
    #   WebRTC calls, this should be the initial contact ID that was generated
    #   when the contact was first created (from the StartWebRTCContact API)
    #   in the VOICE channel
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, Types::ParticipantDetailsToAdd] :participant_details
    #   Information identifying the participant.
    #
    #   The only valid value for `ParticipantRole` is `CUSTOM_BOT` for chat
    #   contact and `CUSTOMER` for voice contact.
    #
    # @return [Types::CreateParticipantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParticipantResponse#participant_credentials #participant_credentials} => Types::ParticipantTokenCredentials
    #   * {Types::CreateParticipantResponse#participant_id #participant_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_participant({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     client_token: "ClientToken",
    #     participant_details: { # required
    #       participant_role: "AGENT", # accepts AGENT, CUSTOMER, SYSTEM, CUSTOM_BOT, SUPERVISOR
    #       display_name: "DisplayName",
    #       participant_capabilities: {
    #         video: "SEND", # accepts SEND
    #         screen_share: "SEND", # accepts SEND
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.participant_credentials.participant_token #=> String
    #   resp.participant_credentials.expiry #=> String
    #   resp.participant_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateParticipant AWS API Documentation
    #
    # @overload create_participant(params = {})
    # @param [Hash] params ({})
    def create_participant(params = {}, options = {})
      req = build_request(:create_participant, params)
      req.send_request(options)
    end

    # Enables rehydration of chats for the lifespan of a contact. For more
    # information about chat rehydration, see [Enable persistent chat][1] in
    # the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :initial_contact_id
    #   This is the contactId of the current contact that the
    #   `CreatePersistentContactAssociation` API is being called from.
    #
    # @option params [required, String] :rehydration_type
    #   The contactId chosen for rehydration depends on the type chosen.
    #
    #   * `ENTIRE_PAST_SESSION`: Rehydrates a chat from the most recently
    #     terminated past chat contact of the specified past ended chat
    #     session. To use this type, provide the `initialContactId` of the
    #     past ended chat session in the `sourceContactId` field. In this
    #     type, Amazon Connect determines what the most recent chat contact on
    #     the past ended chat session and uses it to start a persistent chat.
    #
    #   * `FROM_SEGMENT`: Rehydrates a chat from the specified past chat
    #     contact provided in the `sourceContactId` field.
    #
    #   The actual contactId used for rehydration is provided in the response
    #   of this API.
    #
    #   To illustrate how to use rehydration type, consider the following
    #   example: A customer starts a chat session. Agent a1 accepts the chat
    #   and a conversation starts between the customer and Agent a1. This
    #   first contact creates a contact ID **C1**. Agent a1 then transfers the
    #   chat to Agent a2. This creates another contact ID **C2**. At this
    #   point Agent a2 ends the chat. The customer is forwarded to the
    #   disconnect flow for a post chat survey that creates another contact ID
    #   **C3**. After the chat survey, the chat session ends. Later, the
    #   customer returns and wants to resume their past chat session. At this
    #   point, the customer can have following use cases:
    #
    #   * **Use Case 1**: The customer wants to continue the past chat session
    #     but they want to hide the post chat survey. For this they will use
    #     the following configuration:
    #
    #     * **Configuration**
    #
    #       * SourceContactId = "C2"
    #
    #       * RehydrationType = "FROM\_SEGMENT"
    #     * **Expected behavior**
    #
    #       * This starts a persistent chat session from the specified past
    #         ended contact (C2). Transcripts of past chat sessions C2 and C1
    #         are accessible in the current persistent chat session. Note that
    #         chat segment C3 is dropped from the persistent chat session.
    #
    #       ^
    #   * **Use Case 2**: The customer wants to continue the past chat session
    #     and see the transcript of the entire past engagement, including the
    #     post chat survey. For this they will use the following
    #     configuration:
    #
    #     * **Configuration**
    #
    #       * SourceContactId = "C1"
    #
    #       * RehydrationType = "ENTIRE\_PAST\_SESSION"
    #     * **Expected behavior**
    #
    #       * This starts a persistent chat session from the most recently
    #         ended chat contact (C3). Transcripts of past chat sessions C3,
    #         C2 and C1 are accessible in the current persistent chat session.
    #
    #       ^
    #
    # @option params [required, String] :source_contact_id
    #   The contactId from which a persistent chat session must be started.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreatePersistentContactAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePersistentContactAssociationResponse#continued_from_contact_id #continued_from_contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_persistent_contact_association({
    #     instance_id: "InstanceId", # required
    #     initial_contact_id: "ContactId", # required
    #     rehydration_type: "ENTIRE_PAST_SESSION", # required, accepts ENTIRE_PAST_SESSION, FROM_SEGMENT
    #     source_contact_id: "ContactId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.continued_from_contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePersistentContactAssociation AWS API Documentation
    #
    # @overload create_persistent_contact_association(params = {})
    # @param [Hash] params ({})
    def create_persistent_contact_association(params = {}, options = {})
      req = build_request(:create_persistent_contact_association, params)
      req.send_request(options)
    end

    # Creates a new predefined attribute for the specified Amazon Connect
    # instance. *Predefined attributes* are attributes in an Amazon Connect
    # instance that can be used to route contacts to an agent or pools of
    # agents within a queue. For more information, see [Create predefined
    # attributes for routing contacts to agents][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, String] :name
    #   The name of the predefined attribute.
    #
    # @option params [required, Types::PredefinedAttributeValues] :values
    #   The values of the predefined attribute.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_predefined_attribute({
    #     instance_id: "InstanceId", # required
    #     name: "PredefinedAttributeName", # required
    #     values: { # required
    #       string_list: ["PredefinedAttributeStringValue"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePredefinedAttribute AWS API Documentation
    #
    # @overload create_predefined_attribute(params = {})
    # @param [Hash] params ({})
    def create_predefined_attribute(params = {}, options = {})
      req = build_request(:create_predefined_attribute, params)
      req.send_request(options)
    end

    # Creates a prompt. For more information about prompts, such as
    # supported file types and maximum length, see [Create prompts][1] in
    # the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/prompts.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the prompt.
    #
    # @option params [String] :description
    #   The description of the prompt.
    #
    # @option params [required, String] :s3_uri
    #   The URI for the S3 bucket where the prompt is stored. You can provide
    #   S3 pre-signed URLs returned by the [GetPromptFile][1] API instead of
    #   providing S3 URIs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreatePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePromptResponse#prompt_arn #prompt_arn} => String
    #   * {Types::CreatePromptResponse#prompt_id #prompt_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_prompt({
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "PromptDescription",
    #     s3_uri: "S3Uri", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_arn #=> String
    #   resp.prompt_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePrompt AWS API Documentation
    #
    # @overload create_prompt(params = {})
    # @param [Hash] params ({})
    def create_prompt(params = {}, options = {})
      req = build_request(:create_prompt, params)
      req.send_request(options)
    end

    # Creates registration for a device token and a chat contact to receive
    # real-time push notifications. For more information about push
    # notifications, see [Set up push notifications in Amazon Connect for
    # mobile chat][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-push-notifications-for-mobile-chat.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :pinpoint_app_arn
    #   The Amazon Resource Name (ARN) of the Pinpoint application.
    #
    # @option params [required, String] :device_token
    #   The push notification token issued by the Apple or Google gateways.
    #
    # @option params [required, String] :device_type
    #   The device type to use when sending the message.
    #
    # @option params [required, Types::ContactConfiguration] :contact_configuration
    #   The contact configuration for push notification registration.
    #
    # @return [Types::CreatePushNotificationRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePushNotificationRegistrationResponse#registration_id #registration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_push_notification_registration({
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     pinpoint_app_arn: "ARN", # required
    #     device_token: "DeviceToken", # required
    #     device_type: "GCM", # required, accepts GCM, APNS, APNS_SANDBOX
    #     contact_configuration: { # required
    #       contact_id: "ContactId", # required
    #       participant_role: "AGENT", # accepts AGENT, CUSTOMER, SYSTEM, CUSTOM_BOT, SUPERVISOR
    #       include_raw_message: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePushNotificationRegistration AWS API Documentation
    #
    # @overload create_push_notification_registration(params = {})
    # @param [Hash] params ({})
    def create_push_notification_registration(params = {}, options = {})
      req = build_request(:create_push_notification_registration, params)
      req.send_request(options)
    end

    # Creates a new queue for the specified Amazon Connect instance.
    #
    # * If the phone number is claimed to a traffic distribution group that
    #   was created in the same Region as the Amazon Connect instance where
    #   you are calling this API, then you can use a full phone number ARN
    #   or a UUID for `OutboundCallerIdNumberId`. However, if the phone
    #   number is claimed to a traffic distribution group that is in one
    #   Region, and you are calling this API from an instance in another
    #   Amazon Web Services Region that is associated with the traffic
    #   distribution group, you must provide a full phone number ARN. If a
    #   UUID is provided in this scenario, you will receive a
    #   `ResourceNotFoundException`.
    #
    # * Only use the phone number ARN format that doesn't contain
    #   `instance` in the path, for example,
    #   `arn:aws:connect:us-east-1:1234567890:phone-number/uuid`. This is
    #   the same ARN format that is returned when you call the
    #   [ListPhoneNumbersV2][1] API.
    #
    # * If you plan to use IAM policies to allow/deny access to this API for
    #   phone number resources claimed to a traffic distribution group, see
    #   [Allow or Deny queue API actions for phone numbers in a replica
    #   Region][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the queue.
    #
    # @option params [String] :description
    #   The description of the queue.
    #
    # @option params [Types::OutboundCallerConfig] :outbound_caller_config
    #   The outbound caller ID name, number, and outbound whisper flow.
    #
    # @option params [Types::OutboundEmailConfig] :outbound_email_config
    #   The outbound email address ID for a specified queue.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @option params [Integer] :max_contacts
    #   The maximum number of contacts that can be in the queue before it is
    #   considered full.
    #
    # @option params [Array<String>] :quick_connect_ids
    #   The quick connects available to agents who are working the queue.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQueueResponse#queue_arn #queue_arn} => String
    #   * {Types::CreateQueueResponse#queue_id #queue_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue({
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "QueueDescription",
    #     outbound_caller_config: {
    #       outbound_caller_id_name: "OutboundCallerIdName",
    #       outbound_caller_id_number_id: "PhoneNumberId",
    #       outbound_flow_id: "ContactFlowId",
    #     },
    #     outbound_email_config: {
    #       outbound_email_address_id: "EmailAddressId",
    #     },
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     max_contacts: 1,
    #     quick_connect_ids: ["QuickConnectId"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_arn #=> String
    #   resp.queue_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateQueue AWS API Documentation
    #
    # @overload create_queue(params = {})
    # @param [Hash] params ({})
    def create_queue(params = {}, options = {})
      req = build_request(:create_queue, params)
      req.send_request(options)
    end

    # Creates a quick connect for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   A unique name of the quick connect.
    #
    # @option params [String] :description
    #   The description of the quick connect.
    #
    # @option params [required, Types::QuickConnectConfig] :quick_connect_config
    #   Configuration settings for the quick connect.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateQuickConnectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQuickConnectResponse#quick_connect_arn #quick_connect_arn} => String
    #   * {Types::CreateQuickConnectResponse#quick_connect_id #quick_connect_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_quick_connect({
    #     instance_id: "InstanceId", # required
    #     name: "QuickConnectName", # required
    #     description: "QuickConnectDescription",
    #     quick_connect_config: { # required
    #       quick_connect_type: "USER", # required, accepts USER, QUEUE, PHONE_NUMBER
    #       user_config: {
    #         user_id: "UserId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       queue_config: {
    #         queue_id: "QueueId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       phone_config: {
    #         phone_number: "PhoneNumber", # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_connect_arn #=> String
    #   resp.quick_connect_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateQuickConnect AWS API Documentation
    #
    # @overload create_quick_connect(params = {})
    # @param [Hash] params ({})
    def create_quick_connect(params = {}, options = {})
      req = build_request(:create_quick_connect, params)
      req.send_request(options)
    end

    # Creates a new routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the routing profile. Must not be more than 127 characters.
    #
    # @option params [required, String] :description
    #   Description of the routing profile. Must not be more than 250
    #   characters.
    #
    # @option params [required, String] :default_outbound_queue_id
    #   The default outbound queue for the routing profile.
    #
    # @option params [Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The inbound queues associated with the routing profile. If no queue is
    #   added, the agent can make only outbound calls.
    #
    #   The limit of 10 array members applies to the maximum number of
    #   `RoutingProfileQueueConfig` objects that can be passed during a
    #   CreateRoutingProfile API request. It is different from the quota of 50
    #   queues per routing profile per instance that is listed in [Amazon
    #   Connect service quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    #
    # @option params [required, Array<Types::MediaConcurrency>] :media_concurrencies
    #   The channels that agents can handle in the Contact Control Panel (CCP)
    #   for this routing profile.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @option params [String] :agent_availability_timer
    #   Whether agents with this routing profile will have their routing order
    #   calculated based on *longest idle time* or *time since their last
    #   inbound contact*.
    #
    # @return [Types::CreateRoutingProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoutingProfileResponse#routing_profile_arn #routing_profile_arn} => String
    #   * {Types::CreateRoutingProfileResponse#routing_profile_id #routing_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_routing_profile({
    #     instance_id: "InstanceId", # required
    #     name: "RoutingProfileName", # required
    #     description: "RoutingProfileDescription", # required
    #     default_outbound_queue_id: "QueueId", # required
    #     queue_configs: [
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT, TASK, EMAIL
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #     media_concurrencies: [ # required
    #       {
    #         channel: "VOICE", # required, accepts VOICE, CHAT, TASK, EMAIL
    #         concurrency: 1, # required
    #         cross_channel_behavior: {
    #           behavior_type: "ROUTE_CURRENT_CHANNEL_ONLY", # required, accepts ROUTE_CURRENT_CHANNEL_ONLY, ROUTE_ANY_CHANNEL
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     agent_availability_timer: "TIME_SINCE_LAST_ACTIVITY", # accepts TIME_SINCE_LAST_ACTIVITY, TIME_SINCE_LAST_INBOUND
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile_arn #=> String
    #   resp.routing_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRoutingProfile AWS API Documentation
    #
    # @overload create_routing_profile(params = {})
    # @param [Hash] params ({})
    def create_routing_profile(params = {}, options = {})
      req = build_request(:create_routing_profile, params)
      req.send_request(options)
    end

    # Creates a rule for the specified Amazon Connect instance.
    #
    # Use the [Rules Function language][1] to code conditions for the rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   A unique name for the rule.
    #
    # @option params [required, Types::RuleTriggerEventSource] :trigger_event_source
    #   The event source to trigger the rule.
    #
    # @option params [required, String] :function
    #   The conditions of the rule.
    #
    # @option params [required, Array<Types::RuleAction>] :actions
    #   A list of actions to be run when the rule is triggered.
    #
    # @option params [required, String] :publish_status
    #   The publish status of the rule.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleResponse#rule_arn #rule_arn} => String
    #   * {Types::CreateRuleResponse#rule_id #rule_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     instance_id: "InstanceId", # required
    #     name: "RuleName", # required
    #     trigger_event_source: { # required
    #       event_source_name: "OnPostCallAnalysisAvailable", # required, accepts OnPostCallAnalysisAvailable, OnRealTimeCallAnalysisAvailable, OnRealTimeChatAnalysisAvailable, OnPostChatAnalysisAvailable, OnZendeskTicketCreate, OnZendeskTicketStatusUpdate, OnSalesforceCaseCreate, OnContactEvaluationSubmit, OnMetricDataUpdate, OnCaseCreate, OnCaseUpdate, OnSlaBreach
    #       integration_association_id: "IntegrationAssociationId",
    #     },
    #     function: "RuleFunction", # required
    #     actions: [ # required
    #       {
    #         action_type: "CREATE_TASK", # required, accepts CREATE_TASK, ASSIGN_CONTACT_CATEGORY, GENERATE_EVENTBRIDGE_EVENT, SEND_NOTIFICATION, CREATE_CASE, UPDATE_CASE, ASSIGN_SLA, END_ASSOCIATED_TASKS, SUBMIT_AUTO_EVALUATION
    #         task_action: {
    #           name: "TaskNameExpression", # required
    #           description: "TaskDescriptionExpression",
    #           contact_flow_id: "ContactFlowId", # required
    #           references: {
    #             "ReferenceKey" => {
    #               value: "ReferenceValue",
    #               type: "URL", # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #               status: "AVAILABLE", # accepts AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED
    #               arn: "ReferenceArn",
    #               status_reason: "ReferenceStatusReason",
    #             },
    #           },
    #         },
    #         event_bridge_action: {
    #           name: "EventBridgeActionName", # required
    #         },
    #         assign_contact_category_action: {
    #         },
    #         send_notification_action: {
    #           delivery_method: "EMAIL", # required, accepts EMAIL
    #           subject: "Subject",
    #           content: "Content", # required
    #           content_type: "PLAIN_TEXT", # required, accepts PLAIN_TEXT
    #           recipient: { # required
    #             user_tags: {
    #               "String" => "String",
    #             },
    #             user_ids: ["UserId"],
    #           },
    #         },
    #         create_case_action: {
    #           fields: [ # required
    #             {
    #               id: "FieldValueId", # required
    #               value: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue",
    #               },
    #             },
    #           ],
    #           template_id: "TemplateId", # required
    #         },
    #         update_case_action: {
    #           fields: [ # required
    #             {
    #               id: "FieldValueId", # required
    #               value: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue",
    #               },
    #             },
    #           ],
    #         },
    #         assign_sla_action: {
    #           sla_assignment_type: "CASES", # required, accepts CASES
    #           case_sla_configuration: {
    #             name: "SlaName", # required
    #             type: "CaseField", # required, accepts CaseField
    #             field_id: "FieldValueId",
    #             target_field_values: [
    #               {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue",
    #               },
    #             ],
    #             target_sla_minutes: 1, # required
    #           },
    #         },
    #         end_associated_tasks_action: {
    #         },
    #         submit_auto_evaluation_action: {
    #           evaluation_form_id: "EvaluationFormId", # required
    #         },
    #       },
    #     ],
    #     publish_status: "DRAFT", # required, accepts DRAFT, PUBLISHED
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Creates a security profile.
    #
    # For information about security profiles, see [Security Profiles][1] in
    # the *Amazon Connect Administrator Guide*. For a mapping of the API
    # name and user interface name of the security profile permissions, see
    # [List of security profile permissions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :security_profile_name
    #   The name of the security profile.
    #
    # @option params [String] :description
    #   The description of the security profile.
    #
    # @option params [Array<String>] :permissions
    #   Permissions assigned to the security profile. For a list of valid
    #   permissions, see [List of security profile permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @option params [Hash<String,String>] :allowed_access_control_tags
    #   The list of tags that a security profile uses to restrict access to
    #   resources in Amazon Connect.
    #
    # @option params [Array<String>] :tag_restricted_resources
    #   The list of resources that a security profile applies tag restrictions
    #   to in Amazon Connect. For a list of Amazon Connect resources that you
    #   can tag, see [Add tags to resources in Amazon Connect][1] in the
    #   *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html
    #
    # @option params [Array<Types::Application>] :applications
    #   A list of third-party applications that the security profile will give
    #   access to.
    #
    # @option params [Array<String>] :hierarchy_restricted_resources
    #   The list of resources that a security profile applies hierarchy
    #   restrictions to in Amazon Connect. Following are acceptable
    #   ResourceNames: `User`.
    #
    # @option params [String] :allowed_access_control_hierarchy_group_id
    #   The identifier of the hierarchy group that a security profile uses to
    #   restrict access to resources in Amazon Connect.
    #
    # @return [Types::CreateSecurityProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityProfileResponse#security_profile_id #security_profile_id} => String
    #   * {Types::CreateSecurityProfileResponse#security_profile_arn #security_profile_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_profile({
    #     security_profile_name: "CreateSecurityProfileName", # required
    #     description: "SecurityProfileDescription",
    #     permissions: ["SecurityProfilePermission"],
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     allowed_access_control_tags: {
    #       "SecurityProfilePolicyKey" => "SecurityProfilePolicyValue",
    #     },
    #     tag_restricted_resources: ["TagRestrictedResourceName"],
    #     applications: [
    #       {
    #         namespace: "Namespace",
    #         application_permissions: ["Permission"],
    #       },
    #     ],
    #     hierarchy_restricted_resources: ["HierarchyRestrictedResourceName"],
    #     allowed_access_control_hierarchy_group_id: "HierarchyGroupId",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_id #=> String
    #   resp.security_profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateSecurityProfile AWS API Documentation
    #
    # @overload create_security_profile(params = {})
    # @param [Hash] params ({})
    def create_security_profile(params = {}, options = {})
      req = build_request(:create_security_profile, params)
      req.send_request(options)
    end

    # Creates a new task template in the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the task template.
    #
    # @option params [String] :description
    #   The description of the task template.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow that runs by default when a task is created
    #   by referencing this template.
    #
    # @option params [String] :self_assign_flow_id
    #   The ContactFlowId for the flow that will be run if this template is
    #   used to create a self-assigned task.
    #
    # @option params [Types::TaskTemplateConstraints] :constraints
    #   Constraints that are applicable to the fields listed.
    #
    # @option params [Types::TaskTemplateDefaults] :defaults
    #   The default values for fields when a task is created by referencing
    #   this template.
    #
    # @option params [String] :status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to it.
    #   Tasks can only be created from `ACTIVE` templates. If a template is
    #   marked as `INACTIVE`, then a task that refers to this template cannot
    #   be created.
    #
    # @option params [required, Array<Types::TaskTemplateField>] :fields
    #   Fields that are part of the template.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateTaskTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTaskTemplateResponse#id #id} => String
    #   * {Types::CreateTaskTemplateResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task_template({
    #     instance_id: "InstanceId", # required
    #     name: "TaskTemplateName", # required
    #     description: "TaskTemplateDescription",
    #     contact_flow_id: "ContactFlowId",
    #     self_assign_flow_id: "ContactFlowId",
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #       read_only_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #       invisible_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #           default_value: "TaskTemplateFieldValue",
    #         },
    #       ],
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     fields: [ # required
    #       {
    #         id: { # required
    #           name: "TaskTemplateFieldName",
    #         },
    #         description: "TaskTemplateFieldDescription",
    #         type: "NAME", # accepts NAME, DESCRIPTION, SCHEDULED_TIME, QUICK_CONNECT, URL, NUMBER, TEXT, TEXT_AREA, DATE_TIME, BOOLEAN, SINGLE_SELECT, EMAIL, SELF_ASSIGN, EXPIRY_DURATION
    #         single_select_options: ["TaskTemplateSingleSelectOption"],
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateTaskTemplate AWS API Documentation
    #
    # @overload create_task_template(params = {})
    # @param [Hash] params ({})
    def create_task_template(params = {}, options = {})
      req = build_request(:create_task_template, params)
      req.send_request(options)
    end

    # Creates a traffic distribution group given an Amazon Connect instance
    # that has been replicated.
    #
    # <note markdown="1"> The `SignInConfig` distribution is available only on a default
    # `TrafficDistributionGroup` (see the `IsDefault` parameter in the
    # [TrafficDistributionGroup][1] data type). If you call
    # `UpdateTrafficDistribution` with a modified `SignInConfig` and a
    # non-default `TrafficDistributionGroup`, an `InvalidRequestException`
    # is returned.
    #
    #  </note>
    #
    # For more information about creating traffic distribution groups, see
    # [Set up traffic distribution groups][2] in the *Amazon Connect
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-traffic-distribution-groups.html
    #
    # @option params [required, String] :name
    #   The name for the traffic distribution group.
    #
    # @option params [String] :description
    #   A description for the traffic distribution group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance that has been
    #   replicated. You can find the `instanceId` in the ARN of the instance.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateTrafficDistributionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrafficDistributionGroupResponse#id #id} => String
    #   * {Types::CreateTrafficDistributionGroupResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_distribution_group({
    #     name: "Name128", # required
    #     description: "Description250",
    #     instance_id: "InstanceIdOrArn", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateTrafficDistributionGroup AWS API Documentation
    #
    # @overload create_traffic_distribution_group(params = {})
    # @param [Hash] params ({})
    def create_traffic_distribution_group(params = {}, options = {})
      req = build_request(:create_traffic_distribution_group, params)
      req.send_request(options)
    end

    # Creates a use case for an integration association.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_association_id
    #   The identifier for the integration association.
    #
    # @option params [required, String] :use_case_type
    #   The type of use case to associate to the integration association. Each
    #   integration association can have only one of each use case type.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateUseCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUseCaseResponse#use_case_id #use_case_id} => String
    #   * {Types::CreateUseCaseResponse#use_case_arn #use_case_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_use_case({
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     use_case_type: "RULES_EVALUATION", # required, accepts RULES_EVALUATION, CONNECT_CAMPAIGNS
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.use_case_id #=> String
    #   resp.use_case_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUseCase AWS API Documentation
    #
    # @overload create_use_case(params = {})
    # @param [Hash] params ({})
    def create_use_case(params = {}, options = {})
      req = build_request(:create_use_case, params)
      req.send_request(options)
    end

    # Creates a user account for the specified Amazon Connect instance.
    #
    # Certain [UserIdentityInfo][1] parameters are required in some
    # situations. For example, `Email`, `FirstName` and `LastName` are
    # required if you are using Amazon Connect or SAML for identity
    # management.
    #
    # For information about how to create users using the Amazon Connect
    # admin website, see [Add Users][2] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UserIdentityInfo.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html
    #
    # @option params [required, String] :username
    #   The user name for the account. For instances not using SAML for
    #   identity management, the user name can include up to 20 characters. If
    #   you are using SAML for identity management, the user name can include
    #   up to 64 characters from \[a-zA-Z0-9\_-.\\@\]+.
    #
    #   Username can include @ only if used in an email format. For example:
    #
    #   * Correct: testuser
    #
    #   * Correct: testuser@example.com
    #
    #   * Incorrect: testuser@example
    #
    # @option params [String] :password
    #   The password for the user account. A password is required if you are
    #   using Amazon Connect for identity management. Otherwise, it is an
    #   error to include a password.
    #
    # @option params [Types::UserIdentityInfo] :identity_info
    #   The information about the identity of the user.
    #
    # @option params [required, Types::UserPhoneConfig] :phone_config
    #   The phone settings for the user.
    #
    # @option params [String] :directory_user_id
    #   The identifier of the user account in the directory used for identity
    #   management. If Amazon Connect cannot access the directory, you can
    #   specify this identifier to authenticate users. If you include the
    #   identifier, we assume that Amazon Connect cannot access the directory.
    #   Otherwise, the identity information is used to authenticate users from
    #   your directory.
    #
    #   This parameter is required if you are using an existing directory for
    #   identity management in Amazon Connect when Amazon Connect cannot
    #   access your directory to authenticate users. If you are using SAML for
    #   identity management and include this parameter, an error is returned.
    #
    # @option params [required, Array<String>] :security_profile_ids
    #   The identifier of the security profile for the user.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile for the user.
    #
    # @option params [String] :hierarchy_group_id
    #   The identifier of the hierarchy group for the user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_id #user_id} => String
    #   * {Types::CreateUserResponse#user_arn #user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     username: "AgentUsername", # required
    #     password: "Password",
    #     identity_info: {
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #       secondary_email: "Email",
    #       mobile: "PhoneNumber",
    #     },
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber",
    #     },
    #     directory_user_id: "DirectoryUserId",
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     hierarchy_group_id: "HierarchyGroupId",
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Creates a new user hierarchy group.
    #
    # @option params [required, String] :name
    #   The name of the user hierarchy group. Must not be more than 100
    #   characters.
    #
    # @option params [String] :parent_group_id
    #   The identifier for the parent hierarchy group. The user hierarchy is
    #   created at level one if the parent group ID is null.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateUserHierarchyGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserHierarchyGroupResponse#hierarchy_group_id #hierarchy_group_id} => String
    #   * {Types::CreateUserHierarchyGroupResponse#hierarchy_group_arn #hierarchy_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_hierarchy_group({
    #     name: "HierarchyGroupName", # required
    #     parent_group_id: "HierarchyGroupId",
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_group_id #=> String
    #   resp.hierarchy_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUserHierarchyGroup AWS API Documentation
    #
    # @overload create_user_hierarchy_group(params = {})
    # @param [Hash] params ({})
    def create_user_hierarchy_group(params = {}, options = {})
      req = build_request(:create_user_hierarchy_group, params)
      req.send_request(options)
    end

    # Creates a new view with the possible status of `SAVED` or `PUBLISHED`.
    #
    # The views will have a unique name for each connect instance.
    #
    # It performs basic content validation if the status is `SAVED` or full
    # content validation if the status is set to `PUBLISHED`. An error is
    # returned if validation fails. It associates either the `$SAVED`
    # qualifier or both of the `$SAVED` and `$LATEST` qualifiers with the
    # provided view content based on the status. The view is idempotent if
    # ClientToken is provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [String] :client_token
    #   A unique Id for each create view request to avoid duplicate view
    #   creation. For example, the view is idempotent ClientToken is provided.
    #
    # @option params [required, String] :status
    #   Indicates the view status as either `SAVED` or `PUBLISHED`. The
    #   `PUBLISHED` status will initiate validation on the content.
    #
    # @option params [required, Types::ViewInputContent] :content
    #   View content containing all content necessary to render a view except
    #   for runtime input data.
    #
    #   The total uncompressed content has a maximum file size of 400kB.
    #
    # @option params [String] :description
    #   The description of the view.
    #
    # @option params [required, String] :name
    #   The name of the view.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags associated with the view resource (not specific to view
    #   version).These tags can be used to organize, track, or control access
    #   for this resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #
    # @return [Types::CreateViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateViewResponse#view #view} => Types::View
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_view({
    #     instance_id: "ViewsInstanceId", # required
    #     client_token: "ViewsClientToken",
    #     status: "PUBLISHED", # required, accepts PUBLISHED, SAVED
    #     content: { # required
    #       template: "ViewTemplate",
    #       actions: ["ViewAction"],
    #     },
    #     description: "ViewDescription",
    #     name: "ViewName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.view.id #=> String
    #   resp.view.arn #=> String
    #   resp.view.name #=> String
    #   resp.view.status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.view.type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.view.description #=> String
    #   resp.view.version #=> Integer
    #   resp.view.version_description #=> String
    #   resp.view.content.input_schema #=> String
    #   resp.view.content.template #=> String
    #   resp.view.content.actions #=> Array
    #   resp.view.content.actions[0] #=> String
    #   resp.view.tags #=> Hash
    #   resp.view.tags["TagKey"] #=> String
    #   resp.view.created_time #=> Time
    #   resp.view.last_modified_time #=> Time
    #   resp.view.view_content_sha_256 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateView AWS API Documentation
    #
    # @overload create_view(params = {})
    # @param [Hash] params ({})
    def create_view(params = {}, options = {})
      req = build_request(:create_view, params)
      req.send_request(options)
    end

    # Publishes a new version of the view identifier.
    #
    # Versions are immutable and monotonically increasing.
    #
    # It returns the highest version if there is no change in content
    # compared to that version. An error is displayed if the supplied
    # ViewContentSha256 is different from the ViewContentSha256 of the
    # `$LATEST` alias.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #
    # @option params [String] :version_description
    #   The description for the version being published.
    #
    # @option params [String] :view_content_sha_256
    #   Indicates the checksum value of the latest published view content.
    #
    # @return [Types::CreateViewVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateViewVersionResponse#view #view} => Types::View
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_view_version({
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     version_description: "ViewDescription",
    #     view_content_sha_256: "ViewContentSha256",
    #   })
    #
    # @example Response structure
    #
    #   resp.view.id #=> String
    #   resp.view.arn #=> String
    #   resp.view.name #=> String
    #   resp.view.status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.view.type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.view.description #=> String
    #   resp.view.version #=> Integer
    #   resp.view.version_description #=> String
    #   resp.view.content.input_schema #=> String
    #   resp.view.content.template #=> String
    #   resp.view.content.actions #=> Array
    #   resp.view.content.actions[0] #=> String
    #   resp.view.tags #=> Hash
    #   resp.view.tags["TagKey"] #=> String
    #   resp.view.created_time #=> Time
    #   resp.view.last_modified_time #=> Time
    #   resp.view.view_content_sha_256 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateViewVersion AWS API Documentation
    #
    # @overload create_view_version(params = {})
    # @param [Hash] params ({})
    def create_view_version(params = {}, options = {})
      req = build_request(:create_view_version, params)
      req.send_request(options)
    end

    # Creates a custom vocabulary associated with your Amazon Connect
    # instance. You can set a custom vocabulary to be your default
    # vocabulary for a given language. Contact Lens for Amazon Connect uses
    # the default vocabulary in post-call and real-time contact analysis
    # sessions for that language.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]. If a create request is
    #   received more than once with same client token, subsequent requests
    #   return the previous response without creating a vocabulary again.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :vocabulary_name
    #   A unique name of the custom vocabulary.
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #
    # @option params [required, String] :content
    #   The content of the custom vocabulary in plain-text format with a table
    #   of values. Each row in the table represents a word or a phrase,
    #   described with `Phrase`, `IPA`, `SoundsLike`, and `DisplayAs` fields.
    #   Separate the fields with TAB characters. The size limit is 50KB. For
    #   more information, see [Create a custom vocabulary using a table][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVocabularyResponse#vocabulary_arn #vocabulary_arn} => String
    #   * {Types::CreateVocabularyResponse#vocabulary_id #vocabulary_id} => String
    #   * {Types::CreateVocabularyResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary({
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "ar-AE", # required, accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN, en-NZ, en-ZA, ca-ES, da-DK, fi-FI, id-ID, ms-MY, nl-NL, no-NO, pl-PL, sv-SE, tl-PH
    #     content: "VocabularyContent", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_arn #=> String
    #   resp.vocabulary_id #=> String
    #   resp.state #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateVocabulary AWS API Documentation
    #
    # @overload create_vocabulary(params = {})
    # @param [Hash] params ({})
    def create_vocabulary(params = {}, options = {})
      req = build_request(:create_vocabulary, params)
      req.send_request(options)
    end

    # Deactivates an evaluation form in the specified Amazon Connect
    # instance. After a form is deactivated, it is no longer available for
    # users to start new evaluations based on the form.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [required, Integer] :evaluation_form_version
    #   A version of the evaluation form. If the version property is not
    #   provided, the latest version of the evaluation form is deactivated.
    #
    # @return [Types::DeactivateEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeactivateEvaluationFormResponse#evaluation_form_id #evaluation_form_id} => String
    #   * {Types::DeactivateEvaluationFormResponse#evaluation_form_arn #evaluation_form_arn} => String
    #   * {Types::DeactivateEvaluationFormResponse#evaluation_form_version #evaluation_form_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_id #=> String
    #   resp.evaluation_form_arn #=> String
    #   resp.evaluation_form_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeactivateEvaluationForm AWS API Documentation
    #
    # @overload deactivate_evaluation_form(params = {})
    # @param [Hash] params ({})
    def deactivate_evaluation_form(params = {}, options = {})
      req = build_request(:deactivate_evaluation_form, params)
      req.send_request(options)
    end

    # Deletes an attached file along with the underlying S3 Object.
    #
    # The attached file is **permanently deleted** if S3 bucket versioning
    # is not enabled.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Connect instance.
    #
    # @option params [required, String] :file_id
    #   The unique identifier of the attached file resource.
    #
    # @option params [required, String] :associated_resource_arn
    #   The resource to which the attached file is (being) uploaded to.
    #   [Cases][1] are the only current supported resource.
    #
    #   <note markdown="1"> This value must be a valid ARN.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attached_file({
    #     instance_id: "InstanceId", # required
    #     file_id: "FileId", # required
    #     associated_resource_arn: "ARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteAttachedFile AWS API Documentation
    #
    # @overload delete_attached_file(params = {})
    # @param [Hash] params ({})
    def delete_attached_file(params = {}, options = {})
      req = build_request(:delete_attached_file, params)
      req.send_request(options)
    end

    # Deletes a contact evaluation in the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_id
    #   A unique identifier for the contact evaluation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactEvaluation AWS API Documentation
    #
    # @overload delete_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def delete_contact_evaluation(params = {}, options = {})
      req = build_request(:delete_contact_evaluation, params)
      req.send_request(options)
    end

    # Deletes a flow for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_flow({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlow AWS API Documentation
    #
    # @overload delete_contact_flow(params = {})
    # @param [Hash] params ({})
    def delete_contact_flow(params = {}, options = {})
      req = build_request(:delete_contact_flow, params)
      req.send_request(options)
    end

    # Deletes the specified flow module.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_module_id
    #   The identifier of the flow module.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_flow_module({
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlowModule AWS API Documentation
    #
    # @overload delete_contact_flow_module(params = {})
    # @param [Hash] params ({})
    def delete_contact_flow_module(params = {}, options = {})
      req = build_request(:delete_contact_flow_module, params)
      req.send_request(options)
    end

    # Deletes the particular version specified in flow version identifier.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [required, Integer] :contact_flow_version
    #   The identifier of the flow version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_flow_version({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ARN", # required
    #     contact_flow_version: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlowVersion AWS API Documentation
    #
    # @overload delete_contact_flow_version(params = {})
    # @param [Hash] params ({})
    def delete_contact_flow_version(params = {}, options = {})
      req = build_request(:delete_contact_flow_version, params)
      req.send_request(options)
    end

    # Deletes email address from the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :email_address_id
    #   The identifier of the email address.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_address({
    #     instance_id: "InstanceId", # required
    #     email_address_id: "EmailAddressId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteEmailAddress AWS API Documentation
    #
    # @overload delete_email_address(params = {})
    # @param [Hash] params ({})
    def delete_email_address(params = {}, options = {})
      req = build_request(:delete_email_address, params)
      req.send_request(options)
    end

    # Deletes an evaluation form in the specified Amazon Connect instance.
    #
    # * If the version property is provided, only the specified version of
    #   the evaluation form is deleted.
    #
    # * If no version is provided, then the full form (all versions) is
    #   deleted.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [Integer] :evaluation_form_version
    #   The unique identifier for the evaluation form.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteEvaluationForm AWS API Documentation
    #
    # @overload delete_evaluation_form(params = {})
    # @param [Hash] params ({})
    def delete_evaluation_form(params = {}, options = {})
      req = build_request(:delete_evaluation_form, params)
      req.send_request(options)
    end

    # Deletes an hours of operation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteHoursOfOperation AWS API Documentation
    #
    # @overload delete_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def delete_hours_of_operation(params = {}, options = {})
      req = build_request(:delete_hours_of_operation, params)
      req.send_request(options)
    end

    # Deletes an hours of operation override in an Amazon Connect hours of
    # operation resource.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @option params [required, String] :hours_of_operation_override_id
    #   The identifier for the hours of operation override.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hours_of_operation_override({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     hours_of_operation_override_id: "HoursOfOperationOverrideId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteHoursOfOperationOverride AWS API Documentation
    #
    # @overload delete_hours_of_operation_override(params = {})
    # @param [Hash] params ({})
    def delete_hours_of_operation_override(params = {}, options = {})
      req = build_request(:delete_hours_of_operation_override, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Deletes the Amazon Connect instance. For more information, see [Delete
    # your Amazon Connect instance][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    # Amazon Connect enforces a limit on the total number of instances that
    # you can create or delete in 30 days. If you exceed this limit, you
    # will get an error message indicating there has been an excessive
    # number of attempts at creating or deleting instances. You must wait 30
    # days before you can restart creating and deleting instances in your
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/delete-connect-instance.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance({
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteInstance AWS API Documentation
    #
    # @overload delete_instance(params = {})
    # @param [Hash] params ({})
    def delete_instance(params = {}, options = {})
      req = build_request(:delete_instance, params)
      req.send_request(options)
    end

    # Deletes an Amazon Web Services resource association from an Amazon
    # Connect instance. The association must not have any use cases
    # associated with it.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_association_id
    #   The identifier for the integration association.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration_association({
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteIntegrationAssociation AWS API Documentation
    #
    # @overload delete_integration_association(params = {})
    # @param [Hash] params ({})
    def delete_integration_association(params = {}, options = {})
      req = build_request(:delete_integration_association, params)
      req.send_request(options)
    end

    # Deletes a predefined attribute from the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, String] :name
    #   The name of the predefined attribute.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_predefined_attribute({
    #     instance_id: "InstanceId", # required
    #     name: "PredefinedAttributeName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeletePredefinedAttribute AWS API Documentation
    #
    # @overload delete_predefined_attribute(params = {})
    # @param [Hash] params ({})
    def delete_predefined_attribute(params = {}, options = {})
      req = build_request(:delete_predefined_attribute, params)
      req.send_request(options)
    end

    # Deletes a prompt.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :prompt_id
    #   A unique identifier for the prompt.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_prompt({
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeletePrompt AWS API Documentation
    #
    # @overload delete_prompt(params = {})
    # @param [Hash] params ({})
    def delete_prompt(params = {}, options = {})
      req = build_request(:delete_prompt, params)
      req.send_request(options)
    end

    # Deletes registration for a device token and a chat contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :registration_id
    #   The identifier for the registration.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact within the Amazon Connect instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_push_notification_registration({
    #     instance_id: "InstanceId", # required
    #     registration_id: "RegistrationId", # required
    #     contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeletePushNotificationRegistration AWS API Documentation
    #
    # @overload delete_push_notification_registration(params = {})
    # @param [Hash] params ({})
    def delete_push_notification_registration(params = {}, options = {})
      req = build_request(:delete_push_notification_registration, params)
      req.send_request(options)
    end

    # Deletes a queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteQueue AWS API Documentation
    #
    # @overload delete_queue(params = {})
    # @param [Hash] params ({})
    def delete_queue(params = {}, options = {})
      req = build_request(:delete_queue, params)
      req.send_request(options)
    end

    # Deletes a quick connect.
    #
    # After calling [DeleteUser][1], it's important to call
    # `DeleteQuickConnect` to delete any records related to the deleted
    # users. This will help you:
    #
    #  * Avoid dangling resources that impact your service quotas.
    #
    # * Remove deleted users so they don't appear to agents as transfer
    #   options.
    #
    # * Avoid the disruption of other Amazon Connect processes, such as
    #   instance replication and syncing if you're using [Amazon Connect
    #   Global Resiliency][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteUser.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_quick_connect({
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteQuickConnect AWS API Documentation
    #
    # @overload delete_quick_connect(params = {})
    # @param [Hash] params ({})
    def delete_quick_connect(params = {}, options = {})
      req = build_request(:delete_quick_connect, params)
      req.send_request(options)
    end

    # Deletes a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_routing_profile({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteRoutingProfile AWS API Documentation
    #
    # @overload delete_routing_profile(params = {})
    # @param [Hash] params ({})
    def delete_routing_profile(params = {}, options = {})
      req = build_request(:delete_routing_profile, params)
      req.send_request(options)
    end

    # Deletes a rule for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :rule_id
    #   A unique identifier for the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     instance_id: "InstanceId", # required
    #     rule_id: "RuleId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Deletes a security profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_profile({
    #     instance_id: "InstanceId", # required
    #     security_profile_id: "SecurityProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteSecurityProfile AWS API Documentation
    #
    # @overload delete_security_profile(params = {})
    # @param [Hash] params ({})
    def delete_security_profile(params = {}, options = {})
      req = build_request(:delete_security_profile, params)
      req.send_request(options)
    end

    # Deletes the task template.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :task_template_id
    #   A unique identifier for the task template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task_template({
    #     instance_id: "InstanceId", # required
    #     task_template_id: "TaskTemplateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteTaskTemplate AWS API Documentation
    #
    # @overload delete_task_template(params = {})
    # @param [Hash] params ({})
    def delete_task_template(params = {}, options = {})
      req = build_request(:delete_task_template, params)
      req.send_request(options)
    end

    # Deletes a traffic distribution group. This API can be called only in
    # the Region where the traffic distribution group is created.
    #
    # For more information about deleting traffic distribution groups, see
    # [Delete traffic distribution groups][1] in the *Amazon Connect
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/delete-traffic-distribution-groups.html
    #
    # @option params [required, String] :traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN of the traffic distribution group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_traffic_distribution_group({
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteTrafficDistributionGroup AWS API Documentation
    #
    # @overload delete_traffic_distribution_group(params = {})
    # @param [Hash] params ({})
    def delete_traffic_distribution_group(params = {}, options = {})
      req = build_request(:delete_traffic_distribution_group, params)
      req.send_request(options)
    end

    # Deletes a use case from an integration association.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_association_id
    #   The identifier for the integration association.
    #
    # @option params [required, String] :use_case_id
    #   The identifier for the use case.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_use_case({
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     use_case_id: "UseCaseId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUseCase AWS API Documentation
    #
    # @overload delete_use_case(params = {})
    # @param [Hash] params ({})
    def delete_use_case(params = {}, options = {})
      req = build_request(:delete_use_case, params)
      req.send_request(options)
    end

    # Deletes a user account from the specified Amazon Connect instance.
    #
    # For information about what happens to a user's data when their
    # account is deleted, see [Delete Users from Your Amazon Connect
    # Instance][1] in the *Amazon Connect Administrator Guide*.
    #
    # After calling DeleteUser, call [DeleteQuickConnect][2] to delete any
    # records related to the deleted users. This will help you:
    #
    #  * Avoid dangling resources that impact your service quotas.
    #
    # * Remove deleted users so they don't appear to agents as transfer
    #   options.
    #
    # * Avoid the disruption of other Amazon Connect processes, such as
    #   instance replication and syncing if you're using [Amazon Connect
    #   Global Resiliency][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteQuickConnect.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes an existing user hierarchy group. It must not be associated
    # with any agents or have any active child groups.
    #
    # @option params [required, String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_hierarchy_group({
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUserHierarchyGroup AWS API Documentation
    #
    # @overload delete_user_hierarchy_group(params = {})
    # @param [Hash] params ({})
    def delete_user_hierarchy_group(params = {}, options = {})
      req = build_request(:delete_user_hierarchy_group, params)
      req.send_request(options)
    end

    # Deletes the view entirely. It deletes the view and all associated
    # qualifiers (versions and aliases).
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_view({
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteView AWS API Documentation
    #
    # @overload delete_view(params = {})
    # @param [Hash] params ({})
    def delete_view(params = {}, options = {})
      req = build_request(:delete_view, params)
      req.send_request(options)
    end

    # Deletes the particular version specified in `ViewVersion` identifier.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #
    # @option params [required, Integer] :view_version
    #   The version number of the view.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_view_version({
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     view_version: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteViewVersion AWS API Documentation
    #
    # @overload delete_view_version(params = {})
    # @param [Hash] params ({})
    def delete_view_version(params = {}, options = {})
      req = build_request(:delete_view_version, params)
      req.send_request(options)
    end

    # Deletes the vocabulary that has the given identifier.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :vocabulary_id
    #   The identifier of the custom vocabulary.
    #
    # @return [Types::DeleteVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVocabularyResponse#vocabulary_arn #vocabulary_arn} => String
    #   * {Types::DeleteVocabularyResponse#vocabulary_id #vocabulary_id} => String
    #   * {Types::DeleteVocabularyResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary({
    #     instance_id: "InstanceId", # required
    #     vocabulary_id: "VocabularyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_arn #=> String
    #   resp.vocabulary_id #=> String
    #   resp.state #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteVocabulary AWS API Documentation
    #
    # @overload delete_vocabulary(params = {})
    # @param [Hash] params ({})
    def delete_vocabulary(params = {}, options = {})
      req = build_request(:delete_vocabulary, params)
      req.send_request(options)
    end

    # Describes an agent status.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :agent_status_id
    #   The identifier for the agent status.
    #
    # @return [Types::DescribeAgentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgentStatusResponse#agent_status #agent_status} => Types::AgentStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agent_status({
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_status.agent_status_arn #=> String
    #   resp.agent_status.agent_status_id #=> String
    #   resp.agent_status.name #=> String
    #   resp.agent_status.description #=> String
    #   resp.agent_status.type #=> String, one of "ROUTABLE", "CUSTOM", "OFFLINE"
    #   resp.agent_status.display_order #=> Integer
    #   resp.agent_status.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_status.tags #=> Hash
    #   resp.agent_status.tags["TagKey"] #=> String
    #   resp.agent_status.last_modified_time #=> Time
    #   resp.agent_status.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeAgentStatus AWS API Documentation
    #
    # @overload describe_agent_status(params = {})
    # @param [Hash] params ({})
    def describe_agent_status(params = {}, options = {})
      req = build_request(:describe_agent_status, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change. To request access to this API, contact Amazon Web Services
    # Support.
    #
    # Describes the target authentication profile.
    #
    # @option params [required, String] :authentication_profile_id
    #   A unique identifier for the authentication profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeAuthenticationProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAuthenticationProfileResponse#authentication_profile #authentication_profile} => Types::AuthenticationProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_authentication_profile({
    #     authentication_profile_id: "AuthenticationProfileId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication_profile.id #=> String
    #   resp.authentication_profile.arn #=> String
    #   resp.authentication_profile.name #=> String
    #   resp.authentication_profile.description #=> String
    #   resp.authentication_profile.allowed_ips #=> Array
    #   resp.authentication_profile.allowed_ips[0] #=> String
    #   resp.authentication_profile.blocked_ips #=> Array
    #   resp.authentication_profile.blocked_ips[0] #=> String
    #   resp.authentication_profile.is_default #=> Boolean
    #   resp.authentication_profile.created_time #=> Time
    #   resp.authentication_profile.last_modified_time #=> Time
    #   resp.authentication_profile.last_modified_region #=> String
    #   resp.authentication_profile.periodic_session_duration #=> Integer
    #   resp.authentication_profile.max_session_duration #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeAuthenticationProfile AWS API Documentation
    #
    # @overload describe_authentication_profile(params = {})
    # @param [Hash] params ({})
    def describe_authentication_profile(params = {}, options = {})
      req = build_request(:describe_authentication_profile, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Describes the specified contact.
    #
    # * `SystemEndpoint` is not populated for contacts with initiation
    #   method of MONITOR, QUEUE\_TRANSFER, or CALLBACK
    #
    # * Contact information remains available in Amazon Connect for 24
    #   months from the `InitiationTimestamp`, and then it is deleted. Only
    #   contact information that is available in Amazon Connect is returned
    #   by this API.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @return [Types::DescribeContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactResponse#contact #contact} => Types::Contact
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact.arn #=> String
    #   resp.contact.id #=> String
    #   resp.contact.initial_contact_id #=> String
    #   resp.contact.previous_contact_id #=> String
    #   resp.contact.contact_association_id #=> String
    #   resp.contact.initiation_method #=> String, one of "INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"
    #   resp.contact.name #=> String
    #   resp.contact.description #=> String
    #   resp.contact.channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.contact.queue_info.id #=> String
    #   resp.contact.queue_info.enqueue_timestamp #=> Time
    #   resp.contact.agent_info.id #=> String
    #   resp.contact.agent_info.connected_to_agent_timestamp #=> Time
    #   resp.contact.agent_info.agent_pause_duration_in_seconds #=> Integer
    #   resp.contact.agent_info.hierarchy_groups.level_1.arn #=> String
    #   resp.contact.agent_info.hierarchy_groups.level_2.arn #=> String
    #   resp.contact.agent_info.hierarchy_groups.level_3.arn #=> String
    #   resp.contact.agent_info.hierarchy_groups.level_4.arn #=> String
    #   resp.contact.agent_info.hierarchy_groups.level_5.arn #=> String
    #   resp.contact.agent_info.device_info.platform_name #=> String
    #   resp.contact.agent_info.device_info.platform_version #=> String
    #   resp.contact.agent_info.device_info.operating_system #=> String
    #   resp.contact.agent_info.capabilities.video #=> String, one of "SEND"
    #   resp.contact.agent_info.capabilities.screen_share #=> String, one of "SEND"
    #   resp.contact.agent_info.after_contact_work_duration #=> Integer
    #   resp.contact.agent_info.after_contact_work_start_timestamp #=> Time
    #   resp.contact.agent_info.after_contact_work_end_timestamp #=> Time
    #   resp.contact.agent_info.agent_initiated_hold_duration #=> Integer
    #   resp.contact.agent_info.state_transitions #=> Array
    #   resp.contact.agent_info.state_transitions[0].state #=> String, one of "INITIAL", "CONNECTED", "DISCONNECTED", "MISSED"
    #   resp.contact.agent_info.state_transitions[0].state_start_timestamp #=> Time
    #   resp.contact.agent_info.state_transitions[0].state_end_timestamp #=> Time
    #   resp.contact.initiation_timestamp #=> Time
    #   resp.contact.disconnect_timestamp #=> Time
    #   resp.contact.last_update_timestamp #=> Time
    #   resp.contact.last_paused_timestamp #=> Time
    #   resp.contact.last_resumed_timestamp #=> Time
    #   resp.contact.total_pause_count #=> Integer
    #   resp.contact.total_pause_duration_in_seconds #=> Integer
    #   resp.contact.scheduled_timestamp #=> Time
    #   resp.contact.related_contact_id #=> String
    #   resp.contact.wisdom_info.session_arn #=> String
    #   resp.contact.customer_id #=> String
    #   resp.contact.customer_endpoint.type #=> String, one of "TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"
    #   resp.contact.customer_endpoint.address #=> String
    #   resp.contact.customer_endpoint.display_name #=> String
    #   resp.contact.system_endpoint.type #=> String, one of "TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"
    #   resp.contact.system_endpoint.address #=> String
    #   resp.contact.system_endpoint.display_name #=> String
    #   resp.contact.queue_time_adjustment_seconds #=> Integer
    #   resp.contact.queue_priority #=> Integer
    #   resp.contact.tags #=> Hash
    #   resp.contact.tags["ContactTagKey"] #=> String
    #   resp.contact.connected_to_system_timestamp #=> Time
    #   resp.contact.routing_criteria.steps #=> Array
    #   resp.contact.routing_criteria.steps[0].expiry.duration_in_seconds #=> Integer
    #   resp.contact.routing_criteria.steps[0].expiry.expiry_timestamp #=> Time
    #   resp.contact.routing_criteria.steps[0].expression.attribute_condition.name #=> String
    #   resp.contact.routing_criteria.steps[0].expression.attribute_condition.value #=> String
    #   resp.contact.routing_criteria.steps[0].expression.attribute_condition.proficiency_level #=> Float
    #   resp.contact.routing_criteria.steps[0].expression.attribute_condition.range.min_proficiency_level #=> Float
    #   resp.contact.routing_criteria.steps[0].expression.attribute_condition.range.max_proficiency_level #=> Float
    #   resp.contact.routing_criteria.steps[0].expression.attribute_condition.match_criteria.agents_criteria.agent_ids #=> Array
    #   resp.contact.routing_criteria.steps[0].expression.attribute_condition.match_criteria.agents_criteria.agent_ids[0] #=> String
    #   resp.contact.routing_criteria.steps[0].expression.attribute_condition.comparison_operator #=> String
    #   resp.contact.routing_criteria.steps[0].expression.and_expression #=> Array
    #   resp.contact.routing_criteria.steps[0].expression.and_expression[0] #=> Types::Expression
    #   resp.contact.routing_criteria.steps[0].expression.or_expression #=> Array
    #   resp.contact.routing_criteria.steps[0].expression.or_expression[0] #=> Types::Expression
    #   resp.contact.routing_criteria.steps[0].expression.not_attribute_condition.name #=> String
    #   resp.contact.routing_criteria.steps[0].expression.not_attribute_condition.value #=> String
    #   resp.contact.routing_criteria.steps[0].expression.not_attribute_condition.proficiency_level #=> Float
    #   resp.contact.routing_criteria.steps[0].expression.not_attribute_condition.range.min_proficiency_level #=> Float
    #   resp.contact.routing_criteria.steps[0].expression.not_attribute_condition.range.max_proficiency_level #=> Float
    #   resp.contact.routing_criteria.steps[0].expression.not_attribute_condition.match_criteria.agents_criteria.agent_ids #=> Array
    #   resp.contact.routing_criteria.steps[0].expression.not_attribute_condition.match_criteria.agents_criteria.agent_ids[0] #=> String
    #   resp.contact.routing_criteria.steps[0].expression.not_attribute_condition.comparison_operator #=> String
    #   resp.contact.routing_criteria.steps[0].status #=> String, one of "ACTIVE", "INACTIVE", "JOINED", "EXPIRED"
    #   resp.contact.routing_criteria.activation_timestamp #=> Time
    #   resp.contact.routing_criteria.index #=> Integer
    #   resp.contact.customer.device_info.platform_name #=> String
    #   resp.contact.customer.device_info.platform_version #=> String
    #   resp.contact.customer.device_info.operating_system #=> String
    #   resp.contact.customer.capabilities.video #=> String, one of "SEND"
    #   resp.contact.customer.capabilities.screen_share #=> String, one of "SEND"
    #   resp.contact.campaign.campaign_id #=> String
    #   resp.contact.answering_machine_detection_status #=> String, one of "ANSWERED", "UNDETECTED", "ERROR", "HUMAN_ANSWERED", "SIT_TONE_DETECTED", "SIT_TONE_BUSY", "SIT_TONE_INVALID_NUMBER", "FAX_MACHINE_DETECTED", "VOICEMAIL_BEEP", "VOICEMAIL_NO_BEEP", "AMD_UNRESOLVED", "AMD_UNANSWERED", "AMD_ERROR", "AMD_NOT_APPLICABLE"
    #   resp.contact.customer_voice_activity.greeting_start_timestamp #=> Time
    #   resp.contact.customer_voice_activity.greeting_end_timestamp #=> Time
    #   resp.contact.quality_metrics.agent.audio.quality_score #=> Float
    #   resp.contact.quality_metrics.agent.audio.potential_quality_issues #=> Array
    #   resp.contact.quality_metrics.agent.audio.potential_quality_issues[0] #=> String
    #   resp.contact.quality_metrics.customer.audio.quality_score #=> Float
    #   resp.contact.quality_metrics.customer.audio.potential_quality_issues #=> Array
    #   resp.contact.quality_metrics.customer.audio.potential_quality_issues[0] #=> String
    #   resp.contact.chat_metrics.chat_contact_metrics.multi_party #=> Boolean
    #   resp.contact.chat_metrics.chat_contact_metrics.total_messages #=> Integer
    #   resp.contact.chat_metrics.chat_contact_metrics.total_bot_messages #=> Integer
    #   resp.contact.chat_metrics.chat_contact_metrics.total_bot_message_length_in_chars #=> Integer
    #   resp.contact.chat_metrics.chat_contact_metrics.conversation_close_time_in_millis #=> Integer
    #   resp.contact.chat_metrics.chat_contact_metrics.conversation_turn_count #=> Integer
    #   resp.contact.chat_metrics.chat_contact_metrics.agent_first_response_timestamp #=> Time
    #   resp.contact.chat_metrics.chat_contact_metrics.agent_first_response_time_in_millis #=> Integer
    #   resp.contact.chat_metrics.agent_metrics.participant_id #=> String
    #   resp.contact.chat_metrics.agent_metrics.participant_type #=> String, one of "ALL", "MANAGER", "AGENT", "CUSTOMER", "THIRDPARTY"
    #   resp.contact.chat_metrics.agent_metrics.conversation_abandon #=> Boolean
    #   resp.contact.chat_metrics.agent_metrics.messages_sent #=> Integer
    #   resp.contact.chat_metrics.agent_metrics.num_responses #=> Integer
    #   resp.contact.chat_metrics.agent_metrics.message_length_in_chars #=> Integer
    #   resp.contact.chat_metrics.agent_metrics.total_response_time_in_millis #=> Integer
    #   resp.contact.chat_metrics.agent_metrics.max_response_time_in_millis #=> Integer
    #   resp.contact.chat_metrics.agent_metrics.last_message_timestamp #=> Time
    #   resp.contact.chat_metrics.customer_metrics.participant_id #=> String
    #   resp.contact.chat_metrics.customer_metrics.participant_type #=> String, one of "ALL", "MANAGER", "AGENT", "CUSTOMER", "THIRDPARTY"
    #   resp.contact.chat_metrics.customer_metrics.conversation_abandon #=> Boolean
    #   resp.contact.chat_metrics.customer_metrics.messages_sent #=> Integer
    #   resp.contact.chat_metrics.customer_metrics.num_responses #=> Integer
    #   resp.contact.chat_metrics.customer_metrics.message_length_in_chars #=> Integer
    #   resp.contact.chat_metrics.customer_metrics.total_response_time_in_millis #=> Integer
    #   resp.contact.chat_metrics.customer_metrics.max_response_time_in_millis #=> Integer
    #   resp.contact.chat_metrics.customer_metrics.last_message_timestamp #=> Time
    #   resp.contact.disconnect_details.potential_disconnect_issue #=> String
    #   resp.contact.additional_email_recipients.to_list #=> Array
    #   resp.contact.additional_email_recipients.to_list[0].address #=> String
    #   resp.contact.additional_email_recipients.to_list[0].display_name #=> String
    #   resp.contact.additional_email_recipients.cc_list #=> Array
    #   resp.contact.additional_email_recipients.cc_list[0].address #=> String
    #   resp.contact.additional_email_recipients.cc_list[0].display_name #=> String
    #   resp.contact.segment_attributes #=> Hash
    #   resp.contact.segment_attributes["SegmentAttributeName"].value_string #=> String
    #   resp.contact.segment_attributes["SegmentAttributeName"].value_map #=> Hash
    #   resp.contact.segment_attributes["SegmentAttributeName"].value_map["SegmentAttributeName"] #=> Types::SegmentAttributeValue
    #   resp.contact.segment_attributes["SegmentAttributeName"].value_integer #=> Integer
    #   resp.contact.recordings #=> Array
    #   resp.contact.recordings[0].storage_type #=> String, one of "S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"
    #   resp.contact.recordings[0].location #=> String
    #   resp.contact.recordings[0].media_stream_type #=> String, one of "AUDIO", "VIDEO"
    #   resp.contact.recordings[0].participant_type #=> String, one of "ALL", "MANAGER", "AGENT", "CUSTOMER", "THIRDPARTY"
    #   resp.contact.recordings[0].fragment_start_number #=> String
    #   resp.contact.recordings[0].fragment_stop_number #=> String
    #   resp.contact.recordings[0].start_timestamp #=> Time
    #   resp.contact.recordings[0].stop_timestamp #=> Time
    #   resp.contact.recordings[0].status #=> String, one of "AVAILABLE", "DELETED"
    #   resp.contact.recordings[0].deletion_reason #=> String
    #   resp.contact.disconnect_reason #=> String
    #   resp.contact.contact_evaluations #=> Hash
    #   resp.contact.contact_evaluations["EvaluationId"].form_id #=> String
    #   resp.contact.contact_evaluations["EvaluationId"].evaluation_arn #=> String
    #   resp.contact.contact_evaluations["EvaluationId"].status #=> String, one of "COMPLETE", "IN_PROGRESS", "DELETED"
    #   resp.contact.contact_evaluations["EvaluationId"].start_timestamp #=> Time
    #   resp.contact.contact_evaluations["EvaluationId"].end_timestamp #=> Time
    #   resp.contact.contact_evaluations["EvaluationId"].delete_timestamp #=> Time
    #   resp.contact.contact_evaluations["EvaluationId"].export_location #=> String
    #   resp.contact.contact_details.name #=> String
    #   resp.contact.contact_details.description #=> String
    #   resp.contact.attributes #=> Hash
    #   resp.contact.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContact AWS API Documentation
    #
    # @overload describe_contact(params = {})
    # @param [Hash] params ({})
    def describe_contact(params = {}, options = {})
      req = build_request(:describe_contact, params)
      req.send_request(options)
    end

    # Describes a contact evaluation in the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_id
    #   A unique identifier for the contact evaluation.
    #
    # @return [Types::DescribeContactEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactEvaluationResponse#evaluation #evaluation} => Types::Evaluation
    #   * {Types::DescribeContactEvaluationResponse#evaluation_form #evaluation_form} => Types::EvaluationFormContent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation.evaluation_id #=> String
    #   resp.evaluation.evaluation_arn #=> String
    #   resp.evaluation.metadata.contact_id #=> String
    #   resp.evaluation.metadata.evaluator_arn #=> String
    #   resp.evaluation.metadata.contact_agent_id #=> String
    #   resp.evaluation.metadata.score.percentage #=> Float
    #   resp.evaluation.metadata.score.not_applicable #=> Boolean
    #   resp.evaluation.metadata.score.automatic_fail #=> Boolean
    #   resp.evaluation.answers #=> Hash
    #   resp.evaluation.answers["ResourceId"].value.string_value #=> String
    #   resp.evaluation.answers["ResourceId"].value.numeric_value #=> Float
    #   resp.evaluation.answers["ResourceId"].value.not_applicable #=> Boolean
    #   resp.evaluation.answers["ResourceId"].system_suggested_value.string_value #=> String
    #   resp.evaluation.answers["ResourceId"].system_suggested_value.numeric_value #=> Float
    #   resp.evaluation.answers["ResourceId"].system_suggested_value.not_applicable #=> Boolean
    #   resp.evaluation.notes #=> Hash
    #   resp.evaluation.notes["ResourceId"].value #=> String
    #   resp.evaluation.status #=> String, one of "DRAFT", "SUBMITTED"
    #   resp.evaluation.scores #=> Hash
    #   resp.evaluation.scores["ResourceId"].percentage #=> Float
    #   resp.evaluation.scores["ResourceId"].not_applicable #=> Boolean
    #   resp.evaluation.scores["ResourceId"].automatic_fail #=> Boolean
    #   resp.evaluation.created_time #=> Time
    #   resp.evaluation.last_modified_time #=> Time
    #   resp.evaluation.tags #=> Hash
    #   resp.evaluation.tags["TagKey"] #=> String
    #   resp.evaluation_form.evaluation_form_version #=> Integer
    #   resp.evaluation_form.evaluation_form_id #=> String
    #   resp.evaluation_form.evaluation_form_arn #=> String
    #   resp.evaluation_form.title #=> String
    #   resp.evaluation_form.description #=> String
    #   resp.evaluation_form.items #=> Array
    #   resp.evaluation_form.items[0].section.title #=> String
    #   resp.evaluation_form.items[0].section.ref_id #=> String
    #   resp.evaluation_form.items[0].section.instructions #=> String
    #   resp.evaluation_form.items[0].section.items #=> Types::EvaluationFormItemsList
    #   resp.evaluation_form.items[0].section.weight #=> Float
    #   resp.evaluation_form.items[0].question.title #=> String
    #   resp.evaluation_form.items[0].question.instructions #=> String
    #   resp.evaluation_form.items[0].question.ref_id #=> String
    #   resp.evaluation_form.items[0].question.not_applicable_enabled #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type #=> String, one of "TEXT", "SINGLESELECT", "NUMERIC"
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.min_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.max_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].min_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].max_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].score #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].automatic_fail #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.automation.property_value.label #=> String, one of "OVERALL_CUSTOMER_SENTIMENT_SCORE", "OVERALL_AGENT_SENTIMENT_SCORE", "NON_TALK_TIME", "NON_TALK_TIME_PERCENTAGE", "NUMBER_OF_INTERRUPTIONS", "CONTACT_DURATION", "AGENT_INTERACTION_DURATION", "CUSTOMER_HOLD_TIME"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].ref_id #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].text #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].score #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].automatic_fail #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.display_as #=> String, one of "DROPDOWN", "RADIO"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.category #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.condition #=> String, one of "PRESENT", "NOT_PRESENT"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.option_ref_id #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.default_option_ref_id #=> String
    #   resp.evaluation_form.items[0].question.weight #=> Float
    #   resp.evaluation_form.scoring_strategy.mode #=> String, one of "QUESTION_ONLY", "SECTION_ONLY"
    #   resp.evaluation_form.scoring_strategy.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactEvaluation AWS API Documentation
    #
    # @overload describe_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def describe_contact_evaluation(params = {}, options = {})
      req = build_request(:describe_contact_evaluation, params)
      req.send_request(options)
    end

    # Describes the specified flow.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    # Use the `$SAVED` alias in the request to describe the `SAVED` content
    # of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED`. After
    # a flow is published, `$SAVED` needs to be supplied to view saved
    # content that has not been published.
    #
    # Use `arn:aws:.../contact-flow/{id}:{version}` to retrieve the content
    # of a specific flow version.
    #
    # In the response, **Status** indicates the flow status as either
    # `SAVED` or `PUBLISHED`. The `PUBLISHED` status will initiate
    # validation on the content. `SAVED` does not initiate validation of the
    # content. `SAVED` \| `PUBLISHED`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @return [Types::DescribeContactFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactFlowResponse#contact_flow #contact_flow} => Types::ContactFlow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_flow({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow.arn #=> String
    #   resp.contact_flow.id #=> String
    #   resp.contact_flow.name #=> String
    #   resp.contact_flow.type #=> String, one of "CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"
    #   resp.contact_flow.state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.contact_flow.status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.contact_flow.description #=> String
    #   resp.contact_flow.content #=> String
    #   resp.contact_flow.tags #=> Hash
    #   resp.contact_flow.tags["TagKey"] #=> String
    #   resp.contact_flow.flow_content_sha_256 #=> String
    #   resp.contact_flow.version #=> Integer
    #   resp.contact_flow.version_description #=> String
    #   resp.contact_flow.last_modified_time #=> Time
    #   resp.contact_flow.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlow AWS API Documentation
    #
    # @overload describe_contact_flow(params = {})
    # @param [Hash] params ({})
    def describe_contact_flow(params = {}, options = {})
      req = build_request(:describe_contact_flow, params)
      req.send_request(options)
    end

    # Describes the specified flow module.
    #
    # Use the `$SAVED` alias in the request to describe the `SAVED` content
    # of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED`. After
    # a flow is published, `$SAVED` needs to be supplied to view saved
    # content that has not been published.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_module_id
    #   The identifier of the flow module.
    #
    # @return [Types::DescribeContactFlowModuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactFlowModuleResponse#contact_flow_module #contact_flow_module} => Types::ContactFlowModule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_flow_module({
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_module.arn #=> String
    #   resp.contact_flow_module.id #=> String
    #   resp.contact_flow_module.name #=> String
    #   resp.contact_flow_module.content #=> String
    #   resp.contact_flow_module.description #=> String
    #   resp.contact_flow_module.state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.contact_flow_module.status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.contact_flow_module.tags #=> Hash
    #   resp.contact_flow_module.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlowModule AWS API Documentation
    #
    # @overload describe_contact_flow_module(params = {})
    # @param [Hash] params ({})
    def describe_contact_flow_module(params = {}, options = {})
      req = build_request(:describe_contact_flow_module, params)
      req.send_request(options)
    end

    # Describe email address form the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :email_address_id
    #   The identifier of the email address.
    #
    # @return [Types::DescribeEmailAddressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEmailAddressResponse#email_address_id #email_address_id} => String
    #   * {Types::DescribeEmailAddressResponse#email_address_arn #email_address_arn} => String
    #   * {Types::DescribeEmailAddressResponse#email_address #email_address} => String
    #   * {Types::DescribeEmailAddressResponse#display_name #display_name} => String
    #   * {Types::DescribeEmailAddressResponse#description #description} => String
    #   * {Types::DescribeEmailAddressResponse#create_timestamp #create_timestamp} => String
    #   * {Types::DescribeEmailAddressResponse#modified_timestamp #modified_timestamp} => String
    #   * {Types::DescribeEmailAddressResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_email_address({
    #     instance_id: "InstanceId", # required
    #     email_address_id: "EmailAddressId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.email_address_id #=> String
    #   resp.email_address_arn #=> String
    #   resp.email_address #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.create_timestamp #=> String
    #   resp.modified_timestamp #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeEmailAddress AWS API Documentation
    #
    # @overload describe_email_address(params = {})
    # @param [Hash] params ({})
    def describe_email_address(params = {}, options = {})
      req = build_request(:describe_email_address, params)
      req.send_request(options)
    end

    # Describes an evaluation form in the specified Amazon Connect instance.
    # If the version property is not provided, the latest version of the
    # evaluation form is described.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   A unique identifier for the contact evaluation.
    #
    # @option params [Integer] :evaluation_form_version
    #   A version of the evaluation form.
    #
    # @return [Types::DescribeEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEvaluationFormResponse#evaluation_form #evaluation_form} => Types::EvaluationForm
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form.evaluation_form_id #=> String
    #   resp.evaluation_form.evaluation_form_version #=> Integer
    #   resp.evaluation_form.locked #=> Boolean
    #   resp.evaluation_form.evaluation_form_arn #=> String
    #   resp.evaluation_form.title #=> String
    #   resp.evaluation_form.description #=> String
    #   resp.evaluation_form.status #=> String, one of "DRAFT", "ACTIVE"
    #   resp.evaluation_form.items #=> Array
    #   resp.evaluation_form.items[0].section.title #=> String
    #   resp.evaluation_form.items[0].section.ref_id #=> String
    #   resp.evaluation_form.items[0].section.instructions #=> String
    #   resp.evaluation_form.items[0].section.items #=> Types::EvaluationFormItemsList
    #   resp.evaluation_form.items[0].section.weight #=> Float
    #   resp.evaluation_form.items[0].question.title #=> String
    #   resp.evaluation_form.items[0].question.instructions #=> String
    #   resp.evaluation_form.items[0].question.ref_id #=> String
    #   resp.evaluation_form.items[0].question.not_applicable_enabled #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type #=> String, one of "TEXT", "SINGLESELECT", "NUMERIC"
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.min_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.max_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].min_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].max_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].score #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].automatic_fail #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.automation.property_value.label #=> String, one of "OVERALL_CUSTOMER_SENTIMENT_SCORE", "OVERALL_AGENT_SENTIMENT_SCORE", "NON_TALK_TIME", "NON_TALK_TIME_PERCENTAGE", "NUMBER_OF_INTERRUPTIONS", "CONTACT_DURATION", "AGENT_INTERACTION_DURATION", "CUSTOMER_HOLD_TIME"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].ref_id #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].text #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].score #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].automatic_fail #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.display_as #=> String, one of "DROPDOWN", "RADIO"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.category #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.condition #=> String, one of "PRESENT", "NOT_PRESENT"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.option_ref_id #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.default_option_ref_id #=> String
    #   resp.evaluation_form.items[0].question.weight #=> Float
    #   resp.evaluation_form.scoring_strategy.mode #=> String, one of "QUESTION_ONLY", "SECTION_ONLY"
    #   resp.evaluation_form.scoring_strategy.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.evaluation_form.created_time #=> Time
    #   resp.evaluation_form.created_by #=> String
    #   resp.evaluation_form.last_modified_time #=> Time
    #   resp.evaluation_form.last_modified_by #=> String
    #   resp.evaluation_form.tags #=> Hash
    #   resp.evaluation_form.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeEvaluationForm AWS API Documentation
    #
    # @overload describe_evaluation_form(params = {})
    # @param [Hash] params ({})
    def describe_evaluation_form(params = {}, options = {})
      req = build_request(:describe_evaluation_form, params)
      req.send_request(options)
    end

    # Describes the hours of operation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @return [Types::DescribeHoursOfOperationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHoursOfOperationResponse#hours_of_operation #hours_of_operation} => Types::HoursOfOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation.hours_of_operation_id #=> String
    #   resp.hours_of_operation.hours_of_operation_arn #=> String
    #   resp.hours_of_operation.name #=> String
    #   resp.hours_of_operation.description #=> String
    #   resp.hours_of_operation.time_zone #=> String
    #   resp.hours_of_operation.config #=> Array
    #   resp.hours_of_operation.config[0].day #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.hours_of_operation.config[0].start_time.hours #=> Integer
    #   resp.hours_of_operation.config[0].start_time.minutes #=> Integer
    #   resp.hours_of_operation.config[0].end_time.hours #=> Integer
    #   resp.hours_of_operation.config[0].end_time.minutes #=> Integer
    #   resp.hours_of_operation.tags #=> Hash
    #   resp.hours_of_operation.tags["TagKey"] #=> String
    #   resp.hours_of_operation.last_modified_time #=> Time
    #   resp.hours_of_operation.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeHoursOfOperation AWS API Documentation
    #
    # @overload describe_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def describe_hours_of_operation(params = {}, options = {})
      req = build_request(:describe_hours_of_operation, params)
      req.send_request(options)
    end

    # Describes the hours of operation override.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @option params [required, String] :hours_of_operation_override_id
    #   The identifier for the hours of operation override.
    #
    # @return [Types::DescribeHoursOfOperationOverrideResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHoursOfOperationOverrideResponse#hours_of_operation_override #hours_of_operation_override} => Types::HoursOfOperationOverride
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hours_of_operation_override({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     hours_of_operation_override_id: "HoursOfOperationOverrideId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation_override.hours_of_operation_override_id #=> String
    #   resp.hours_of_operation_override.hours_of_operation_id #=> String
    #   resp.hours_of_operation_override.hours_of_operation_arn #=> String
    #   resp.hours_of_operation_override.name #=> String
    #   resp.hours_of_operation_override.description #=> String
    #   resp.hours_of_operation_override.config #=> Array
    #   resp.hours_of_operation_override.config[0].day #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.hours_of_operation_override.config[0].start_time.hours #=> Integer
    #   resp.hours_of_operation_override.config[0].start_time.minutes #=> Integer
    #   resp.hours_of_operation_override.config[0].end_time.hours #=> Integer
    #   resp.hours_of_operation_override.config[0].end_time.minutes #=> Integer
    #   resp.hours_of_operation_override.effective_from #=> String
    #   resp.hours_of_operation_override.effective_till #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeHoursOfOperationOverride AWS API Documentation
    #
    # @overload describe_hours_of_operation_override(params = {})
    # @param [Hash] params ({})
    def describe_hours_of_operation_override(params = {}, options = {})
      req = build_request(:describe_hours_of_operation_override, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns the current state of the specified instance identifier. It
    # tracks the instance while it is being created and returns an error
    # status, if applicable.
    #
    # If an instance is not created successfully, the instance status reason
    # field returns details relevant to the reason. The instance in a failed
    # state is returned only for 24 hours after the CreateInstance API was
    # invoked.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceResponse#instance #instance} => Types::Instance
    #   * {Types::DescribeInstanceResponse#replication_configuration #replication_configuration} => Types::ReplicationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.id #=> String
    #   resp.instance.arn #=> String
    #   resp.instance.identity_management_type #=> String, one of "SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"
    #   resp.instance.instance_alias #=> String
    #   resp.instance.created_time #=> Time
    #   resp.instance.service_role #=> String
    #   resp.instance.instance_status #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"
    #   resp.instance.status_reason.message #=> String
    #   resp.instance.inbound_calls_enabled #=> Boolean
    #   resp.instance.outbound_calls_enabled #=> Boolean
    #   resp.instance.instance_access_url #=> String
    #   resp.instance.tags #=> Hash
    #   resp.instance.tags["TagKey"] #=> String
    #   resp.replication_configuration.replication_status_summary_list #=> Array
    #   resp.replication_configuration.replication_status_summary_list[0].region #=> String
    #   resp.replication_configuration.replication_status_summary_list[0].replication_status #=> String, one of "INSTANCE_REPLICATION_COMPLETE", "INSTANCE_REPLICATION_IN_PROGRESS", "INSTANCE_REPLICATION_FAILED", "INSTANCE_REPLICA_DELETING", "INSTANCE_REPLICATION_DELETION_FAILED", "RESOURCE_REPLICATION_NOT_STARTED"
    #   resp.replication_configuration.replication_status_summary_list[0].replication_status_reason #=> String
    #   resp.replication_configuration.source_region #=> String
    #   resp.replication_configuration.global_sign_in_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstance AWS API Documentation
    #
    # @overload describe_instance(params = {})
    # @param [Hash] params ({})
    def describe_instance(params = {}, options = {})
      req = build_request(:describe_instance, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Describes the specified instance attribute.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :attribute_type
    #   The type of attribute.
    #
    # @return [Types::DescribeInstanceAttributeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceAttributeResponse#attribute #attribute} => Types::Attribute
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_attribute({
    #     instance_id: "InstanceId", # required
    #     attribute_type: "INBOUND_CALLS", # required, accepts INBOUND_CALLS, OUTBOUND_CALLS, CONTACTFLOW_LOGS, CONTACT_LENS, AUTO_RESOLVE_BEST_VOICES, USE_CUSTOM_TTS_VOICES, EARLY_MEDIA, MULTI_PARTY_CONFERENCE, HIGH_VOLUME_OUTBOUND, ENHANCED_CONTACT_MONITORING, ENHANCED_CHAT_MONITORING, MULTI_PARTY_CHAT_CONFERENCE
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute.attribute_type #=> String, one of "INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE", "HIGH_VOLUME_OUTBOUND", "ENHANCED_CONTACT_MONITORING", "ENHANCED_CHAT_MONITORING", "MULTI_PARTY_CHAT_CONFERENCE"
    #   resp.attribute.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceAttribute AWS API Documentation
    #
    # @overload describe_instance_attribute(params = {})
    # @param [Hash] params ({})
    def describe_instance_attribute(params = {}, options = {})
      req = build_request(:describe_instance_attribute, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Retrieves the current storage configurations for the specified
    # resource type, association ID, and instance ID.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @return [Types::DescribeInstanceStorageConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceStorageConfigResponse#storage_config #storage_config} => Types::InstanceStorageConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_storage_config({
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS, REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS, REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS, EMAIL_MESSAGES
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_config.association_id #=> String
    #   resp.storage_config.storage_type #=> String, one of "S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"
    #   resp.storage_config.s3_config.bucket_name #=> String
    #   resp.storage_config.s3_config.bucket_prefix #=> String
    #   resp.storage_config.s3_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.storage_config.s3_config.encryption_config.key_id #=> String
    #   resp.storage_config.kinesis_video_stream_config.prefix #=> String
    #   resp.storage_config.kinesis_video_stream_config.retention_period_hours #=> Integer
    #   resp.storage_config.kinesis_video_stream_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.storage_config.kinesis_video_stream_config.encryption_config.key_id #=> String
    #   resp.storage_config.kinesis_stream_config.stream_arn #=> String
    #   resp.storage_config.kinesis_firehose_config.firehose_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceStorageConfig AWS API Documentation
    #
    # @overload describe_instance_storage_config(params = {})
    # @param [Hash] params ({})
    def describe_instance_storage_config(params = {}, options = {})
      req = build_request(:describe_instance_storage_config, params)
      req.send_request(options)
    end

    # Gets details and status of a phone number that’s claimed to your
    # Amazon Connect instance or traffic distribution group.
    #
    # If the number is claimed to a traffic distribution group, and you are
    # calling in the Amazon Web Services Region where the traffic
    # distribution group was created, you can use either a phone number ARN
    # or UUID value for the `PhoneNumberId` URI request parameter. However,
    # if the number is claimed to a traffic distribution group and you are
    # calling this API in the alternate Amazon Web Services Region
    # associated with the traffic distribution group, you must provide a
    # full phone number ARN. If a UUID is provided in this scenario, you
    # receive a `ResourceNotFoundException`.
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @return [Types::DescribePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePhoneNumberResponse#claimed_phone_number_summary #claimed_phone_number_summary} => Types::ClaimedPhoneNumberSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_phone_number({
    #     phone_number_id: "PhoneNumberId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.claimed_phone_number_summary.phone_number_id #=> String
    #   resp.claimed_phone_number_summary.phone_number_arn #=> String
    #   resp.claimed_phone_number_summary.phone_number #=> String
    #   resp.claimed_phone_number_summary.phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.claimed_phone_number_summary.phone_number_type #=> String, one of "TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"
    #   resp.claimed_phone_number_summary.phone_number_description #=> String
    #   resp.claimed_phone_number_summary.target_arn #=> String
    #   resp.claimed_phone_number_summary.instance_id #=> String
    #   resp.claimed_phone_number_summary.tags #=> Hash
    #   resp.claimed_phone_number_summary.tags["TagKey"] #=> String
    #   resp.claimed_phone_number_summary.phone_number_status.status #=> String, one of "CLAIMED", "IN_PROGRESS", "FAILED"
    #   resp.claimed_phone_number_summary.phone_number_status.message #=> String
    #   resp.claimed_phone_number_summary.source_phone_number_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePhoneNumber AWS API Documentation
    #
    # @overload describe_phone_number(params = {})
    # @param [Hash] params ({})
    def describe_phone_number(params = {}, options = {})
      req = build_request(:describe_phone_number, params)
      req.send_request(options)
    end

    # Describes a predefined attribute for the specified Amazon Connect
    # instance. *Predefined attributes* are attributes in an Amazon Connect
    # instance that can be used to route contacts to an agent or pools of
    # agents within a queue. For more information, see [Create predefined
    # attributes for routing contacts to agents][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, String] :name
    #   The name of the predefined attribute.
    #
    # @return [Types::DescribePredefinedAttributeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePredefinedAttributeResponse#predefined_attribute #predefined_attribute} => Types::PredefinedAttribute
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_predefined_attribute({
    #     instance_id: "InstanceId", # required
    #     name: "PredefinedAttributeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.predefined_attribute.name #=> String
    #   resp.predefined_attribute.values.string_list #=> Array
    #   resp.predefined_attribute.values.string_list[0] #=> String
    #   resp.predefined_attribute.last_modified_time #=> Time
    #   resp.predefined_attribute.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePredefinedAttribute AWS API Documentation
    #
    # @overload describe_predefined_attribute(params = {})
    # @param [Hash] params ({})
    def describe_predefined_attribute(params = {}, options = {})
      req = build_request(:describe_predefined_attribute, params)
      req.send_request(options)
    end

    # Describes the prompt.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :prompt_id
    #   A unique identifier for the prompt.
    #
    # @return [Types::DescribePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePromptResponse#prompt #prompt} => Types::Prompt
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_prompt({
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt.prompt_arn #=> String
    #   resp.prompt.prompt_id #=> String
    #   resp.prompt.name #=> String
    #   resp.prompt.description #=> String
    #   resp.prompt.tags #=> Hash
    #   resp.prompt.tags["TagKey"] #=> String
    #   resp.prompt.last_modified_time #=> Time
    #   resp.prompt.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePrompt AWS API Documentation
    #
    # @overload describe_prompt(params = {})
    # @param [Hash] params ({})
    def describe_prompt(params = {}, options = {})
      req = build_request(:describe_prompt, params)
      req.send_request(options)
    end

    # Describes the specified queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @return [Types::DescribeQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_queue({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.name #=> String
    #   resp.queue.queue_arn #=> String
    #   resp.queue.queue_id #=> String
    #   resp.queue.description #=> String
    #   resp.queue.outbound_caller_config.outbound_caller_id_name #=> String
    #   resp.queue.outbound_caller_config.outbound_caller_id_number_id #=> String
    #   resp.queue.outbound_caller_config.outbound_flow_id #=> String
    #   resp.queue.outbound_email_config.outbound_email_address_id #=> String
    #   resp.queue.hours_of_operation_id #=> String
    #   resp.queue.max_contacts #=> Integer
    #   resp.queue.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.queue.tags #=> Hash
    #   resp.queue.tags["TagKey"] #=> String
    #   resp.queue.last_modified_time #=> Time
    #   resp.queue.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeQueue AWS API Documentation
    #
    # @overload describe_queue(params = {})
    # @param [Hash] params ({})
    def describe_queue(params = {}, options = {})
      req = build_request(:describe_queue, params)
      req.send_request(options)
    end

    # Describes the quick connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @return [Types::DescribeQuickConnectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQuickConnectResponse#quick_connect #quick_connect} => Types::QuickConnect
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_quick_connect({
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_connect.quick_connect_arn #=> String
    #   resp.quick_connect.quick_connect_id #=> String
    #   resp.quick_connect.name #=> String
    #   resp.quick_connect.description #=> String
    #   resp.quick_connect.quick_connect_config.quick_connect_type #=> String, one of "USER", "QUEUE", "PHONE_NUMBER"
    #   resp.quick_connect.quick_connect_config.user_config.user_id #=> String
    #   resp.quick_connect.quick_connect_config.user_config.contact_flow_id #=> String
    #   resp.quick_connect.quick_connect_config.queue_config.queue_id #=> String
    #   resp.quick_connect.quick_connect_config.queue_config.contact_flow_id #=> String
    #   resp.quick_connect.quick_connect_config.phone_config.phone_number #=> String
    #   resp.quick_connect.tags #=> Hash
    #   resp.quick_connect.tags["TagKey"] #=> String
    #   resp.quick_connect.last_modified_time #=> Time
    #   resp.quick_connect.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeQuickConnect AWS API Documentation
    #
    # @overload describe_quick_connect(params = {})
    # @param [Hash] params ({})
    def describe_quick_connect(params = {}, options = {})
      req = build_request(:describe_quick_connect, params)
      req.send_request(options)
    end

    # Describes the specified routing profile.
    #
    # <note markdown="1"> `DescribeRoutingProfile` does not populate AssociatedQueueIds in its
    # response. The example Response Syntax shown on this page is incorrect;
    # we are working to update it. [SearchRoutingProfiles][1] does include
    # AssociatedQueueIds.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @return [Types::DescribeRoutingProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRoutingProfileResponse#routing_profile #routing_profile} => Types::RoutingProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_routing_profile({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile.instance_id #=> String
    #   resp.routing_profile.name #=> String
    #   resp.routing_profile.routing_profile_arn #=> String
    #   resp.routing_profile.routing_profile_id #=> String
    #   resp.routing_profile.description #=> String
    #   resp.routing_profile.media_concurrencies #=> Array
    #   resp.routing_profile.media_concurrencies[0].channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.routing_profile.media_concurrencies[0].concurrency #=> Integer
    #   resp.routing_profile.media_concurrencies[0].cross_channel_behavior.behavior_type #=> String, one of "ROUTE_CURRENT_CHANNEL_ONLY", "ROUTE_ANY_CHANNEL"
    #   resp.routing_profile.default_outbound_queue_id #=> String
    #   resp.routing_profile.tags #=> Hash
    #   resp.routing_profile.tags["TagKey"] #=> String
    #   resp.routing_profile.number_of_associated_queues #=> Integer
    #   resp.routing_profile.number_of_associated_users #=> Integer
    #   resp.routing_profile.agent_availability_timer #=> String, one of "TIME_SINCE_LAST_ACTIVITY", "TIME_SINCE_LAST_INBOUND"
    #   resp.routing_profile.last_modified_time #=> Time
    #   resp.routing_profile.last_modified_region #=> String
    #   resp.routing_profile.is_default #=> Boolean
    #   resp.routing_profile.associated_queue_ids #=> Array
    #   resp.routing_profile.associated_queue_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRoutingProfile AWS API Documentation
    #
    # @overload describe_routing_profile(params = {})
    # @param [Hash] params ({})
    def describe_routing_profile(params = {}, options = {})
      req = build_request(:describe_routing_profile, params)
      req.send_request(options)
    end

    # Describes a rule for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :rule_id
    #   A unique identifier for the rule.
    #
    # @return [Types::DescribeRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuleResponse#rule #rule} => Types::Rule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule({
    #     instance_id: "InstanceId", # required
    #     rule_id: "RuleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.name #=> String
    #   resp.rule.rule_id #=> String
    #   resp.rule.rule_arn #=> String
    #   resp.rule.trigger_event_source.event_source_name #=> String, one of "OnPostCallAnalysisAvailable", "OnRealTimeCallAnalysisAvailable", "OnRealTimeChatAnalysisAvailable", "OnPostChatAnalysisAvailable", "OnZendeskTicketCreate", "OnZendeskTicketStatusUpdate", "OnSalesforceCaseCreate", "OnContactEvaluationSubmit", "OnMetricDataUpdate", "OnCaseCreate", "OnCaseUpdate", "OnSlaBreach"
    #   resp.rule.trigger_event_source.integration_association_id #=> String
    #   resp.rule.function #=> String
    #   resp.rule.actions #=> Array
    #   resp.rule.actions[0].action_type #=> String, one of "CREATE_TASK", "ASSIGN_CONTACT_CATEGORY", "GENERATE_EVENTBRIDGE_EVENT", "SEND_NOTIFICATION", "CREATE_CASE", "UPDATE_CASE", "ASSIGN_SLA", "END_ASSOCIATED_TASKS", "SUBMIT_AUTO_EVALUATION"
    #   resp.rule.actions[0].task_action.name #=> String
    #   resp.rule.actions[0].task_action.description #=> String
    #   resp.rule.actions[0].task_action.contact_flow_id #=> String
    #   resp.rule.actions[0].task_action.references #=> Hash
    #   resp.rule.actions[0].task_action.references["ReferenceKey"].value #=> String
    #   resp.rule.actions[0].task_action.references["ReferenceKey"].type #=> String, one of "URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"
    #   resp.rule.actions[0].task_action.references["ReferenceKey"].status #=> String, one of "AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"
    #   resp.rule.actions[0].task_action.references["ReferenceKey"].arn #=> String
    #   resp.rule.actions[0].task_action.references["ReferenceKey"].status_reason #=> String
    #   resp.rule.actions[0].event_bridge_action.name #=> String
    #   resp.rule.actions[0].send_notification_action.delivery_method #=> String, one of "EMAIL"
    #   resp.rule.actions[0].send_notification_action.subject #=> String
    #   resp.rule.actions[0].send_notification_action.content #=> String
    #   resp.rule.actions[0].send_notification_action.content_type #=> String, one of "PLAIN_TEXT"
    #   resp.rule.actions[0].send_notification_action.recipient.user_tags #=> Hash
    #   resp.rule.actions[0].send_notification_action.recipient.user_tags["String"] #=> String
    #   resp.rule.actions[0].send_notification_action.recipient.user_ids #=> Array
    #   resp.rule.actions[0].send_notification_action.recipient.user_ids[0] #=> String
    #   resp.rule.actions[0].create_case_action.fields #=> Array
    #   resp.rule.actions[0].create_case_action.fields[0].id #=> String
    #   resp.rule.actions[0].create_case_action.fields[0].value.boolean_value #=> Boolean
    #   resp.rule.actions[0].create_case_action.fields[0].value.double_value #=> Float
    #   resp.rule.actions[0].create_case_action.fields[0].value.string_value #=> String
    #   resp.rule.actions[0].create_case_action.template_id #=> String
    #   resp.rule.actions[0].update_case_action.fields #=> Array
    #   resp.rule.actions[0].update_case_action.fields[0].id #=> String
    #   resp.rule.actions[0].update_case_action.fields[0].value.boolean_value #=> Boolean
    #   resp.rule.actions[0].update_case_action.fields[0].value.double_value #=> Float
    #   resp.rule.actions[0].update_case_action.fields[0].value.string_value #=> String
    #   resp.rule.actions[0].assign_sla_action.sla_assignment_type #=> String, one of "CASES"
    #   resp.rule.actions[0].assign_sla_action.case_sla_configuration.name #=> String
    #   resp.rule.actions[0].assign_sla_action.case_sla_configuration.type #=> String, one of "CaseField"
    #   resp.rule.actions[0].assign_sla_action.case_sla_configuration.field_id #=> String
    #   resp.rule.actions[0].assign_sla_action.case_sla_configuration.target_field_values #=> Array
    #   resp.rule.actions[0].assign_sla_action.case_sla_configuration.target_field_values[0].boolean_value #=> Boolean
    #   resp.rule.actions[0].assign_sla_action.case_sla_configuration.target_field_values[0].double_value #=> Float
    #   resp.rule.actions[0].assign_sla_action.case_sla_configuration.target_field_values[0].string_value #=> String
    #   resp.rule.actions[0].assign_sla_action.case_sla_configuration.target_sla_minutes #=> Integer
    #   resp.rule.actions[0].submit_auto_evaluation_action.evaluation_form_id #=> String
    #   resp.rule.publish_status #=> String, one of "DRAFT", "PUBLISHED"
    #   resp.rule.created_time #=> Time
    #   resp.rule.last_updated_time #=> Time
    #   resp.rule.last_updated_by #=> String
    #   resp.rule.tags #=> Hash
    #   resp.rule.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRule AWS API Documentation
    #
    # @overload describe_rule(params = {})
    # @param [Hash] params ({})
    def describe_rule(params = {}, options = {})
      req = build_request(:describe_rule, params)
      req.send_request(options)
    end

    # Gets basic information about the security profile.
    #
    # For information about security profiles, see [Security Profiles][1] in
    # the *Amazon Connect Administrator Guide*. For a mapping of the API
    # name and user interface name of the security profile permissions, see
    # [List of security profile permissions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeSecurityProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityProfileResponse#security_profile #security_profile} => Types::SecurityProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_profile({
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile.id #=> String
    #   resp.security_profile.organization_resource_id #=> String
    #   resp.security_profile.arn #=> String
    #   resp.security_profile.security_profile_name #=> String
    #   resp.security_profile.description #=> String
    #   resp.security_profile.tags #=> Hash
    #   resp.security_profile.tags["TagKey"] #=> String
    #   resp.security_profile.allowed_access_control_tags #=> Hash
    #   resp.security_profile.allowed_access_control_tags["SecurityProfilePolicyKey"] #=> String
    #   resp.security_profile.tag_restricted_resources #=> Array
    #   resp.security_profile.tag_restricted_resources[0] #=> String
    #   resp.security_profile.last_modified_time #=> Time
    #   resp.security_profile.last_modified_region #=> String
    #   resp.security_profile.hierarchy_restricted_resources #=> Array
    #   resp.security_profile.hierarchy_restricted_resources[0] #=> String
    #   resp.security_profile.allowed_access_control_hierarchy_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeSecurityProfile AWS API Documentation
    #
    # @overload describe_security_profile(params = {})
    # @param [Hash] params ({})
    def describe_security_profile(params = {}, options = {})
      req = build_request(:describe_security_profile, params)
      req.send_request(options)
    end

    # Gets details and status of a traffic distribution group.
    #
    # @option params [required, String] :traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the traffic
    #   distribution group was created. The ARN must be provided if the call
    #   is from the replicated Region.
    #
    # @return [Types::DescribeTrafficDistributionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrafficDistributionGroupResponse#traffic_distribution_group #traffic_distribution_group} => Types::TrafficDistributionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_traffic_distribution_group({
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_distribution_group.id #=> String
    #   resp.traffic_distribution_group.arn #=> String
    #   resp.traffic_distribution_group.name #=> String
    #   resp.traffic_distribution_group.description #=> String
    #   resp.traffic_distribution_group.instance_arn #=> String
    #   resp.traffic_distribution_group.status #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "PENDING_DELETION", "DELETION_FAILED", "UPDATE_IN_PROGRESS"
    #   resp.traffic_distribution_group.tags #=> Hash
    #   resp.traffic_distribution_group.tags["TagKey"] #=> String
    #   resp.traffic_distribution_group.is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeTrafficDistributionGroup AWS API Documentation
    #
    # @overload describe_traffic_distribution_group(params = {})
    # @param [Hash] params ({})
    def describe_traffic_distribution_group(params = {}, options = {})
      req = build_request(:describe_traffic_distribution_group, params)
      req.send_request(options)
    end

    # Describes the specified user. You can [find the instance ID in the
    # Amazon Connect console][1] (it’s the final part of the ARN). The
    # console does not display the user IDs. Instead, list the users and
    # note the IDs provided in the output.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.id #=> String
    #   resp.user.arn #=> String
    #   resp.user.username #=> String
    #   resp.user.identity_info.first_name #=> String
    #   resp.user.identity_info.last_name #=> String
    #   resp.user.identity_info.email #=> String
    #   resp.user.identity_info.secondary_email #=> String
    #   resp.user.identity_info.mobile #=> String
    #   resp.user.phone_config.phone_type #=> String, one of "SOFT_PHONE", "DESK_PHONE"
    #   resp.user.phone_config.auto_accept #=> Boolean
    #   resp.user.phone_config.after_contact_work_time_limit #=> Integer
    #   resp.user.phone_config.desk_phone_number #=> String
    #   resp.user.directory_user_id #=> String
    #   resp.user.security_profile_ids #=> Array
    #   resp.user.security_profile_ids[0] #=> String
    #   resp.user.routing_profile_id #=> String
    #   resp.user.hierarchy_group_id #=> String
    #   resp.user.tags #=> Hash
    #   resp.user.tags["TagKey"] #=> String
    #   resp.user.last_modified_time #=> Time
    #   resp.user.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Describes the specified hierarchy group.
    #
    # @option params [required, String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeUserHierarchyGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserHierarchyGroupResponse#hierarchy_group #hierarchy_group} => Types::HierarchyGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_group({
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_group.id #=> String
    #   resp.hierarchy_group.arn #=> String
    #   resp.hierarchy_group.name #=> String
    #   resp.hierarchy_group.level_id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.last_modified_time #=> Time
    #   resp.hierarchy_group.hierarchy_path.level_one.last_modified_region #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.last_modified_time #=> Time
    #   resp.hierarchy_group.hierarchy_path.level_two.last_modified_region #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.last_modified_time #=> Time
    #   resp.hierarchy_group.hierarchy_path.level_three.last_modified_region #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.last_modified_time #=> Time
    #   resp.hierarchy_group.hierarchy_path.level_four.last_modified_region #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.last_modified_time #=> Time
    #   resp.hierarchy_group.hierarchy_path.level_five.last_modified_region #=> String
    #   resp.hierarchy_group.tags #=> Hash
    #   resp.hierarchy_group.tags["TagKey"] #=> String
    #   resp.hierarchy_group.last_modified_time #=> Time
    #   resp.hierarchy_group.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroup AWS API Documentation
    #
    # @overload describe_user_hierarchy_group(params = {})
    # @param [Hash] params ({})
    def describe_user_hierarchy_group(params = {}, options = {})
      req = build_request(:describe_user_hierarchy_group, params)
      req.send_request(options)
    end

    # Describes the hierarchy structure of the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeUserHierarchyStructureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserHierarchyStructureResponse#hierarchy_structure #hierarchy_structure} => Types::HierarchyStructure
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_structure({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_structure.level_one.id #=> String
    #   resp.hierarchy_structure.level_one.arn #=> String
    #   resp.hierarchy_structure.level_one.name #=> String
    #   resp.hierarchy_structure.level_one.last_modified_time #=> Time
    #   resp.hierarchy_structure.level_one.last_modified_region #=> String
    #   resp.hierarchy_structure.level_two.id #=> String
    #   resp.hierarchy_structure.level_two.arn #=> String
    #   resp.hierarchy_structure.level_two.name #=> String
    #   resp.hierarchy_structure.level_two.last_modified_time #=> Time
    #   resp.hierarchy_structure.level_two.last_modified_region #=> String
    #   resp.hierarchy_structure.level_three.id #=> String
    #   resp.hierarchy_structure.level_three.arn #=> String
    #   resp.hierarchy_structure.level_three.name #=> String
    #   resp.hierarchy_structure.level_three.last_modified_time #=> Time
    #   resp.hierarchy_structure.level_three.last_modified_region #=> String
    #   resp.hierarchy_structure.level_four.id #=> String
    #   resp.hierarchy_structure.level_four.arn #=> String
    #   resp.hierarchy_structure.level_four.name #=> String
    #   resp.hierarchy_structure.level_four.last_modified_time #=> Time
    #   resp.hierarchy_structure.level_four.last_modified_region #=> String
    #   resp.hierarchy_structure.level_five.id #=> String
    #   resp.hierarchy_structure.level_five.arn #=> String
    #   resp.hierarchy_structure.level_five.name #=> String
    #   resp.hierarchy_structure.level_five.last_modified_time #=> Time
    #   resp.hierarchy_structure.level_five.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructure AWS API Documentation
    #
    # @overload describe_user_hierarchy_structure(params = {})
    # @param [Hash] params ({})
    def describe_user_hierarchy_structure(params = {}, options = {})
      req = build_request(:describe_user_hierarchy_structure, params)
      req.send_request(options)
    end

    # Retrieves the view for the specified Amazon Connect instance and view
    # identifier.
    #
    # The view identifier can be supplied as a ViewId or ARN.
    #
    # `$SAVED` needs to be supplied if a view is unpublished.
    #
    # The view identifier can contain an optional qualifier, for example,
    # `<view-id>:$SAVED`, which is either an actual version number or an
    # Amazon Connect managed qualifier `$SAVED | $LATEST`. If it is not
    # supplied, then `$LATEST` is assumed for customer managed views and an
    # error is returned if there is no published content available. Version
    # 1 is assumed for Amazon Web Services managed views.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :view_id
    #   The ViewId of the view. This must be an ARN for Amazon Web Services
    #   managed views.
    #
    # @return [Types::DescribeViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeViewResponse#view #view} => Types::View
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_view({
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.view.id #=> String
    #   resp.view.arn #=> String
    #   resp.view.name #=> String
    #   resp.view.status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.view.type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.view.description #=> String
    #   resp.view.version #=> Integer
    #   resp.view.version_description #=> String
    #   resp.view.content.input_schema #=> String
    #   resp.view.content.template #=> String
    #   resp.view.content.actions #=> Array
    #   resp.view.content.actions[0] #=> String
    #   resp.view.tags #=> Hash
    #   resp.view.tags["TagKey"] #=> String
    #   resp.view.created_time #=> Time
    #   resp.view.last_modified_time #=> Time
    #   resp.view.view_content_sha_256 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeView AWS API Documentation
    #
    # @overload describe_view(params = {})
    # @param [Hash] params ({})
    def describe_view(params = {}, options = {})
      req = build_request(:describe_view, params)
      req.send_request(options)
    end

    # Describes the specified vocabulary.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :vocabulary_id
    #   The identifier of the custom vocabulary.
    #
    # @return [Types::DescribeVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVocabularyResponse#vocabulary #vocabulary} => Types::Vocabulary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vocabulary({
    #     instance_id: "InstanceId", # required
    #     vocabulary_id: "VocabularyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary.name #=> String
    #   resp.vocabulary.id #=> String
    #   resp.vocabulary.arn #=> String
    #   resp.vocabulary.language_code #=> String, one of "ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"
    #   resp.vocabulary.state #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"
    #   resp.vocabulary.last_modified_time #=> Time
    #   resp.vocabulary.failure_reason #=> String
    #   resp.vocabulary.content #=> String
    #   resp.vocabulary.tags #=> Hash
    #   resp.vocabulary.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeVocabulary AWS API Documentation
    #
    # @overload describe_vocabulary(params = {})
    # @param [Hash] params ({})
    def describe_vocabulary(params = {}, options = {})
      req = build_request(:describe_vocabulary, params)
      req.send_request(options)
    end

    # Removes the dataset ID associated with a given Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :data_set_id
    #   The identifier of the dataset to remove.
    #
    # @option params [String] :target_account_id
    #   The identifier of the target account. Use to associate a dataset to a
    #   different account than the one containing the Amazon Connect instance.
    #   If not specified, by default this value is the Amazon Web Services
    #   account that has the Amazon Connect instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_analytics_data_set({
    #     instance_id: "InstanceId", # required
    #     data_set_id: "DataSetId", # required
    #     target_account_id: "AWSAccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateAnalyticsDataSet AWS API Documentation
    #
    # @overload disassociate_analytics_data_set(params = {})
    # @param [Hash] params ({})
    def disassociate_analytics_data_set(params = {}, options = {})
      req = build_request(:disassociate_analytics_data_set, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Revokes access to integrated applications from Amazon Connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :origin
    #   The domain URL of the integrated application.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_approved_origin({
    #     instance_id: "InstanceId", # required
    #     origin: "Origin", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateApprovedOrigin AWS API Documentation
    #
    # @overload disassociate_approved_origin(params = {})
    # @param [Hash] params ({})
    def disassociate_approved_origin(params = {}, options = {})
      req = build_request(:disassociate_approved_origin, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Revokes authorization from the specified instance to access the
    # specified Amazon Lex or Amazon Lex V2 bot.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Types::LexBot] :lex_bot
    #   Configuration information of an Amazon Lex bot.
    #
    # @option params [Types::LexV2Bot] :lex_v2_bot
    #   The Amazon Lex V2 bot to disassociate from the instance.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_bot({
    #     instance_id: "InstanceId", # required
    #     lex_bot: {
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #     lex_v2_bot: {
    #       alias_arn: "AliasArn",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateBot AWS API Documentation
    #
    # @overload disassociate_bot(params = {})
    # @param [Hash] params ({})
    def disassociate_bot(params = {}, options = {})
      req = build_request(:disassociate_bot, params)
      req.send_request(options)
    end

    # Disassociates a connect resource from a flow.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource.
    #
    #   * Amazon Web Services End User Messaging SMS phone number ARN when
    #     using `SMS_PHONE_NUMBER`
    #
    #   * Amazon Web Services End User Messaging Social phone number ARN when
    #     using `WHATSAPP_MESSAGING_PHONE_NUMBER`
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_flow({
    #     instance_id: "InstanceId", # required
    #     resource_id: "ARN", # required
    #     resource_type: "SMS_PHONE_NUMBER", # required, accepts SMS_PHONE_NUMBER, INBOUND_EMAIL, OUTBOUND_EMAIL, ANALYTICS_CONNECTOR, WHATSAPP_MESSAGING_PHONE_NUMBER
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateFlow AWS API Documentation
    #
    # @overload disassociate_flow(params = {})
    # @param [Hash] params ({})
    def disassociate_flow(params = {}, options = {})
      req = build_request(:disassociate_flow, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Removes the storage type configurations for the specified resource
    # type and association ID.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_instance_storage_config({
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS, REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS, REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS, EMAIL_MESSAGES
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateInstanceStorageConfig AWS API Documentation
    #
    # @overload disassociate_instance_storage_config(params = {})
    # @param [Hash] params ({})
    def disassociate_instance_storage_config(params = {}, options = {})
      req = build_request(:disassociate_instance_storage_config, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Remove the Lambda function from the dropdown options available in the
    # relevant flow blocks.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance..
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :function_arn
    #   The Amazon Resource Name (ARN) of the Lambda function being
    #   disassociated.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_lambda_function({
    #     instance_id: "InstanceId", # required
    #     function_arn: "FunctionArn", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateLambdaFunction AWS API Documentation
    #
    # @overload disassociate_lambda_function(params = {})
    # @param [Hash] params ({})
    def disassociate_lambda_function(params = {}, options = {})
      req = build_request(:disassociate_lambda_function, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Revokes authorization from the specified instance to access the
    # specified Amazon Lex bot.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :bot_name
    #   The name of the Amazon Lex bot. Maximum character limit of 50.
    #
    # @option params [required, String] :lex_region
    #   The Amazon Web Services Region in which the Amazon Lex bot has been
    #   created.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_lex_bot({
    #     instance_id: "InstanceId", # required
    #     bot_name: "BotName", # required
    #     lex_region: "LexRegion", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateLexBot AWS API Documentation
    #
    # @overload disassociate_lex_bot(params = {})
    # @param [Hash] params ({})
    def disassociate_lex_bot(params = {}, options = {})
      req = build_request(:disassociate_lex_bot, params)
      req.send_request(options)
    end

    # Removes the flow association from a phone number claimed to your
    # Amazon Connect instance.
    #
    # If the number is claimed to a traffic distribution group, and you are
    # calling this API using an instance in the Amazon Web Services Region
    # where the traffic distribution group was created, you can use either a
    # full phone number ARN or UUID value for the `PhoneNumberId` URI
    # request parameter. However, if the number is claimed to a traffic
    # distribution group and you are calling this API using an instance in
    # the alternate Amazon Web Services Region associated with the traffic
    # distribution group, you must provide a full phone number ARN. If a
    # UUID is provided in this scenario, you will receive a
    # `ResourceNotFoundException`.
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_number_contact_flow({
    #     phone_number_id: "PhoneNumberId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociatePhoneNumberContactFlow AWS API Documentation
    #
    # @overload disassociate_phone_number_contact_flow(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_number_contact_flow(params = {}, options = {})
      req = build_request(:disassociate_phone_number_contact_flow, params)
      req.send_request(options)
    end

    # Disassociates a set of quick connects from a queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, Array<String>] :quick_connect_ids
    #   The quick connects to disassociate from the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_queue_quick_connects({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     quick_connect_ids: ["QuickConnectId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateQueueQuickConnects AWS API Documentation
    #
    # @overload disassociate_queue_quick_connects(params = {})
    # @param [Hash] params ({})
    def disassociate_queue_quick_connects(params = {}, options = {})
      req = build_request(:disassociate_queue_quick_connects, params)
      req.send_request(options)
    end

    # Disassociates a set of queues from a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueReference>] :queue_references
    #   The queues to disassociate from this routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_references: [ # required
    #       {
    #         queue_id: "QueueId", # required
    #         channel: "VOICE", # required, accepts VOICE, CHAT, TASK, EMAIL
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateRoutingProfileQueues AWS API Documentation
    #
    # @overload disassociate_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def disassociate_routing_profile_queues(params = {}, options = {})
      req = build_request(:disassociate_routing_profile_queues, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Deletes the specified security key.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_security_key({
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateSecurityKey AWS API Documentation
    #
    # @overload disassociate_security_key(params = {})
    # @param [Hash] params ({})
    def disassociate_security_key(params = {}, options = {})
      req = build_request(:disassociate_security_key, params)
      req.send_request(options)
    end

    # Disassociates an agent from a traffic distribution group. This API can
    # be called only in the Region where the traffic distribution group is
    # created.
    #
    # @option params [required, String] :traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN of the traffic distribution group.
    #
    # @option params [required, String] :user_id
    #   The identifier for the user. This can be the ID or the ARN of the
    #   user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_traffic_distribution_group_user({
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateTrafficDistributionGroupUser AWS API Documentation
    #
    # @overload disassociate_traffic_distribution_group_user(params = {})
    # @param [Hash] params ({})
    def disassociate_traffic_distribution_group_user(params = {}, options = {})
      req = build_request(:disassociate_traffic_distribution_group_user, params)
      req.send_request(options)
    end

    # Disassociates a set of proficiencies from a user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, Array<Types::UserProficiencyDisassociate>] :user_proficiencies
    #   The proficiencies to disassociate from the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_user_proficiencies({
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #     user_proficiencies: [ # required
    #       {
    #         attribute_name: "PredefinedAttributeName", # required
    #         attribute_value: "PredefinedAttributeStringValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateUserProficiencies AWS API Documentation
    #
    # @overload disassociate_user_proficiencies(params = {})
    # @param [Hash] params ({})
    def disassociate_user_proficiencies(params = {}, options = {})
      req = build_request(:disassociate_user_proficiencies, params)
      req.send_request(options)
    end

    # Dismisses contacts from an agent’s CCP and returns the agent to an
    # available state, which allows the agent to receive a new routed
    # contact. Contacts can only be dismissed if they are in a `MISSED`,
    # `ERROR`, `ENDED`, or `REJECTED` state in the [Agent Event Stream][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dismiss_user_contact({
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DismissUserContact AWS API Documentation
    #
    # @overload dismiss_user_contact(params = {})
    # @param [Hash] params ({})
    def dismiss_user_contact(params = {}, options = {})
      req = build_request(:dismiss_user_contact, params)
      req.send_request(options)
    end

    # Provides a pre-signed URL for download of an approved attached file.
    # This API also returns metadata about the attached file. It will only
    # return a downloadURL if the status of the attached file is `APPROVED`.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :file_id
    #   The unique identifier of the attached file resource.
    #
    # @option params [Integer] :url_expiry_in_seconds
    #   Optional override for the expiry of the pre-signed S3 URL in seconds.
    #   The default value is 300.
    #
    # @option params [required, String] :associated_resource_arn
    #   The resource to which the attached file is (being) uploaded to. The
    #   supported resources are [Cases][1] and [Email][2].
    #
    #   <note markdown="1"> This value must be a valid ARN.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/cases.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html
    #
    # @return [Types::GetAttachedFileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAttachedFileResponse#file_arn #file_arn} => String
    #   * {Types::GetAttachedFileResponse#file_id #file_id} => String
    #   * {Types::GetAttachedFileResponse#creation_time #creation_time} => String
    #   * {Types::GetAttachedFileResponse#file_status #file_status} => String
    #   * {Types::GetAttachedFileResponse#file_name #file_name} => String
    #   * {Types::GetAttachedFileResponse#file_size_in_bytes #file_size_in_bytes} => Integer
    #   * {Types::GetAttachedFileResponse#associated_resource_arn #associated_resource_arn} => String
    #   * {Types::GetAttachedFileResponse#file_use_case_type #file_use_case_type} => String
    #   * {Types::GetAttachedFileResponse#created_by #created_by} => Types::CreatedByInfo
    #   * {Types::GetAttachedFileResponse#download_url_metadata #download_url_metadata} => Types::DownloadUrlMetadata
    #   * {Types::GetAttachedFileResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attached_file({
    #     instance_id: "InstanceId", # required
    #     file_id: "FileId", # required
    #     url_expiry_in_seconds: 1,
    #     associated_resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.file_arn #=> String
    #   resp.file_id #=> String
    #   resp.creation_time #=> String
    #   resp.file_status #=> String, one of "APPROVED", "REJECTED", "PROCESSING", "FAILED"
    #   resp.file_name #=> String
    #   resp.file_size_in_bytes #=> Integer
    #   resp.associated_resource_arn #=> String
    #   resp.file_use_case_type #=> String, one of "EMAIL_MESSAGE", "ATTACHMENT"
    #   resp.created_by.connect_user_arn #=> String
    #   resp.created_by.aws_identity_arn #=> String
    #   resp.download_url_metadata.url #=> String
    #   resp.download_url_metadata.url_expiry #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetAttachedFile AWS API Documentation
    #
    # @overload get_attached_file(params = {})
    # @param [Hash] params ({})
    def get_attached_file(params = {}, options = {})
      req = build_request(:get_attached_file, params)
      req.send_request(options)
    end

    # Retrieves the contact attributes for the specified contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the initial contact.
    #
    # @return [Types::GetContactAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactAttributesResponse#attributes #attributes} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_attributes({
    #     instance_id: "InstanceId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Hash
    #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetContactAttributes AWS API Documentation
    #
    # @overload get_contact_attributes(params = {})
    # @param [Hash] params ({})
    def get_contact_attributes(params = {}, options = {})
      req = build_request(:get_contact_attributes, params)
      req.send_request(options)
    end

    # Gets the real-time metrics of the specified contact.
    #
    # **Use cases**
    #
    # Following are common uses cases for this API:
    #
    # * You can use this API to retrieve the position of the contact in the
    #   queue.
    #
    # ^
    #
    # **Endpoints**: See [Amazon Connect endpoints and quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/connect_region.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [required, Array<Types::ContactMetricInfo>] :metrics
    #   A list of contact-level metrics to retrieve.
    #
    # @return [Types::GetContactMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactMetricsResponse#metric_results #metric_results} => Array&lt;Types::ContactMetricResult&gt;
    #   * {Types::GetContactMetricsResponse#id #id} => String
    #   * {Types::GetContactMetricsResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_metrics({
    #     instance_id: "InstanceIdOrArn", # required
    #     contact_id: "InstanceIdOrArn", # required
    #     metrics: [ # required
    #       {
    #         name: "POSITION_IN_QUEUE", # required, accepts POSITION_IN_QUEUE
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].name #=> String, one of "POSITION_IN_QUEUE"
    #   resp.metric_results[0].value.number #=> Float
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetContactMetrics AWS API Documentation
    #
    # @overload get_contact_metrics(params = {})
    # @param [Hash] params ({})
    def get_contact_metrics(params = {}, options = {})
      req = build_request(:get_contact_metrics, params)
      req.send_request(options)
    end

    # Gets the real-time metric data from the specified Amazon Connect
    # instance.
    #
    # For a description of each metric, see [Metrics definitions][1] in the
    # *Amazon Connect Administrator Guide*.
    #
    # <note markdown="1"> When you make a successful API request, you can expect the following
    # metric values in the response:
    #
    #  1.  **Metric value is null**: The calculation cannot be performed due
    #     to divide by zero or insufficient data
    #
    # 2.  **Metric value is a number (including 0) of defined type**: The
    #     number provided is the calculation result
    #
    # 3.  **MetricResult list is empty**: The request cannot find any data
    #     in the system
    #
    #  The following guidelines can help you work with the API:
    #
    #  * Each dimension in the metric response must contain a value
    #
    # * Each item in MetricResult must include all requested metrics
    #
    # * If the response is slow due to large result sets, try these
    #   approaches:
    #
    #   * Add filters to reduce the amount of data returned
    #
    #   ^
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Types::Filters] :filters
    #   The filters to apply to returned metrics. You can filter up to the
    #   following limits:
    #
    #   * Queues: 100
    #
    #   * Routing profiles: 100
    #
    #   * Channels: 3 (VOICE, CHAT, and TASK channels are supported.)
    #
    #   * RoutingStepExpressions: 50
    #
    #   * AgentStatuses: 50
    #
    #   Metric data is retrieved only for the resources associated with the
    #   queues or routing profiles, and by any channels included in the
    #   filter. (You cannot filter by both queue AND routing profile.) You can
    #   include both resource IDs and resource ARNs in the same request.
    #
    #   When using `AgentStatuses` as filter make sure Queues is added as
    #   primary filter.
    #
    #   When using the `RoutingStepExpression` filter, you need to pass
    #   exactly one `QueueId`. The filter is also case sensitive so when using
    #   the `RoutingStepExpression` filter, grouping by
    #   `ROUTING_STEP_EXPRESSION` is required.
    #
    #   Currently tagging is only supported on the resources that are passed
    #   in the filter.
    #
    # @option params [Array<String>] :groupings
    #   Defines the level of aggregation for metrics data by a dimension(s).
    #   Its similar to sorting items into buckets based on a common
    #   characteristic, then counting or calculating something for each
    #   bucket. For example, when grouped by `QUEUE`, the metrics returned
    #   apply to each queue rather than aggregated for all queues.
    #
    #   The grouping list is an ordered list, with the first item in the list
    #   defined as the primary grouping. If no grouping is included in the
    #   request, the aggregation happens at the instance-level.
    #
    #   * If you group by `CHANNEL`, you should include a Channels filter.
    #     VOICE, CHAT, and TASK channels are supported.
    #
    #   * If you group by `AGENT_STATUS`, you must include the `QUEUE` as the
    #     primary grouping and use queue filter. When you group by
    #     `AGENT_STATUS`, the only metric available is the `AGENTS_ONLINE`
    #     metric.
    #
    #   * If you group by `ROUTING_PROFILE`, you must include either a queue
    #     or routing profile filter. In addition, a routing profile filter is
    #     required for metrics `CONTACTS_SCHEDULED`, `CONTACTS_IN_QUEUE`, and
    #     ` OLDEST_CONTACT_AGE`.
    #
    #   * When using the `RoutingStepExpression` filter, group by
    #     `ROUTING_STEP_EXPRESSION` is required.
    #
    # @option params [required, Array<Types::CurrentMetric>] :current_metrics
    #   The metrics to retrieve. Specify the name and unit for each metric.
    #   The following metrics are available. For a description of all the
    #   metrics, see [Metrics definitions][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #   AGENTS\_AFTER\_CONTACT\_WORK
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [ACW][2]
    #
    #   AGENTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Available][3]
    #
    #   AGENTS\_ERROR
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Error][4]
    #
    #   AGENTS\_NON\_PRODUCTIVE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [NPT (Non-Productive Time)][5]
    #
    #   AGENTS\_ON\_CALL
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [On contact][6]
    #
    #   AGENTS\_ON\_CONTACT
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [On contact][6]
    #
    #   AGENTS\_ONLINE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Online][7]
    #
    #   AGENTS\_STAFFED
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Staffed][8]
    #
    #   CONTACTS\_IN\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [In queue][9]
    #
    #   CONTACTS\_SCHEDULED
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Scheduled][10]
    #
    #   OLDEST\_CONTACT\_AGE
    #
    #   : Unit: SECONDS
    #
    #     When you use groupings, Unit says SECONDS and the Value is returned
    #     in SECONDS.
    #
    #     When you do not use groupings, Unit says SECONDS but the Value is
    #     returned in MILLISECONDS. For example, if you get a response like
    #     this:
    #
    #     `{ "Metric": { "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS" },
    #     "Value": 24113.0 `}
    #
    #     The actual OLDEST\_CONTACT\_AGE is 24 seconds.
    #
    #     When the filter `RoutingStepExpression` is used, this metric is
    #     still calculated from enqueue time. For example, if a contact that
    #     has been queued under `<Expression 1>` for 10 seconds has expired
    #     and `<Expression 2>` becomes active, then `OLDEST_CONTACT_AGE` for
    #     this queue will be counted starting from 10, not 0.
    #
    #     Name in real-time metrics report: [Oldest][11]
    #
    #   SLOTS\_ACTIVE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Active][12]
    #
    #   SLOTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Availability][13]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#aftercallwork-real-time
    #   [3]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#available-real-time
    #   [4]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#error-real-time
    #   [5]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-productive-time-real-time
    #   [6]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#on-call-real-time
    #   [7]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#online-real-time
    #   [8]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#staffed-real-time
    #   [9]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#in-queue-real-time
    #   [10]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#scheduled-real-time
    #   [11]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#oldest-real-time
    #   [12]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#active-real-time
    #   [13]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#availability-real-time
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   The token expires after 5 minutes from the time it is created.
    #   Subsequent requests that use the token must use the same request
    #   parameters as the request that generated the token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Array<Types::CurrentMetricSortCriteria>] :sort_criteria
    #   The way to sort the resulting response based on metrics. You can enter
    #   one sort criteria. By default resources are sorted based on
    #   `AGENTS_ONLINE`, `DESCENDING`. The metric collection is sorted based
    #   on the input metrics.
    #
    #   Note the following:
    #
    #   * Sorting on `SLOTS_ACTIVE` and `SLOTS_AVAILABLE` is not supported.
    #
    #   ^
    #
    # @return [Types::GetCurrentMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCurrentMetricDataResponse#next_token #next_token} => String
    #   * {Types::GetCurrentMetricDataResponse#metric_results #metric_results} => Array&lt;Types::CurrentMetricResult&gt;
    #   * {Types::GetCurrentMetricDataResponse#data_snapshot_time #data_snapshot_time} => Time
    #   * {Types::GetCurrentMetricDataResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_metric_data({
    #     instance_id: "InstanceId", # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE"], # accepts VOICE, CHAT, TASK, EMAIL
    #       routing_profiles: ["RoutingProfileId"],
    #       routing_step_expressions: ["RoutingExpression"],
    #       agent_statuses: ["AgentStatusId"],
    #     },
    #     groupings: ["QUEUE"], # accepts QUEUE, CHANNEL, ROUTING_PROFILE, ROUTING_STEP_EXPRESSION, AGENT_STATUS
    #     current_metrics: [ # required
    #       {
    #         name: "AGENTS_ONLINE", # accepts AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED, AGENTS_ON_CONTACT, SLOTS_ACTIVE, SLOTS_AVAILABLE
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_criteria: [
    #       {
    #         sort_by_metric: "AGENTS_ONLINE", # accepts AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED, AGENTS_ON_CONTACT, SLOTS_ACTIVE, SLOTS_AVAILABLE
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions.queue.id #=> String
    #   resp.metric_results[0].dimensions.queue.arn #=> String
    #   resp.metric_results[0].dimensions.channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.metric_results[0].dimensions.routing_profile.id #=> String
    #   resp.metric_results[0].dimensions.routing_profile.arn #=> String
    #   resp.metric_results[0].dimensions.routing_step_expression #=> String
    #   resp.metric_results[0].dimensions.agent_status.arn #=> String
    #   resp.metric_results[0].dimensions.agent_status.id #=> String
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String, one of "AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"
    #   resp.metric_results[0].collections[0].metric.unit #=> String, one of "SECONDS", "COUNT", "PERCENT"
    #   resp.metric_results[0].collections[0].value #=> Float
    #   resp.data_snapshot_time #=> Time
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentMetricData AWS API Documentation
    #
    # @overload get_current_metric_data(params = {})
    # @param [Hash] params ({})
    def get_current_metric_data(params = {}, options = {})
      req = build_request(:get_current_metric_data, params)
      req.send_request(options)
    end

    # Gets the real-time active user data from the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Types::UserDataFilters] :filters
    #   The filters to apply to returned user data. You can filter up to the
    #   following limits:
    #
    #   * Queues: 100
    #
    #   * Routing profiles: 100
    #
    #   * Agents: 100
    #
    #   * Contact states: 9
    #
    #   * User hierarchy groups: 1
    #
    #   The user data is retrieved for only the specified values/resources in
    #   the filter. A maximum of one filter can be passed from queues, routing
    #   profiles, agents, and user hierarchy groups.
    #
    #   Currently tagging is only supported on the resources that are passed
    #   in the filter.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::GetCurrentUserDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCurrentUserDataResponse#next_token #next_token} => String
    #   * {Types::GetCurrentUserDataResponse#user_data_list #user_data_list} => Array&lt;Types::UserData&gt;
    #   * {Types::GetCurrentUserDataResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_user_data({
    #     instance_id: "InstanceId", # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       contact_filter: {
    #         contact_states: ["INCOMING"], # accepts INCOMING, PENDING, CONNECTING, CONNECTED, CONNECTED_ONHOLD, MISSED, ERROR, ENDED, REJECTED
    #       },
    #       routing_profiles: ["RoutingProfileId"],
    #       agents: ["UserId"],
    #       user_hierarchy_groups: ["HierarchyGroupId"],
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.user_data_list #=> Array
    #   resp.user_data_list[0].user.id #=> String
    #   resp.user_data_list[0].user.arn #=> String
    #   resp.user_data_list[0].routing_profile.id #=> String
    #   resp.user_data_list[0].routing_profile.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_one.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_one.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_two.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_two.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_three.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_three.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_four.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_four.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_five.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_five.arn #=> String
    #   resp.user_data_list[0].status.status_start_timestamp #=> Time
    #   resp.user_data_list[0].status.status_arn #=> String
    #   resp.user_data_list[0].status.status_name #=> String
    #   resp.user_data_list[0].available_slots_by_channel #=> Hash
    #   resp.user_data_list[0].available_slots_by_channel["Channel"] #=> Integer
    #   resp.user_data_list[0].max_slots_by_channel #=> Hash
    #   resp.user_data_list[0].max_slots_by_channel["Channel"] #=> Integer
    #   resp.user_data_list[0].active_slots_by_channel #=> Hash
    #   resp.user_data_list[0].active_slots_by_channel["Channel"] #=> Integer
    #   resp.user_data_list[0].contacts #=> Array
    #   resp.user_data_list[0].contacts[0].contact_id #=> String
    #   resp.user_data_list[0].contacts[0].channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.user_data_list[0].contacts[0].initiation_method #=> String, one of "INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"
    #   resp.user_data_list[0].contacts[0].agent_contact_state #=> String, one of "INCOMING", "PENDING", "CONNECTING", "CONNECTED", "CONNECTED_ONHOLD", "MISSED", "ERROR", "ENDED", "REJECTED"
    #   resp.user_data_list[0].contacts[0].state_start_timestamp #=> Time
    #   resp.user_data_list[0].contacts[0].connected_to_agent_timestamp #=> Time
    #   resp.user_data_list[0].contacts[0].queue.id #=> String
    #   resp.user_data_list[0].contacts[0].queue.arn #=> String
    #   resp.user_data_list[0].next_status #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentUserData AWS API Documentation
    #
    # @overload get_current_user_data(params = {})
    # @param [Hash] params ({})
    def get_current_user_data(params = {}, options = {})
      req = build_request(:get_current_user_data, params)
      req.send_request(options)
    end

    # Get the hours of operations with the effective override applied.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @option params [required, String] :from_date
    #   The date from when the hours of operation are listed.
    #
    # @option params [required, String] :to_date
    #   The date until when the hours of operation are listed.
    #
    # @return [Types::GetEffectiveHoursOfOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEffectiveHoursOfOperationsResponse#effective_hours_of_operation_list #effective_hours_of_operation_list} => Array&lt;Types::EffectiveHoursOfOperations&gt;
    #   * {Types::GetEffectiveHoursOfOperationsResponse#time_zone #time_zone} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_hours_of_operations({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     from_date: "HoursOfOperationOverrideYearMonthDayDateFormat", # required
    #     to_date: "HoursOfOperationOverrideYearMonthDayDateFormat", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.effective_hours_of_operation_list #=> Array
    #   resp.effective_hours_of_operation_list[0].date #=> String
    #   resp.effective_hours_of_operation_list[0].operational_hours #=> Array
    #   resp.effective_hours_of_operation_list[0].operational_hours[0].start.hours #=> Integer
    #   resp.effective_hours_of_operation_list[0].operational_hours[0].start.minutes #=> Integer
    #   resp.effective_hours_of_operation_list[0].operational_hours[0].end.hours #=> Integer
    #   resp.effective_hours_of_operation_list[0].operational_hours[0].end.minutes #=> Integer
    #   resp.time_zone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetEffectiveHoursOfOperations AWS API Documentation
    #
    # @overload get_effective_hours_of_operations(params = {})
    # @param [Hash] params ({})
    def get_effective_hours_of_operations(params = {}, options = {})
      req = build_request(:get_effective_hours_of_operations, params)
      req.send_request(options)
    end

    # Supports SAML sign-in for Amazon Connect. Retrieves a token for
    # federation. The token is for the Amazon Connect user which corresponds
    # to the IAM credentials that were used to invoke this action.
    #
    # For more information about how SAML sign-in works in Amazon Connect,
    # see [Configure SAML with IAM for Amazon Connect in the *Amazon Connect
    # Administrator Guide*.][1]
    #
    # <note markdown="1"> This API doesn't support root users. If you try to invoke
    # GetFederationToken with root credentials, an error message similar to
    # the following one appears:
    #
    #  `Provided identity: Principal: .... User: .... cannot be used for
    # federation with Amazon Connect`
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/configure-saml.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::GetFederationTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFederationTokenResponse#credentials #credentials} => Types::Credentials
    #   * {Types::GetFederationTokenResponse#sign_in_url #sign_in_url} => String
    #   * {Types::GetFederationTokenResponse#user_arn #user_arn} => String
    #   * {Types::GetFederationTokenResponse#user_id #user_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_federation_token({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_token #=> String
    #   resp.credentials.access_token_expiration #=> Time
    #   resp.credentials.refresh_token #=> String
    #   resp.credentials.refresh_token_expiration #=> Time
    #   resp.sign_in_url #=> String
    #   resp.user_arn #=> String
    #   resp.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationToken AWS API Documentation
    #
    # @overload get_federation_token(params = {})
    # @param [Hash] params ({})
    def get_federation_token(params = {}, options = {})
      req = build_request(:get_federation_token, params)
      req.send_request(options)
    end

    # Retrieves the flow associated for a given resource.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource.
    #
    #   * Amazon Web Services End User Messaging SMS phone number ARN when
    #     using `SMS_PHONE_NUMBER`
    #
    #   * Amazon Web Services End User Messaging Social phone number ARN when
    #     using `WHATSAPP_MESSAGING_PHONE_NUMBER`
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @return [Types::GetFlowAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFlowAssociationResponse#resource_id #resource_id} => String
    #   * {Types::GetFlowAssociationResponse#flow_id #flow_id} => String
    #   * {Types::GetFlowAssociationResponse#resource_type #resource_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow_association({
    #     instance_id: "InstanceId", # required
    #     resource_id: "ARN", # required
    #     resource_type: "SMS_PHONE_NUMBER", # required, accepts SMS_PHONE_NUMBER, INBOUND_EMAIL, OUTBOUND_EMAIL, ANALYTICS_CONNECTOR, WHATSAPP_MESSAGING_PHONE_NUMBER
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #   resp.flow_id #=> String
    #   resp.resource_type #=> String, one of "SMS_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR", "WHATSAPP_MESSAGING_PHONE_NUMBER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFlowAssociation AWS API Documentation
    #
    # @overload get_flow_association(params = {})
    # @param [Hash] params ({})
    def get_flow_association(params = {}, options = {})
      req = build_request(:get_flow_association, params)
      req.send_request(options)
    end

    # Gets historical metric data from the specified Amazon Connect
    # instance.
    #
    # For a description of each historical metric, see [Metrics
    # definitions][1] in the *Amazon Connect Administrator Guide*.
    #
    # <note markdown="1"> We recommend using the [GetMetricDataV2][2] API. It provides more
    # flexibility, features, and the ability to query longer time ranges
    # than `GetMetricData`. Use it to retrieve historical agent and contact
    # metrics for the last 3 months, at varying intervals. You can also use
    # it to build custom dashboards to measure historical queue and agent
    # performance. For example, you can track the number of incoming
    # contacts for the last 7 days, with data split by day, to see how
    # contact volume changed per day of the week.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricDataV2.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp, in UNIX Epoch time format, at which to start the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using a multiple of 5 minutes, such as 10:05,
    #   10:10, 10:15.
    #
    #   The start time cannot be earlier than 24 hours before the time of the
    #   request. Historical metrics are available only for 24 hours.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using an interval of 5 minutes, such as 11:00,
    #   11:05, 11:10, and must be later than the start time timestamp.
    #
    #   The time range between the start and end time must be less than 24
    #   hours.
    #
    # @option params [required, Types::Filters] :filters
    #   The queues, up to 100, or channels, to use to filter the metrics
    #   returned. Metric data is retrieved only for the resources associated
    #   with the queues or channels included in the filter. You can include
    #   both queue IDs and queue ARNs in the same request. VOICE, CHAT, and
    #   TASK channels are supported.
    #
    #   RoutingStepExpression is not a valid filter for GetMetricData and we
    #   recommend switching to GetMetricDataV2 for more up-to-date features.
    #
    #   <note markdown="1"> To filter by `Queues`, enter the queue ID/ARN, not the name of the
    #   queue.
    #
    #    </note>
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics returned. For example, when
    #   results are grouped by queue, the metrics returned are grouped by
    #   queue. The values returned apply to the metrics for each queue rather
    #   than aggregated for all queues.
    #
    #   If no grouping is specified, a summary of metrics for all queues is
    #   returned.
    #
    #   RoutingStepExpression is not a valid filter for GetMetricData and we
    #   recommend switching to GetMetricDataV2 for more up-to-date features.
    #
    # @option params [required, Array<Types::HistoricalMetric>] :historical_metrics
    #   The metrics to retrieve. Specify the name, unit, and statistic for
    #   each metric. The following historical metrics are available. For a
    #   description of each metric, see [Metrics definition][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #   <note markdown="1"> This API does not support a contacts incoming metric (there's no
    #   CONTACTS\_INCOMING metric missing from the documented list).
    #
    #    </note>
    #
    #   ABANDON\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #     UI name: [Average queue abandon time][2]
    #
    #   AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #     UI name: [After contact work time][3]
    #
    #   API\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [API contacts handled][4]
    #
    #   AVG\_HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #     UI name: [Average customer hold time][5]
    #
    #   CALLBACK\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Callback contacts handled][6]
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts abandoned][7]
    #
    #   CONTACTS\_AGENT\_HUNG\_UP\_FIRST
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts agent hung up first][8]
    #
    #   CONTACTS\_CONSULTED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts consulted][9]
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts handled][10]
    #
    #   CONTACTS\_HANDLED\_INCOMING
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts handled incoming][11]
    #
    #   CONTACTS\_HANDLED\_OUTBOUND
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts handled outbound][12]
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts hold disconnect][13]
    #
    #   CONTACTS\_MISSED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [AGENT\_NON\_RESPONSE][14]
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts queued][15]
    #
    #   CONTACTS\_TRANSFERRED\_IN
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts transferred in][16]
    #
    #   CONTACTS\_TRANSFERRED\_IN\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts transferred out queue][17]
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts transferred out][18]
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #     UI name: [Contacts transferred out queue][17]
    #
    #   HANDLE\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #     UI name: [Average handle time][19]
    #
    #   INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #     UI name: [Average agent interaction and customer hold time][20]
    #
    #   INTERACTION\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #     UI name: [Average agent interaction time][21]
    #
    #   OCCUPANCY
    #
    #   : Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #     UI name: [Occupancy][22]
    #
    #   QUEUE\_ANSWER\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #     UI name: [Average queue answer time][23]
    #
    #   QUEUED\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: MAX
    #
    #     UI name: [Minimum flow time][24]
    #
    #   SERVICE\_LEVEL
    #
    #   : You can include up to 20 SERVICE\_LEVEL metrics in a request.
    #
    #     Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #     UI name: [Average queue abandon time][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time
    #   [3]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time
    #   [4]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#api-contacts-handled
    #   [5]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time
    #   [6]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#callback-contacts-handled
    #   [7]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned
    #   [8]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-agent-hung-up-first
    #   [9]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-consulted
    #   [10]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled
    #   [11]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-incoming
    #   [12]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-outbound
    #   [13]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-disconnect
    #   [14]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response
    #   [15]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued
    #   [16]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-in
    #   [17]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue
    #   [18]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out
    #   [19]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-handle-time
    #   [20]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-and-customer-hold-time
    #   [21]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#aaverage-agent-interaction-time
    #   [22]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#occupancy
    #   [23]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html##average-queue-answer-time
    #   [24]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#minimum-flow-time
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::GetMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricDataResponse#next_token #next_token} => String
    #   * {Types::GetMetricDataResponse#metric_results #metric_results} => Array&lt;Types::HistoricalMetricResult&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_data({
    #     instance_id: "InstanceId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE"], # accepts VOICE, CHAT, TASK, EMAIL
    #       routing_profiles: ["RoutingProfileId"],
    #       routing_step_expressions: ["RoutingExpression"],
    #       agent_statuses: ["AgentStatusId"],
    #     },
    #     groupings: ["QUEUE"], # accepts QUEUE, CHANNEL, ROUTING_PROFILE, ROUTING_STEP_EXPRESSION, AGENT_STATUS
    #     historical_metrics: [ # required
    #       {
    #         name: "CONTACTS_QUEUED", # accepts CONTACTS_QUEUED, CONTACTS_HANDLED, CONTACTS_ABANDONED, CONTACTS_CONSULTED, CONTACTS_AGENT_HUNG_UP_FIRST, CONTACTS_HANDLED_INCOMING, CONTACTS_HANDLED_OUTBOUND, CONTACTS_HOLD_ABANDONS, CONTACTS_TRANSFERRED_IN, CONTACTS_TRANSFERRED_OUT, CONTACTS_TRANSFERRED_IN_FROM_QUEUE, CONTACTS_TRANSFERRED_OUT_FROM_QUEUE, CONTACTS_MISSED, CALLBACK_CONTACTS_HANDLED, API_CONTACTS_HANDLED, OCCUPANCY, HANDLE_TIME, AFTER_CONTACT_WORK_TIME, QUEUED_TIME, ABANDON_TIME, QUEUE_ANSWER_TIME, HOLD_TIME, INTERACTION_TIME, INTERACTION_AND_HOLD_TIME, SERVICE_LEVEL
    #         threshold: {
    #           comparison: "LT", # accepts LT
    #           threshold_value: 1.0,
    #         },
    #         statistic: "SUM", # accepts SUM, MAX, AVG
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions.queue.id #=> String
    #   resp.metric_results[0].dimensions.queue.arn #=> String
    #   resp.metric_results[0].dimensions.channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.metric_results[0].dimensions.routing_profile.id #=> String
    #   resp.metric_results[0].dimensions.routing_profile.arn #=> String
    #   resp.metric_results[0].dimensions.routing_step_expression #=> String
    #   resp.metric_results[0].dimensions.agent_status.arn #=> String
    #   resp.metric_results[0].dimensions.agent_status.id #=> String
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String, one of "CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"
    #   resp.metric_results[0].collections[0].metric.threshold.comparison #=> String, one of "LT"
    #   resp.metric_results[0].collections[0].metric.threshold.threshold_value #=> Float
    #   resp.metric_results[0].collections[0].metric.statistic #=> String, one of "SUM", "MAX", "AVG"
    #   resp.metric_results[0].collections[0].metric.unit #=> String, one of "SECONDS", "COUNT", "PERCENT"
    #   resp.metric_results[0].collections[0].value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricData AWS API Documentation
    #
    # @overload get_metric_data(params = {})
    # @param [Hash] params ({})
    def get_metric_data(params = {}, options = {})
      req = build_request(:get_metric_data, params)
      req.send_request(options)
    end

    # Gets metric data from the specified Amazon Connect instance.
    #
    # `GetMetricDataV2` offers more features than [GetMetricData][1], the
    # previous version of this API. It has new metrics, offers filtering at
    # a metric level, and offers the ability to filter and group data by
    # channels, queues, routing profiles, agents, and agent hierarchy
    # levels. It can retrieve historical data for the last 3 months, at
    # varying intervals. It does not support agent queues.
    #
    # For a description of the historical metrics that are supported by
    # `GetMetricDataV2` and `GetMetricData`, see [Metrics definitions][2] in
    # the *Amazon Connect Administrator Guide*.
    #
    # <note markdown="1"> When you make a successful API request, you can expect the following
    # metric values in the response:
    #
    #  1.  **Metric value is null**: The calculation cannot be performed due
    #     to divide by zero or insufficient data
    #
    # 2.  **Metric value is a number (including 0) of defined type**: The
    #     number provided is the calculation result
    #
    # 3.  **MetricResult list is empty**: The request cannot find any data
    #     in the system
    #
    #  The following guidelines can help you work with the API:
    #
    #  * Each dimension in the metric response must contain a value
    #
    # * Each item in MetricResult must include all requested metrics
    #
    # * If the response is slow due to large result sets, try these
    #   approaches:
    #
    #   * Narrow the time range of your request
    #
    #   * Add filters to reduce the amount of data returned
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricData.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. This includes the
    #   `instanceId` an Amazon Connect instance.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp, in UNIX Epoch time format, at which to start the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be before the end time timestamp. The start and end time
    #   depends on the `IntervalPeriod` selected. By default the time range
    #   between start and end time is 35 days. Historical metrics are
    #   available for 3 months.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be later than the start time timestamp. It cannot be later
    #   than the current timestamp.
    #
    # @option params [Types::IntervalDetails] :interval
    #   The interval period and timezone to apply to returned metrics.
    #
    #   * `IntervalPeriod`: An aggregated grouping applied to request metrics.
    #     Valid `IntervalPeriod` values are: `FIFTEEN_MIN` \| `THIRTY_MIN` \|
    #     `HOUR` \| `DAY` \| `WEEK` \| `TOTAL`.
    #
    #     For example, if `IntervalPeriod` is selected `THIRTY_MIN`,
    #     `StartTime` and `EndTime` differs by 1 day, then Amazon Connect
    #     returns 48 results in the response. Each result is aggregated by the
    #     THIRTY\_MIN period. By default Amazon Connect aggregates results
    #     based on the `TOTAL` interval period.
    #
    #     The following list describes restrictions on `StartTime` and
    #     `EndTime` based on which `IntervalPeriod` is requested.
    #
    #     * `FIFTEEN_MIN`: The difference between `StartTime` and `EndTime`
    #       must be less than 3 days.
    #
    #     * `THIRTY_MIN`: The difference between `StartTime` and `EndTime`
    #       must be less than 3 days.
    #
    #     * `HOUR`: The difference between `StartTime` and `EndTime` must be
    #       less than 3 days.
    #
    #     * `DAY`: The difference between `StartTime` and `EndTime` must be
    #       less than 35 days.
    #
    #     * `WEEK`: The difference between `StartTime` and `EndTime` must be
    #       less than 35 days.
    #
    #     * `TOTAL`: The difference between `StartTime` and `EndTime` must be
    #       less than 35 days.
    #   * `TimeZone`: The timezone applied to requested metrics.
    #
    # @option params [required, Array<Types::FilterV2>] :filters
    #   The filters to apply to returned metrics. You can filter on the
    #   following resources:
    #
    #   * Agents
    #
    #   * Campaigns
    #
    #   * Channels
    #
    #   * Feature
    #
    #   * Queues
    #
    #   * Routing profiles
    #
    #   * Routing step expression
    #
    #   * User hierarchy groups
    #
    #   At least one filter must be passed from queues, routing profiles,
    #   agents, or user hierarchy groups.
    #
    #   For metrics for outbound campaigns analytics, you can also use
    #   campaigns to satisfy at least one filter requirement.
    #
    #   To filter by phone number, see [Create a historical metrics report][1]
    #   in the *Amazon Connect Administrator Guide*.
    #
    #   Note the following limits:
    #
    #   * **Filter keys**: A maximum of 5 filter keys are supported in a
    #     single request. Valid filter keys: `AGENT` \|
    #     `AGENT_HIERARCHY_LEVEL_ONE` \| `AGENT_HIERARCHY_LEVEL_TWO` \|
    #     `AGENT_HIERARCHY_LEVEL_THREE` \| `AGENT_HIERARCHY_LEVEL_FOUR` \|
    #     `AGENT_HIERARCHY_LEVEL_FIVE` \| `ANSWERING_MACHINE_DETECTION_STATUS`
    #     \| ` BOT_ID` \| `BOT_ALIAS` \| `BOT_VERSION` \| `BOT_LOCALE` \|
    #     `BOT_INTENT_NAME` \| `CAMPAIGN` \| `CAMPAIGN_DELIVERY_EVENT_TYPE` \|
    #     `CAMPAIGN_EXCLUDED_EVENT_TYPE ` \| `CASE_TEMPLATE_ARN` \|
    #     `CASE_STATUS` \| `CHANNEL` \|
    #     `contact/segmentAttributes/connect:Subtype` \| `DISCONNECT_REASON`
    #     \| `EVALUATION_FORM` \| `EVALUATION_SECTION` \|
    #     `EVALUATION_QUESTION` \| `EVALUATION_SOURCE` \| `FEATURE` \|
    #     `FLOW_ACTION_ID` \| `FLOW_TYPE` \| `FLOWS_MODULE_RESOURCE_ID` \|
    #     `FLOWS_NEXT_RESOURCE_ID` \| `FLOWS_NEXT_RESOURCE_QUEUE_ID` \|
    #     `FLOWS_OUTCOME_TYPE` \| `FLOWS_RESOURCE_ID` \| `FORM_VERSION` \|
    #     `INITIATION_METHOD` \| `INVOKING_RESOURCE_PUBLISHED_TIMESTAMP` \|
    #     `INVOKING_RESOURCE_TYPE` \| `PARENT_FLOWS_RESOURCE_ID` \|
    #     `RESOURCE_PUBLISHED_TIMESTAMP` \| `ROUTING_PROFILE` \|
    #     `ROUTING_STEP_EXPRESSION` \| `QUEUE` \| `Q_CONNECT_ENABLED` \|
    #
    #   * **Filter values**: A maximum of 100 filter values are supported in a
    #     single request. VOICE, CHAT, and TASK are valid `filterValue` for
    #     the CHANNEL filter key. They do not count towards limitation of 100
    #     filter values. For example, a GetMetricDataV2 request can filter by
    #     50 queues, 35 agents, and 15 routing profiles for a total of 100
    #     filter values, along with 3 channel filters.
    #
    #     `contact_lens_conversational_analytics` is a valid filterValue for
    #     the `FEATURE` filter key. It is available only to contacts analyzed
    #     by Contact Lens conversational analytics.
    #
    #     `connect:Chat`, `connect:SMS`, `connect:Telephony`, and
    #     `connect:WebRTC` are valid `filterValue` examples (not exhaustive)
    #     for the `contact/segmentAttributes/connect:Subtype filter` key.
    #
    #     `ROUTING_STEP_EXPRESSION` is a valid filter key with a filter value
    #     up to 3000 length. This filter is case and order sensitive. JSON
    #     string fields must be sorted in ascending order and JSON array order
    #     should be kept as is.
    #
    #     `Q_CONNECT_ENABLED`. TRUE and FALSE are the only valid filterValues
    #     for the `Q_CONNECT_ENABLED` filter key.
    #
    #     * TRUE includes all contacts that had Amazon Q in Connect enabled as
    #       part of the flow.
    #
    #     * FALSE includes all contacts that did not have Amazon Q in Connect
    #       enabled as part of the flow
    #     This filter is available only for contact record-driven metrics.
    #
    #     [Campaign][2] ARNs are valid `filterValues` for the `CAMPAIGN`
    #     filter key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-historical-metrics-report.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-outbound-campaigns_Campaign.html
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics that are returned. For example,
    #   when results are grouped by queue, the metrics returned are grouped by
    #   queue. The values that are returned apply to the metrics for each
    #   queue. They are not aggregated for all queues.
    #
    #   If no grouping is specified, a summary of all metrics is returned.
    #
    #   Valid grouping keys: `AGENT` \| `AGENT_HIERARCHY_LEVEL_ONE` \|
    #   `AGENT_HIERARCHY_LEVEL_TWO` \| `AGENT_HIERARCHY_LEVEL_THREE` \|
    #   `AGENT_HIERARCHY_LEVEL_FOUR` \| `AGENT_HIERARCHY_LEVEL_FIVE` \|
    #   `ANSWERING_MACHINE_DETECTION_STATUS` \| `BOT_ID` \| `BOT_ALIAS` \|
    #   `BOT_VERSION` \| `BOT_LOCALE` \| `BOT_INTENT_NAME` \| `CAMPAIGN` \|
    #   `CAMPAIGN_DELIVERY_EVENT_TYPE` \| `CAMPAIGN_EXCLUDED_EVENT_TYPE` \|
    #   `CAMPAIGN_EXECUTION_TIMESTAMP` \| `CASE_TEMPLATE_ARN` \| `CASE_STATUS`
    #   \| `CHANNEL` \| `contact/segmentAttributes/connect:Subtype` \|
    #   `DISCONNECT_REASON` \| `EVALUATION_FORM` \| `EVALUATION_SECTION` \|
    #   `EVALUATION_QUESTION` \| `EVALUATION_SOURCE` \| `FLOWS_RESOURCE_ID` \|
    #   `FLOWS_MODULE_RESOURCE_ID` \| `FLOW_ACTION_ID` \| `FLOW_TYPE` \|
    #   `FLOWS_OUTCOME_TYPE` \| `FORM_VERSION` \| `INITIATION_METHOD` \|
    #   `INVOKING_RESOURCE_PUBLISHED_TIMESTAMP` \| `INVOKING_RESOURCE_TYPE` \|
    #   `PARENT_FLOWS_RESOURCE_ID` \| `Q_CONNECT_ENABLED` \| `QUEUE` \|
    #   `RESOURCE_PUBLISHED_TIMESTAMP` \| `ROUTING_PROFILE` \|
    #   `ROUTING_STEP_EXPRESSION`
    #
    #   Type: Array of strings
    #
    #   Array Members: Maximum number of 4 items
    #
    #   Required: No
    #
    # @option params [required, Array<Types::MetricV2>] :metrics
    #   The metrics to retrieve. Specify the name, groupings, and filters for
    #   each metric. The following historical metrics are available. For a
    #   description of each metric, see [Metrics definition][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #   ABANDONMENT\_RATE
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     Q in Connect
    #
    #     UI name: [Abandonment rate][2]
    #
    #   AGENT\_ADHERENT\_TIME
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][3] is available.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Adherent time][4]
    #
    #   AGENT\_ANSWER\_RATE
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Agent answer rate][5]
    #
    #   AGENT\_NON\_ADHERENT\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Non-adherent time][6]
    #
    #   AGENT\_NON\_RESPONSE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Agent non-response][7]
    #
    #   AGENT\_NON\_RESPONSE\_WITHOUT\_CUSTOMER\_ABANDONS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     Data for this metric is available starting from October 1, 2023
    #     0:00:00 GMT.
    #
    #     UI name: [Agent non-response without customer abandons][8]
    #
    #   AGENT\_OCCUPANCY
    #
    #   : Unit: Percentage
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy
    #
    #     UI name: [Occupancy][9]
    #
    #   AGENT\_SCHEDULE\_ADHERENCE
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][3] is available.
    #
    #     Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Adherence][10]
    #
    #   AGENT\_SCHEDULED\_TIME
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][3] is available.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Scheduled time][11]
    #
    #   AVG\_ABANDON\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     Q in Connect
    #
    #     UI name: [Average queue abandon time][12]
    #
    #   AVG\_ACTIVE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Average active time][13]
    #
    #   AVG\_AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     Q in Connect
    #
    #     UI name: [Average after contact work time][14]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_AGENT\_CONNECTING\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid metric filter key: `INITIATION_METHOD`. For now, this metric
    #     only supports the following as `INITIATION_METHOD`: `INBOUND` \|
    #     `OUTBOUND` \| `CALLBACK` \| `API`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Average agent API connecting time][15]
    #
    #     <note markdown="1"> The `Negate` key in metric-level filters is not applicable for this
    #     metric.
    #
    #      </note>
    #
    #   AVG\_AGENT\_PAUSE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Average agent pause time][16]
    #
    #   AVG\_BOT\_CONVERSATION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #     version, Bot locale, Flows resource ID, Flows module resource ID,
    #     Flow type, Flow action ID, Invoking resource published timestamp,
    #     Initiation method, Invoking resource type, Parent flows resource ID
    #
    #     UI name: [Average bot conversation time][17]
    #
    #   AVG\_BOT\_CONVERSATION\_TURNS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #     version, Bot locale, Flows resource ID, Flows module resource ID,
    #     Flow type, Flow action ID, Invoking resource published timestamp,
    #     Initiation method, Invoking resource type, Parent flows resource ID
    #
    #     UI name: [Average bot conversation turns][18]
    #
    #   AVG\_CASE\_RELATED\_CONTACTS
    #
    #   : Unit: Count
    #
    #     Required filter key: CASE\_TEMPLATE\_ARN
    #
    #     Valid groupings and filters: CASE\_TEMPLATE\_ARN, CASE\_STATUS
    #
    #     UI name: [Average contacts per case][19]
    #
    #   AVG\_CASE\_RESOLUTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Required filter key: CASE\_TEMPLATE\_ARN
    #
    #     Valid groupings and filters: CASE\_TEMPLATE\_ARN, CASE\_STATUS
    #
    #     UI name: [Average case resolution time][20]
    #
    #   AVG\_CONTACT\_DURATION
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     Q in Connect
    #
    #     UI name: [Average contact duration][21]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_CONTACT\_FIRST\_RESPONSE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Agent average contact first response wait time][22]
    #
    #   AVG\_CONVERSATION\_CLOSE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average conversation close time][23]
    #
    #   AVG\_CONVERSATION\_DURATION
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     Q in Connect
    #
    #     UI name: [Average conversation duration][24]
    #
    #   AVG\_DIALS\_PER\_MINUTE
    #
    #   : This metric is available only for outbound campaigns that use the
    #     agent assisted voice and automated voice delivery modes.
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Agent, Campaign, Queue, Routing Profile
    #
    #     UI name: [Average dials per minute][25]
    #
    #   AVG\_EVALUATION\_SCORE
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     Evaluation Form ID, Evaluation Section ID, Evaluation Question ID,
    #     Evaluation Source, Form Version, Queue, Routing Profile
    #
    #     UI name: [Average evaluation score][26]
    #
    #   AVG\_FIRST\_RESPONSE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average agent first response time][27]
    #
    #   AVG\_FLOW\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #     resource ID, Flows next resource ID, Flows next resource queue ID,
    #     Flows outcome type, Flows resource ID, Initiation method, Resource
    #     published timestamp
    #
    #     UI name: [Average flow time][28]
    #
    #   AVG\_GREETING\_TIME\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average agent greeting time][29]
    #
    #   AVG\_HANDLE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     RoutingStepExpression
    #
    #     UI name: [Average handle time][30]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     Q in Connect
    #
    #     UI name: [Average customer hold time][31]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_HOLD\_TIME\_ALL\_CONTACTS
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average customer hold time all contacts][32]
    #
    #   AVG\_HOLDS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     Q in Connect
    #
    #     UI name: [Average holds][33]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average agent interaction and customer hold time][34]
    #
    #   AVG\_INTERACTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Feature, contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     UI name: [Average agent interaction time][35]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_INTERRUPTIONS\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average agent interruptions][36]
    #
    #   AVG\_INTERRUPTION\_TIME\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average agent interruption time][37]
    #
    #   AVG\_MESSAGE\_LENGTH\_AGENT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average agent message length][38]
    #
    #   AVG\_MESSAGE\_LENGTH\_CUSTOMER
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average customer message length][39]
    #
    #   AVG\_MESSAGES
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average messages][40]
    #
    #   AVG\_MESSAGES\_AGENT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average agent messages][41]
    #
    #   AVG\_MESSAGES\_BOT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average bot messages][42]
    #
    #   AVG\_MESSAGES\_CUSTOMER
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average customer messages][43]
    #
    #   AVG\_NON\_TALK\_TIME
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average non-talk time][44]
    #
    #   AVG\_QUEUE\_ANSWER\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Feature, contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     UI name: [Average queue answer time][45]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_RESPONSE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average agent response time][46]
    #
    #   AVG\_RESPONSE\_TIME\_CUSTOMER
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Average customer response time][47]
    #
    #   AVG\_RESOLUTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     UI name: [Average resolution time][48]
    #
    #   AVG\_TALK\_TIME
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average talk time][49]
    #
    #   AVG\_TALK\_TIME\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average agent talk time][50]
    #
    #   AVG\_TALK\_TIME\_CUSTOMER
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Average customer talk time][51]
    #
    #   AVG\_WAIT\_TIME\_AFTER\_CUSTOMER\_CONNECTION
    #
    #   : This metric is available only for outbound campaigns that use the
    #     agent assisted voice and automated voice delivery modes.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Campaign
    #
    #     UI name: [Average wait time after customer connection][52]
    #
    #   AVG\_WEIGHTED\_EVALUATION\_SCORE
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     Evaluation Form Id, Evaluation Section ID, Evaluation Question ID,
    #     Evaluation Source, Form Version, Queue, Routing Profile
    #
    #     UI name: [Average weighted evaluation score][53]
    #
    #   BOT\_CONVERSATIONS\_COMPLETED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #     version, Bot locale, Flows resource ID, Flows module resource ID,
    #     Flow type, Flow action ID, Invoking resource published timestamp,
    #     Initiation method, Invoking resource type, Parent flows resource ID
    #
    #     UI name: [Bot conversations completed][54]
    #
    #   BOT\_INTENTS\_COMPLETED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #     version, Bot locale, Bot intent name, Flows resource ID, Flows
    #     module resource ID, Flow type, Flow action ID, Invoking resource
    #     published timestamp, Initiation method, Invoking resource type,
    #     Parent flows resource ID
    #
    #     UI name: [Bot intents completed][55]
    #
    #   CAMPAIGN\_CONTACTS\_ABANDONED\_AFTER\_X
    #
    #   : This metric is available only for outbound campaigns using the agent
    #     assisted voice and automated voice delivery modes.
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Agent, Campaign
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `GT` (for *Greater than*).
    #
    #     UI name: [Campaign contacts abandoned after X][56]
    #
    #   CAMPAIGN\_CONTACTS\_ABANDONED\_AFTER\_X\_RATE
    #
    #   : This metric is available only for outbound campaigns using the agent
    #     assisted voice and automated voice delivery modes.
    #
    #     Unit: Percent
    #
    #     Valid groupings and filters: Agent, Campaign
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `GT` (for *Greater than*).
    #
    #     UI name: [Campaign contacts abandoned after X rate][57]
    #
    #   CAMPAIGN\_INTERACTIONS
    #
    #   : This metric is available only for outbound campaigns using the email
    #     delivery mode.
    #
    #     Unit: Count
    #
    #     Valid metric filter key: CAMPAIGN\_INTERACTION\_EVENT\_TYPE
    #
    #     Valid groupings and filters: Campaign
    #
    #     UI name: [Campaign interactions][58]
    #
    #   CAMPAIGN\_PROGRESS\_RATE
    #
    #   : This metric is only available for outbound campaigns initiated using
    #     a customer segment. It is not available for event triggered
    #     campaigns.
    #
    #     Unit: Percent
    #
    #     Valid groupings and filters: Campaign, Campaign Execution Timestamp
    #
    #     UI name: [Campaign progress rate][59]
    #
    #   CAMPAIGN\_SEND\_ATTEMPTS
    #
    #   : This metric is available only for outbound campaigns.
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Campaign, Channel,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     UI name: [Campaign send attempts][60]
    #
    #   CAMPAIGN\_SEND\_EXCLUSIONS
    #
    #   : This metric is available only for outbound campaigns.
    #
    #     Valid metric filter key: CAMPAIGN\_EXCLUDED\_EVENT\_TYPE
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Campaign, Campaign Excluded Event Type,
    #     Campaign Execution Timestamp
    #
    #     UI name: [Campaign send exclusions][61]
    #
    #   CASES\_CREATED
    #
    #   : Unit: Count
    #
    #     Required filter key: CASE\_TEMPLATE\_ARN
    #
    #     Valid groupings and filters: CASE\_TEMPLATE\_ARN, CASE\_STATUS
    #
    #     UI name: [Cases created][62]
    #
    #   CONTACTS\_CREATED
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Feature, contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     UI name: [Contacts created][63]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`, `DISCONNECT_REASON`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     RoutingStepExpression, Q in Connect
    #
    #     UI name: [API contacts handled][64]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   CONTACTS\_HANDLED\_BY\_CONNECTED\_TO\_AGENT
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Agent, Agent Hierarchy,
    #     contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     UI name: [Contacts handled (connected to agent timestamp)][65]
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Contacts hold disconnect][66]
    #
    #   CONTACTS\_ON\_HOLD\_AGENT\_DISCONNECT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Contacts hold agent disconnect][67]
    #
    #   CONTACTS\_ON\_HOLD\_CUSTOMER\_DISCONNECT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Contacts hold customer disconnect][68]
    #
    #   CONTACTS\_PUT\_ON\_HOLD
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Contacts put on hold][69]
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_EXTERNAL
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Contacts transferred out external][70]
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_INTERNAL
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Contacts transferred out internal][71]
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Contacts queued][72]
    #
    #   CONTACTS\_QUEUED\_BY\_ENQUEUE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Agent, Agent Hierarchy,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     UI name: [Contacts queued (enqueue timestamp)][73]
    #
    #   CONTACTS\_REMOVED\_FROM\_QUEUE\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Q in
    #     Connect
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you can use `LT`
    #     (for "Less than") or `LTE` (for "Less than equal").
    #
    #     UI name: [Contacts removed from queue in X seconds][74]
    #
    #   CONTACTS\_RESOLVED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you can use `LT`
    #     (for "Less than") or `LTE` (for "Less than equal").
    #
    #     UI name: [Contacts resolved in X][75]
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
    #     Q in Connect
    #
    #     UI name: [Contacts transferred out][76]
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_BY\_AGENT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Contacts transferred out by agent][77]
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Contacts transferred out queue][78]
    #
    #   CURRENT\_CASES
    #
    #   : Unit: Count
    #
    #     Required filter key: CASE\_TEMPLATE\_ARN
    #
    #     Valid groupings and filters: CASE\_TEMPLATE\_ARN, CASE\_STATUS
    #
    #     UI name: [Current cases][79]
    #
    #   CONVERSATIONS\_ABANDONED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason,
    #     Feature, RoutingStepExpression, Initiation method, Routing Profile,
    #     Queue, Q in Connect
    #
    #     UI name: [Conversations abandoned][80]
    #
    #   DELIVERY\_ATTEMPTS
    #
    #   : This metric is available only for outbound campaigns.
    #
    #     Unit: Count
    #
    #     Valid metric filter key: `ANSWERING_MACHINE_DETECTION_STATUS`,
    #     `CAMPAIGN_DELIVERY_EVENT_TYPE`, `DISCONNECT_REASON`
    #
    #     Valid groupings and filters: Agent, Answering Machine Detection
    #     Status, Campaign, Campaign Delivery EventType, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason, Queue,
    #     Routing Profile
    #
    #     UI name: [Delivery attempts][81]
    #
    #     <note markdown="1"> Campaign Delivery EventType filter and grouping are only available
    #     for SMS and Email campaign delivery modes. Agent, Queue, Routing
    #     Profile, Answering Machine Detection Status and Disconnect Reason
    #     are only available for agent assisted voice and automated voice
    #     delivery modes.
    #
    #      </note>
    #
    #   DELIVERY\_ATTEMPT\_DISPOSITION\_RATE
    #
    #   : This metric is available only for outbound campaigns. Dispositions
    #     for the agent assisted voice and automated voice delivery modes are
    #     only available with answering machine detection enabled.
    #
    #     Unit: Percent
    #
    #     Valid metric filter key: `ANSWERING_MACHINE_DETECTION_STATUS`,
    #     `CAMPAIGN_DELIVERY_EVENT_TYPE`, `DISCONNECT_REASON`
    #
    #     Valid groupings and filters: Agent, Answering Machine Detection
    #     Status, Campaign, Channel,
    #     contact/segmentAttributes/connect:Subtype, Disconnect Reason, Queue,
    #     Routing Profile
    #
    #     UI name: [Delivery attempt disposition rate][82]
    #
    #     <note markdown="1"> Campaign Delivery Event Type filter and grouping are only available
    #     for SMS and Email campaign delivery modes. Agent, Queue, Routing
    #     Profile, Answering Machine Detection Status and Disconnect Reason
    #     are only available for agent assisted voice and automated voice
    #     delivery modes.
    #
    #      </note>
    #
    #   EVALUATIONS\_PERFORMED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     Evaluation Form ID, Evaluation Source, Form Version, Queue, Routing
    #     Profile
    #
    #     UI name: [Evaluations performed][83]
    #
    #   FLOWS\_OUTCOME
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #     resource ID, Flows next resource ID, Flows next resource queue ID,
    #     Flows outcome type, Flows resource ID, Initiation method, Resource
    #     published timestamp
    #
    #     UI name: [Flows outcome][84]
    #
    #   FLOWS\_STARTED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #     resource ID, Flows resource ID, Initiation method, Resource
    #     published timestamp
    #
    #     UI name: [Flows started][85]
    #
    #   HUMAN\_ANSWERED\_CALLS
    #
    #   : This metric is available only for outbound campaigns. Dispositions
    #     for the agent assisted voice and automated voice delivery modes are
    #     only available with answering machine detection enabled.
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Agent, Campaign
    #
    #     UI name: [Human answered][86]
    #
    #   MAX\_FLOW\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #     resource ID, Flows next resource ID, Flows next resource queue ID,
    #     Flows outcome type, Flows resource ID, Initiation method, Resource
    #     published timestamp
    #
    #     UI name: [Maximum flow time][87]
    #
    #   MAX\_QUEUED\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Maximum queued time][88]
    #
    #   MIN\_FLOW\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #     resource ID, Flows next resource ID, Flows next resource queue ID,
    #     Flows outcome type, Flows resource ID, Initiation method, Resource
    #     published timestamp
    #
    #     UI name: [Minimum flow time][89]
    #
    #   PERCENT\_AUTOMATIC\_FAILS
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Agent, Agent Hierarchy, Channel,
    #     Evaluation Form ID, Evaluation Source, Form Version, Queue, Routing
    #     Profile
    #
    #     UI name: [Automatic fails percent][90]
    #
    #   PERCENT\_BOT\_CONVERSATIONS\_OUTCOME
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #     version, Bot locale, Flows resource ID, Flows module resource ID,
    #     Flow type, Flow action ID, Invoking resource published timestamp,
    #     Initiation method, Invoking resource type, Parent flows resource ID
    #
    #     UI name: [Percent bot conversations outcome][91]
    #
    #   PERCENT\_BOT\_INTENTS\_OUTCOME
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #     version, Bot locale, Bot intent name, Flows resource ID, Flows
    #     module resource ID, Flow type, Flow action ID, Invoking resource
    #     published timestamp, Initiation method, Invoking resource type,
    #     Parent flows resource ID
    #
    #     UI name: [Percent bot intents outcome][92]
    #
    #   PERCENT\_CASES\_FIRST\_CONTACT\_RESOLVED
    #
    #   : Unit: Percent
    #
    #     Required filter key: CASE\_TEMPLATE\_ARN
    #
    #     Valid groupings and filters: CASE\_TEMPLATE\_ARN, CASE\_STATUS
    #
    #     UI name: [Cases resolved on first contact][93]
    #
    #   PERCENT\_CONTACTS\_STEP\_EXPIRED
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, RoutingStepExpression
    #
    #     UI name: This metric is available in Real-time Metrics UI but not on
    #     the Historical Metrics UI.
    #
    #   PERCENT\_CONTACTS\_STEP\_JOINED
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, RoutingStepExpression
    #
    #     UI name: This metric is available in Real-time Metrics UI but not on
    #     the Historical Metrics UI.
    #
    #   PERCENT\_FLOWS\_OUTCOME
    #
    #   : Unit: Percent
    #
    #     Valid metric filter key: `FLOWS_OUTCOME_TYPE`
    #
    #     Valid groupings and filters: Channel,
    #     contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #     resource ID, Flows next resource ID, Flows next resource queue ID,
    #     Flows outcome type, Flows resource ID, Initiation method, Resource
    #     published timestamp
    #
    #     UI name: [Flows outcome percentage][94].
    #
    #     <note markdown="1"> The `FLOWS_OUTCOME_TYPE` is not a valid grouping.
    #
    #      </note>
    #
    #   PERCENT\_NON\_TALK\_TIME
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Percentage
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Non-talk time percent][95]
    #
    #   PERCENT\_TALK\_TIME
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Percentage
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Talk time percent][96]
    #
    #   PERCENT\_TALK\_TIME\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Percentage
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Agent talk time percent][97]
    #
    #   PERCENT\_TALK\_TIME\_CUSTOMER
    #
    #   : This metric is available only for contacts analyzed by Contact Lens
    #     conversational analytics.
    #
    #     Unit: Percentage
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Customer talk time percent][98]
    #
    #   RECIPIENTS\_ATTEMPTED
    #
    #   : This metric is only available for outbound campaigns initiated using
    #     a customer segment. It is not available for event triggered
    #     campaigns.
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Campaign, Campaign Execution Timestamp
    #
    #     UI name: [Recipients attempted][99]
    #
    #   RECIPIENTS\_INTERACTED
    #
    #   : This metric is only available for outbound campaigns initiated using
    #     a customer segment. It is not available for event triggered
    #     campaigns.
    #
    #     Valid metric filter key: CAMPAIGN\_INTERACTION\_EVENT\_TYPE
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Campaign, Channel,
    #     contact/segmentAttributes/connect:Subtype, Campaign Execution
    #     Timestamp
    #
    #     UI name: [Recipients interacted][100]
    #
    #   RECIPIENTS\_TARGETED
    #
    #   : This metric is only available for outbound campaigns initiated using
    #     a customer segment. It is not available for event triggered
    #     campaigns.
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Campaign, Campaign Execution Timestamp
    #
    #     UI name: [Recipients targeted][101]
    #
    #   REOPENED\_CASE\_ACTIONS
    #
    #   : Unit: Count
    #
    #     Required filter key: CASE\_TEMPLATE\_ARN
    #
    #     Valid groupings and filters: CASE\_TEMPLATE\_ARN, CASE\_STATUS
    #
    #     UI name: [Cases reopened][102]
    #
    #   RESOLVED\_CASE\_ACTIONS
    #
    #   : Unit: Count
    #
    #     Required filter key: CASE\_TEMPLATE\_ARN
    #
    #     Valid groupings and filters: CASE\_TEMPLATE\_ARN, CASE\_STATUS
    #
    #     UI name: [Cases resolved][103]
    #
    #   SERVICE\_LEVEL
    #
    #   : You can include up to 20 SERVICE\_LEVEL metrics in a request.
    #
    #     Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Q in
    #     Connect
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you can use `LT`
    #     (for "Less than") or `LTE` (for "Less than equal").
    #
    #     UI name: [Service level X][104]
    #
    #   STEP\_CONTACTS\_QUEUED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, RoutingStepExpression
    #
    #     UI name: This metric is available in Real-time Metrics UI but not on
    #     the Historical Metrics UI.
    #
    #   SUM\_AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [After contact work time][14]
    #
    #   SUM\_CONNECTING\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid metric filter key: `INITIATION_METHOD`. This metric only
    #     supports the following filter keys as `INITIATION_METHOD`: `INBOUND`
    #     \| `OUTBOUND` \| `CALLBACK` \| `API`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Agent API connecting time][105]
    #
    #     <note markdown="1"> The `Negate` key in metric-level filters is not applicable for this
    #     metric.
    #
    #      </note>
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: Count
    #
    #     Metric filter:
    #
    #     * Valid values: `API`\| `Incoming` \| `Outbound` \| `Transfer` \|
    #       `Callback` \| `Queue_Transfer`\| `Disconnect`
    #
    #     ^
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype,
    #     RoutingStepExpression, Q in Connect
    #
    #     UI name: [Contact abandoned][106]
    #
    #   SUM\_CONTACTS\_ABANDONED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you can use `LT`
    #     (for "Less than") or `LTE` (for "Less than equal").
    #
    #     UI name: [Contacts abandoned in X seconds][107]
    #
    #   SUM\_CONTACTS\_ANSWERED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you can use `LT`
    #     (for "Less than") or `LTE` (for "Less than equal").
    #
    #     UI name: [Contacts answered in X seconds][108]
    #
    #   SUM\_CONTACT\_FLOW\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Contact flow time][109]
    #
    #   SUM\_CONTACT\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy
    #
    #     UI name: [Agent on contact time][110]
    #
    #   SUM\_CONTACTS\_DISCONNECTED
    #
    #   : Valid metric filter key: `DISCONNECT_REASON`
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
    #     Connect
    #
    #     UI name: [Contact disconnected][111]
    #
    #   SUM\_ERROR\_STATUS\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy
    #
    #     UI name: [Error status time][112]
    #
    #   SUM\_HANDLE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Contact handle time][113]
    #
    #   SUM\_HOLD\_TIME
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Customer hold time][114]
    #
    #   SUM\_IDLE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy
    #
    #     UI name: [Agent idle time][115]
    #
    #   SUM\_INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy, Q in Connect
    #
    #     UI name: [Agent interaction and hold time][116]
    #
    #   SUM\_INTERACTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #     UI name: [Agent interaction time][117]
    #
    #   SUM\_NON\_PRODUCTIVE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy
    #
    #     UI name: [Agent non-productive time][118]
    #
    #   SUM\_ONLINE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy
    #
    #     UI name: [Online time][119]
    #
    #   SUM\_RETRY\_CALLBACK\_ATTEMPTS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype, Q in Connect
    #
    #     UI name: [Callback attempts][120]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#abandonment-rate
    #   [3]: https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region
    #   [4]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#adherent-time
    #   [5]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-answer-rate
    #   [6]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-adherent-time
    #   [7]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response
    #   [8]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response-without-customer-abandons
    #   [9]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#occupancy
    #   [10]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#adherence
    #   [11]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#scheduled-time
    #   [12]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time
    #   [13]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-active-time
    #   [14]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time
    #   [15]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-api-connecting-time
    #   [16]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-pause-time
    #   [17]: https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#average-bot-conversation-time
    #   [18]: https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#average-bot-conversation-turns
    #   [19]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-contacts-per-case
    #   [20]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-case-resolution-time
    #   [21]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-contact-duration
    #   [22]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-average-contact-first-response-wait-time
    #   [23]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-conversation-close-time
    #   [24]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-conversation-duration
    #   [25]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-dials-per-minute
    #   [26]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-evaluation-score
    #   [27]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-first-response-time
    #   [28]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-flow-time
    #   [29]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-greeting-time
    #   [30]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-handle-time
    #   [31]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time
    #   [32]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time-all-contacts
    #   [33]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-holds
    #   [34]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-and-customer-hold-time
    #   [35]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-time
    #   [36]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interruptions
    #   [37]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interruption-time
    #   [38]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-message-length
    #   [39]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-message-length
    #   [40]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-messages
    #   [41]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-messages
    #   [42]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-bot-messages
    #   [43]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-messages
    #   [44]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-non-talk-time
    #   [45]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-answer-time
    #   [46]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-response-time-agent
    #   [47]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-time-agent
    #   [48]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-resolution-time
    #   [49]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-talk-time
    #   [50]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-talk-time
    #   [51]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-talk-time
    #   [52]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-wait-time-after-customer-connection
    #   [53]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-weighted-evaluation-score
    #   [54]: https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-conversations-completed
    #   [55]: https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-intents-completed
    #   [56]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-contacts-abandoned-after-x
    #   [57]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-contacts-abandoned-after-x-rate
    #   [58]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-interactions
    #   [59]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-progress-rate
    #   [60]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-send-attempts
    #   [61]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-send-exclusions
    #   [62]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-created
    #   [63]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-created
    #   [64]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#api-contacts-handled
    #   [65]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-by-connected-to-agent-timestamp
    #   [66]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-disconnect
    #   [67]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-agent-disconnect
    #   [68]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-customer-disconnect
    #   [69]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-put-on-hold
    #   [70]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-external
    #   [71]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-internal
    #   [72]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued
    #   [73]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued-by-enqueue
    #   [74]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-removed-from-queue
    #   [75]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-resolved
    #   [76]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out
    #   [77]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-by-agent
    #   [78]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue
    #   [79]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#current-cases
    #   [80]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#conversations-abandoned
    #   [81]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#delivery-attempts
    #   [82]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#delivery-attempt-disposition-rate
    #   [83]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#evaluations-performed
    #   [84]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome
    #   [85]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-started
    #   [86]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#human-answered
    #   [87]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#maximum-flow-time
    #   [88]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#maximum-queued-time
    #   [89]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#minimum-flow-time
    #   [90]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#automatic-fails-percent
    #   [91]: https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#percent-bot-conversations-outcome
    #   [92]: https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#percent-bot-intents-outcome
    #   [93]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-resolved-on-first-contact
    #   [94]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome-percentage
    #   [95]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-talk-time-percent
    #   [96]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#talk-time-percent
    #   [97]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-talk-time-percent
    #   [98]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#customer-talk-time-percent
    #   [99]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-attempted
    #   [100]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-interacted
    #   [101]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-targeted
    #   [102]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-reopened
    #   [103]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-resolved
    #   [104]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#service-level
    #   [105]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-api-connecting-time
    #   [106]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned
    #   [107]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned-in-x-seconds
    #   [108]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-answered-in-x-seconds
    #   [109]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-flow-time
    #   [110]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-on-contact-time
    #   [111]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-disconnected
    #   [112]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#error-status-time
    #   [113]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-handle-time
    #   [114]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#customer-hold-time
    #   [115]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-idle-time
    #   [116]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-interaction-and-hold-time
    #   [117]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-interaction-time
    #   [118]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-productive-time
    #   [119]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#online-time
    #   [120]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#callback-attempts
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::GetMetricDataV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricDataV2Response#next_token #next_token} => String
    #   * {Types::GetMetricDataV2Response#metric_results #metric_results} => Array&lt;Types::MetricResultV2&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_data_v2({
    #     resource_arn: "ARN", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     interval: {
    #       time_zone: "String",
    #       interval_period: "FIFTEEN_MIN", # accepts FIFTEEN_MIN, THIRTY_MIN, HOUR, DAY, WEEK, TOTAL
    #     },
    #     filters: [ # required
    #       {
    #         filter_key: "ResourceArnOrId",
    #         filter_values: ["ResourceArnOrId"],
    #       },
    #     ],
    #     groupings: ["GroupingV2"],
    #     metrics: [ # required
    #       {
    #         name: "MetricNameV2",
    #         threshold: [
    #           {
    #             comparison: "ResourceArnOrId",
    #             threshold_value: 1.0,
    #           },
    #         ],
    #         metric_filters: [
    #           {
    #             metric_filter_key: "String",
    #             metric_filter_values: ["String"],
    #             negate: false,
    #           },
    #         ],
    #       },
    #     ],
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions #=> Hash
    #   resp.metric_results[0].dimensions["DimensionsV2Key"] #=> String
    #   resp.metric_results[0].metric_interval.interval #=> String, one of "FIFTEEN_MIN", "THIRTY_MIN", "HOUR", "DAY", "WEEK", "TOTAL"
    #   resp.metric_results[0].metric_interval.start_time #=> Time
    #   resp.metric_results[0].metric_interval.end_time #=> Time
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String
    #   resp.metric_results[0].collections[0].metric.threshold #=> Array
    #   resp.metric_results[0].collections[0].metric.threshold[0].comparison #=> String
    #   resp.metric_results[0].collections[0].metric.threshold[0].threshold_value #=> Float
    #   resp.metric_results[0].collections[0].metric.metric_filters #=> Array
    #   resp.metric_results[0].collections[0].metric.metric_filters[0].metric_filter_key #=> String
    #   resp.metric_results[0].collections[0].metric.metric_filters[0].metric_filter_values #=> Array
    #   resp.metric_results[0].collections[0].metric.metric_filters[0].metric_filter_values[0] #=> String
    #   resp.metric_results[0].collections[0].metric.metric_filters[0].negate #=> Boolean
    #   resp.metric_results[0].collections[0].value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricDataV2 AWS API Documentation
    #
    # @overload get_metric_data_v2(params = {})
    # @param [Hash] params ({})
    def get_metric_data_v2(params = {}, options = {})
      req = build_request(:get_metric_data_v2, params)
      req.send_request(options)
    end

    # Gets the prompt file.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :prompt_id
    #   A unique identifier for the prompt.
    #
    # @return [Types::GetPromptFileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPromptFileResponse#prompt_presigned_url #prompt_presigned_url} => String
    #   * {Types::GetPromptFileResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetPromptFileResponse#last_modified_region #last_modified_region} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_prompt_file({
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_presigned_url #=> String
    #   resp.last_modified_time #=> Time
    #   resp.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetPromptFile AWS API Documentation
    #
    # @overload get_prompt_file(params = {})
    # @param [Hash] params ({})
    def get_prompt_file(params = {}, options = {})
      req = build_request(:get_prompt_file, params)
      req.send_request(options)
    end

    # Gets details about a specific task template in the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :task_template_id
    #   A unique identifier for the task template.
    #
    # @option params [String] :snapshot_version
    #   The system generated version of a task template that is associated
    #   with a task, when the task is created.
    #
    # @return [Types::GetTaskTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaskTemplateResponse#instance_id #instance_id} => String
    #   * {Types::GetTaskTemplateResponse#id #id} => String
    #   * {Types::GetTaskTemplateResponse#arn #arn} => String
    #   * {Types::GetTaskTemplateResponse#name #name} => String
    #   * {Types::GetTaskTemplateResponse#description #description} => String
    #   * {Types::GetTaskTemplateResponse#contact_flow_id #contact_flow_id} => String
    #   * {Types::GetTaskTemplateResponse#self_assign_flow_id #self_assign_flow_id} => String
    #   * {Types::GetTaskTemplateResponse#constraints #constraints} => Types::TaskTemplateConstraints
    #   * {Types::GetTaskTemplateResponse#defaults #defaults} => Types::TaskTemplateDefaults
    #   * {Types::GetTaskTemplateResponse#fields #fields} => Array&lt;Types::TaskTemplateField&gt;
    #   * {Types::GetTaskTemplateResponse#status #status} => String
    #   * {Types::GetTaskTemplateResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetTaskTemplateResponse#created_time #created_time} => Time
    #   * {Types::GetTaskTemplateResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_task_template({
    #     instance_id: "InstanceId", # required
    #     task_template_id: "TaskTemplateId", # required
    #     snapshot_version: "SnapshotVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.contact_flow_id #=> String
    #   resp.self_assign_flow_id #=> String
    #   resp.constraints.required_fields #=> Array
    #   resp.constraints.required_fields[0].id.name #=> String
    #   resp.constraints.read_only_fields #=> Array
    #   resp.constraints.read_only_fields[0].id.name #=> String
    #   resp.constraints.invisible_fields #=> Array
    #   resp.constraints.invisible_fields[0].id.name #=> String
    #   resp.defaults.default_field_values #=> Array
    #   resp.defaults.default_field_values[0].id.name #=> String
    #   resp.defaults.default_field_values[0].default_value #=> String
    #   resp.fields #=> Array
    #   resp.fields[0].id.name #=> String
    #   resp.fields[0].description #=> String
    #   resp.fields[0].type #=> String, one of "NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL", "SELF_ASSIGN", "EXPIRY_DURATION"
    #   resp.fields[0].single_select_options #=> Array
    #   resp.fields[0].single_select_options[0] #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.last_modified_time #=> Time
    #   resp.created_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTaskTemplate AWS API Documentation
    #
    # @overload get_task_template(params = {})
    # @param [Hash] params ({})
    def get_task_template(params = {}, options = {})
      req = build_request(:get_task_template, params)
      req.send_request(options)
    end

    # Retrieves the current traffic distribution for a given traffic
    # distribution group.
    #
    # @option params [required, String] :id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the traffic
    #   distribution group was created. The ARN must be provided if the call
    #   is from the replicated Region.
    #
    # @return [Types::GetTrafficDistributionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrafficDistributionResponse#telephony_config #telephony_config} => Types::TelephonyConfig
    #   * {Types::GetTrafficDistributionResponse#id #id} => String
    #   * {Types::GetTrafficDistributionResponse#arn #arn} => String
    #   * {Types::GetTrafficDistributionResponse#sign_in_config #sign_in_config} => Types::SignInConfig
    #   * {Types::GetTrafficDistributionResponse#agent_config #agent_config} => Types::AgentConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_distribution({
    #     id: "TrafficDistributionGroupIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.telephony_config.distributions #=> Array
    #   resp.telephony_config.distributions[0].region #=> String
    #   resp.telephony_config.distributions[0].percentage #=> Integer
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.sign_in_config.distributions #=> Array
    #   resp.sign_in_config.distributions[0].region #=> String
    #   resp.sign_in_config.distributions[0].enabled #=> Boolean
    #   resp.agent_config.distributions #=> Array
    #   resp.agent_config.distributions[0].region #=> String
    #   resp.agent_config.distributions[0].percentage #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTrafficDistribution AWS API Documentation
    #
    # @overload get_traffic_distribution(params = {})
    # @param [Hash] params ({})
    def get_traffic_distribution(params = {}, options = {})
      req = build_request(:get_traffic_distribution, params)
      req.send_request(options)
    end

    # Imports a claimed phone number from an external service, such as
    # Amazon Web Services End User Messaging, into an Amazon Connect
    # instance. You can call this API only in the same Amazon Web Services
    # Region where the Amazon Connect instance was created.
    #
    # Call the [DescribePhoneNumber][1] API to verify the status of a
    # previous `ImportPhoneNumber` operation.
    #
    # If you plan to claim or import numbers and then release numbers
    # frequently, contact us for a service quota exception. Otherwise, it is
    # possible you will be blocked from claiming and releasing any more
    # numbers until up to 180 days past the oldest number released has
    # expired.
    #
    # By default you can claim or import and then release up to 200% of your
    # maximum number of active phone numbers. If you claim or import and
    # then release phone numbers using the UI or API during a rolling 180
    # day cycle that exceeds 200% of your phone number service level quota,
    # you will be blocked from claiming or importing any more numbers until
    # 180 days past the oldest number released has expired.
    #
    # For example, if you already have 99 claimed or imported numbers and a
    # service level quota of 99 phone numbers, and in any 180 day period you
    # release 99, claim 99, and then release 99, you will have exceeded the
    # 200% limit. At that point you are blocked from claiming any more
    # numbers until you open an Amazon Web Services Support ticket.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :source_phone_number_arn
    #   The claimed phone number ARN being imported from the external service,
    #   such as Amazon Web Services End User Messaging. If it is from Amazon
    #   Web Services End User Messaging, it looks like the ARN of the phone
    #   number to import from Amazon Web Services End User Messaging.
    #
    # @option params [String] :phone_number_description
    #   The description of the phone number.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::ImportPhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportPhoneNumberResponse#phone_number_id #phone_number_id} => String
    #   * {Types::ImportPhoneNumberResponse#phone_number_arn #phone_number_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_phone_number({
    #     instance_id: "InstanceId", # required
    #     source_phone_number_arn: "ARN", # required
    #     phone_number_description: "PhoneNumberDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_id #=> String
    #   resp.phone_number_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ImportPhoneNumber AWS API Documentation
    #
    # @overload import_phone_number(params = {})
    # @param [Hash] params ({})
    def import_phone_number(params = {}, options = {})
      req = build_request(:import_phone_number, params)
      req.send_request(options)
    end

    # Lists agent statuses.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Array<String>] :agent_status_types
    #   Available agent status types.
    #
    # @return [Types::ListAgentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentStatusResponse#next_token #next_token} => String
    #   * {Types::ListAgentStatusResponse#agent_status_summary_list #agent_status_summary_list} => Array&lt;Types::AgentStatusSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_statuses({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     agent_status_types: ["ROUTABLE"], # accepts ROUTABLE, CUSTOM, OFFLINE
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.agent_status_summary_list #=> Array
    #   resp.agent_status_summary_list[0].id #=> String
    #   resp.agent_status_summary_list[0].arn #=> String
    #   resp.agent_status_summary_list[0].name #=> String
    #   resp.agent_status_summary_list[0].type #=> String, one of "ROUTABLE", "CUSTOM", "OFFLINE"
    #   resp.agent_status_summary_list[0].last_modified_time #=> Time
    #   resp.agent_status_summary_list[0].last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAgentStatuses AWS API Documentation
    #
    # @overload list_agent_statuses(params = {})
    # @param [Hash] params ({})
    def list_agent_statuses(params = {}, options = {})
      req = build_request(:list_agent_statuses, params)
      req.send_request(options)
    end

    # Lists the association status of requested dataset ID for a given
    # Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :data_set_id
    #   The identifier of the dataset to get the association status.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListAnalyticsDataAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalyticsDataAssociationsResponse#results #results} => Array&lt;Types::AnalyticsDataAssociationResult&gt;
    #   * {Types::ListAnalyticsDataAssociationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analytics_data_associations({
    #     instance_id: "InstanceId", # required
    #     data_set_id: "DataSetId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].data_set_id #=> String
    #   resp.results[0].target_account_id #=> String
    #   resp.results[0].resource_share_id #=> String
    #   resp.results[0].resource_share_arn #=> String
    #   resp.results[0].resource_share_status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAnalyticsDataAssociations AWS API Documentation
    #
    # @overload list_analytics_data_associations(params = {})
    # @param [Hash] params ({})
    def list_analytics_data_associations(params = {}, options = {})
      req = build_request(:list_analytics_data_associations, params)
      req.send_request(options)
    end

    # Lists the data lake datasets available to associate with for a given
    # Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListAnalyticsDataLakeDataSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalyticsDataLakeDataSetsResponse#results #results} => Array&lt;Types::AnalyticsDataSetsResult&gt;
    #   * {Types::ListAnalyticsDataLakeDataSetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analytics_data_lake_data_sets({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].data_set_id #=> String
    #   resp.results[0].data_set_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAnalyticsDataLakeDataSets AWS API Documentation
    #
    # @overload list_analytics_data_lake_data_sets(params = {})
    # @param [Hash] params ({})
    def list_analytics_data_lake_data_sets(params = {}, options = {})
      req = build_request(:list_analytics_data_lake_data_sets, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all approved origins associated with the
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListApprovedOriginsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApprovedOriginsResponse#origins #origins} => Array&lt;String&gt;
    #   * {Types::ListApprovedOriginsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_approved_origins({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.origins #=> Array
    #   resp.origins[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListApprovedOrigins AWS API Documentation
    #
    # @overload list_approved_origins(params = {})
    # @param [Hash] params ({})
    def list_approved_origins(params = {}, options = {})
      req = build_request(:list_approved_origins, params)
      req.send_request(options)
    end

    # Provides information about contact tree, a list of associated contacts
    # with a unique identifier.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListAssociatedContactsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedContactsResponse#contact_summary_list #contact_summary_list} => Array&lt;Types::AssociatedContactSummary&gt;
    #   * {Types::ListAssociatedContactsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_contacts({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_summary_list #=> Array
    #   resp.contact_summary_list[0].contact_id #=> String
    #   resp.contact_summary_list[0].contact_arn #=> String
    #   resp.contact_summary_list[0].initiation_timestamp #=> Time
    #   resp.contact_summary_list[0].disconnect_timestamp #=> Time
    #   resp.contact_summary_list[0].initial_contact_id #=> String
    #   resp.contact_summary_list[0].previous_contact_id #=> String
    #   resp.contact_summary_list[0].related_contact_id #=> String
    #   resp.contact_summary_list[0].initiation_method #=> String, one of "INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"
    #   resp.contact_summary_list[0].channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAssociatedContacts AWS API Documentation
    #
    # @overload list_associated_contacts(params = {})
    # @param [Hash] params ({})
    def list_associated_contacts(params = {}, options = {})
      req = build_request(:list_associated_contacts, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change. To request access to this API, contact Amazon Web Services
    # Support.
    #
    # Provides summary information about the authentication profiles in a
    # specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListAuthenticationProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAuthenticationProfilesResponse#authentication_profile_summary_list #authentication_profile_summary_list} => Array&lt;Types::AuthenticationProfileSummary&gt;
    #   * {Types::ListAuthenticationProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_authentication_profiles({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication_profile_summary_list #=> Array
    #   resp.authentication_profile_summary_list[0].id #=> String
    #   resp.authentication_profile_summary_list[0].arn #=> String
    #   resp.authentication_profile_summary_list[0].name #=> String
    #   resp.authentication_profile_summary_list[0].is_default #=> Boolean
    #   resp.authentication_profile_summary_list[0].last_modified_time #=> Time
    #   resp.authentication_profile_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAuthenticationProfiles AWS API Documentation
    #
    # @overload list_authentication_profiles(params = {})
    # @param [Hash] params ({})
    def list_authentication_profiles(params = {}, options = {})
      req = build_request(:list_authentication_profiles, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # For the specified version of Amazon Lex, returns a paginated list of
    # all the Amazon Lex bots currently associated with the instance. Use
    # this API to return both Amazon Lex V1 and V2 bots.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :lex_version
    #   The version of Amazon Lex or Amazon Lex V2.
    #
    # @return [Types::ListBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotsResponse#lex_bots #lex_bots} => Array&lt;Types::LexBotConfig&gt;
    #   * {Types::ListBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     lex_version: "V1", # required, accepts V1, V2
    #   })
    #
    # @example Response structure
    #
    #   resp.lex_bots #=> Array
    #   resp.lex_bots[0].lex_bot.name #=> String
    #   resp.lex_bots[0].lex_bot.lex_region #=> String
    #   resp.lex_bots[0].lex_v2_bot.alias_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListBots AWS API Documentation
    #
    # @overload list_bots(params = {})
    # @param [Hash] params ({})
    def list_bots(params = {}, options = {})
      req = build_request(:list_bots, params)
      req.send_request(options)
    end

    # Lists contact evaluations in the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   This is not expected to be set because the value returned in the
    #   previous response is always null.
    #
    # @return [Types::ListContactEvaluationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactEvaluationsResponse#evaluation_summary_list #evaluation_summary_list} => Array&lt;Types::EvaluationSummary&gt;
    #   * {Types::ListContactEvaluationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_evaluations({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_summary_list #=> Array
    #   resp.evaluation_summary_list[0].evaluation_id #=> String
    #   resp.evaluation_summary_list[0].evaluation_arn #=> String
    #   resp.evaluation_summary_list[0].evaluation_form_title #=> String
    #   resp.evaluation_summary_list[0].evaluation_form_id #=> String
    #   resp.evaluation_summary_list[0].status #=> String, one of "DRAFT", "SUBMITTED"
    #   resp.evaluation_summary_list[0].evaluator_arn #=> String
    #   resp.evaluation_summary_list[0].score.percentage #=> Float
    #   resp.evaluation_summary_list[0].score.not_applicable #=> Boolean
    #   resp.evaluation_summary_list[0].score.automatic_fail #=> Boolean
    #   resp.evaluation_summary_list[0].created_time #=> Time
    #   resp.evaluation_summary_list[0].last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactEvaluations AWS API Documentation
    #
    # @overload list_contact_evaluations(params = {})
    # @param [Hash] params ({})
    def list_contact_evaluations(params = {}, options = {})
      req = build_request(:list_contact_evaluations, params)
      req.send_request(options)
    end

    # Provides information about the flow modules for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :contact_flow_module_state
    #   The state of the flow module.
    #
    # @return [Types::ListContactFlowModulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactFlowModulesResponse#contact_flow_modules_summary_list #contact_flow_modules_summary_list} => Array&lt;Types::ContactFlowModuleSummary&gt;
    #   * {Types::ListContactFlowModulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_flow_modules({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     contact_flow_module_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_modules_summary_list #=> Array
    #   resp.contact_flow_modules_summary_list[0].id #=> String
    #   resp.contact_flow_modules_summary_list[0].arn #=> String
    #   resp.contact_flow_modules_summary_list[0].name #=> String
    #   resp.contact_flow_modules_summary_list[0].state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlowModules AWS API Documentation
    #
    # @overload list_contact_flow_modules(params = {})
    # @param [Hash] params ({})
    def list_contact_flow_modules(params = {}, options = {})
      req = build_request(:list_contact_flow_modules, params)
      req.send_request(options)
    end

    # Returns all the available versions for the specified Amazon Connect
    # instance and flow identifier.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListContactFlowVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactFlowVersionsResponse#contact_flow_version_summary_list #contact_flow_version_summary_list} => Array&lt;Types::ContactFlowVersionSummary&gt;
    #   * {Types::ListContactFlowVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_flow_versions({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ARN", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_version_summary_list #=> Array
    #   resp.contact_flow_version_summary_list[0].arn #=> String
    #   resp.contact_flow_version_summary_list[0].version_description #=> String
    #   resp.contact_flow_version_summary_list[0].version #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlowVersions AWS API Documentation
    #
    # @overload list_contact_flow_versions(params = {})
    # @param [Hash] params ({})
    def list_contact_flow_versions(params = {}, options = {})
      req = build_request(:list_contact_flow_versions, params)
      req.send_request(options)
    end

    # Provides information about the flows for the specified Amazon Connect
    # instance.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    # For more information about flows, see [Flows][2] in the *Amazon
    # Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Array<String>] :contact_flow_types
    #   The type of flow.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListContactFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactFlowsResponse#contact_flow_summary_list #contact_flow_summary_list} => Array&lt;Types::ContactFlowSummary&gt;
    #   * {Types::ListContactFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_flows({
    #     instance_id: "InstanceId", # required
    #     contact_flow_types: ["CONTACT_FLOW"], # accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER, CAMPAIGN
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_summary_list #=> Array
    #   resp.contact_flow_summary_list[0].id #=> String
    #   resp.contact_flow_summary_list[0].arn #=> String
    #   resp.contact_flow_summary_list[0].name #=> String
    #   resp.contact_flow_summary_list[0].contact_flow_type #=> String, one of "CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"
    #   resp.contact_flow_summary_list[0].contact_flow_state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.contact_flow_summary_list[0].contact_flow_status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlows AWS API Documentation
    #
    # @overload list_contact_flows(params = {})
    # @param [Hash] params ({})
    def list_contact_flows(params = {}, options = {})
      req = build_request(:list_contact_flows, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # For the specified `referenceTypes`, returns a list of references
    # associated with the contact. *References* are links to documents that
    # are related to a contact, such as emails, attachments, or URLs.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the initial contact.
    #
    # @option params [required, Array<String>] :reference_types
    #   The type of reference.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   This is not expected to be set, because the value returned in the
    #   previous response is always null.
    #
    # @return [Types::ListContactReferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactReferencesResponse#reference_summary_list #reference_summary_list} => Array&lt;Types::ReferenceSummary&gt;
    #   * {Types::ListContactReferencesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_references({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     reference_types: ["URL"], # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.reference_summary_list #=> Array
    #   resp.reference_summary_list[0].url.name #=> String
    #   resp.reference_summary_list[0].url.value #=> String
    #   resp.reference_summary_list[0].attachment.name #=> String
    #   resp.reference_summary_list[0].attachment.value #=> String
    #   resp.reference_summary_list[0].attachment.status #=> String, one of "AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"
    #   resp.reference_summary_list[0].attachment.arn #=> String
    #   resp.reference_summary_list[0].email_message.name #=> String
    #   resp.reference_summary_list[0].email_message.arn #=> String
    #   resp.reference_summary_list[0].string.name #=> String
    #   resp.reference_summary_list[0].string.value #=> String
    #   resp.reference_summary_list[0].number.name #=> String
    #   resp.reference_summary_list[0].number.value #=> String
    #   resp.reference_summary_list[0].date.name #=> String
    #   resp.reference_summary_list[0].date.value #=> String
    #   resp.reference_summary_list[0].email.name #=> String
    #   resp.reference_summary_list[0].email.value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactReferences AWS API Documentation
    #
    # @overload list_contact_references(params = {})
    # @param [Hash] params ({})
    def list_contact_references(params = {}, options = {})
      req = build_request(:list_contact_references, params)
      req.send_request(options)
    end

    # Lists the default vocabularies for the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListDefaultVocabulariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDefaultVocabulariesResponse#default_vocabulary_list #default_vocabulary_list} => Array&lt;Types::DefaultVocabulary&gt;
    #   * {Types::ListDefaultVocabulariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_default_vocabularies({
    #     instance_id: "InstanceId", # required
    #     language_code: "ar-AE", # accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN, en-NZ, en-ZA, ca-ES, da-DK, fi-FI, id-ID, ms-MY, nl-NL, no-NO, pl-PL, sv-SE, tl-PH
    #     max_results: 1,
    #     next_token: "VocabularyNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.default_vocabulary_list #=> Array
    #   resp.default_vocabulary_list[0].instance_id #=> String
    #   resp.default_vocabulary_list[0].language_code #=> String, one of "ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"
    #   resp.default_vocabulary_list[0].vocabulary_id #=> String
    #   resp.default_vocabulary_list[0].vocabulary_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListDefaultVocabularies AWS API Documentation
    #
    # @overload list_default_vocabularies(params = {})
    # @param [Hash] params ({})
    def list_default_vocabularies(params = {}, options = {})
      req = build_request(:list_default_vocabularies, params)
      req.send_request(options)
    end

    # Lists versions of an evaluation form in the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListEvaluationFormVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEvaluationFormVersionsResponse#evaluation_form_version_summary_list #evaluation_form_version_summary_list} => Array&lt;Types::EvaluationFormVersionSummary&gt;
    #   * {Types::ListEvaluationFormVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_evaluation_form_versions({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_version_summary_list #=> Array
    #   resp.evaluation_form_version_summary_list[0].evaluation_form_arn #=> String
    #   resp.evaluation_form_version_summary_list[0].evaluation_form_id #=> String
    #   resp.evaluation_form_version_summary_list[0].evaluation_form_version #=> Integer
    #   resp.evaluation_form_version_summary_list[0].locked #=> Boolean
    #   resp.evaluation_form_version_summary_list[0].status #=> String, one of "DRAFT", "ACTIVE"
    #   resp.evaluation_form_version_summary_list[0].created_time #=> Time
    #   resp.evaluation_form_version_summary_list[0].created_by #=> String
    #   resp.evaluation_form_version_summary_list[0].last_modified_time #=> Time
    #   resp.evaluation_form_version_summary_list[0].last_modified_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListEvaluationFormVersions AWS API Documentation
    #
    # @overload list_evaluation_form_versions(params = {})
    # @param [Hash] params ({})
    def list_evaluation_form_versions(params = {}, options = {})
      req = build_request(:list_evaluation_form_versions, params)
      req.send_request(options)
    end

    # Lists evaluation forms in the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListEvaluationFormsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEvaluationFormsResponse#evaluation_form_summary_list #evaluation_form_summary_list} => Array&lt;Types::EvaluationFormSummary&gt;
    #   * {Types::ListEvaluationFormsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_evaluation_forms({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_summary_list #=> Array
    #   resp.evaluation_form_summary_list[0].evaluation_form_id #=> String
    #   resp.evaluation_form_summary_list[0].evaluation_form_arn #=> String
    #   resp.evaluation_form_summary_list[0].title #=> String
    #   resp.evaluation_form_summary_list[0].created_time #=> Time
    #   resp.evaluation_form_summary_list[0].created_by #=> String
    #   resp.evaluation_form_summary_list[0].last_modified_time #=> Time
    #   resp.evaluation_form_summary_list[0].last_modified_by #=> String
    #   resp.evaluation_form_summary_list[0].last_activated_time #=> Time
    #   resp.evaluation_form_summary_list[0].last_activated_by #=> String
    #   resp.evaluation_form_summary_list[0].latest_version #=> Integer
    #   resp.evaluation_form_summary_list[0].active_version #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListEvaluationForms AWS API Documentation
    #
    # @overload list_evaluation_forms(params = {})
    # @param [Hash] params ({})
    def list_evaluation_forms(params = {}, options = {})
      req = build_request(:list_evaluation_forms, params)
      req.send_request(options)
    end

    # List the flow association based on the filters.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :resource_type
    #   A valid resource type.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListFlowAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowAssociationsResponse#flow_association_summary_list #flow_association_summary_list} => Array&lt;Types::FlowAssociationSummary&gt;
    #   * {Types::ListFlowAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flow_associations({
    #     instance_id: "InstanceId", # required
    #     resource_type: "WHATSAPP_MESSAGING_PHONE_NUMBER", # accepts WHATSAPP_MESSAGING_PHONE_NUMBER, VOICE_PHONE_NUMBER, INBOUND_EMAIL, OUTBOUND_EMAIL, ANALYTICS_CONNECTOR
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_association_summary_list #=> Array
    #   resp.flow_association_summary_list[0].resource_id #=> String
    #   resp.flow_association_summary_list[0].flow_id #=> String
    #   resp.flow_association_summary_list[0].resource_type #=> String, one of "WHATSAPP_MESSAGING_PHONE_NUMBER", "VOICE_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListFlowAssociations AWS API Documentation
    #
    # @overload list_flow_associations(params = {})
    # @param [Hash] params ({})
    def list_flow_associations(params = {}, options = {})
      req = build_request(:list_flow_associations, params)
      req.send_request(options)
    end

    # List the hours of operation overrides.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListHoursOfOperationOverridesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHoursOfOperationOverridesResponse#next_token #next_token} => String
    #   * {Types::ListHoursOfOperationOverridesResponse#hours_of_operation_override_list #hours_of_operation_override_list} => Array&lt;Types::HoursOfOperationOverride&gt;
    #   * {Types::ListHoursOfOperationOverridesResponse#last_modified_region #last_modified_region} => String
    #   * {Types::ListHoursOfOperationOverridesResponse#last_modified_time #last_modified_time} => Time
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hours_of_operation_overrides({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.hours_of_operation_override_list #=> Array
    #   resp.hours_of_operation_override_list[0].hours_of_operation_override_id #=> String
    #   resp.hours_of_operation_override_list[0].hours_of_operation_id #=> String
    #   resp.hours_of_operation_override_list[0].hours_of_operation_arn #=> String
    #   resp.hours_of_operation_override_list[0].name #=> String
    #   resp.hours_of_operation_override_list[0].description #=> String
    #   resp.hours_of_operation_override_list[0].config #=> Array
    #   resp.hours_of_operation_override_list[0].config[0].day #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.hours_of_operation_override_list[0].config[0].start_time.hours #=> Integer
    #   resp.hours_of_operation_override_list[0].config[0].start_time.minutes #=> Integer
    #   resp.hours_of_operation_override_list[0].config[0].end_time.hours #=> Integer
    #   resp.hours_of_operation_override_list[0].config[0].end_time.minutes #=> Integer
    #   resp.hours_of_operation_override_list[0].effective_from #=> String
    #   resp.hours_of_operation_override_list[0].effective_till #=> String
    #   resp.last_modified_region #=> String
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListHoursOfOperationOverrides AWS API Documentation
    #
    # @overload list_hours_of_operation_overrides(params = {})
    # @param [Hash] params ({})
    def list_hours_of_operation_overrides(params = {}, options = {})
      req = build_request(:list_hours_of_operation_overrides, params)
      req.send_request(options)
    end

    # Provides information about the hours of operation for the specified
    # Amazon Connect instance.
    #
    # For more information about hours of operation, see [Set the Hours of
    # Operation for a Queue][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListHoursOfOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHoursOfOperationsResponse#hours_of_operation_summary_list #hours_of_operation_summary_list} => Array&lt;Types::HoursOfOperationSummary&gt;
    #   * {Types::ListHoursOfOperationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hours_of_operations({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation_summary_list #=> Array
    #   resp.hours_of_operation_summary_list[0].id #=> String
    #   resp.hours_of_operation_summary_list[0].arn #=> String
    #   resp.hours_of_operation_summary_list[0].name #=> String
    #   resp.hours_of_operation_summary_list[0].last_modified_time #=> Time
    #   resp.hours_of_operation_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListHoursOfOperations AWS API Documentation
    #
    # @overload list_hours_of_operations(params = {})
    # @param [Hash] params ({})
    def list_hours_of_operations(params = {}, options = {})
      req = build_request(:list_hours_of_operations, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all attribute types for the given
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListInstanceAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceAttributesResponse#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #   * {Types::ListInstanceAttributesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_attributes({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].attribute_type #=> String, one of "INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE", "HIGH_VOLUME_OUTBOUND", "ENHANCED_CONTACT_MONITORING", "ENHANCED_CHAT_MONITORING", "MULTI_PARTY_CHAT_CONFERENCE"
    #   resp.attributes[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstanceAttributes AWS API Documentation
    #
    # @overload list_instance_attributes(params = {})
    # @param [Hash] params ({})
    def list_instance_attributes(params = {}, options = {})
      req = build_request(:list_instance_attributes, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of storage configs for the identified
    # instance and resource type.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListInstanceStorageConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceStorageConfigsResponse#storage_configs #storage_configs} => Array&lt;Types::InstanceStorageConfig&gt;
    #   * {Types::ListInstanceStorageConfigsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_storage_configs({
    #     instance_id: "InstanceId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS, REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS, REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS, EMAIL_MESSAGES
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_configs #=> Array
    #   resp.storage_configs[0].association_id #=> String
    #   resp.storage_configs[0].storage_type #=> String, one of "S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"
    #   resp.storage_configs[0].s3_config.bucket_name #=> String
    #   resp.storage_configs[0].s3_config.bucket_prefix #=> String
    #   resp.storage_configs[0].s3_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.storage_configs[0].s3_config.encryption_config.key_id #=> String
    #   resp.storage_configs[0].kinesis_video_stream_config.prefix #=> String
    #   resp.storage_configs[0].kinesis_video_stream_config.retention_period_hours #=> Integer
    #   resp.storage_configs[0].kinesis_video_stream_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.storage_configs[0].kinesis_video_stream_config.encryption_config.key_id #=> String
    #   resp.storage_configs[0].kinesis_stream_config.stream_arn #=> String
    #   resp.storage_configs[0].kinesis_firehose_config.firehose_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstanceStorageConfigs AWS API Documentation
    #
    # @overload list_instance_storage_configs(params = {})
    # @param [Hash] params ({})
    def list_instance_storage_configs(params = {}, options = {})
      req = build_request(:list_instance_storage_configs, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Return a list of instances which are in active state,
    # creation-in-progress state, and failed state. Instances that aren't
    # successfully created (they are in a failed state) are returned only
    # for 24 hours after the CreateInstance API was invoked.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesResponse#instance_summary_list #instance_summary_list} => Array&lt;Types::InstanceSummary&gt;
    #   * {Types::ListInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_summary_list #=> Array
    #   resp.instance_summary_list[0].id #=> String
    #   resp.instance_summary_list[0].arn #=> String
    #   resp.instance_summary_list[0].identity_management_type #=> String, one of "SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"
    #   resp.instance_summary_list[0].instance_alias #=> String
    #   resp.instance_summary_list[0].created_time #=> Time
    #   resp.instance_summary_list[0].service_role #=> String
    #   resp.instance_summary_list[0].instance_status #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"
    #   resp.instance_summary_list[0].inbound_calls_enabled #=> Boolean
    #   resp.instance_summary_list[0].outbound_calls_enabled #=> Boolean
    #   resp.instance_summary_list[0].instance_access_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # Provides summary information about the Amazon Web Services resource
    # associations for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :integration_type
    #   The integration type.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #
    # @return [Types::ListIntegrationAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegrationAssociationsResponse#integration_association_summary_list #integration_association_summary_list} => Array&lt;Types::IntegrationAssociationSummary&gt;
    #   * {Types::ListIntegrationAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integration_associations({
    #     instance_id: "InstanceId", # required
    #     integration_type: "EVENT", # accepts EVENT, VOICE_ID, PINPOINT_APP, WISDOM_ASSISTANT, WISDOM_KNOWLEDGE_BASE, WISDOM_QUICK_RESPONSES, Q_MESSAGE_TEMPLATES, CASES_DOMAIN, APPLICATION, FILE_SCANNER, SES_IDENTITY, ANALYTICS_CONNECTOR, CALL_TRANSFER_CONNECTOR, COGNITO_USER_POOL
    #     next_token: "NextToken",
    #     max_results: 1,
    #     integration_arn: "ARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_association_summary_list #=> Array
    #   resp.integration_association_summary_list[0].integration_association_id #=> String
    #   resp.integration_association_summary_list[0].integration_association_arn #=> String
    #   resp.integration_association_summary_list[0].instance_id #=> String
    #   resp.integration_association_summary_list[0].integration_type #=> String, one of "EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE", "WISDOM_QUICK_RESPONSES", "Q_MESSAGE_TEMPLATES", "CASES_DOMAIN", "APPLICATION", "FILE_SCANNER", "SES_IDENTITY", "ANALYTICS_CONNECTOR", "CALL_TRANSFER_CONNECTOR", "COGNITO_USER_POOL"
    #   resp.integration_association_summary_list[0].integration_arn #=> String
    #   resp.integration_association_summary_list[0].source_application_url #=> String
    #   resp.integration_association_summary_list[0].source_application_name #=> String
    #   resp.integration_association_summary_list[0].source_type #=> String, one of "SALESFORCE", "ZENDESK", "CASES"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListIntegrationAssociations AWS API Documentation
    #
    # @overload list_integration_associations(params = {})
    # @param [Hash] params ({})
    def list_integration_associations(params = {}, options = {})
      req = build_request(:list_integration_associations, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all Lambda functions that display in the
    # dropdown options in the relevant flow blocks.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListLambdaFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLambdaFunctionsResponse#lambda_functions #lambda_functions} => Array&lt;String&gt;
    #   * {Types::ListLambdaFunctionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lambda_functions({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.lambda_functions #=> Array
    #   resp.lambda_functions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListLambdaFunctions AWS API Documentation
    #
    # @overload list_lambda_functions(params = {})
    # @param [Hash] params ({})
    def list_lambda_functions(params = {}, options = {})
      req = build_request(:list_lambda_functions, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all the Amazon Lex V1 bots currently
    # associated with the instance. To return both Amazon Lex V1 and V2
    # bots, use the [ListBots][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListBots.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. If no value is
    #   specified, the default is 10.
    #
    # @return [Types::ListLexBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLexBotsResponse#lex_bots #lex_bots} => Array&lt;Types::LexBot&gt;
    #   * {Types::ListLexBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lex_bots({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.lex_bots #=> Array
    #   resp.lex_bots[0].name #=> String
    #   resp.lex_bots[0].lex_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListLexBots AWS API Documentation
    #
    # @overload list_lex_bots(params = {})
    # @param [Hash] params ({})
    def list_lex_bots(params = {}, options = {})
      req = build_request(:list_lex_bots, params)
      req.send_request(options)
    end

    # Provides information about the phone numbers for the specified Amazon
    # Connect instance.
    #
    # For more information about phone numbers, see [Set Up Phone Numbers
    # for Your Contact Center][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    # * We recommend using [ListPhoneNumbersV2][2] to return phone number
    #   types. ListPhoneNumbers doesn't support number types `UIFN`,
    #   `SHARED`, `THIRD_PARTY_TF`, and `THIRD_PARTY_DID`. While it returns
    #   numbers of those types, it incorrectly lists them as `TOLL_FREE` or
    #   `DID`.
    #
    # * The phone number `Arn` value that is returned from each of the items
    #   in the [PhoneNumberSummaryList][3] cannot be used to tag phone
    #   number resources. It will fail with a `ResourceNotFoundException`.
    #   Instead, use the [ListPhoneNumbersV2][2] API. It returns the new
    #   phone number ARN that can be used to tag phone number resources.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbers.html#connect-ListPhoneNumbers-response-PhoneNumberSummaryList
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Array<String>] :phone_number_types
    #   The type of phone number.
    #
    #   <note markdown="1"> We recommend using [ListPhoneNumbersV2][1] to return phone number
    #   types. While ListPhoneNumbers returns number types `UIFN`, `SHARED`,
    #   `THIRD_PARTY_TF`, and `THIRD_PARTY_DID`, it incorrectly lists them as
    #   `TOLL_FREE` or `DID`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
    #
    # @option params [Array<String>] :phone_number_country_codes
    #   The ISO country code.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListPhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumbersResponse#phone_number_summary_list #phone_number_summary_list} => Array&lt;Types::PhoneNumberSummary&gt;
    #   * {Types::ListPhoneNumbersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers({
    #     instance_id: "InstanceId", # required
    #     phone_number_types: ["TOLL_FREE"], # accepts TOLL_FREE, DID, UIFN, SHARED, THIRD_PARTY_TF, THIRD_PARTY_DID, SHORT_CODE
    #     phone_number_country_codes: ["AF"], # accepts AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_summary_list #=> Array
    #   resp.phone_number_summary_list[0].id #=> String
    #   resp.phone_number_summary_list[0].arn #=> String
    #   resp.phone_number_summary_list[0].phone_number #=> String
    #   resp.phone_number_summary_list[0].phone_number_type #=> String, one of "TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"
    #   resp.phone_number_summary_list[0].phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbers AWS API Documentation
    #
    # @overload list_phone_numbers(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers(params = {}, options = {})
      req = build_request(:list_phone_numbers, params)
      req.send_request(options)
    end

    # Lists phone numbers claimed to your Amazon Connect instance or traffic
    # distribution group. If the provided `TargetArn` is a traffic
    # distribution group, you can call this API in both Amazon Web Services
    # Regions associated with traffic distribution group.
    #
    # For more information about phone numbers, see [Set Up Phone Numbers
    # for Your Contact Center][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    # <note markdown="1"> * When given an instance ARN, `ListPhoneNumbersV2` returns only the
    #   phone numbers claimed to the instance.
    #
    # * When given a traffic distribution group ARN `ListPhoneNumbersV2`
    #   returns only the phone numbers claimed to the traffic distribution
    #   group.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html
    #
    # @option params [String] :target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
    #   distribution groups that phone number inbound traffic is routed
    #   through. If both `TargetArn` and `InstanceId` input are not provided,
    #   this API lists numbers claimed to all the Amazon Connect instances
    #   belonging to your account in the same Amazon Web Services Region as
    #   the request.
    #
    # @option params [String] :instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance. If both `TargetArn` and `InstanceId` are
    #   not provided, this API lists numbers claimed to all the Amazon Connect
    #   instances belonging to your account in the same AWS Region as the
    #   request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Array<String>] :phone_number_country_codes
    #   The ISO country code.
    #
    # @option params [Array<String>] :phone_number_types
    #   The type of phone number.
    #
    # @option params [String] :phone_number_prefix
    #   The prefix of the phone number. If provided, it must contain `+` as
    #   part of the country code.
    #
    # @return [Types::ListPhoneNumbersV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumbersV2Response#next_token #next_token} => String
    #   * {Types::ListPhoneNumbersV2Response#list_phone_numbers_summary_list #list_phone_numbers_summary_list} => Array&lt;Types::ListPhoneNumbersSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers_v2({
    #     target_arn: "ARN",
    #     instance_id: "InstanceId",
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #     phone_number_country_codes: ["AF"], # accepts AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
    #     phone_number_types: ["TOLL_FREE"], # accepts TOLL_FREE, DID, UIFN, SHARED, THIRD_PARTY_TF, THIRD_PARTY_DID, SHORT_CODE
    #     phone_number_prefix: "PhoneNumberPrefix",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.list_phone_numbers_summary_list #=> Array
    #   resp.list_phone_numbers_summary_list[0].phone_number_id #=> String
    #   resp.list_phone_numbers_summary_list[0].phone_number_arn #=> String
    #   resp.list_phone_numbers_summary_list[0].phone_number #=> String
    #   resp.list_phone_numbers_summary_list[0].phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.list_phone_numbers_summary_list[0].phone_number_type #=> String, one of "TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"
    #   resp.list_phone_numbers_summary_list[0].target_arn #=> String
    #   resp.list_phone_numbers_summary_list[0].instance_id #=> String
    #   resp.list_phone_numbers_summary_list[0].phone_number_description #=> String
    #   resp.list_phone_numbers_summary_list[0].source_phone_number_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbersV2 AWS API Documentation
    #
    # @overload list_phone_numbers_v2(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers_v2(params = {}, options = {})
      req = build_request(:list_phone_numbers_v2, params)
      req.send_request(options)
    end

    # Lists predefined attributes for the specified Amazon Connect instance.
    # *Predefined attributes* are attributes in an Amazon Connect instance
    # that can be used to route contacts to an agent or pools of agents
    # within a queue. For more information, see [Create predefined
    # attributes for routing contacts to agents][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListPredefinedAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPredefinedAttributesResponse#next_token #next_token} => String
    #   * {Types::ListPredefinedAttributesResponse#predefined_attribute_summary_list #predefined_attribute_summary_list} => Array&lt;Types::PredefinedAttributeSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_predefined_attributes({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.predefined_attribute_summary_list #=> Array
    #   resp.predefined_attribute_summary_list[0].name #=> String
    #   resp.predefined_attribute_summary_list[0].last_modified_time #=> Time
    #   resp.predefined_attribute_summary_list[0].last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPredefinedAttributes AWS API Documentation
    #
    # @overload list_predefined_attributes(params = {})
    # @param [Hash] params ({})
    def list_predefined_attributes(params = {}, options = {})
      req = build_request(:list_predefined_attributes, params)
      req.send_request(options)
    end

    # Provides information about the prompts for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListPromptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPromptsResponse#prompt_summary_list #prompt_summary_list} => Array&lt;Types::PromptSummary&gt;
    #   * {Types::ListPromptsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prompts({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_summary_list #=> Array
    #   resp.prompt_summary_list[0].id #=> String
    #   resp.prompt_summary_list[0].arn #=> String
    #   resp.prompt_summary_list[0].name #=> String
    #   resp.prompt_summary_list[0].last_modified_time #=> Time
    #   resp.prompt_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPrompts AWS API Documentation
    #
    # @overload list_prompts(params = {})
    # @param [Hash] params ({})
    def list_prompts(params = {}, options = {})
      req = build_request(:list_prompts, params)
      req.send_request(options)
    end

    # Lists the quick connects associated with a queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListQueueQuickConnectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueueQuickConnectsResponse#next_token #next_token} => String
    #   * {Types::ListQueueQuickConnectsResponse#quick_connect_summary_list #quick_connect_summary_list} => Array&lt;Types::QuickConnectSummary&gt;
    #   * {Types::ListQueueQuickConnectsResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::ListQueueQuickConnectsResponse#last_modified_region #last_modified_region} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queue_quick_connects({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.quick_connect_summary_list #=> Array
    #   resp.quick_connect_summary_list[0].id #=> String
    #   resp.quick_connect_summary_list[0].arn #=> String
    #   resp.quick_connect_summary_list[0].name #=> String
    #   resp.quick_connect_summary_list[0].quick_connect_type #=> String, one of "USER", "QUEUE", "PHONE_NUMBER"
    #   resp.quick_connect_summary_list[0].last_modified_time #=> Time
    #   resp.quick_connect_summary_list[0].last_modified_region #=> String
    #   resp.last_modified_time #=> Time
    #   resp.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueueQuickConnects AWS API Documentation
    #
    # @overload list_queue_quick_connects(params = {})
    # @param [Hash] params ({})
    def list_queue_quick_connects(params = {}, options = {})
      req = build_request(:list_queue_quick_connects, params)
      req.send_request(options)
    end

    # Provides information about the queues for the specified Amazon Connect
    # instance.
    #
    # If you do not specify a `QueueTypes` parameter, both standard and
    # agent queues are returned. This might cause an unexpected truncation
    # of results if you have more than 1000 agents and you limit the number
    # of results of the API call in code.
    #
    # For more information about queues, see [Queues: Standard and Agent][1]
    # in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Array<String>] :queue_types
    #   The type of queue.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuesResponse#queue_summary_list #queue_summary_list} => Array&lt;Types::QueueSummary&gt;
    #   * {Types::ListQueuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues({
    #     instance_id: "InstanceId", # required
    #     queue_types: ["STANDARD"], # accepts STANDARD, AGENT
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_summary_list #=> Array
    #   resp.queue_summary_list[0].id #=> String
    #   resp.queue_summary_list[0].arn #=> String
    #   resp.queue_summary_list[0].name #=> String
    #   resp.queue_summary_list[0].queue_type #=> String, one of "STANDARD", "AGENT"
    #   resp.queue_summary_list[0].last_modified_time #=> Time
    #   resp.queue_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueues AWS API Documentation
    #
    # @overload list_queues(params = {})
    # @param [Hash] params ({})
    def list_queues(params = {}, options = {})
      req = build_request(:list_queues, params)
      req.send_request(options)
    end

    # Provides information about the quick connects for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @option params [Array<String>] :quick_connect_types
    #   The type of quick connect. In the Amazon Connect admin website, when
    #   you create a quick connect, you are prompted to assign one of the
    #   following types: Agent (USER), External (PHONE\_NUMBER), or Queue
    #   (QUEUE).
    #
    # @return [Types::ListQuickConnectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQuickConnectsResponse#quick_connect_summary_list #quick_connect_summary_list} => Array&lt;Types::QuickConnectSummary&gt;
    #   * {Types::ListQuickConnectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_quick_connects({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quick_connect_types: ["USER"], # accepts USER, QUEUE, PHONE_NUMBER
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_connect_summary_list #=> Array
    #   resp.quick_connect_summary_list[0].id #=> String
    #   resp.quick_connect_summary_list[0].arn #=> String
    #   resp.quick_connect_summary_list[0].name #=> String
    #   resp.quick_connect_summary_list[0].quick_connect_type #=> String, one of "USER", "QUEUE", "PHONE_NUMBER"
    #   resp.quick_connect_summary_list[0].last_modified_time #=> Time
    #   resp.quick_connect_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQuickConnects AWS API Documentation
    #
    # @overload list_quick_connects(params = {})
    # @param [Hash] params ({})
    def list_quick_connects(params = {}, options = {})
      req = build_request(:list_quick_connects, params)
      req.send_request(options)
    end

    # Provides a list of analysis segments for a real-time chat analysis
    # session. This API supports CHAT channels only.
    #
    # This API does not support VOICE. If you attempt to use it for VOICE,
    # an `InvalidRequestException` occurs.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [required, String] :output_type
    #   The Contact Lens output type to be returned.
    #
    # @option params [required, Array<String>] :segment_types
    #   Enum with segment types . Each value corresponds to a segment type
    #   returned in the segments list of the API. Each segment type has its
    #   own structure. Different channels may have different sets of supported
    #   segment types.
    #
    # @return [Types::ListRealtimeContactAnalysisSegmentsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRealtimeContactAnalysisSegmentsV2Response#channel #channel} => String
    #   * {Types::ListRealtimeContactAnalysisSegmentsV2Response#status #status} => String
    #   * {Types::ListRealtimeContactAnalysisSegmentsV2Response#segments #segments} => Array&lt;Types::RealtimeContactAnalysisSegment&gt;
    #   * {Types::ListRealtimeContactAnalysisSegmentsV2Response#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_realtime_contact_analysis_segments_v2({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #     output_type: "Raw", # required, accepts Raw, Redacted
    #     segment_types: ["Transcript"], # required, accepts Transcript, Categories, Issues, Event, Attachments, PostContactSummary
    #   })
    #
    # @example Response structure
    #
    #   resp.channel #=> String, one of "VOICE", "CHAT"
    #   resp.status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.segments #=> Array
    #   resp.segments[0].transcript.id #=> String
    #   resp.segments[0].transcript.participant_id #=> String
    #   resp.segments[0].transcript.participant_role #=> String, one of "AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"
    #   resp.segments[0].transcript.display_name #=> String
    #   resp.segments[0].transcript.content #=> String
    #   resp.segments[0].transcript.content_type #=> String
    #   resp.segments[0].transcript.time.absolute_time #=> Time
    #   resp.segments[0].transcript.redaction.character_offsets #=> Array
    #   resp.segments[0].transcript.redaction.character_offsets[0].begin_offset_char #=> Integer
    #   resp.segments[0].transcript.redaction.character_offsets[0].end_offset_char #=> Integer
    #   resp.segments[0].transcript.sentiment #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL"
    #   resp.segments[0].categories.matched_details #=> Hash
    #   resp.segments[0].categories.matched_details["RealTimeContactAnalysisCategoryName"].points_of_interest #=> Array
    #   resp.segments[0].categories.matched_details["RealTimeContactAnalysisCategoryName"].points_of_interest[0].transcript_items #=> Array
    #   resp.segments[0].categories.matched_details["RealTimeContactAnalysisCategoryName"].points_of_interest[0].transcript_items[0].id #=> String
    #   resp.segments[0].categories.matched_details["RealTimeContactAnalysisCategoryName"].points_of_interest[0].transcript_items[0].character_offsets.begin_offset_char #=> Integer
    #   resp.segments[0].categories.matched_details["RealTimeContactAnalysisCategoryName"].points_of_interest[0].transcript_items[0].character_offsets.end_offset_char #=> Integer
    #   resp.segments[0].issues.issues_detected #=> Array
    #   resp.segments[0].issues.issues_detected[0].transcript_items #=> Array
    #   resp.segments[0].issues.issues_detected[0].transcript_items[0].content #=> String
    #   resp.segments[0].issues.issues_detected[0].transcript_items[0].id #=> String
    #   resp.segments[0].issues.issues_detected[0].transcript_items[0].character_offsets.begin_offset_char #=> Integer
    #   resp.segments[0].issues.issues_detected[0].transcript_items[0].character_offsets.end_offset_char #=> Integer
    #   resp.segments[0].event.id #=> String
    #   resp.segments[0].event.participant_id #=> String
    #   resp.segments[0].event.participant_role #=> String, one of "AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"
    #   resp.segments[0].event.display_name #=> String
    #   resp.segments[0].event.event_type #=> String
    #   resp.segments[0].event.time.absolute_time #=> Time
    #   resp.segments[0].attachments.id #=> String
    #   resp.segments[0].attachments.participant_id #=> String
    #   resp.segments[0].attachments.participant_role #=> String, one of "AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"
    #   resp.segments[0].attachments.display_name #=> String
    #   resp.segments[0].attachments.attachments #=> Array
    #   resp.segments[0].attachments.attachments[0].attachment_name #=> String
    #   resp.segments[0].attachments.attachments[0].content_type #=> String
    #   resp.segments[0].attachments.attachments[0].attachment_id #=> String
    #   resp.segments[0].attachments.attachments[0].status #=> String, one of "APPROVED", "REJECTED", "IN_PROGRESS"
    #   resp.segments[0].attachments.time.absolute_time #=> Time
    #   resp.segments[0].post_contact_summary.content #=> String
    #   resp.segments[0].post_contact_summary.status #=> String, one of "FAILED", "COMPLETED"
    #   resp.segments[0].post_contact_summary.failure_code #=> String, one of "QUOTA_EXCEEDED", "INSUFFICIENT_CONVERSATION_CONTENT", "FAILED_SAFETY_GUIDELINES", "INVALID_ANALYSIS_CONFIGURATION", "INTERNAL_ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRealtimeContactAnalysisSegmentsV2 AWS API Documentation
    #
    # @overload list_realtime_contact_analysis_segments_v2(params = {})
    # @param [Hash] params ({})
    def list_realtime_contact_analysis_segments_v2(params = {}, options = {})
      req = build_request(:list_realtime_contact_analysis_segments_v2, params)
      req.send_request(options)
    end

    # Lists the queues associated with a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListRoutingProfileQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingProfileQueuesResponse#next_token #next_token} => String
    #   * {Types::ListRoutingProfileQueuesResponse#routing_profile_queue_config_summary_list #routing_profile_queue_config_summary_list} => Array&lt;Types::RoutingProfileQueueConfigSummary&gt;
    #   * {Types::ListRoutingProfileQueuesResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::ListRoutingProfileQueuesResponse#last_modified_region #last_modified_region} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.routing_profile_queue_config_summary_list #=> Array
    #   resp.routing_profile_queue_config_summary_list[0].queue_id #=> String
    #   resp.routing_profile_queue_config_summary_list[0].queue_arn #=> String
    #   resp.routing_profile_queue_config_summary_list[0].queue_name #=> String
    #   resp.routing_profile_queue_config_summary_list[0].priority #=> Integer
    #   resp.routing_profile_queue_config_summary_list[0].delay #=> Integer
    #   resp.routing_profile_queue_config_summary_list[0].channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.last_modified_time #=> Time
    #   resp.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfileQueues AWS API Documentation
    #
    # @overload list_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def list_routing_profile_queues(params = {}, options = {})
      req = build_request(:list_routing_profile_queues, params)
      req.send_request(options)
    end

    # Provides summary information about the routing profiles for the
    # specified Amazon Connect instance.
    #
    # For more information about routing profiles, see [Routing Profiles][1]
    # and [Create a Routing Profile][2] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListRoutingProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingProfilesResponse#routing_profile_summary_list #routing_profile_summary_list} => Array&lt;Types::RoutingProfileSummary&gt;
    #   * {Types::ListRoutingProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile_summary_list #=> Array
    #   resp.routing_profile_summary_list[0].id #=> String
    #   resp.routing_profile_summary_list[0].arn #=> String
    #   resp.routing_profile_summary_list[0].name #=> String
    #   resp.routing_profile_summary_list[0].last_modified_time #=> Time
    #   resp.routing_profile_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfiles AWS API Documentation
    #
    # @overload list_routing_profiles(params = {})
    # @param [Hash] params ({})
    def list_routing_profiles(params = {}, options = {})
      req = build_request(:list_routing_profiles, params)
      req.send_request(options)
    end

    # List all rules for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :publish_status
    #   The publish status of the rule.
    #
    # @option params [String] :event_source_name
    #   The name of the event source.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesResponse#rule_summary_list #rule_summary_list} => Array&lt;Types::RuleSummary&gt;
    #   * {Types::ListRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     instance_id: "InstanceId", # required
    #     publish_status: "DRAFT", # accepts DRAFT, PUBLISHED
    #     event_source_name: "OnPostCallAnalysisAvailable", # accepts OnPostCallAnalysisAvailable, OnRealTimeCallAnalysisAvailable, OnRealTimeChatAnalysisAvailable, OnPostChatAnalysisAvailable, OnZendeskTicketCreate, OnZendeskTicketStatusUpdate, OnSalesforceCaseCreate, OnContactEvaluationSubmit, OnMetricDataUpdate, OnCaseCreate, OnCaseUpdate, OnSlaBreach
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_summary_list #=> Array
    #   resp.rule_summary_list[0].name #=> String
    #   resp.rule_summary_list[0].rule_id #=> String
    #   resp.rule_summary_list[0].rule_arn #=> String
    #   resp.rule_summary_list[0].event_source_name #=> String, one of "OnPostCallAnalysisAvailable", "OnRealTimeCallAnalysisAvailable", "OnRealTimeChatAnalysisAvailable", "OnPostChatAnalysisAvailable", "OnZendeskTicketCreate", "OnZendeskTicketStatusUpdate", "OnSalesforceCaseCreate", "OnContactEvaluationSubmit", "OnMetricDataUpdate", "OnCaseCreate", "OnCaseUpdate", "OnSlaBreach"
    #   resp.rule_summary_list[0].publish_status #=> String, one of "DRAFT", "PUBLISHED"
    #   resp.rule_summary_list[0].action_summaries #=> Array
    #   resp.rule_summary_list[0].action_summaries[0].action_type #=> String, one of "CREATE_TASK", "ASSIGN_CONTACT_CATEGORY", "GENERATE_EVENTBRIDGE_EVENT", "SEND_NOTIFICATION", "CREATE_CASE", "UPDATE_CASE", "ASSIGN_SLA", "END_ASSOCIATED_TASKS", "SUBMIT_AUTO_EVALUATION"
    #   resp.rule_summary_list[0].created_time #=> Time
    #   resp.rule_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all security keys associated with the
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListSecurityKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityKeysResponse#security_keys #security_keys} => Array&lt;Types::SecurityKey&gt;
    #   * {Types::ListSecurityKeysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_keys({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_keys #=> Array
    #   resp.security_keys[0].association_id #=> String
    #   resp.security_keys[0].key #=> String
    #   resp.security_keys[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityKeys AWS API Documentation
    #
    # @overload list_security_keys(params = {})
    # @param [Hash] params ({})
    def list_security_keys(params = {}, options = {})
      req = build_request(:list_security_keys, params)
      req.send_request(options)
    end

    # Returns a list of third-party applications in a specific security
    # profile.
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListSecurityProfileApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfileApplicationsResponse#applications #applications} => Array&lt;Types::Application&gt;
    #   * {Types::ListSecurityProfileApplicationsResponse#next_token #next_token} => String
    #   * {Types::ListSecurityProfileApplicationsResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::ListSecurityProfileApplicationsResponse#last_modified_region #last_modified_region} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profile_applications({
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].namespace #=> String
    #   resp.applications[0].application_permissions #=> Array
    #   resp.applications[0].application_permissions[0] #=> String
    #   resp.next_token #=> String
    #   resp.last_modified_time #=> Time
    #   resp.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfileApplications AWS API Documentation
    #
    # @overload list_security_profile_applications(params = {})
    # @param [Hash] params ({})
    def list_security_profile_applications(params = {}, options = {})
      req = build_request(:list_security_profile_applications, params)
      req.send_request(options)
    end

    # Lists the permissions granted to a security profile.
    #
    # For information about security profiles, see [Security Profiles][1] in
    # the *Amazon Connect Administrator Guide*. For a mapping of the API
    # name and user interface name of the security profile permissions, see
    # [List of security profile permissions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListSecurityProfilePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfilePermissionsResponse#permissions #permissions} => Array&lt;String&gt;
    #   * {Types::ListSecurityProfilePermissionsResponse#next_token #next_token} => String
    #   * {Types::ListSecurityProfilePermissionsResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::ListSecurityProfilePermissionsResponse#last_modified_region #last_modified_region} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profile_permissions({
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0] #=> String
    #   resp.next_token #=> String
    #   resp.last_modified_time #=> Time
    #   resp.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilePermissions AWS API Documentation
    #
    # @overload list_security_profile_permissions(params = {})
    # @param [Hash] params ({})
    def list_security_profile_permissions(params = {}, options = {})
      req = build_request(:list_security_profile_permissions, params)
      req.send_request(options)
    end

    # Provides summary information about the security profiles for the
    # specified Amazon Connect instance.
    #
    # For more information about security profiles, see [Security
    # Profiles][1] in the *Amazon Connect Administrator Guide*. For a
    # mapping of the API name and user interface name of the security
    # profile permissions, see [List of security profile permissions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListSecurityProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfilesResponse#security_profile_summary_list #security_profile_summary_list} => Array&lt;Types::SecurityProfileSummary&gt;
    #   * {Types::ListSecurityProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_summary_list #=> Array
    #   resp.security_profile_summary_list[0].id #=> String
    #   resp.security_profile_summary_list[0].arn #=> String
    #   resp.security_profile_summary_list[0].name #=> String
    #   resp.security_profile_summary_list[0].last_modified_time #=> Time
    #   resp.security_profile_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfiles AWS API Documentation
    #
    # @overload list_security_profiles(params = {})
    # @param [Hash] params ({})
    def list_security_profiles(params = {}, options = {})
      req = build_request(:list_security_profiles, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # For sample policies that use tags, see [Amazon Connect Identity-Based
    # Policy Examples][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. All Amazon Connect
    #   resources (instances, queues, flows, routing profiles, etc) have an
    #   ARN. To locate the ARN for an instance, for example, see [Find your
    #   Amazon Connect instance ID/ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists task templates for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   It is not expected that you set this because the value returned in the
    #   previous response is always null.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    #   It is not expected that you set this.
    #
    # @option params [String] :status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to it.
    #   Tasks can only be created from `ACTIVE` templates. If a template is
    #   marked as `INACTIVE`, then a task that refers to this template cannot
    #   be created.
    #
    # @option params [String] :name
    #   The name of the task template.
    #
    # @return [Types::ListTaskTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskTemplatesResponse#task_templates #task_templates} => Array&lt;Types::TaskTemplateMetadata&gt;
    #   * {Types::ListTaskTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_templates({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     name: "TaskTemplateName",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_templates #=> Array
    #   resp.task_templates[0].id #=> String
    #   resp.task_templates[0].arn #=> String
    #   resp.task_templates[0].name #=> String
    #   resp.task_templates[0].description #=> String
    #   resp.task_templates[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.task_templates[0].last_modified_time #=> Time
    #   resp.task_templates[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTaskTemplates AWS API Documentation
    #
    # @overload list_task_templates(params = {})
    # @param [Hash] params ({})
    def list_task_templates(params = {}, options = {})
      req = build_request(:list_task_templates, params)
      req.send_request(options)
    end

    # Lists traffic distribution group users.
    #
    # @option params [required, String] :traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the traffic
    #   distribution group was created. The ARN must be provided if the call
    #   is from the replicated Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListTrafficDistributionGroupUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficDistributionGroupUsersResponse#next_token #next_token} => String
    #   * {Types::ListTrafficDistributionGroupUsersResponse#traffic_distribution_group_user_summary_list #traffic_distribution_group_user_summary_list} => Array&lt;Types::TrafficDistributionGroupUserSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_distribution_group_users({
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.traffic_distribution_group_user_summary_list #=> Array
    #   resp.traffic_distribution_group_user_summary_list[0].user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTrafficDistributionGroupUsers AWS API Documentation
    #
    # @overload list_traffic_distribution_group_users(params = {})
    # @param [Hash] params ({})
    def list_traffic_distribution_group_users(params = {}, options = {})
      req = build_request(:list_traffic_distribution_group_users, params)
      req.send_request(options)
    end

    # Lists traffic distribution groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::ListTrafficDistributionGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficDistributionGroupsResponse#next_token #next_token} => String
    #   * {Types::ListTrafficDistributionGroupsResponse#traffic_distribution_group_summary_list #traffic_distribution_group_summary_list} => Array&lt;Types::TrafficDistributionGroupSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_distribution_groups({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     instance_id: "InstanceIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.traffic_distribution_group_summary_list #=> Array
    #   resp.traffic_distribution_group_summary_list[0].id #=> String
    #   resp.traffic_distribution_group_summary_list[0].arn #=> String
    #   resp.traffic_distribution_group_summary_list[0].name #=> String
    #   resp.traffic_distribution_group_summary_list[0].instance_arn #=> String
    #   resp.traffic_distribution_group_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "PENDING_DELETION", "DELETION_FAILED", "UPDATE_IN_PROGRESS"
    #   resp.traffic_distribution_group_summary_list[0].is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTrafficDistributionGroups AWS API Documentation
    #
    # @overload list_traffic_distribution_groups(params = {})
    # @param [Hash] params ({})
    def list_traffic_distribution_groups(params = {}, options = {})
      req = build_request(:list_traffic_distribution_groups, params)
      req.send_request(options)
    end

    # Lists the use cases for the integration association.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_association_id
    #   The identifier for the integration association.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListUseCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUseCasesResponse#use_case_summary_list #use_case_summary_list} => Array&lt;Types::UseCase&gt;
    #   * {Types::ListUseCasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_use_cases({
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.use_case_summary_list #=> Array
    #   resp.use_case_summary_list[0].use_case_id #=> String
    #   resp.use_case_summary_list[0].use_case_arn #=> String
    #   resp.use_case_summary_list[0].use_case_type #=> String, one of "RULES_EVALUATION", "CONNECT_CAMPAIGNS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUseCases AWS API Documentation
    #
    # @overload list_use_cases(params = {})
    # @param [Hash] params ({})
    def list_use_cases(params = {}, options = {})
      req = build_request(:list_use_cases, params)
      req.send_request(options)
    end

    # Provides summary information about the hierarchy groups for the
    # specified Amazon Connect instance.
    #
    # For more information about agent hierarchies, see [Set Up Agent
    # Hierarchies][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListUserHierarchyGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserHierarchyGroupsResponse#user_hierarchy_group_summary_list #user_hierarchy_group_summary_list} => Array&lt;Types::HierarchyGroupSummary&gt;
    #   * {Types::ListUserHierarchyGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_hierarchy_groups({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_hierarchy_group_summary_list #=> Array
    #   resp.user_hierarchy_group_summary_list[0].id #=> String
    #   resp.user_hierarchy_group_summary_list[0].arn #=> String
    #   resp.user_hierarchy_group_summary_list[0].name #=> String
    #   resp.user_hierarchy_group_summary_list[0].last_modified_time #=> Time
    #   resp.user_hierarchy_group_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroups AWS API Documentation
    #
    # @overload list_user_hierarchy_groups(params = {})
    # @param [Hash] params ({})
    def list_user_hierarchy_groups(params = {}, options = {})
      req = build_request(:list_user_hierarchy_groups, params)
      req.send_request(options)
    end

    # Lists proficiencies associated with a user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListUserProficienciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserProficienciesResponse#next_token #next_token} => String
    #   * {Types::ListUserProficienciesResponse#user_proficiency_list #user_proficiency_list} => Array&lt;Types::UserProficiency&gt;
    #   * {Types::ListUserProficienciesResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::ListUserProficienciesResponse#last_modified_region #last_modified_region} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_proficiencies({
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.user_proficiency_list #=> Array
    #   resp.user_proficiency_list[0].attribute_name #=> String
    #   resp.user_proficiency_list[0].attribute_value #=> String
    #   resp.user_proficiency_list[0].level #=> Float
    #   resp.last_modified_time #=> Time
    #   resp.last_modified_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserProficiencies AWS API Documentation
    #
    # @overload list_user_proficiencies(params = {})
    # @param [Hash] params ({})
    def list_user_proficiencies(params = {}, options = {})
      req = build_request(:list_user_proficiencies, params)
      req.send_request(options)
    end

    # Provides summary information about the users for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#user_summary_list #user_summary_list} => Array&lt;Types::UserSummary&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_summary_list #=> Array
    #   resp.user_summary_list[0].id #=> String
    #   resp.user_summary_list[0].arn #=> String
    #   resp.user_summary_list[0].username #=> String
    #   resp.user_summary_list[0].last_modified_time #=> Time
    #   resp.user_summary_list[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Returns all the available versions for the specified Amazon Connect
    # instance and view identifier.
    #
    # Results will be sorted from highest to lowest.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListViewVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListViewVersionsResponse#view_version_summary_list #view_version_summary_list} => Array&lt;Types::ViewVersionSummary&gt;
    #   * {Types::ListViewVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_view_versions({
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     next_token: "ViewsNextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.view_version_summary_list #=> Array
    #   resp.view_version_summary_list[0].id #=> String
    #   resp.view_version_summary_list[0].arn #=> String
    #   resp.view_version_summary_list[0].description #=> String
    #   resp.view_version_summary_list[0].name #=> String
    #   resp.view_version_summary_list[0].type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.view_version_summary_list[0].version #=> Integer
    #   resp.view_version_summary_list[0].version_description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListViewVersions AWS API Documentation
    #
    # @overload list_view_versions(params = {})
    # @param [Hash] params ({})
    def list_view_versions(params = {}, options = {})
      req = build_request(:list_view_versions, params)
      req.send_request(options)
    end

    # Returns views in the given instance.
    #
    # Results are sorted primarily by type, and secondarily by name.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [String] :type
    #   The type of the view.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListViewsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListViewsResponse#views_summary_list #views_summary_list} => Array&lt;Types::ViewSummary&gt;
    #   * {Types::ListViewsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_views({
    #     instance_id: "ViewsInstanceId", # required
    #     type: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED, AWS_MANAGED
    #     next_token: "ViewsNextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.views_summary_list #=> Array
    #   resp.views_summary_list[0].id #=> String
    #   resp.views_summary_list[0].arn #=> String
    #   resp.views_summary_list[0].name #=> String
    #   resp.views_summary_list[0].type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.views_summary_list[0].status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.views_summary_list[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListViews AWS API Documentation
    #
    # @overload list_views(params = {})
    # @param [Hash] params ({})
    def list_views(params = {}, options = {})
      req = build_request(:list_views, params)
      req.send_request(options)
    end

    # Initiates silent monitoring of a contact. The Contact Control Panel
    # (CCP) of the user specified by *userId* will be set to silent
    # monitoring mode on the contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [Array<String>] :allowed_monitor_capabilities
    #   Specify which monitoring actions the user is allowed to take. For
    #   example, whether the user is allowed to escalate from silent
    #   monitoring to barge. AllowedMonitorCapabilities is required if barge
    #   is enabled.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::MonitorContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MonitorContactResponse#contact_id #contact_id} => String
    #   * {Types::MonitorContactResponse#contact_arn #contact_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.monitor_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     user_id: "AgentResourceId", # required
    #     allowed_monitor_capabilities: ["SILENT_MONITOR"], # accepts SILENT_MONITOR, BARGE
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.contact_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MonitorContact AWS API Documentation
    #
    # @overload monitor_contact(params = {})
    # @param [Hash] params ({})
    def monitor_contact(params = {}, options = {})
      req = build_request(:monitor_contact, params)
      req.send_request(options)
    end

    # Allows pausing an ongoing task contact.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   `instanceId` in the ARN of the instance.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.pause_contact({
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PauseContact AWS API Documentation
    #
    # @overload pause_contact(params = {})
    # @param [Hash] params ({})
    def pause_contact(params = {}, options = {})
      req = build_request(:pause_contact, params)
      req.send_request(options)
    end

    # Changes the current status of a user or agent in Amazon Connect. If
    # the agent is currently handling a contact, this sets the agent's next
    # status.
    #
    # For more information, see [Agent status][1] and [Set your next
    # status][2] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :agent_status_id
    #   The identifier of the agent status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_user_status({
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PutUserStatus AWS API Documentation
    #
    # @overload put_user_status(params = {})
    # @param [Hash] params ({})
    def put_user_status(params = {}, options = {})
      req = build_request(:put_user_status, params)
      req.send_request(options)
    end

    # Releases a phone number previously claimed to an Amazon Connect
    # instance or traffic distribution group. You can call this API only in
    # the Amazon Web Services Region where the number was claimed.
    #
    # To release phone numbers from a traffic distribution group, use the
    # `ReleasePhoneNumber` API, not the Amazon Connect admin website.
    #
    #  After releasing a phone number, the phone number enters into a
    # cooldown period for up to 180 days. It cannot be searched for or
    # claimed again until the period has ended. If you accidentally release
    # a phone number, contact Amazon Web Services Support.
    #
    # If you plan to claim and release numbers frequently, contact us for a
    # service quota exception. Otherwise, it is possible you will be blocked
    # from claiming and releasing any more numbers until up to 180 days past
    # the oldest number released has expired.
    #
    # By default you can claim and release up to 200% of your maximum number
    # of active phone numbers. If you claim and release phone numbers using
    # the UI or API during a rolling 180 day cycle that exceeds 200% of your
    # phone number service level quota, you will be blocked from claiming
    # any more numbers until 180 days past the oldest number released has
    # expired.
    #
    # For example, if you already have 99 claimed numbers and a service
    # level quota of 99 phone numbers, and in any 180 day period you release
    # 99, claim 99, and then release 99, you will have exceeded the 200%
    # limit. At that point you are blocked from claiming any more numbers
    # until you open an Amazon Web Services support ticket.
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_phone_number({
    #     phone_number_id: "PhoneNumberId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReleasePhoneNumber AWS API Documentation
    #
    # @overload release_phone_number(params = {})
    # @param [Hash] params ({})
    def release_phone_number(params = {}, options = {})
      req = build_request(:release_phone_number, params)
      req.send_request(options)
    end

    # Replicates an Amazon Connect instance in the specified Amazon Web
    # Services Region and copies configuration information for Amazon
    # Connect resources across Amazon Web Services Regions.
    #
    # For more information about replicating an Amazon Connect instance, see
    # [Create a replica of your existing Amazon Connect instance][1] in the
    # *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance. You
    #   can provide the `InstanceId`, or the entire ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :replica_region
    #   The Amazon Web Services Region where to replicate the Amazon Connect
    #   instance.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :replica_alias
    #   The alias for the replicated instance. The `ReplicaAlias` must be
    #   unique.
    #
    # @return [Types::ReplicateInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicateInstanceResponse#id #id} => String
    #   * {Types::ReplicateInstanceResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replicate_instance({
    #     instance_id: "InstanceIdOrArn", # required
    #     replica_region: "AwsRegion", # required
    #     client_token: "ClientToken",
    #     replica_alias: "DirectoryAlias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReplicateInstance AWS API Documentation
    #
    # @overload replicate_instance(params = {})
    # @param [Hash] params ({})
    def replicate_instance(params = {}, options = {})
      req = build_request(:replicate_instance, params)
      req.send_request(options)
    end

    # Allows resuming a task contact in a paused state.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   `instanceId` in the ARN of the instance.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_contact({
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResumeContact AWS API Documentation
    #
    # @overload resume_contact(params = {})
    # @param [Hash] params ({})
    def resume_contact(params = {}, options = {})
      req = build_request(:resume_contact, params)
      req.send_request(options)
    end

    # When a contact is being recorded, and the recording has been suspended
    # using SuspendContactRecording, this API resumes recording whatever
    # recording is selected in the flow configuration: call, screen, or
    # both. If only call recording or only screen recording is enabled, then
    # it would resume.
    #
    # Voice and screen recordings are supported.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [String] :contact_recording_type
    #   The type of recording being operated on.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     contact_recording_type: "AGENT", # accepts AGENT, IVR, SCREEN
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResumeContactRecording AWS API Documentation
    #
    # @overload resume_contact_recording(params = {})
    # @param [Hash] params ({})
    def resume_contact_recording(params = {}, options = {})
      req = build_request(:resume_contact_recording, params)
      req.send_request(options)
    end

    # Searches AgentStatuses in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::AgentStatusSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::AgentStatusSearchCriteria] :search_criteria
    #   The search criteria to be used to return agent statuses.
    #
    # @return [Types::SearchAgentStatusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAgentStatusesResponse#agent_statuses #agent_statuses} => Array&lt;Types::AgentStatus&gt;
    #   * {Types::SearchAgentStatusesResponse#next_token #next_token} => String
    #   * {Types::SearchAgentStatusesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_agent_statuses({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       attribute_filter: {
    #         or_conditions: [
    #           {
    #             tag_conditions: [
    #               {
    #                 tag_key: "String",
    #                 tag_value: "String",
    #               },
    #             ],
    #           },
    #         ],
    #         and_condition: {
    #           tag_conditions: [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         },
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive AgentStatusSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive AgentStatusSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_statuses #=> Array
    #   resp.agent_statuses[0].agent_status_arn #=> String
    #   resp.agent_statuses[0].agent_status_id #=> String
    #   resp.agent_statuses[0].name #=> String
    #   resp.agent_statuses[0].description #=> String
    #   resp.agent_statuses[0].type #=> String, one of "ROUTABLE", "CUSTOM", "OFFLINE"
    #   resp.agent_statuses[0].display_order #=> Integer
    #   resp.agent_statuses[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_statuses[0].tags #=> Hash
    #   resp.agent_statuses[0].tags["TagKey"] #=> String
    #   resp.agent_statuses[0].last_modified_time #=> Time
    #   resp.agent_statuses[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchAgentStatuses AWS API Documentation
    #
    # @overload search_agent_statuses(params = {})
    # @param [Hash] params ({})
    def search_agent_statuses(params = {}, options = {})
      req = build_request(:search_agent_statuses, params)
      req.send_request(options)
    end

    # Searches for available phone numbers that you can claim to your Amazon
    # Connect instance or traffic distribution group. If the provided
    # `TargetArn` is a traffic distribution group, you can call this API in
    # both Amazon Web Services Regions associated with the traffic
    # distribution group.
    #
    # @option params [String] :target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
    #   distribution groups that phone number inbound traffic is routed
    #   through. You must enter `InstanceId` or `TargetArn`.
    #
    # @option params [String] :instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance. You must enter `InstanceId` or
    #   `TargetArn`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :phone_number_country_code
    #   The ISO country code.
    #
    # @option params [required, String] :phone_number_type
    #   The type of phone number.
    #
    # @option params [String] :phone_number_prefix
    #   The prefix of the phone number. If provided, it must contain `+` as
    #   part of the country code.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::SearchAvailablePhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAvailablePhoneNumbersResponse#next_token #next_token} => String
    #   * {Types::SearchAvailablePhoneNumbersResponse#available_numbers_list #available_numbers_list} => Array&lt;Types::AvailableNumberSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_available_phone_numbers({
    #     target_arn: "ARN",
    #     instance_id: "InstanceId",
    #     phone_number_country_code: "AF", # required, accepts AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
    #     phone_number_type: "TOLL_FREE", # required, accepts TOLL_FREE, DID, UIFN, SHARED, THIRD_PARTY_TF, THIRD_PARTY_DID, SHORT_CODE
    #     phone_number_prefix: "PhoneNumberPrefix",
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.available_numbers_list #=> Array
    #   resp.available_numbers_list[0].phone_number #=> String
    #   resp.available_numbers_list[0].phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.available_numbers_list[0].phone_number_type #=> String, one of "TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchAvailablePhoneNumbers AWS API Documentation
    #
    # @overload search_available_phone_numbers(params = {})
    # @param [Hash] params ({})
    def search_available_phone_numbers(params = {}, options = {})
      req = build_request(:search_available_phone_numbers, params)
      req.send_request(options)
    end

    # Searches the flow modules in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::ContactFlowModuleSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::ContactFlowModuleSearchCriteria] :search_criteria
    #   The search criteria to be used to return flow modules.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries with
    #   a minimum of 2 characters and a maximum of 25 characters. Any queries
    #   with character lengths outside of this range will result in invalid
    #   results.
    #
    #    </note>
    #
    # @return [Types::SearchContactFlowModulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchContactFlowModulesResponse#contact_flow_modules #contact_flow_modules} => Array&lt;Types::ContactFlowModule&gt;
    #   * {Types::SearchContactFlowModulesResponse#next_token #next_token} => String
    #   * {Types::SearchContactFlowModulesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_contact_flow_modules({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive ContactFlowModuleSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive ContactFlowModuleSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #       state_condition: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #       status_condition: "PUBLISHED", # accepts PUBLISHED, SAVED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_modules #=> Array
    #   resp.contact_flow_modules[0].arn #=> String
    #   resp.contact_flow_modules[0].id #=> String
    #   resp.contact_flow_modules[0].name #=> String
    #   resp.contact_flow_modules[0].content #=> String
    #   resp.contact_flow_modules[0].description #=> String
    #   resp.contact_flow_modules[0].state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.contact_flow_modules[0].status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.contact_flow_modules[0].tags #=> Hash
    #   resp.contact_flow_modules[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchContactFlowModules AWS API Documentation
    #
    # @overload search_contact_flow_modules(params = {})
    # @param [Hash] params ({})
    def search_contact_flow_modules(params = {}, options = {})
      req = build_request(:search_contact_flow_modules, params)
      req.send_request(options)
    end

    # Searches the flows in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::ContactFlowSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::ContactFlowSearchCriteria] :search_criteria
    #   The search criteria to be used to return flows.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries with
    #   a minimum of 2 characters and a maximum of 25 characters. Any queries
    #   with character lengths outside of this range will result in invalid
    #   results.
    #
    #    </note>
    #
    # @return [Types::SearchContactFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchContactFlowsResponse#contact_flows #contact_flows} => Array&lt;Types::ContactFlow&gt;
    #   * {Types::SearchContactFlowsResponse#next_token #next_token} => String
    #   * {Types::SearchContactFlowsResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_contact_flows({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive ContactFlowSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive ContactFlowSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #       type_condition: "CONTACT_FLOW", # accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER, CAMPAIGN
    #       state_condition: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #       status_condition: "PUBLISHED", # accepts PUBLISHED, SAVED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flows #=> Array
    #   resp.contact_flows[0].arn #=> String
    #   resp.contact_flows[0].id #=> String
    #   resp.contact_flows[0].name #=> String
    #   resp.contact_flows[0].type #=> String, one of "CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"
    #   resp.contact_flows[0].state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.contact_flows[0].status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.contact_flows[0].description #=> String
    #   resp.contact_flows[0].content #=> String
    #   resp.contact_flows[0].tags #=> Hash
    #   resp.contact_flows[0].tags["TagKey"] #=> String
    #   resp.contact_flows[0].flow_content_sha_256 #=> String
    #   resp.contact_flows[0].version #=> Integer
    #   resp.contact_flows[0].version_description #=> String
    #   resp.contact_flows[0].last_modified_time #=> Time
    #   resp.contact_flows[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchContactFlows AWS API Documentation
    #
    # @overload search_contact_flows(params = {})
    # @param [Hash] params ({})
    def search_contact_flows(params = {}, options = {})
      req = build_request(:search_contact_flows, params)
      req.send_request(options)
    end

    # Searches contacts in an Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of Amazon Connect instance. You can find the instance
    #   ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, Types::SearchContactsTimeRange] :time_range
    #   Time range that you want to search results.
    #
    # @option params [Types::SearchCriteria] :search_criteria
    #   The search criteria to be used to return contacts.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Types::Sort] :sort
    #   Specifies a field to sort by and a sort order.
    #
    # @return [Types::SearchContactsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchContactsResponse#contacts #contacts} => Array&lt;Types::ContactSearchSummary&gt;
    #   * {Types::SearchContactsResponse#next_token #next_token} => String
    #   * {Types::SearchContactsResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_contacts({
    #     instance_id: "InstanceId", # required
    #     time_range: { # required
    #       type: "INITIATION_TIMESTAMP", # required, accepts INITIATION_TIMESTAMP, SCHEDULED_TIMESTAMP, CONNECTED_TO_AGENT_TIMESTAMP, DISCONNECT_TIMESTAMP
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     search_criteria: {
    #       agent_ids: ["AgentResourceId"],
    #       agent_hierarchy_groups: {
    #         l1_ids: ["HierarchyGroupId"],
    #         l2_ids: ["HierarchyGroupId"],
    #         l3_ids: ["HierarchyGroupId"],
    #         l4_ids: ["HierarchyGroupId"],
    #         l5_ids: ["HierarchyGroupId"],
    #       },
    #       channels: ["VOICE"], # accepts VOICE, CHAT, TASK, EMAIL
    #       contact_analysis: {
    #         transcript: {
    #           criteria: [ # required
    #             {
    #               participant_role: "AGENT", # required, accepts AGENT, CUSTOMER, SYSTEM, CUSTOM_BOT, SUPERVISOR
    #               search_text: ["SearchText"], # required
    #               match_type: "MATCH_ALL", # required, accepts MATCH_ALL, MATCH_ANY
    #             },
    #           ],
    #           match_type: "MATCH_ALL", # accepts MATCH_ALL, MATCH_ANY
    #         },
    #       },
    #       initiation_methods: ["INBOUND"], # accepts INBOUND, OUTBOUND, TRANSFER, QUEUE_TRANSFER, CALLBACK, API, DISCONNECT, MONITOR, EXTERNAL_OUTBOUND, WEBRTC_API, AGENT_REPLY, FLOW
    #       queue_ids: ["QueueId"],
    #       searchable_contact_attributes: {
    #         criteria: [ # required
    #           {
    #             key: "SearchableContactAttributeKey", # required
    #             values: ["SearchableContactAttributeValue"], # required
    #           },
    #         ],
    #         match_type: "MATCH_ALL", # accepts MATCH_ALL, MATCH_ANY
    #       },
    #       searchable_segment_attributes: {
    #         criteria: [ # required
    #           {
    #             key: "SearchableSegmentAttributeKey", # required
    #             values: ["SearchableSegmentAttributeValue"], # required
    #           },
    #         ],
    #         match_type: "MATCH_ALL", # accepts MATCH_ALL, MATCH_ANY
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #     sort: {
    #       field_name: "INITIATION_TIMESTAMP", # required, accepts INITIATION_TIMESTAMP, SCHEDULED_TIMESTAMP, CONNECTED_TO_AGENT_TIMESTAMP, DISCONNECT_TIMESTAMP, INITIATION_METHOD, CHANNEL
    #       order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contacts #=> Array
    #   resp.contacts[0].arn #=> String
    #   resp.contacts[0].id #=> String
    #   resp.contacts[0].initial_contact_id #=> String
    #   resp.contacts[0].previous_contact_id #=> String
    #   resp.contacts[0].initiation_method #=> String, one of "INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"
    #   resp.contacts[0].channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.contacts[0].queue_info.id #=> String
    #   resp.contacts[0].queue_info.enqueue_timestamp #=> Time
    #   resp.contacts[0].agent_info.id #=> String
    #   resp.contacts[0].agent_info.connected_to_agent_timestamp #=> Time
    #   resp.contacts[0].initiation_timestamp #=> Time
    #   resp.contacts[0].disconnect_timestamp #=> Time
    #   resp.contacts[0].scheduled_timestamp #=> Time
    #   resp.contacts[0].segment_attributes #=> Hash
    #   resp.contacts[0].segment_attributes["SegmentAttributeName"].value_string #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchContacts AWS API Documentation
    #
    # @overload search_contacts(params = {})
    # @param [Hash] params ({})
    def search_contacts(params = {}, options = {})
      req = build_request(:search_contacts, params)
      req.send_request(options)
    end

    # Searches email address in an instance, with optional filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Types::EmailAddressSearchCriteria] :search_criteria
    #   The search criteria to be used to return email addresses.
    #
    # @option params [Types::EmailAddressSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @return [Types::SearchEmailAddressesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchEmailAddressesResponse#next_token #next_token} => String
    #   * {Types::SearchEmailAddressesResponse#email_addresses #email_addresses} => Array&lt;Types::EmailAddressMetadata&gt;
    #   * {Types::SearchEmailAddressesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_email_addresses({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken2500",
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive EmailAddressSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive EmailAddressSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.email_addresses #=> Array
    #   resp.email_addresses[0].email_address_id #=> String
    #   resp.email_addresses[0].email_address_arn #=> String
    #   resp.email_addresses[0].email_address #=> String
    #   resp.email_addresses[0].description #=> String
    #   resp.email_addresses[0].display_name #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchEmailAddresses AWS API Documentation
    #
    # @overload search_email_addresses(params = {})
    # @param [Hash] params ({})
    def search_email_addresses(params = {}, options = {})
      req = build_request(:search_email_addresses, params)
      req.send_request(options)
    end

    # Searches the hours of operation overrides.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::HoursOfOperationSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::HoursOfOperationOverrideSearchCriteria] :search_criteria
    #   The search criteria to be used to return hours of operations
    #   overrides.
    #
    # @return [Types::SearchHoursOfOperationOverridesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchHoursOfOperationOverridesResponse#hours_of_operation_overrides #hours_of_operation_overrides} => Array&lt;Types::HoursOfOperationOverride&gt;
    #   * {Types::SearchHoursOfOperationOverridesResponse#next_token #next_token} => String
    #   * {Types::SearchHoursOfOperationOverridesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_hours_of_operation_overrides({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive HoursOfOperationOverrideSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive HoursOfOperationOverrideSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #       date_condition: {
    #         field_name: "String",
    #         value: "DateYearMonthDayFormat",
    #         comparison_type: "GREATER_THAN", # accepts GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL_TO, LESS_THAN_OR_EQUAL_TO, EQUAL_TO
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation_overrides #=> Array
    #   resp.hours_of_operation_overrides[0].hours_of_operation_override_id #=> String
    #   resp.hours_of_operation_overrides[0].hours_of_operation_id #=> String
    #   resp.hours_of_operation_overrides[0].hours_of_operation_arn #=> String
    #   resp.hours_of_operation_overrides[0].name #=> String
    #   resp.hours_of_operation_overrides[0].description #=> String
    #   resp.hours_of_operation_overrides[0].config #=> Array
    #   resp.hours_of_operation_overrides[0].config[0].day #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.hours_of_operation_overrides[0].config[0].start_time.hours #=> Integer
    #   resp.hours_of_operation_overrides[0].config[0].start_time.minutes #=> Integer
    #   resp.hours_of_operation_overrides[0].config[0].end_time.hours #=> Integer
    #   resp.hours_of_operation_overrides[0].config[0].end_time.minutes #=> Integer
    #   resp.hours_of_operation_overrides[0].effective_from #=> String
    #   resp.hours_of_operation_overrides[0].effective_till #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchHoursOfOperationOverrides AWS API Documentation
    #
    # @overload search_hours_of_operation_overrides(params = {})
    # @param [Hash] params ({})
    def search_hours_of_operation_overrides(params = {}, options = {})
      req = build_request(:search_hours_of_operation_overrides, params)
      req.send_request(options)
    end

    # Searches the hours of operation in an Amazon Connect instance, with
    # optional filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::HoursOfOperationSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::HoursOfOperationSearchCriteria] :search_criteria
    #   The search criteria to be used to return hours of operations.
    #
    # @return [Types::SearchHoursOfOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchHoursOfOperationsResponse#hours_of_operations #hours_of_operations} => Array&lt;Types::HoursOfOperation&gt;
    #   * {Types::SearchHoursOfOperationsResponse#next_token #next_token} => String
    #   * {Types::SearchHoursOfOperationsResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_hours_of_operations({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive HoursOfOperationSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive HoursOfOperationSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operations #=> Array
    #   resp.hours_of_operations[0].hours_of_operation_id #=> String
    #   resp.hours_of_operations[0].hours_of_operation_arn #=> String
    #   resp.hours_of_operations[0].name #=> String
    #   resp.hours_of_operations[0].description #=> String
    #   resp.hours_of_operations[0].time_zone #=> String
    #   resp.hours_of_operations[0].config #=> Array
    #   resp.hours_of_operations[0].config[0].day #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.hours_of_operations[0].config[0].start_time.hours #=> Integer
    #   resp.hours_of_operations[0].config[0].start_time.minutes #=> Integer
    #   resp.hours_of_operations[0].config[0].end_time.hours #=> Integer
    #   resp.hours_of_operations[0].config[0].end_time.minutes #=> Integer
    #   resp.hours_of_operations[0].tags #=> Hash
    #   resp.hours_of_operations[0].tags["TagKey"] #=> String
    #   resp.hours_of_operations[0].last_modified_time #=> Time
    #   resp.hours_of_operations[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchHoursOfOperations AWS API Documentation
    #
    # @overload search_hours_of_operations(params = {})
    # @param [Hash] params ({})
    def search_hours_of_operations(params = {}, options = {})
      req = build_request(:search_hours_of_operations, params)
      req.send_request(options)
    end

    # Searches predefined attributes that meet certain criteria. *Predefined
    # attributes* are attributes in an Amazon Connect instance that can be
    # used to route contacts to an agent or pools of agents within a queue.
    # For more information, see [Create predefined attributes for routing
    # contacts to agents][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::PredefinedAttributeSearchCriteria] :search_criteria
    #   The search criteria to be used to return predefined attributes.
    #
    # @return [Types::SearchPredefinedAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPredefinedAttributesResponse#predefined_attributes #predefined_attributes} => Array&lt;Types::PredefinedAttribute&gt;
    #   * {Types::SearchPredefinedAttributesResponse#next_token #next_token} => String
    #   * {Types::SearchPredefinedAttributesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_predefined_attributes({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive PredefinedAttributeSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive PredefinedAttributeSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.predefined_attributes #=> Array
    #   resp.predefined_attributes[0].name #=> String
    #   resp.predefined_attributes[0].values.string_list #=> Array
    #   resp.predefined_attributes[0].values.string_list[0] #=> String
    #   resp.predefined_attributes[0].last_modified_time #=> Time
    #   resp.predefined_attributes[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchPredefinedAttributes AWS API Documentation
    #
    # @overload search_predefined_attributes(params = {})
    # @param [Hash] params ({})
    def search_predefined_attributes(params = {}, options = {})
      req = build_request(:search_predefined_attributes, params)
      req.send_request(options)
    end

    # Searches prompts in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::PromptSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::PromptSearchCriteria] :search_criteria
    #   The search criteria to be used to return prompts.
    #
    # @return [Types::SearchPromptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPromptsResponse#prompts #prompts} => Array&lt;Types::Prompt&gt;
    #   * {Types::SearchPromptsResponse#next_token #next_token} => String
    #   * {Types::SearchPromptsResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_prompts({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive PromptSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive PromptSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.prompts #=> Array
    #   resp.prompts[0].prompt_arn #=> String
    #   resp.prompts[0].prompt_id #=> String
    #   resp.prompts[0].name #=> String
    #   resp.prompts[0].description #=> String
    #   resp.prompts[0].tags #=> Hash
    #   resp.prompts[0].tags["TagKey"] #=> String
    #   resp.prompts[0].last_modified_time #=> Time
    #   resp.prompts[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchPrompts AWS API Documentation
    #
    # @overload search_prompts(params = {})
    # @param [Hash] params ({})
    def search_prompts(params = {}, options = {})
      req = build_request(:search_prompts, params)
      req.send_request(options)
    end

    # Searches queues in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::QueueSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::QueueSearchCriteria] :search_criteria
    #   The search criteria to be used to return queues.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries with
    #   a minimum of 2 characters and a maximum of 25 characters. Any queries
    #   with character lengths outside of this range will throw invalid
    #   results.
    #
    #    </note>
    #
    # @return [Types::SearchQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchQueuesResponse#queues #queues} => Array&lt;Types::Queue&gt;
    #   * {Types::SearchQueuesResponse#next_token #next_token} => String
    #   * {Types::SearchQueuesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_queues({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive QueueSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive QueueSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #       queue_type_condition: "STANDARD", # accepts STANDARD
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queues #=> Array
    #   resp.queues[0].name #=> String
    #   resp.queues[0].queue_arn #=> String
    #   resp.queues[0].queue_id #=> String
    #   resp.queues[0].description #=> String
    #   resp.queues[0].outbound_caller_config.outbound_caller_id_name #=> String
    #   resp.queues[0].outbound_caller_config.outbound_caller_id_number_id #=> String
    #   resp.queues[0].outbound_caller_config.outbound_flow_id #=> String
    #   resp.queues[0].outbound_email_config.outbound_email_address_id #=> String
    #   resp.queues[0].hours_of_operation_id #=> String
    #   resp.queues[0].max_contacts #=> Integer
    #   resp.queues[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.queues[0].tags #=> Hash
    #   resp.queues[0].tags["TagKey"] #=> String
    #   resp.queues[0].last_modified_time #=> Time
    #   resp.queues[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchQueues AWS API Documentation
    #
    # @overload search_queues(params = {})
    # @param [Hash] params ({})
    def search_queues(params = {}, options = {})
      req = build_request(:search_queues, params)
      req.send_request(options)
    end

    # Searches quick connects in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::QuickConnectSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::QuickConnectSearchCriteria] :search_criteria
    #   The search criteria to be used to return quick connects.
    #
    # @return [Types::SearchQuickConnectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchQuickConnectsResponse#quick_connects #quick_connects} => Array&lt;Types::QuickConnect&gt;
    #   * {Types::SearchQuickConnectsResponse#next_token #next_token} => String
    #   * {Types::SearchQuickConnectsResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_quick_connects({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive QuickConnectSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive QuickConnectSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_connects #=> Array
    #   resp.quick_connects[0].quick_connect_arn #=> String
    #   resp.quick_connects[0].quick_connect_id #=> String
    #   resp.quick_connects[0].name #=> String
    #   resp.quick_connects[0].description #=> String
    #   resp.quick_connects[0].quick_connect_config.quick_connect_type #=> String, one of "USER", "QUEUE", "PHONE_NUMBER"
    #   resp.quick_connects[0].quick_connect_config.user_config.user_id #=> String
    #   resp.quick_connects[0].quick_connect_config.user_config.contact_flow_id #=> String
    #   resp.quick_connects[0].quick_connect_config.queue_config.queue_id #=> String
    #   resp.quick_connects[0].quick_connect_config.queue_config.contact_flow_id #=> String
    #   resp.quick_connects[0].quick_connect_config.phone_config.phone_number #=> String
    #   resp.quick_connects[0].tags #=> Hash
    #   resp.quick_connects[0].tags["TagKey"] #=> String
    #   resp.quick_connects[0].last_modified_time #=> Time
    #   resp.quick_connects[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchQuickConnects AWS API Documentation
    #
    # @overload search_quick_connects(params = {})
    # @param [Hash] params ({})
    def search_quick_connects(params = {}, options = {})
      req = build_request(:search_quick_connects, params)
      req.send_request(options)
    end

    # Searches tags used in an Amazon Connect instance using optional search
    # criteria.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [Array<String>] :resource_types
    #   The list of resource types to be used to search tags from. If not
    #   provided or if any empty list is provided, this API will search from
    #   all supported resource types. Note that lowercase and - are required.
    #
    #   **Supported resource types**
    #
    #   * agent
    #
    #   * agent-state
    #
    #   * routing-profile
    #
    #   * standard-queue
    #
    #   * security-profile
    #
    #   * operating-hours
    #
    #   * prompt
    #
    #   * contact-flow
    #
    #   * flow- module
    #
    #   * transfer-destination (also known as quick connect)
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::ResourceTagsSearchCriteria] :search_criteria
    #   The search criteria to be used to return tags.
    #
    # @return [Types::SearchResourceTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchResourceTagsResponse#tags #tags} => Array&lt;Types::TagSet&gt;
    #   * {Types::SearchResourceTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_resource_tags({
    #     instance_id: "InstanceIdOrArn", # required
    #     resource_types: ["String"],
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_criteria: {
    #       tag_search_condition: {
    #         tag_key: "TagKeyString",
    #         tag_value: "TagValueString",
    #         tag_key_comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #         tag_value_comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchResourceTags AWS API Documentation
    #
    # @overload search_resource_tags(params = {})
    # @param [Hash] params ({})
    def search_resource_tags(params = {}, options = {})
      req = build_request(:search_resource_tags, params)
      req.send_request(options)
    end

    # Searches routing profiles in an Amazon Connect instance, with optional
    # filtering.
    #
    # <note markdown="1"> `SearchRoutingProfiles` does not populate LastModifiedRegion,
    # LastModifiedTime, MediaConcurrencies.CrossChannelBehavior, and
    # AgentAvailabilityTimer in its response, but
    # [DescribeRoutingProfile][1] does.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::RoutingProfileSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::RoutingProfileSearchCriteria] :search_criteria
    #   The search criteria to be used to return routing profiles.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries with
    #   a minimum of 2 characters and a maximum of 25 characters. Any queries
    #   with character lengths outside of this range will throw invalid
    #   results.
    #
    #    </note>
    #
    # @return [Types::SearchRoutingProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchRoutingProfilesResponse#routing_profiles #routing_profiles} => Array&lt;Types::RoutingProfile&gt;
    #   * {Types::SearchRoutingProfilesResponse#next_token #next_token} => String
    #   * {Types::SearchRoutingProfilesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_routing_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive RoutingProfileSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive RoutingProfileSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profiles #=> Array
    #   resp.routing_profiles[0].instance_id #=> String
    #   resp.routing_profiles[0].name #=> String
    #   resp.routing_profiles[0].routing_profile_arn #=> String
    #   resp.routing_profiles[0].routing_profile_id #=> String
    #   resp.routing_profiles[0].description #=> String
    #   resp.routing_profiles[0].media_concurrencies #=> Array
    #   resp.routing_profiles[0].media_concurrencies[0].channel #=> String, one of "VOICE", "CHAT", "TASK", "EMAIL"
    #   resp.routing_profiles[0].media_concurrencies[0].concurrency #=> Integer
    #   resp.routing_profiles[0].media_concurrencies[0].cross_channel_behavior.behavior_type #=> String, one of "ROUTE_CURRENT_CHANNEL_ONLY", "ROUTE_ANY_CHANNEL"
    #   resp.routing_profiles[0].default_outbound_queue_id #=> String
    #   resp.routing_profiles[0].tags #=> Hash
    #   resp.routing_profiles[0].tags["TagKey"] #=> String
    #   resp.routing_profiles[0].number_of_associated_queues #=> Integer
    #   resp.routing_profiles[0].number_of_associated_users #=> Integer
    #   resp.routing_profiles[0].agent_availability_timer #=> String, one of "TIME_SINCE_LAST_ACTIVITY", "TIME_SINCE_LAST_INBOUND"
    #   resp.routing_profiles[0].last_modified_time #=> Time
    #   resp.routing_profiles[0].last_modified_region #=> String
    #   resp.routing_profiles[0].is_default #=> Boolean
    #   resp.routing_profiles[0].associated_queue_ids #=> Array
    #   resp.routing_profiles[0].associated_queue_ids[0] #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchRoutingProfiles AWS API Documentation
    #
    # @overload search_routing_profiles(params = {})
    # @param [Hash] params ({})
    def search_routing_profiles(params = {}, options = {})
      req = build_request(:search_routing_profiles, params)
      req.send_request(options)
    end

    # Searches security profiles in an Amazon Connect instance, with
    # optional filtering.
    #
    # For information about security profiles, see [Security Profiles][1] in
    # the *Amazon Connect Administrator Guide*. For a mapping of the API
    # name and user interface name of the security profile permissions, see
    # [List of security profile permissions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::SecurityProfileSearchCriteria] :search_criteria
    #   The search criteria to be used to return security profiles.
    #
    #   <note markdown="1"> The `name` field support "contains" queries with a minimum of 2
    #   characters and maximum of 25 characters. Any queries with character
    #   lengths outside of this range will throw invalid results.
    #
    #    </note>
    #
    #   <note markdown="1"> The currently supported value for `FieldName`: `name`
    #
    #    </note>
    #
    # @option params [Types::SecurityProfilesSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @return [Types::SearchSecurityProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSecurityProfilesResponse#security_profiles #security_profiles} => Array&lt;Types::SecurityProfileSearchSummary&gt;
    #   * {Types::SearchSecurityProfilesResponse#next_token #next_token} => String
    #   * {Types::SearchSecurityProfilesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_security_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive SecurityProfileSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive SecurityProfileSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profiles #=> Array
    #   resp.security_profiles[0].id #=> String
    #   resp.security_profiles[0].organization_resource_id #=> String
    #   resp.security_profiles[0].arn #=> String
    #   resp.security_profiles[0].security_profile_name #=> String
    #   resp.security_profiles[0].description #=> String
    #   resp.security_profiles[0].tags #=> Hash
    #   resp.security_profiles[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchSecurityProfiles AWS API Documentation
    #
    # @overload search_security_profiles(params = {})
    # @param [Hash] params ({})
    def search_security_profiles(params = {}, options = {})
      req = build_request(:search_security_profiles, params)
      req.send_request(options)
    end

    # Searches UserHierarchyGroups in an Amazon Connect instance, with
    # optional filtering.
    #
    # The UserHierarchyGroup with `"LevelId": "0"` is the foundation for
    # building levels on top of an instance. It is not user-definable, nor
    # is it visible in the UI.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::UserHierarchyGroupSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::UserHierarchyGroupSearchCriteria] :search_criteria
    #   The search criteria to be used to return UserHierarchyGroups.
    #
    # @return [Types::SearchUserHierarchyGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchUserHierarchyGroupsResponse#user_hierarchy_groups #user_hierarchy_groups} => Array&lt;Types::HierarchyGroup&gt;
    #   * {Types::SearchUserHierarchyGroupsResponse#next_token #next_token} => String
    #   * {Types::SearchUserHierarchyGroupsResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_user_hierarchy_groups({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       attribute_filter: {
    #         or_conditions: [
    #           {
    #             tag_conditions: [
    #               {
    #                 tag_key: "String",
    #                 tag_value: "String",
    #               },
    #             ],
    #           },
    #         ],
    #         and_condition: {
    #           tag_conditions: [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         },
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive UserHierarchyGroupSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive UserHierarchyGroupSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_hierarchy_groups #=> Array
    #   resp.user_hierarchy_groups[0].id #=> String
    #   resp.user_hierarchy_groups[0].arn #=> String
    #   resp.user_hierarchy_groups[0].name #=> String
    #   resp.user_hierarchy_groups[0].level_id #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_one.id #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_one.arn #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_one.name #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_one.last_modified_time #=> Time
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_one.last_modified_region #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_two.id #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_two.arn #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_two.name #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_two.last_modified_time #=> Time
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_two.last_modified_region #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_three.id #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_three.arn #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_three.name #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_three.last_modified_time #=> Time
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_three.last_modified_region #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_four.id #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_four.arn #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_four.name #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_four.last_modified_time #=> Time
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_four.last_modified_region #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_five.id #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_five.arn #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_five.name #=> String
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_five.last_modified_time #=> Time
    #   resp.user_hierarchy_groups[0].hierarchy_path.level_five.last_modified_region #=> String
    #   resp.user_hierarchy_groups[0].tags #=> Hash
    #   resp.user_hierarchy_groups[0].tags["TagKey"] #=> String
    #   resp.user_hierarchy_groups[0].last_modified_time #=> Time
    #   resp.user_hierarchy_groups[0].last_modified_region #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchUserHierarchyGroups AWS API Documentation
    #
    # @overload search_user_hierarchy_groups(params = {})
    # @param [Hash] params ({})
    def search_user_hierarchy_groups(params = {}, options = {})
      req = build_request(:search_user_hierarchy_groups, params)
      req.send_request(options)
    end

    # Searches users in an Amazon Connect instance, with optional filtering.
    #
    # <note markdown="1"> `AfterContactWorkTimeLimit` is returned in milliseconds.
    #
    #  </note>
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::UserSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::UserSearchCriteria] :search_criteria
    #   The search criteria to be used to return users.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries with
    #   a minimum of 2 characters and a maximum of 25 characters. Any queries
    #   with character lengths outside of this range will throw invalid
    #   results.
    #
    #    </note>
    #
    # @return [Types::SearchUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchUsersResponse#users #users} => Array&lt;Types::UserSearchSummary&gt;
    #   * {Types::SearchUsersResponse#next_token #next_token} => String
    #   * {Types::SearchUsersResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_users({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #       user_attribute_filter: {
    #         or_conditions: [
    #           {
    #             tag_conditions: [
    #               {
    #                 tag_key: "String",
    #                 tag_value: "String",
    #               },
    #             ],
    #             hierarchy_group_condition: {
    #               value: "String",
    #               hierarchy_group_match_type: "EXACT", # accepts EXACT, WITH_CHILD_GROUPS
    #             },
    #           },
    #         ],
    #         and_condition: {
    #           tag_conditions: [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #           hierarchy_group_condition: {
    #             value: "String",
    #             hierarchy_group_match_type: "EXACT", # accepts EXACT, WITH_CHILD_GROUPS
    #           },
    #         },
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #         hierarchy_group_condition: {
    #           value: "String",
    #           hierarchy_group_match_type: "EXACT", # accepts EXACT, WITH_CHILD_GROUPS
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive UserSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive UserSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #       list_condition: {
    #         target_list_type: "PROFICIENCIES", # accepts PROFICIENCIES
    #         conditions: [
    #           {
    #             string_condition: {
    #               field_name: "String",
    #               value: "String",
    #               comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #             },
    #             number_condition: {
    #               field_name: "String",
    #               min_value: 1,
    #               max_value: 1,
    #               comparison_type: "GREATER_OR_EQUAL", # accepts GREATER_OR_EQUAL, GREATER, LESSER_OR_EQUAL, LESSER, EQUAL, NOT_EQUAL, RANGE
    #             },
    #           },
    #         ],
    #       },
    #       hierarchy_group_condition: {
    #         value: "String",
    #         hierarchy_group_match_type: "EXACT", # accepts EXACT, WITH_CHILD_GROUPS
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].arn #=> String
    #   resp.users[0].directory_user_id #=> String
    #   resp.users[0].hierarchy_group_id #=> String
    #   resp.users[0].id #=> String
    #   resp.users[0].identity_info.first_name #=> String
    #   resp.users[0].identity_info.last_name #=> String
    #   resp.users[0].phone_config.phone_type #=> String, one of "SOFT_PHONE", "DESK_PHONE"
    #   resp.users[0].phone_config.auto_accept #=> Boolean
    #   resp.users[0].phone_config.after_contact_work_time_limit #=> Integer
    #   resp.users[0].phone_config.desk_phone_number #=> String
    #   resp.users[0].routing_profile_id #=> String
    #   resp.users[0].security_profile_ids #=> Array
    #   resp.users[0].security_profile_ids[0] #=> String
    #   resp.users[0].tags #=> Hash
    #   resp.users[0].tags["TagKey"] #=> String
    #   resp.users[0].username #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchUsers AWS API Documentation
    #
    # @overload search_users(params = {})
    # @param [Hash] params ({})
    def search_users(params = {}, options = {})
      req = build_request(:search_users, params)
      req.send_request(options)
    end

    # Searches for vocabularies within a specific Amazon Connect instance
    # using `State`, `NameStartsWith`, and `LanguageCode`.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :state
    #   The current state of the custom vocabulary.
    #
    # @option params [String] :name_starts_with
    #   The starting pattern of the name of the vocabulary.
    #
    # @option params [String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #
    # @return [Types::SearchVocabulariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchVocabulariesResponse#vocabulary_summary_list #vocabulary_summary_list} => Array&lt;Types::VocabularySummary&gt;
    #   * {Types::SearchVocabulariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_vocabularies({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "VocabularyNextToken",
    #     state: "CREATION_IN_PROGRESS", # accepts CREATION_IN_PROGRESS, ACTIVE, CREATION_FAILED, DELETE_IN_PROGRESS
    #     name_starts_with: "VocabularyName",
    #     language_code: "ar-AE", # accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN, en-NZ, en-ZA, ca-ES, da-DK, fi-FI, id-ID, ms-MY, nl-NL, no-NO, pl-PL, sv-SE, tl-PH
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_summary_list #=> Array
    #   resp.vocabulary_summary_list[0].name #=> String
    #   resp.vocabulary_summary_list[0].id #=> String
    #   resp.vocabulary_summary_list[0].arn #=> String
    #   resp.vocabulary_summary_list[0].language_code #=> String, one of "ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"
    #   resp.vocabulary_summary_list[0].state #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"
    #   resp.vocabulary_summary_list[0].last_modified_time #=> Time
    #   resp.vocabulary_summary_list[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchVocabularies AWS API Documentation
    #
    # @overload search_vocabularies(params = {})
    # @param [Hash] params ({})
    def search_vocabularies(params = {}, options = {})
      req = build_request(:search_vocabularies, params)
      req.send_request(options)
    end

    # Processes chat integration events from Amazon Web Services or external
    # integrations to Amazon Connect. A chat integration event includes:
    #
    # * SourceId, DestinationId, and Subtype: a set of identifiers, uniquely
    #   representing a chat
    #
    # * ChatEvent: details of the chat action to perform such as sending a
    #   message, event, or disconnecting from a chat
    #
    # When a chat integration event is sent with chat identifiers that do
    # not map to an active chat contact, a new chat contact is also created
    # before handling chat action.
    #
    # Access to this API is currently restricted to Amazon Web Services End
    # User Messaging for supporting SMS integration.
    #
    # @option params [required, String] :source_id
    #   External identifier of chat customer participant, used in part to
    #   uniquely identify a chat. For SMS, this is the E164 phone number of
    #   the chat customer participant.
    #
    # @option params [required, String] :destination_id
    #   Chat system identifier, used in part to uniquely identify chat. This
    #   is associated with the Amazon Connect instance and flow to be used to
    #   start chats. For Server Migration Service, this is the phone number
    #   destination of inbound Server Migration Service messages represented
    #   by an Amazon Web Services End User Messaging phone number ARN.
    #
    # @option params [String] :subtype
    #   Classification of a channel. This is used in part to uniquely identify
    #   chat.
    #
    #   Valid value: `["connect:sms", connect:"WhatsApp"]`
    #
    # @option params [required, Types::ChatEvent] :event
    #   Chat integration event payload
    #
    # @option params [Types::NewSessionDetails] :new_session_details
    #   Contact properties to apply when starting a new chat. If the
    #   integration event is handled with an existing chat, this is ignored.
    #
    # @return [Types::SendChatIntegrationEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendChatIntegrationEventResponse#initial_contact_id #initial_contact_id} => String
    #   * {Types::SendChatIntegrationEventResponse#new_chat_created #new_chat_created} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_chat_integration_event({
    #     source_id: "SourceId", # required
    #     destination_id: "DestinationId", # required
    #     subtype: "Subtype",
    #     event: { # required
    #       type: "DISCONNECT", # required, accepts DISCONNECT, MESSAGE, EVENT
    #       content_type: "ChatContentType",
    #       content: "ChatContent",
    #     },
    #     new_session_details: {
    #       supported_messaging_content_types: ["SupportedMessagingContentType"],
    #       participant_details: {
    #         display_name: "DisplayName", # required
    #       },
    #       attributes: {
    #         "AttributeName" => "AttributeValue",
    #       },
    #       streaming_configuration: {
    #         streaming_endpoint_arn: "ChatStreamingEndpointARN", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.initial_contact_id #=> String
    #   resp.new_chat_created #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SendChatIntegrationEvent AWS API Documentation
    #
    # @overload send_chat_integration_event(params = {})
    # @param [Hash] params ({})
    def send_chat_integration_event(params = {}, options = {})
      req = build_request(:send_chat_integration_event, params)
      req.send_request(options)
    end

    # Send outbound email for outbound campaigns. For more information about
    # outbound campaigns, see [Set up Amazon Connect outbound campaigns][1].
    #
    # <note markdown="1"> Only the Amazon Connect outbound campaigns service principal is
    # allowed to assume a role in your account and call this API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-outbound-campaigns.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Types::EmailAddressInfo] :from_email_address
    #   The email address to be used for sending email.
    #
    # @option params [required, Types::EmailAddressInfo] :destination_email_address
    #   The email address to send the email to.
    #
    # @option params [Types::OutboundAdditionalRecipients] :additional_recipients
    #   The additional recipients address of the email in CC.
    #
    # @option params [required, Types::OutboundEmailContent] :email_message
    #   The email message body to be sent to the newly created email.
    #
    # @option params [required, String] :traffic_type
    #   Denotes the class of traffic.
    #
    #   <note markdown="1"> Only the CAMPAIGN traffic type is supported.
    #
    #    </note>
    #
    # @option params [Types::SourceCampaign] :source_campaign
    #   A Campaign object need for Campaign traffic type.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_outbound_email({
    #     instance_id: "InstanceId", # required
    #     from_email_address: { # required
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName",
    #     },
    #     destination_email_address: { # required
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName",
    #     },
    #     additional_recipients: {
    #       cc_email_addresses: [
    #         {
    #           email_address: "EmailAddress", # required
    #           display_name: "EmailAddressDisplayName",
    #         },
    #       ],
    #     },
    #     email_message: { # required
    #       message_source_type: "TEMPLATE", # required, accepts TEMPLATE, RAW
    #       templated_message_config: {
    #         knowledge_base_id: "MessageTemplateKnowledgeBaseId", # required
    #         message_template_id: "MessageTemplateId", # required
    #         template_attributes: { # required
    #           custom_attributes: {
    #             "AttributeName" => "AttributeValue",
    #           },
    #           customer_profile_attributes: "CustomerProfileAttributesSerialized",
    #         },
    #       },
    #       raw_message: {
    #         subject: "OutboundSubject", # required
    #         body: "Body", # required
    #         content_type: "EmailMessageContentType", # required
    #       },
    #     },
    #     traffic_type: "GENERAL", # required, accepts GENERAL, CAMPAIGN
    #     source_campaign: {
    #       campaign_id: "CampaignId",
    #       outbound_request_id: "OutboundRequestId",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SendOutboundEmail AWS API Documentation
    #
    # @overload send_outbound_email(params = {})
    # @param [Hash] params ({})
    def send_outbound_email(params = {}, options = {})
      req = build_request(:send_outbound_email, params)
      req.send_request(options)
    end

    # Provides a pre-signed Amazon S3 URL in response for uploading your
    # content.
    #
    # You may only use this API to upload attachments to an [Amazon Connect
    # Case][1] or [Amazon Connect Email][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :file_name
    #   A case-sensitive name of the attached file being uploaded.
    #
    # @option params [required, Integer] :file_size_in_bytes
    #   The size of the attached file in bytes.
    #
    # @option params [Integer] :url_expiry_in_seconds
    #   Optional override for the expiry of the pre-signed S3 URL in seconds.
    #   The default value is 300.
    #
    # @option params [required, String] :file_use_case_type
    #   The use case for the file.
    #
    #   Only `ATTACHMENTS` are supported.
    #
    # @option params [required, String] :associated_resource_arn
    #   The resource to which the attached file is (being) uploaded to. The
    #   supported resources are [Cases][1] and [Email][2].
    #
    #   <note markdown="1"> This value must be a valid ARN.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/cases.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html
    #
    # @option params [Types::CreatedByInfo] :created_by
    #   Represents the identity that created the file.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, `{ "Tags": {"key1":"value1", "key2":"value2"} }`.
    #
    # @return [Types::StartAttachedFileUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAttachedFileUploadResponse#file_arn #file_arn} => String
    #   * {Types::StartAttachedFileUploadResponse#file_id #file_id} => String
    #   * {Types::StartAttachedFileUploadResponse#creation_time #creation_time} => String
    #   * {Types::StartAttachedFileUploadResponse#file_status #file_status} => String
    #   * {Types::StartAttachedFileUploadResponse#created_by #created_by} => Types::CreatedByInfo
    #   * {Types::StartAttachedFileUploadResponse#upload_url_metadata #upload_url_metadata} => Types::UploadUrlMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_attached_file_upload({
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     file_name: "FileName", # required
    #     file_size_in_bytes: 1, # required
    #     url_expiry_in_seconds: 1,
    #     file_use_case_type: "EMAIL_MESSAGE", # required, accepts EMAIL_MESSAGE, ATTACHMENT
    #     associated_resource_arn: "ARN", # required
    #     created_by: {
    #       connect_user_arn: "ARN",
    #       aws_identity_arn: "ARN",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_arn #=> String
    #   resp.file_id #=> String
    #   resp.creation_time #=> String
    #   resp.file_status #=> String, one of "APPROVED", "REJECTED", "PROCESSING", "FAILED"
    #   resp.created_by.connect_user_arn #=> String
    #   resp.created_by.aws_identity_arn #=> String
    #   resp.upload_url_metadata.url #=> String
    #   resp.upload_url_metadata.url_expiry #=> String
    #   resp.upload_url_metadata.headers_to_include #=> Hash
    #   resp.upload_url_metadata.headers_to_include["UrlMetadataSignedHeadersKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartAttachedFileUpload AWS API Documentation
    #
    # @overload start_attached_file_upload(params = {})
    # @param [Hash] params ({})
    def start_attached_file_upload(params = {}, options = {})
      req = build_request(:start_attached_file_upload, params)
      req.send_request(options)
    end

    # Initiates a flow to start a new chat for the customer. Response of
    # this API provides a token required to obtain credentials from the
    # [CreateParticipantConnection][1] API in the Amazon Connect Participant
    # Service.
    #
    # When a new chat contact is successfully created, clients must
    # subscribe to the participant’s connection for the created chat within
    # 5 minutes. This is achieved by invoking
    # [CreateParticipantConnection][1] with WEBSOCKET and
    # CONNECTION\_CREDENTIALS.
    #
    # A 429 error occurs in the following situations:
    #
    # * API rate limit is exceeded. API TPS throttling returns a
    #   `TooManyRequests` exception.
    #
    # * The [quota for concurrent active chats][2] is exceeded. Active chat
    #   throttling returns a `LimitExceededException`.
    #
    # If you use the `ChatDurationInMinutes` parameter and receive a 400
    # error, your account may not support the ability to configure custom
    # chat durations. For more information, contact Amazon Web Services
    # Support.
    #
    # For more information about chat, see the following topics in the
    # *Amazon Connect Administrator Guide*:
    #
    # * [Concepts: Web and mobile messaging capabilities in Amazon
    #   Connect][3]
    #
    # * [Amazon Connect Chat security best practices][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html
    # [4]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow for initiating the chat. To see the
    #   ContactFlowId in the Amazon Connect admin website, on the navigation
    #   menu go to **Routing**, **Flows**. Choose the flow. On the flow page,
    #   under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes. They can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [required, Types::ParticipantDetails] :participant_details
    #   Information identifying the participant.
    #
    # @option params [Types::ChatMessage] :initial_message
    #   The initial message to be sent to the newly created chat.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Integer] :chat_duration_in_minutes
    #   The total duration of the newly started chat session. If not
    #   specified, the chat session duration defaults to 25 hour. The minimum
    #   configurable time is 60 minutes. The maximum configurable time is
    #   10,080 minutes (7 days).
    #
    # @option params [Array<String>] :supported_messaging_content_types
    #   The supported chat message content types. Supported types are
    #   `text/plain`, `text/markdown`, `application/json`,
    #   `application/vnd.amazonaws.connect.message.interactive`, and
    #   `application/vnd.amazonaws.connect.message.interactive.response`.
    #
    #   Content types must always contain `text/plain`. You can then put any
    #   other supported type in the list. For example, all the following lists
    #   are valid because they contain `text/plain`: `[text/plain,
    #   text/markdown, application/json]`, `[text/markdown, text/plain]`,
    #   `[text/plain, application/json,
    #   application/vnd.amazonaws.connect.message.interactive.response]`.
    #
    #   <note markdown="1"> The type `application/vnd.amazonaws.connect.message.interactive` is
    #   required to use the [Show view][1] flow block.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/show-view-block.html
    #
    # @option params [Types::PersistentChat] :persistent_chat
    #   Enable persistent chats. For more information about enabling
    #   persistent chat, and for example use cases and how to configure for
    #   them, see [Enable persistent chat][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
    #
    # @option params [String] :related_contact_id
    #   The unique identifier for an Amazon Connect contact. This identifier
    #   is related to the chat starting.
    #
    #   <note markdown="1"> You cannot provide data for both RelatedContactId and PersistentChat.
    #
    #    </note>
    #
    # @option params [Hash<String,Types::SegmentAttributeValue>] :segment_attributes
    #   A set of system defined key-value pairs stored on individual contact
    #   segments using an attribute map. The attributes are standard Amazon
    #   Connect attributes. They can be accessed in flows.
    #
    #   Attribute keys can include only alphanumeric, -, and \_.
    #
    #   This field can be used to show channel subtype, such as
    #   `connect:Guide`.
    #
    #   <note markdown="1"> The types `application/vnd.amazonaws.connect.message.interactive` and
    #   `application/vnd.amazonaws.connect.message.interactive.response` must
    #   be present in the SupportedMessagingContentTypes field of this API in
    #   order to set `SegmentAttributes` as \{` "connect:Subtype":
    #   {"valueString" : "connect:Guide" }}`.
    #
    #    </note>
    #
    # @option params [String] :customer_id
    #   The customer's identification number. For example, the `CustomerId`
    #   may be a customer number from your CRM.
    #
    # @return [Types::StartChatContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartChatContactResponse#contact_id #contact_id} => String
    #   * {Types::StartChatContactResponse#participant_id #participant_id} => String
    #   * {Types::StartChatContactResponse#participant_token #participant_token} => String
    #   * {Types::StartChatContactResponse#continued_from_contact_id #continued_from_contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_chat_contact({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     participant_details: { # required
    #       display_name: "DisplayName", # required
    #     },
    #     initial_message: {
    #       content_type: "ChatContentType", # required
    #       content: "ChatContent", # required
    #     },
    #     client_token: "ClientToken",
    #     chat_duration_in_minutes: 1,
    #     supported_messaging_content_types: ["SupportedMessagingContentType"],
    #     persistent_chat: {
    #       rehydration_type: "ENTIRE_PAST_SESSION", # accepts ENTIRE_PAST_SESSION, FROM_SEGMENT
    #       source_contact_id: "ContactId",
    #     },
    #     related_contact_id: "ContactId",
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           },
    #         },
    #         value_integer: 1,
    #       },
    #     },
    #     customer_id: "CustomerIdNonEmpty",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.participant_id #=> String
    #   resp.participant_token #=> String
    #   resp.continued_from_contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartChatContact AWS API Documentation
    #
    # @overload start_chat_contact(params = {})
    # @param [Hash] params ({})
    def start_chat_contact(params = {}, options = {})
      req = build_request(:start_chat_contact, params)
      req.send_request(options)
    end

    # Starts an empty evaluation in the specified Amazon Connect instance,
    # using the given evaluation form for the particular contact. The
    # evaluation form version used for the contact evaluation corresponds to
    # the currently activated version. If no version is activated for the
    # evaluation form, the contact evaluation cannot be started.
    #
    # <note markdown="1"> Evaluations created through the public API do not contain answer
    # values suggested from automation.
    #
    #  </note>
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::StartContactEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartContactEvaluationResponse#evaluation_id #evaluation_id} => String
    #   * {Types::StartContactEvaluationResponse#evaluation_arn #evaluation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #   resp.evaluation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactEvaluation AWS API Documentation
    #
    # @overload start_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def start_contact_evaluation(params = {}, options = {})
      req = build_request(:start_contact_evaluation, params)
      req.send_request(options)
    end

    # Starts recording the contact:
    #
    # * If the API is called *before* the agent joins the call, recording
    #   starts when the agent joins the call.
    #
    # * If the API is called *after* the agent joins the call, recording
    #   starts at the time of the API call.
    #
    # StartContactRecording is a one-time action. For example, if you use
    # StopContactRecording to stop recording an ongoing call, you can't use
    # StartContactRecording to restart it. For scenarios where the recording
    # has started and you want to suspend and resume it, such as when
    # collecting sensitive information (for example, a credit card number),
    # use SuspendContactRecording and ResumeContactRecording.
    #
    # You can use this API to override the recording behavior configured in
    # the [Set recording behavior][1] block.
    #
    # Only voice recordings are supported at this time.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [required, Types::VoiceRecordingConfiguration] :voice_recording_configuration
    #   The person being recorded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     voice_recording_configuration: { # required
    #       voice_recording_track: "FROM_AGENT", # accepts FROM_AGENT, TO_AGENT, ALL
    #       ivr_recording_track: "ALL", # accepts ALL
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactRecording AWS API Documentation
    #
    # @overload start_contact_recording(params = {})
    # @param [Hash] params ({})
    def start_contact_recording(params = {}, options = {})
      req = build_request(:start_contact_recording, params)
      req.send_request(options)
    end

    # Initiates real-time message streaming for a new chat contact.
    #
    # For more information about message streaming, see [Enable real-time
    # chat message streaming][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    # For more information about chat, see the following topics in the
    # *Amazon Connect Administrator Guide*:
    #
    # * [Concepts: Web and mobile messaging capabilities in Amazon
    #   Connect][2]
    #
    # * [Amazon Connect Chat security best practices][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [required, Types::ChatStreamingConfiguration] :chat_streaming_configuration
    #   The streaming configuration, such as the Amazon SNS streaming
    #   endpoint.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::StartContactStreamingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartContactStreamingResponse#streaming_id #streaming_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_streaming({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     chat_streaming_configuration: { # required
    #       streaming_endpoint_arn: "ChatStreamingEndpointARN", # required
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactStreaming AWS API Documentation
    #
    # @overload start_contact_streaming(params = {})
    # @param [Hash] params ({})
    def start_contact_streaming(params = {}, options = {})
      req = build_request(:start_contact_streaming, params)
      req.send_request(options)
    end

    # Creates an inbound email contact and initiates a flow to start the
    # email contact for the customer. Response of this API provides the
    # ContactId of the email contact created.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Types::EmailAddressInfo] :from_email_address
    #   The email address of the customer.
    #
    # @option params [required, String] :destination_email_address
    #   The email address associated with the Amazon Connect instance.
    #
    # @option params [String] :description
    #   A description of the email contact.
    #
    # @option params [Hash<String,Types::Reference>] :references
    #   A formatted URL that is shown to an agent in the Contact Control Panel
    #   (CCP). Emails can have the following reference types at the time of
    #   creation: `URL` \| `NUMBER` \| `STRING` \| `DATE`. `EMAIL` \|
    #   `EMAIL_MESSAGE` \|`ATTACHMENT` are not a supported reference type
    #   during email creation.
    #
    # @option params [String] :name
    #   The name of a email that is shown to an agent in the Contact Control
    #   Panel (CCP).
    #
    # @option params [required, Types::InboundEmailContent] :email_message
    #   The email message body to be sent to the newly created email.
    #
    # @option params [Types::InboundAdditionalRecipients] :additional_recipients
    #   The additional recipients address of the email.
    #
    # @option params [Array<Types::EmailAttachment>] :attachments
    #   List of S3 presigned URLs of email attachments and their file name.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow for initiating the emails. To see the
    #   ContactFlowId in the Amazon Connect admin website, on the navigation
    #   menu go to **Routing**, **Flows**. Choose the flow. On the flow page,
    #   under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [String] :related_contact_id
    #   The contactId that is related to this contact. Linking emails together
    #   by using `RelatedContactID` copies over contact attributes from the
    #   related email contact to the new email contact. All updates to
    #   user-defined attributes in the new email contact are limited to the
    #   individual contact ID. There are no limits to the number of contacts
    #   that can be linked by using `RelatedContactId`.
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [Hash<String,Types::SegmentAttributeValue>] :segment_attributes
    #   A set of system defined key-value pairs stored on individual contact
    #   segments using an attribute map. The attributes are standard Amazon
    #   Connect attributes. They can be accessed in flows.
    #
    #   Attribute keys can include only alphanumeric, -, and \_.
    #
    #   This field can be used to show channel subtype, such as
    #   `connect:Guide`.
    #
    #   <note markdown="1"> To set contact expiry, a `ValueMap` must be specified containing the
    #   integer number of minutes the contact will be active for before
    #   expiring, with `SegmentAttributes` like \{ ` "connect:ContactExpiry":
    #   {"ValueMap" : { "ExpiryDuration": { "ValueInteger":135}}}}`.
    #
    #    </note>
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::StartEmailContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEmailContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_email_contact({
    #     instance_id: "InstanceId", # required
    #     from_email_address: { # required
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName",
    #     },
    #     destination_email_address: "EmailAddress", # required
    #     description: "Description",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL", # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #         status: "AVAILABLE", # accepts AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason",
    #       },
    #     },
    #     name: "Name",
    #     email_message: { # required
    #       message_source_type: "RAW", # required, accepts RAW
    #       raw_message: {
    #         subject: "InboundSubject", # required
    #         body: "Body", # required
    #         content_type: "EmailMessageContentType", # required
    #         headers: {
    #           "REFERENCES" => "EmailHeaderValue",
    #         },
    #       },
    #     },
    #     additional_recipients: {
    #       to_addresses: [
    #         {
    #           email_address: "EmailAddress", # required
    #           display_name: "EmailAddressDisplayName",
    #         },
    #       ],
    #       cc_addresses: [
    #         {
    #           email_address: "EmailAddress", # required
    #           display_name: "EmailAddressDisplayName",
    #         },
    #       ],
    #     },
    #     attachments: [
    #       {
    #         file_name: "FileName", # required
    #         s3_url: "PreSignedAttachmentUrl", # required
    #       },
    #     ],
    #     contact_flow_id: "ContactFlowId",
    #     related_contact_id: "ContactId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           },
    #         },
    #         value_integer: 1,
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartEmailContact AWS API Documentation
    #
    # @overload start_email_contact(params = {})
    # @param [Hash] params ({})
    def start_email_contact(params = {}, options = {})
      req = build_request(:start_email_contact, params)
      req.send_request(options)
    end

    # Initiates a new outbound SMS contact to a customer. Response of this
    # API provides the `ContactId` of the outbound SMS contact created.
    #
    # **SourceEndpoint** only supports Endpoints with
    # `CONNECT_PHONENUMBER_ARN` as Type and **DestinationEndpoint** only
    # supports Endpoints with `TELEPHONE_NUMBER` as Type. **ContactFlowId**
    # initiates the flow to manage the new SMS contact created.
    #
    # This API can be used to initiate outbound SMS contacts for an agent,
    # or it can also deflect an ongoing contact to an outbound SMS contact
    # by using the [StartOutboundChatContact][1] Flow Action.
    #
    # For more information about using SMS in Amazon Connect, see the
    # following topics in the *Amazon Connect Administrator Guide*:
    #
    # * [Set up SMS messaging][2]
    #
    # * [Request an SMS-enabled phone number through AWS End User Messaging
    #   SMS][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartOutboundChatContact.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-sms-messaging.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/sms-number.html
    #
    # @option params [required, Types::Endpoint] :source_endpoint
    #   Information about the endpoint.
    #
    # @option params [required, Types::Endpoint] :destination_endpoint
    #   Information about the endpoint.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, Hash<String,Types::SegmentAttributeValue>] :segment_attributes
    #   A set of system defined key-value pairs stored on individual contact
    #   segments using an attribute map. The attributes are standard Amazon
    #   Connect attributes. They can be accessed in flows.
    #
    #   * Attribute keys can include only alphanumeric, `-`, and `_`.
    #
    #   * This field can be used to show channel subtype, such as
    #     `connect:Guide` and `connect:SMS`.
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows just
    #   like any other contact attributes.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow for the call. To see the ContactFlowId in
    #   the Amazon Connect console user interface, on the navigation menu go
    #   to **Routing, Contact Flows**. Choose the flow. On the flow page,
    #   under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
    #
    #   * arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**123ec456-a007-89c0-1234-xxxxxxxxxxxx**
    #
    #   ^
    #
    # @option params [Integer] :chat_duration_in_minutes
    #   The total duration of the newly started chat session. If not
    #   specified, the chat session duration defaults to 25 hour. The minimum
    #   configurable time is 60 minutes. The maximum configurable time is
    #   10,080 minutes (7 days).
    #
    # @option params [Types::ParticipantDetails] :participant_details
    #   The customer's details.
    #
    # @option params [Types::ChatMessage] :initial_system_message
    #   A chat message.
    #
    # @option params [String] :related_contact_id
    #   The unique identifier for an Amazon Connect contact. This identifier
    #   is related to the contact starting.
    #
    # @option params [Array<String>] :supported_messaging_content_types
    #   The supported chat message content types. Supported types are:
    #
    #   * `text/plain`
    #
    #   * `text/markdown`
    #
    #   * `application/json,
    #     application/vnd.amazonaws.connect.message.interactive`
    #
    #   * `application/vnd.amazonaws.connect.message.interactive.response`
    #
    #   Content types must always contain `text/plain`. You can then put any
    #   other supported type in the list. For example, all the following lists
    #   are valid because they contain `text/plain`:
    #
    #   * `[text/plain, text/markdown, application/json]`
    #
    #   * `[text/markdown, text/plain]`
    #
    #   * `[text/plain, application/json,
    #     application/vnd.amazonaws.connect.message.interactive.response]`
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field. For more information about idempotency, see [Making
    #   retries safe with idempotent APIs][1]. The token is valid for 7 days
    #   after creation. If a contact is already started, the contact ID is
    #   returned.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::StartOutboundChatContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOutboundChatContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_outbound_chat_contact({
    #     source_endpoint: { # required
    #       type: "TELEPHONE_NUMBER", # accepts TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS
    #       address: "EndpointAddress",
    #     },
    #     destination_endpoint: { # required
    #       type: "TELEPHONE_NUMBER", # accepts TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS
    #       address: "EndpointAddress",
    #     },
    #     instance_id: "InstanceId", # required
    #     segment_attributes: { # required
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           },
    #         },
    #         value_integer: 1,
    #       },
    #     },
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     contact_flow_id: "ContactFlowId", # required
    #     chat_duration_in_minutes: 1,
    #     participant_details: {
    #       display_name: "DisplayName", # required
    #     },
    #     initial_system_message: {
    #       content_type: "ChatContentType", # required
    #       content: "ChatContent", # required
    #     },
    #     related_contact_id: "ContactId",
    #     supported_messaging_content_types: ["SupportedMessagingContentType"],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundChatContact AWS API Documentation
    #
    # @overload start_outbound_chat_contact(params = {})
    # @param [Hash] params ({})
    def start_outbound_chat_contact(params = {}, options = {})
      req = build_request(:start_outbound_chat_contact, params)
      req.send_request(options)
    end

    # Initiates a flow to send an agent reply or outbound email contact
    # (created from the CreateContact API) to a customer.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [Types::EmailAddressInfo] :from_email_address
    #   The email address associated with the Amazon Connect instance.
    #
    # @option params [required, Types::EmailAddressInfo] :destination_email_address
    #   The email address of the customer.
    #
    # @option params [Types::OutboundAdditionalRecipients] :additional_recipients
    #   The additional recipients address of email in CC.
    #
    # @option params [required, Types::OutboundEmailContent] :email_message
    #   The email message body to be sent to the newly created email.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::StartOutboundEmailContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOutboundEmailContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_outbound_email_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     from_email_address: {
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName",
    #     },
    #     destination_email_address: { # required
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName",
    #     },
    #     additional_recipients: {
    #       cc_email_addresses: [
    #         {
    #           email_address: "EmailAddress", # required
    #           display_name: "EmailAddressDisplayName",
    #         },
    #       ],
    #     },
    #     email_message: { # required
    #       message_source_type: "TEMPLATE", # required, accepts TEMPLATE, RAW
    #       templated_message_config: {
    #         knowledge_base_id: "MessageTemplateKnowledgeBaseId", # required
    #         message_template_id: "MessageTemplateId", # required
    #         template_attributes: { # required
    #           custom_attributes: {
    #             "AttributeName" => "AttributeValue",
    #           },
    #           customer_profile_attributes: "CustomerProfileAttributesSerialized",
    #         },
    #       },
    #       raw_message: {
    #         subject: "OutboundSubject", # required
    #         body: "Body", # required
    #         content_type: "EmailMessageContentType", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundEmailContact AWS API Documentation
    #
    # @overload start_outbound_email_contact(params = {})
    # @param [Hash] params ({})
    def start_outbound_email_contact(params = {}, options = {})
      req = build_request(:start_outbound_email_contact, params)
      req.send_request(options)
    end

    # Places an outbound call to a contact, and then initiates the flow. It
    # performs the actions in the flow that's specified (in
    # `ContactFlowId`).
    #
    # Agents do not initiate the outbound API, which means that they do not
    # dial the contact. If the flow places an outbound call to a contact,
    # and then puts the contact in queue, the call is then routed to the
    # agent, like any other inbound case.
    #
    # There is a 60-second dialing timeout for this operation. If the call
    # is not connected after 60 seconds, it fails.
    #
    # <note markdown="1"> UK numbers with a 447 prefix are not allowed by default. Before you
    # can dial these UK mobile numbers, you must submit a service quota
    # increase request. For more information, see [Amazon Connect Service
    # Quotas][1] in the *Amazon Connect Administrator Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Campaign calls are not allowed by default. Before you can make a call
    # with `TrafficType` = `CAMPAIGN`, you must submit a service quota
    # increase request to the quota [Amazon Connect campaigns][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#outbound-communications-quotas
    #
    # @option params [String] :name
    #   The name of a voice contact that is shown to an agent in the Contact
    #   Control Panel (CCP).
    #
    # @option params [String] :description
    #   A description of the voice contact that appears in the agent's
    #   snapshot in the CCP logs. For more information about CCP logs, see
    #   [Download and review CCP logs][1] in the *Amazon Connect Administrator
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/download-ccp-logs.html
    #
    # @option params [Hash<String,Types::Reference>] :references
    #   A formatted URL that is shown to an agent in the Contact Control Panel
    #   (CCP). Contacts can have the following reference types at the time of
    #   creation: `URL` \| `NUMBER` \| `STRING` \| `DATE` \| `EMAIL`.
    #   `ATTACHMENT` is not a supported reference type during voice contact
    #   creation.
    #
    # @option params [String] :related_contact_id
    #   The `contactId` that is related to this contact. Linking voice, task,
    #   or chat by using `RelatedContactID` copies over contact attributes
    #   from the related contact to the new contact. All updates to
    #   user-defined attributes in the new contact are limited to the
    #   individual contact ID. There are no limits to the number of contacts
    #   that can be linked by using `RelatedContactId`.
    #
    # @option params [required, String] :destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow for the outbound call. To see the
    #   ContactFlowId in the Amazon Connect admin website, on the navigation
    #   menu go to **Routing**, **Contact Flows**. Choose the flow. On the
    #   flow page, under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]. The token is valid for
    #   7 days after creation. If a contact is already started, the contact ID
    #   is returned.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [String] :source_phone_number
    #   The phone number associated with the Amazon Connect instance, in E.164
    #   format. If you do not specify a source phone number, you must specify
    #   a queue.
    #
    # @option params [String] :queue_id
    #   The queue for the call. If you specify a queue, the phone displayed
    #   for caller ID is the phone number specified in the queue. If you do
    #   not specify a queue, the queue defined in the flow is used. If you do
    #   not specify a queue, you must specify a source phone number.
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [Types::AnswerMachineDetectionConfig] :answer_machine_detection_config
    #   Configuration of the answering machine detection for this outbound
    #   call.
    #
    # @option params [String] :campaign_id
    #   The campaign identifier of the outbound communication.
    #
    # @option params [String] :traffic_type
    #   Denotes the class of traffic. Calls with different traffic types are
    #   handled differently by Amazon Connect. The default value is `GENERAL`.
    #   Use `CAMPAIGN` if `EnableAnswerMachineDetection` is set to `true`. For
    #   all other cases, use `GENERAL`.
    #
    # @return [Types::StartOutboundVoiceContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOutboundVoiceContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_outbound_voice_contact({
    #     name: "Name",
    #     description: "Description",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL", # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #         status: "AVAILABLE", # accepts AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason",
    #       },
    #     },
    #     related_contact_id: "ContactId",
    #     destination_phone_number: "PhoneNumber", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     source_phone_number: "PhoneNumber",
    #     queue_id: "QueueId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     answer_machine_detection_config: {
    #       enable_answer_machine_detection: false,
    #       await_answer_machine_prompt: false,
    #     },
    #     campaign_id: "CampaignId",
    #     traffic_type: "GENERAL", # accepts GENERAL, CAMPAIGN
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContact AWS API Documentation
    #
    # @overload start_outbound_voice_contact(params = {})
    # @param [Hash] params ({})
    def start_outbound_voice_contact(params = {}, options = {})
      req = build_request(:start_outbound_voice_contact, params)
      req.send_request(options)
    end

    # Starts screen sharing for a contact. For more information about screen
    # sharing, see [Set up in-app, web, video calling, and screen sharing
    # capabilities][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_screen_sharing({
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartScreenSharing AWS API Documentation
    #
    # @overload start_screen_sharing(params = {})
    # @param [Hash] params ({})
    def start_screen_sharing(params = {}, options = {})
      req = build_request(:start_screen_sharing, params)
      req.send_request(options)
    end

    # Initiates a flow to start a new task contact. For more information
    # about task contacts, see [Concepts: Tasks in Amazon Connect][1] in the
    # *Amazon Connect Administrator Guide*.
    #
    # When using `PreviousContactId` and `RelatedContactId` input
    # parameters, note the following:
    #
    # * `PreviousContactId`
    #
    #   * Any updates to user-defined task contact attributes on any contact
    #     linked through the same `PreviousContactId` will affect every
    #     contact in the chain.
    #
    #   * There can be a maximum of 12 linked task contacts in a chain. That
    #     is, 12 task contacts can be created that share the same
    #     `PreviousContactId`.
    # * `RelatedContactId`
    #
    #   * Copies contact attributes from the related task contact to the new
    #     contact.
    #
    #   * Any update on attributes in a new task contact does not update
    #     attributes on previous contact.
    #
    #   * There’s no limit on the number of task contacts that can be
    #     created that use the same `RelatedContactId`.
    #
    # In addition, when calling StartTaskContact include only one of these
    # parameters: `ContactFlowID`, `QuickConnectID`, or `TaskTemplateID`.
    # Only one parameter is required as long as the task template has a flow
    # configured to run it. If more than one parameter is specified, or only
    # the `TaskTemplateID` is specified but it does not have a flow
    # configured, the request returns an error because Amazon Connect cannot
    # identify the unique flow to run when the task is created.
    #
    # A `ServiceQuotaExceededException` occurs when the number of open tasks
    # exceeds the active tasks quota or there are already 12 tasks
    # referencing the same `PreviousContactId`. For more information about
    # service quotas for task contacts, see [Amazon Connect service
    # quotas][2] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :previous_contact_id
    #   The identifier of the previous chat, voice, or task contact. Any
    #   updates to user-defined attributes to task contacts linked using the
    #   same `PreviousContactID` will affect every contact in the chain. There
    #   can be a maximum of 12 linked task contacts in a chain.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow for initiating the tasks. To see the
    #   ContactFlowId in the Amazon Connect admin website, on the navigation
    #   menu go to **Routing**, **Flows**. Choose the flow. On the flow page,
    #   under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [required, String] :name
    #   The name of a task that is shown to an agent in the Contact Control
    #   Panel (CCP).
    #
    # @option params [Hash<String,Types::Reference>] :references
    #   A formatted URL that is shown to an agent in the Contact Control Panel
    #   (CCP). Tasks can have the following reference types at the time of
    #   creation: `URL` \| `NUMBER` \| `STRING` \| `DATE` \| `EMAIL`.
    #   `ATTACHMENT` is not a supported reference type during task creation.
    #
    # @option params [String] :description
    #   A description of the task that is shown to an agent in the Contact
    #   Control Panel (CCP).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Time,DateTime,Date,Integer,String] :scheduled_time
    #   The timestamp, in Unix Epoch seconds format, at which to start running
    #   the inbound flow. The scheduled time cannot be in the past. It must be
    #   within up to 6 days in future.
    #
    # @option params [String] :task_template_id
    #   A unique identifier for the task template. For more information about
    #   task templates, see [Create task templates][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/task-templates.html
    #
    # @option params [String] :quick_connect_id
    #   The identifier for the quick connect. Tasks that are created by using
    #   `QuickConnectId` will use the flow that is defined on agent or queue
    #   quick connect. For more information about quick connects, see [Create
    #   quick connects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/quick-connects.html
    #
    # @option params [String] :related_contact_id
    #   The contactId that is [related][1] to this contact. Linking tasks
    #   together by using `RelatedContactID` copies over contact attributes
    #   from the related task contact to the new task contact. All updates to
    #   user-defined attributes in the new task contact are limited to the
    #   individual contact ID, unlike what happens when tasks are linked by
    #   using `PreviousContactID`. There are no limits to the number of
    #   contacts that can be linked by using `RelatedContactId`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html#linked-tasks
    #
    # @option params [Hash<String,Types::SegmentAttributeValue>] :segment_attributes
    #   A set of system defined key-value pairs stored on individual contact
    #   segments (unique contact ID) using an attribute map. The attributes
    #   are standard Amazon Connect attributes. They can be accessed in flows.
    #
    #   Attribute keys can include only alphanumeric, -, and \_.
    #
    #   This field can be used to set Contact Expiry as a duration in minutes
    #   and set a UserId for the User who created a task.
    #
    #   <note markdown="1"> To set contact expiry, a ValueMap must be specified containing the
    #   integer number of minutes the contact will be active for before
    #   expiring, with `SegmentAttributes` like \{ ` "connect:ContactExpiry":
    #   {"ValueMap" : { "ExpiryDuration": { "ValueInteger": 135}}}}`.
    #
    #    To set the created by user, a valid AgentResourceId must be supplied,
    #   with `SegmentAttributes` like \{ `"connect:CreatedByUser" {
    #   "ValueString":
    #   "arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/agent/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"}}}`.
    #
    #    </note>
    #
    # @return [Types::StartTaskContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTaskContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task_contact({
    #     instance_id: "InstanceId", # required
    #     previous_contact_id: "ContactId",
    #     contact_flow_id: "ContactFlowId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     name: "Name", # required
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL", # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #         status: "AVAILABLE", # accepts AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason",
    #       },
    #     },
    #     description: "Description",
    #     client_token: "ClientToken",
    #     scheduled_time: Time.now,
    #     task_template_id: "TaskTemplateId",
    #     quick_connect_id: "QuickConnectId",
    #     related_contact_id: "ContactId",
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           },
    #         },
    #         value_integer: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartTaskContact AWS API Documentation
    #
    # @overload start_task_contact(params = {})
    # @param [Hash] params ({})
    def start_task_contact(params = {}, options = {})
      req = build_request(:start_task_contact, params)
      req.send_request(options)
    end

    # Places an inbound in-app, web, or video call to a contact, and then
    # initiates the flow. It performs the actions in the flow that are
    # specified (in ContactFlowId) and present in the Amazon Connect
    # instance (specified as InstanceId).
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, -, and \_
    #   characters.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   The token is valid for 7 days after creation. If a contact is already
    #   started, the contact ID is returned.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow for the call. To see the ContactFlowId in
    #   the Amazon Connect admin website, on the navigation menu go to
    #   **Routing**, **Flows**. Choose the flow. On the flow page, under the
    #   name of the flow, choose **Show additional flow information**. The
    #   ContactFlowId is the last part of the ARN, shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Types::AllowedCapabilities] :allowed_capabilities
    #   Information about the video sharing capabilities of the participants
    #   (customer, agent).
    #
    # @option params [required, Types::ParticipantDetails] :participant_details
    #   The customer's details.
    #
    # @option params [String] :related_contact_id
    #   The unique identifier for an Amazon Connect contact. This identifier
    #   is related to the contact starting.
    #
    # @option params [Hash<String,Types::Reference>] :references
    #   A formatted URL that is shown to an agent in the Contact Control Panel
    #   (CCP). Tasks can have the following reference types at the time of
    #   creation: `URL` \| `NUMBER` \| `STRING` \| `DATE` \| `EMAIL`.
    #   `ATTACHMENT` is not a supported reference type during task creation.
    #
    # @option params [String] :description
    #   A description of the task that is shown to an agent in the Contact
    #   Control Panel (CCP).
    #
    # @return [Types::StartWebRTCContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWebRTCContactResponse#connection_data #connection_data} => Types::ConnectionData
    #   * {Types::StartWebRTCContactResponse#contact_id #contact_id} => String
    #   * {Types::StartWebRTCContactResponse#participant_id #participant_id} => String
    #   * {Types::StartWebRTCContactResponse#participant_token #participant_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_web_rtc_contact({
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     client_token: "ClientToken",
    #     contact_flow_id: "ContactFlowId", # required
    #     instance_id: "InstanceId", # required
    #     allowed_capabilities: {
    #       customer: {
    #         video: "SEND", # accepts SEND
    #         screen_share: "SEND", # accepts SEND
    #       },
    #       agent: {
    #         video: "SEND", # accepts SEND
    #         screen_share: "SEND", # accepts SEND
    #       },
    #     },
    #     participant_details: { # required
    #       display_name: "DisplayName", # required
    #     },
    #     related_contact_id: "ContactId",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL", # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #         status: "AVAILABLE", # accepts AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason",
    #       },
    #     },
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_data.attendee.attendee_id #=> String
    #   resp.connection_data.attendee.join_token #=> String
    #   resp.connection_data.meeting.media_region #=> String
    #   resp.connection_data.meeting.media_placement.audio_host_url #=> String
    #   resp.connection_data.meeting.media_placement.audio_fallback_url #=> String
    #   resp.connection_data.meeting.media_placement.signaling_url #=> String
    #   resp.connection_data.meeting.media_placement.turn_control_url #=> String
    #   resp.connection_data.meeting.media_placement.event_ingestion_url #=> String
    #   resp.connection_data.meeting.meeting_features.audio.echo_reduction #=> String, one of "AVAILABLE", "UNAVAILABLE"
    #   resp.connection_data.meeting.meeting_id #=> String
    #   resp.contact_id #=> String
    #   resp.participant_id #=> String
    #   resp.participant_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartWebRTCContact AWS API Documentation
    #
    # @overload start_web_rtc_contact(params = {})
    # @param [Hash] params ({})
    def start_web_rtc_contact(params = {}, options = {})
      req = build_request(:start_web_rtc_contact, params)
      req.send_request(options)
    end

    # Ends the specified contact. Use this API to stop queued callbacks. It
    # does not work for voice contacts that use the following initiation
    # methods:
    #
    # * DISCONNECT
    #
    # * TRANSFER
    #
    # * QUEUE\_TRANSFER
    #
    # * EXTERNAL\_OUTBOUND
    #
    # * MONITOR
    #
    # Chat and task contacts can be terminated in any state, regardless of
    # initiation method.
    #
    # @option params [required, String] :contact_id
    #   The ID of the contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Types::DisconnectReason] :disconnect_reason
    #   The reason a contact can be disconnected. Only Amazon Connect outbound
    #   campaigns can provide this field.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact({
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     disconnect_reason: {
    #       code: "DisconnectReasonCode",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContact AWS API Documentation
    #
    # @overload stop_contact(params = {})
    # @param [Hash] params ({})
    def stop_contact(params = {}, options = {})
      req = build_request(:stop_contact, params)
      req.send_request(options)
    end

    # Stops recording a call when a contact is being recorded.
    # StopContactRecording is a one-time action. If you use
    # StopContactRecording to stop recording an ongoing call, you can't use
    # StartContactRecording to restart it. For scenarios where the recording
    # has started and you want to suspend it for sensitive information (for
    # example, to collect a credit card number), and then restart it, use
    # SuspendContactRecording and ResumeContactRecording.
    #
    # Only voice recordings are supported at this time.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [String] :contact_recording_type
    #   The type of recording being operated on.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     contact_recording_type: "AGENT", # accepts AGENT, IVR, SCREEN
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRecording AWS API Documentation
    #
    # @overload stop_contact_recording(params = {})
    # @param [Hash] params ({})
    def stop_contact_recording(params = {}, options = {})
      req = build_request(:stop_contact_recording, params)
      req.send_request(options)
    end

    # Ends message streaming on a specified contact. To restart message
    # streaming on that contact, call the [StartContactStreaming][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   that is associated with the first interaction with the contact center.
    #
    # @option params [required, String] :streaming_id
    #   The identifier of the streaming configuration enabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact_streaming({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     streaming_id: "StreamingId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactStreaming AWS API Documentation
    #
    # @overload stop_contact_streaming(params = {})
    # @param [Hash] params ({})
    def stop_contact_streaming(params = {}, options = {})
      req = build_request(:stop_contact_streaming, params)
      req.send_request(options)
    end

    # Submits a contact evaluation in the specified Amazon Connect instance.
    # Answers included in the request are merged with existing answers for
    # the given evaluation. If no answers or notes are passed, the
    # evaluation is submitted with the existing answers and notes. You can
    # delete an answer or note by passing an empty object (`{}`) to the
    # question identifier.
    #
    # If a contact evaluation is already in submitted state, this operation
    # will trigger a resubmission.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_id
    #   A unique identifier for the contact evaluation.
    #
    # @option params [Hash<String,Types::EvaluationAnswerInput>] :answers
    #   A map of question identifiers to answer value.
    #
    # @option params [Hash<String,Types::EvaluationNote>] :notes
    #   A map of question identifiers to note value.
    #
    # @return [Types::SubmitContactEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitContactEvaluationResponse#evaluation_id #evaluation_id} => String
    #   * {Types::SubmitContactEvaluationResponse#evaluation_arn #evaluation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #     answers: {
    #       "ResourceId" => {
    #         value: {
    #           string_value: "EvaluationAnswerDataStringValue",
    #           numeric_value: 1.0,
    #           not_applicable: false,
    #         },
    #       },
    #     },
    #     notes: {
    #       "ResourceId" => {
    #         value: "EvaluationNoteString",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #   resp.evaluation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SubmitContactEvaluation AWS API Documentation
    #
    # @overload submit_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def submit_contact_evaluation(params = {}, options = {})
      req = build_request(:submit_contact_evaluation, params)
      req.send_request(options)
    end

    # When a contact is being recorded, this API suspends recording whatever
    # is selected in the flow configuration: call (IVR or agent), screen, or
    # both. If only call recording or only screen recording is enabled, then
    # it would be suspended. For example, you might suspend the screen
    # recording while collecting sensitive information, such as a credit
    # card number. Then use [ResumeContactRecording][1] to restart recording
    # the screen.
    #
    # The period of time that the recording is suspended is filled with
    # silence in the final recording.
    #
    # Voice (IVR, agent) and screen recordings are supported.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ResumeContactRecording.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [String] :contact_recording_type
    #   The type of recording being operated on.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     contact_recording_type: "AGENT", # accepts AGENT, IVR, SCREEN
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SuspendContactRecording AWS API Documentation
    #
    # @overload suspend_contact_recording(params = {})
    # @param [Hash] params ({})
    def suspend_contact_recording(params = {}, options = {})
      req = build_request(:suspend_contact_recording, params)
      req.send_request(options)
    end

    # Adds the specified tags to the contact resource. For more information
    # about this API is used, see [Set up granular billing for a detailed
    # view of your Amazon Connect usage][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to be assigned to the contact resource. For example, \{
    #   "Tags": \{"key1":"value1", "key2":"value2"} }.
    #
    #   <note markdown="1"> Authorization is not supported by this tag.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_contact({
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     tags: { # required
    #       "ContactTagKey" => "ContactTagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagContact AWS API Documentation
    #
    # @overload tag_contact(params = {})
    # @param [Hash] params ({})
    def tag_contact(params = {}, options = {})
      req = build_request(:tag_contact, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # Some of the supported resource types are agents, routing profiles,
    # queues, quick connects, flows, agent statuses, hours of operation,
    # phone numbers, security profiles, and task templates. For a complete
    # list, see [Tagging resources in Amazon Connect][1].
    #
    # For sample policies that use tags, see [Amazon Connect Identity-Based
    # Policy Examples][2] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \{ "Tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Transfers `TASK` or `EMAIL` contacts from one agent or queue to
    # another agent or queue at any point after a contact is created. You
    # can transfer a contact to another queue by providing the flow which
    # orchestrates the contact to the destination queue. This gives you more
    # control over contact handling and helps you adhere to the service
    # level agreement (SLA) guaranteed to your customers.
    #
    # Note the following requirements:
    #
    # * Transfer is only supported for `TASK` and `EMAIL` contacts.
    #
    # * Do not use both `QueueId` and `UserId` in the same call.
    #
    # * The following flow types are supported: Inbound flow, Transfer to
    #   agent flow, and Transfer to queue flow.
    #
    # * The `TransferContact` API can be called only on active contacts.
    #
    # * A contact cannot be transferred more than 11 times.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [String] :user_id
    #   The identifier for the user. This can be the ID or the ARN of the
    #   user.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::TransferContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TransferContactResponse#contact_id #contact_id} => String
    #   * {Types::TransferContactResponse#contact_arn #contact_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     queue_id: "QueueId",
    #     user_id: "AgentResourceId",
    #     contact_flow_id: "ContactFlowId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.contact_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TransferContact AWS API Documentation
    #
    # @overload transfer_contact(params = {})
    # @param [Hash] params ({})
    def transfer_contact(params = {}, options = {})
      req = build_request(:transfer_contact, params)
      req.send_request(options)
    end

    # Removes the specified tags from the contact resource. For more
    # information about this API is used, see [Set up granular billing for a
    # detailed view of your Amazon Connect usage][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. Existing tags on the contact whose keys are
    #   members of this list will be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_contact({
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     tag_keys: ["ContactTagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UntagContact AWS API Documentation
    #
    # @overload untag_contact(params = {})
    # @param [Hash] params ({})
    def untag_contact(params = {}, options = {})
      req = build_request(:untag_contact, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates agent status.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :agent_status_id
    #   The identifier of the agent status.
    #
    # @option params [String] :name
    #   The name of the agent status.
    #
    # @option params [String] :description
    #   The description of the agent status.
    #
    # @option params [String] :state
    #   The state of the agent status.
    #
    # @option params [Integer] :display_order
    #   The display order of the agent status.
    #
    # @option params [Boolean] :reset_order_number
    #   A number indicating the reset order of the agent status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_status({
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #     name: "AgentStatusName",
    #     description: "UpdateAgentStatusDescription",
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     display_order: 1,
    #     reset_order_number: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateAgentStatus AWS API Documentation
    #
    # @overload update_agent_status(params = {})
    # @param [Hash] params ({})
    def update_agent_status(params = {}, options = {})
      req = build_request(:update_agent_status, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change. To request access to this API, contact Amazon Web Services
    # Support.
    #
    # Updates the selected authentication profile.
    #
    # @option params [required, String] :authentication_profile_id
    #   A unique identifier for the authentication profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :name
    #   The name for the authentication profile.
    #
    # @option params [String] :description
    #   The description for the authentication profile.
    #
    # @option params [Array<String>] :allowed_ips
    #   A list of IP address range strings that are allowed to access the
    #   instance. For more information on how to configure IP addresses,
    #   see[Configure session timeouts][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts
    #
    # @option params [Array<String>] :blocked_ips
    #   A list of IP address range strings that are blocked from accessing the
    #   instance. For more information on how to configure IP addresses, For
    #   more information on how to configure IP addresses, see [Configure
    #   IP-based access control][1] in the *Amazon Connect Administrator
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-ip-based-ac
    #
    # @option params [Integer] :periodic_session_duration
    #   The short lived session duration configuration for users logged in to
    #   Amazon Connect, in minutes. This value determines the maximum possible
    #   time before an agent is authenticated. For more information, For more
    #   information on how to configure IP addresses, see [Configure session
    #   timeouts][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authentication_profile({
    #     authentication_profile_id: "AuthenticationProfileId", # required
    #     instance_id: "InstanceId", # required
    #     name: "AuthenticationProfileName",
    #     description: "AuthenticationProfileDescription",
    #     allowed_ips: ["IpCidr"],
    #     blocked_ips: ["IpCidr"],
    #     periodic_session_duration: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateAuthenticationProfile AWS API Documentation
    #
    # @overload update_authentication_profile(params = {})
    # @param [Hash] params ({})
    def update_authentication_profile(params = {}, options = {})
      req = build_request(:update_authentication_profile, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Adds or updates user-defined contact information associated with the
    # specified contact. At least one field to be updated must be present in
    # the request.
    #
    # You can add or update user-defined contact information for both
    # ongoing and completed contacts.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with your contact center.
    #
    # @option params [String] :name
    #   The name of the contact.
    #
    # @option params [String] :description
    #   The description of the contact.
    #
    # @option params [Hash<String,Types::Reference>] :references
    #   Well-formed data on contact, shown to agents on Contact Control Panel
    #   (CCP).
    #
    # @option params [Hash<String,Types::SegmentAttributeValue>] :segment_attributes
    #   A set of system defined key-value pairs stored on individual contact
    #   segments (unique contact ID) using an attribute map. The attributes
    #   are standard Amazon Connect attributes. They can be accessed in flows.
    #
    #   Attribute keys can include only alphanumeric, -, and \_.
    #
    #   This field can be used to show channel subtype, such as
    #   `connect:Guide`.
    #
    #   Currently Contact Expiry is the only segment attribute which can be
    #   updated by using the UpdateContact API.
    #
    # @option params [Types::QueueInfoInput] :queue_info
    #   Information about the queue associated with a contact. This parameter
    #   can only be updated for external audio contacts. It is used when you
    #   integrate third-party systems with Contact Lens for analytics. For
    #   more information, see [Amazon Connect Contact Lens integration][1] in
    #   the <i> Amazon Connect Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html
    #
    # @option params [Types::UserInfo] :user_info
    #   Information about the agent associated with a contact. This parameter
    #   can only be updated for external audio contacts. It is used when you
    #   integrate third-party systems with Contact Lens for analytics. For
    #   more information, see [Amazon Connect Contact Lens integration][1] in
    #   the <i> Amazon Connect Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html
    #
    # @option params [Types::Endpoint] :customer_endpoint
    #   The endpoint of the customer for which the contact was initiated. For
    #   external audio contacts, this is usually the end customer's phone
    #   number. This value can only be updated for external audio contacts.
    #   For more information, see [Amazon Connect Contact Lens integration][1]
    #   in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html
    #
    # @option params [Types::Endpoint] :system_endpoint
    #   External system endpoint for the contact was initiated. For external
    #   audio contacts, this is the phone number of the external system such
    #   as the contact center. This value can only be updated for external
    #   audio contacts. For more information, see [Amazon Connect Contact Lens
    #   integration][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     name: "Name",
    #     description: "Description",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL", # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #         status: "AVAILABLE", # accepts AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason",
    #       },
    #     },
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           },
    #         },
    #         value_integer: 1,
    #       },
    #     },
    #     queue_info: {
    #       id: "QueueId",
    #     },
    #     user_info: {
    #       user_id: "AgentResourceId",
    #     },
    #     customer_endpoint: {
    #       type: "TELEPHONE_NUMBER", # accepts TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS
    #       address: "EndpointAddress",
    #     },
    #     system_endpoint: {
    #       type: "TELEPHONE_NUMBER", # accepts TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS
    #       address: "EndpointAddress",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContact AWS API Documentation
    #
    # @overload update_contact(params = {})
    # @param [Hash] params ({})
    def update_contact(params = {}, options = {})
      req = build_request(:update_contact, params)
      req.send_request(options)
    end

    # Creates or updates user-defined contact attributes associated with the
    # specified contact.
    #
    # You can create or update user-defined attributes for both ongoing and
    # completed contacts. For example, while the call is active, you can
    # update the customer's name or the reason the customer called. You can
    # add notes about steps that the agent took during the call that display
    # to the next agent that takes the call. You can also update attributes
    # for a contact using data from your CRM application and save the data
    # with the contact in Amazon Connect. You could also flag calls for
    # additional analysis, such as legal review or to identify abusive
    # callers.
    #
    # Contact attributes are available in Amazon Connect for 24 months, and
    # are then deleted. For information about contact record retention and
    # the maximum size of the contact record attributes section, see
    # [Feature specifications][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Hash<String,String>] :attributes
    #   The Amazon Connect attributes. These attributes can be accessed in
    #   flows just like any other contact attributes.
    #
    #   You can have up to 32,768 UTF-8 bytes across all attributes for a
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    #   In the [Set contact attributes][1] block, when the attributes for a
    #   contact exceed 32 KB, the contact is routed down the Error branch of
    #   the flow. As a mitigation, consider the following options:
    #
    #   * Remove unnecessary attributes by setting their values to empty.
    #
    #   * If the attributes are only used in one flow and don't need to be
    #     referred to outside of that flow (for example, by a Lambda or
    #     another flow), then use flow attributes. This way you aren't
    #     needlessly persisting the 32 KB of information from one flow to
    #     another. For more information, see [Flow block: Set contact
    #     attributes][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/set-contact-attributes.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_attributes({
    #     initial_contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     attributes: { # required
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactAttributes AWS API Documentation
    #
    # @overload update_contact_attributes(params = {})
    # @param [Hash] params ({})
    def update_contact_attributes(params = {}, options = {})
      req = build_request(:update_contact_attributes, params)
      req.send_request(options)
    end

    # Updates details about a contact evaluation in the specified Amazon
    # Connect instance. A contact evaluation must be in draft state. Answers
    # included in the request are merged with existing answers for the given
    # evaluation. An answer or note can be deleted by passing an empty
    # object (`{}`) to the question identifier.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_id
    #   A unique identifier for the contact evaluation.
    #
    # @option params [Hash<String,Types::EvaluationAnswerInput>] :answers
    #   A map of question identifiers to answer value.
    #
    # @option params [Hash<String,Types::EvaluationNote>] :notes
    #   A map of question identifiers to note value.
    #
    # @return [Types::UpdateContactEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContactEvaluationResponse#evaluation_id #evaluation_id} => String
    #   * {Types::UpdateContactEvaluationResponse#evaluation_arn #evaluation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #     answers: {
    #       "ResourceId" => {
    #         value: {
    #           string_value: "EvaluationAnswerDataStringValue",
    #           numeric_value: 1.0,
    #           not_applicable: false,
    #         },
    #       },
    #     },
    #     notes: {
    #       "ResourceId" => {
    #         value: "EvaluationNoteString",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #   resp.evaluation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactEvaluation AWS API Documentation
    #
    # @overload update_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def update_contact_evaluation(params = {}, options = {})
      req = build_request(:update_contact_evaluation, params)
      req.send_request(options)
    end

    # Updates the specified flow.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    # Use the `$SAVED` alias in the request to describe the `SAVED` content
    # of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED`. After
    # a flow is published, `$SAVED` needs to be supplied to view saved
    # content that has not been published.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [required, String] :content
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 256000.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_content({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     content: "ContactFlowContent", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowContent AWS API Documentation
    #
    # @overload update_contact_flow_content(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_content(params = {}, options = {})
      req = build_request(:update_contact_flow_content, params)
      req.send_request(options)
    end

    # Updates metadata about specified flow.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [String] :name
    #   The name of the flow.
    #
    # @option params [String] :description
    #   The description of the flow.
    #
    # @option params [String] :contact_flow_state
    #   The state of flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_metadata({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     name: "ContactFlowName",
    #     description: "ContactFlowDescription",
    #     contact_flow_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowMetadata AWS API Documentation
    #
    # @overload update_contact_flow_metadata(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_metadata(params = {}, options = {})
      req = build_request(:update_contact_flow_metadata, params)
      req.send_request(options)
    end

    # Updates specified flow module for the specified Amazon Connect
    # instance.
    #
    # Use the `$SAVED` alias in the request to describe the `SAVED` content
    # of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED`. After
    # a flow is published, `$SAVED` needs to be supplied to view saved
    # content that has not been published.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_module_id
    #   The identifier of the flow module.
    #
    # @option params [required, String] :content
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_module_content({
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #     content: "ContactFlowModuleContent", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowModuleContent AWS API Documentation
    #
    # @overload update_contact_flow_module_content(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_module_content(params = {}, options = {})
      req = build_request(:update_contact_flow_module_content, params)
      req.send_request(options)
    end

    # Updates metadata about specified flow module.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_module_id
    #   The identifier of the flow module.
    #
    # @option params [String] :name
    #   The name of the flow module.
    #
    # @option params [String] :description
    #   The description of the flow module.
    #
    # @option params [String] :state
    #   The state of flow module.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_module_metadata({
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #     name: "ContactFlowModuleName",
    #     description: "ContactFlowModuleDescription",
    #     state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowModuleMetadata AWS API Documentation
    #
    # @overload update_contact_flow_module_metadata(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_module_metadata(params = {}, options = {})
      req = build_request(:update_contact_flow_module_metadata, params)
      req.send_request(options)
    end

    # The name of the flow.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [String] :name
    #   The name of the flow.
    #
    # @option params [String] :description
    #   The description of the flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_name({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     name: "ContactFlowName",
    #     description: "ContactFlowDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowName AWS API Documentation
    #
    # @overload update_contact_flow_name(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_name(params = {}, options = {})
      req = build_request(:update_contact_flow_name, params)
      req.send_request(options)
    end

    # Updates routing priority and age on the contact (**QueuePriority** and
    # **QueueTimeAdjustmentInSeconds**). These properties can be used to
    # change a customer's position in the queue. For example, you can move
    # a contact to the back of the queue by setting a lower routing priority
    # relative to other contacts in queue; or you can move a contact to the
    # front of the queue by increasing the routing age which will make the
    # contact look artificially older and therefore higher up in the
    # first-in-first-out routing order. Note that adjusting the routing age
    # of a contact affects only its position in queue, and not its actual
    # queue wait time as reported through metrics. These properties can also
    # be updated by using [the Set routing priority / age flow block][1].
    #
    # <note markdown="1"> Either **QueuePriority** or **QueueTimeAdjustmentInSeconds** should be
    # provided within the request body, but not both.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/change-routing-priority.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [Integer] :queue_time_adjustment_seconds
    #   The number of seconds to add or subtract from the contact's routing
    #   age. Contacts are routed to agents on a first-come, first-serve basis.
    #   This means that changing their amount of time in queue compared to
    #   others also changes their position in queue.
    #
    # @option params [Integer] :queue_priority
    #   Priority of the contact in the queue. The default priority for new
    #   contacts is 5. You can raise the priority of a contact compared to
    #   other contacts in the queue by assigning them a higher priority, such
    #   as 1 or 2.
    #
    # @option params [Types::RoutingCriteriaInput] :routing_criteria
    #   Updates the routing criteria on the contact. These properties can be
    #   used to change how a  contact is routed within the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_routing_data({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     queue_time_adjustment_seconds: 1,
    #     queue_priority: 1,
    #     routing_criteria: {
    #       steps: [
    #         {
    #           expiry: {
    #             duration_in_seconds: 1,
    #           },
    #           expression: {
    #             attribute_condition: {
    #               name: "PredefinedAttributeName",
    #               value: "ProficiencyValue",
    #               proficiency_level: 1.0,
    #               range: {
    #                 min_proficiency_level: 1.0,
    #                 max_proficiency_level: 1.0,
    #               },
    #               match_criteria: {
    #                 agents_criteria: {
    #                   agent_ids: ["AgentId"],
    #                 },
    #               },
    #               comparison_operator: "ComparisonOperator",
    #             },
    #             and_expression: [
    #               {
    #                 # recursive Expression
    #               },
    #             ],
    #             or_expression: [
    #               {
    #                 # recursive Expression
    #               },
    #             ],
    #             not_attribute_condition: {
    #               name: "PredefinedAttributeName",
    #               value: "ProficiencyValue",
    #               proficiency_level: 1.0,
    #               range: {
    #                 min_proficiency_level: 1.0,
    #                 max_proficiency_level: 1.0,
    #               },
    #               match_criteria: {
    #                 agents_criteria: {
    #                   agent_ids: ["AgentId"],
    #                 },
    #               },
    #               comparison_operator: "ComparisonOperator",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactRoutingData AWS API Documentation
    #
    # @overload update_contact_routing_data(params = {})
    # @param [Hash] params ({})
    def update_contact_routing_data(params = {}, options = {})
      req = build_request(:update_contact_routing_data, params)
      req.send_request(options)
    end

    # Updates the scheduled time of a task contact that is already
    # scheduled.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :scheduled_time
    #   The timestamp, in Unix Epoch seconds format, at which to start running
    #   the inbound flow. The scheduled time cannot be in the past. It must be
    #   within up to 6 days in future.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_schedule({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     scheduled_time: Time.now, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactSchedule AWS API Documentation
    #
    # @overload update_contact_schedule(params = {})
    # @param [Hash] params ({})
    def update_contact_schedule(params = {}, options = {})
      req = build_request(:update_contact_schedule, params)
      req.send_request(options)
    end

    # Updates an email address metadata. For more information about email
    # addresses, see [Create email addresses][1] in the Amazon Connect
    # Administrator Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :email_address_id
    #   The identifier of the email address.
    #
    # @option params [String] :description
    #   The description of the email address.
    #
    # @option params [String] :display_name
    #   The display name of email address.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::UpdateEmailAddressMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEmailAddressMetadataResponse#email_address_id #email_address_id} => String
    #   * {Types::UpdateEmailAddressMetadataResponse#email_address_arn #email_address_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_address_metadata({
    #     instance_id: "InstanceId", # required
    #     email_address_id: "EmailAddressId", # required
    #     description: "Description",
    #     display_name: "EmailAddressDisplayName",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.email_address_id #=> String
    #   resp.email_address_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateEmailAddressMetadata AWS API Documentation
    #
    # @overload update_email_address_metadata(params = {})
    # @param [Hash] params ({})
    def update_email_address_metadata(params = {}, options = {})
      req = build_request(:update_email_address_metadata, params)
      req.send_request(options)
    end

    # Updates details about a specific evaluation form version in the
    # specified Amazon Connect instance. Question and section identifiers
    # cannot be duplicated within the same evaluation form.
    #
    # This operation does not support partial updates. Instead it does a
    # full update of evaluation form content.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [required, Integer] :evaluation_form_version
    #   A version of the evaluation form to update.
    #
    # @option params [Boolean] :create_new_version
    #   A flag indicating whether the operation must create a new version.
    #
    # @option params [required, String] :title
    #   A title of the evaluation form.
    #
    # @option params [String] :description
    #   The description of the evaluation form.
    #
    # @option params [required, Array<Types::EvaluationFormItem>] :items
    #   Items that are part of the evaluation form. The total number of
    #   sections and questions must not exceed 100 each. Questions must be
    #   contained in a section.
    #
    # @option params [Types::EvaluationFormScoringStrategy] :scoring_strategy
    #   A scoring strategy of the evaluation form.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::UpdateEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEvaluationFormResponse#evaluation_form_id #evaluation_form_id} => String
    #   * {Types::UpdateEvaluationFormResponse#evaluation_form_arn #evaluation_form_arn} => String
    #   * {Types::UpdateEvaluationFormResponse#evaluation_form_version #evaluation_form_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #     create_new_version: false,
    #     title: "EvaluationFormTitle", # required
    #     description: "EvaluationFormDescription",
    #     items: [ # required
    #       {
    #         section: {
    #           title: "EvaluationFormSectionTitle", # required
    #           ref_id: "ReferenceId", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           items: { # required
    #             # recursive EvaluationFormItemsList
    #           },
    #           weight: 1.0,
    #         },
    #         question: {
    #           title: "EvaluationFormQuestionTitle", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           ref_id: "ReferenceId", # required
    #           not_applicable_enabled: false,
    #           question_type: "TEXT", # required, accepts TEXT, SINGLESELECT, NUMERIC
    #           question_type_properties: {
    #             numeric: {
    #               min_value: 1, # required
    #               max_value: 1, # required
    #               options: [
    #                 {
    #                   min_value: 1, # required
    #                   max_value: 1, # required
    #                   score: 1,
    #                   automatic_fail: false,
    #                 },
    #               ],
    #               automation: {
    #                 property_value: {
    #                   label: "OVERALL_CUSTOMER_SENTIMENT_SCORE", # required, accepts OVERALL_CUSTOMER_SENTIMENT_SCORE, OVERALL_AGENT_SENTIMENT_SCORE, NON_TALK_TIME, NON_TALK_TIME_PERCENTAGE, NUMBER_OF_INTERRUPTIONS, CONTACT_DURATION, AGENT_INTERACTION_DURATION, CUSTOMER_HOLD_TIME
    #                 },
    #               },
    #             },
    #             single_select: {
    #               options: [ # required
    #                 {
    #                   ref_id: "ReferenceId", # required
    #                   text: "EvaluationFormSingleSelectQuestionOptionText", # required
    #                   score: 1,
    #                   automatic_fail: false,
    #                 },
    #               ],
    #               display_as: "DROPDOWN", # accepts DROPDOWN, RADIO
    #               automation: {
    #                 options: [ # required
    #                   {
    #                     rule_category: {
    #                       category: "SingleSelectQuestionRuleCategoryAutomationLabel", # required
    #                       condition: "PRESENT", # required, accepts PRESENT, NOT_PRESENT
    #                       option_ref_id: "ReferenceId", # required
    #                     },
    #                   },
    #                 ],
    #                 default_option_ref_id: "ReferenceId",
    #               },
    #             },
    #           },
    #           weight: 1.0,
    #         },
    #       },
    #     ],
    #     scoring_strategy: {
    #       mode: "QUESTION_ONLY", # required, accepts QUESTION_ONLY, SECTION_ONLY
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_id #=> String
    #   resp.evaluation_form_arn #=> String
    #   resp.evaluation_form_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateEvaluationForm AWS API Documentation
    #
    # @overload update_evaluation_form(params = {})
    # @param [Hash] params ({})
    def update_evaluation_form(params = {}, options = {})
      req = build_request(:update_evaluation_form, params)
      req.send_request(options)
    end

    # Updates the hours of operation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier of the hours of operation.
    #
    # @option params [String] :name
    #   The name of the hours of operation.
    #
    # @option params [String] :description
    #   The description of the hours of operation.
    #
    # @option params [String] :time_zone
    #   The time zone of the hours of operation.
    #
    # @option params [Array<Types::HoursOfOperationConfig>] :config
    #   Configuration information of the hours of operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     name: "CommonNameLength127",
    #     description: "UpdateHoursOfOperationDescription",
    #     time_zone: "TimeZone",
    #     config: [
    #       {
    #         day: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         start_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateHoursOfOperation AWS API Documentation
    #
    # @overload update_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def update_hours_of_operation(params = {}, options = {})
      req = build_request(:update_hours_of_operation, params)
      req.send_request(options)
    end

    # Update the hours of operation override.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @option params [required, String] :hours_of_operation_override_id
    #   The identifier for the hours of operation override.
    #
    # @option params [String] :name
    #   The name of the hours of operation override.
    #
    # @option params [String] :description
    #   The description of the hours of operation override.
    #
    # @option params [Array<Types::HoursOfOperationOverrideConfig>] :config
    #   Configuration information for the hours of operation override: day,
    #   start time, and end time.
    #
    # @option params [String] :effective_from
    #   The date from when the hours of operation override would be effective.
    #
    # @option params [String] :effective_till
    #   The date till when the hours of operation override would be effective.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hours_of_operation_override({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     hours_of_operation_override_id: "HoursOfOperationOverrideId", # required
    #     name: "CommonHumanReadableName",
    #     description: "CommonHumanReadableDescription",
    #     config: [
    #       {
    #         day: "SUNDAY", # accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         start_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       },
    #     ],
    #     effective_from: "HoursOfOperationOverrideYearMonthDayDateFormat",
    #     effective_till: "HoursOfOperationOverrideYearMonthDayDateFormat",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateHoursOfOperationOverride AWS API Documentation
    #
    # @overload update_hours_of_operation_override(params = {})
    # @param [Hash] params ({})
    def update_hours_of_operation_override(params = {}, options = {})
      req = build_request(:update_hours_of_operation_override, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates the value for the specified attribute type.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :attribute_type
    #   The type of attribute.
    #
    #   <note markdown="1"> Only allowlisted customers can consume USE\_CUSTOM\_TTS\_VOICES. To
    #   access this feature, contact Amazon Web Services Support for
    #   allowlisting.
    #
    #    </note>
    #
    # @option params [required, String] :value
    #   The value for the attribute. Maximum character limit is 100.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_attribute({
    #     instance_id: "InstanceId", # required
    #     attribute_type: "INBOUND_CALLS", # required, accepts INBOUND_CALLS, OUTBOUND_CALLS, CONTACTFLOW_LOGS, CONTACT_LENS, AUTO_RESOLVE_BEST_VOICES, USE_CUSTOM_TTS_VOICES, EARLY_MEDIA, MULTI_PARTY_CONFERENCE, HIGH_VOLUME_OUTBOUND, ENHANCED_CONTACT_MONITORING, ENHANCED_CHAT_MONITORING, MULTI_PARTY_CHAT_CONFERENCE
    #     value: "InstanceAttributeValue", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateInstanceAttribute AWS API Documentation
    #
    # @overload update_instance_attribute(params = {})
    # @param [Hash] params ({})
    def update_instance_attribute(params = {}, options = {})
      req = build_request(:update_instance_attribute, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates an existing configuration for a resource type. This API is
    # idempotent.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @option params [required, Types::InstanceStorageConfig] :storage_config
    #   The storage configuration for the instance.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_storage_config({
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS, REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS, REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS, EMAIL_MESSAGES
    #     storage_config: { # required
    #       association_id: "AssociationId",
    #       storage_type: "S3", # required, accepts S3, KINESIS_VIDEO_STREAM, KINESIS_STREAM, KINESIS_FIREHOSE
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "Prefix", # required
    #         encryption_config: {
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: "Prefix", # required
    #         retention_period_hours: 1, # required
    #         encryption_config: { # required
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: "ARN", # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: "ARN", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateInstanceStorageConfig AWS API Documentation
    #
    # @overload update_instance_storage_config(params = {})
    # @param [Hash] params ({})
    def update_instance_storage_config(params = {}, options = {})
      req = build_request(:update_instance_storage_config, params)
      req.send_request(options)
    end

    # Instructs Amazon Connect to resume the authentication process. The
    # subsequent actions depend on the request body contents:
    #
    # * **If a code is provided**: Connect retrieves the identity
    #   information from Amazon Cognito and imports it into Connect Customer
    #   Profiles.
    #
    # * **If an error is provided**: The error branch of the Authenticate
    #   Customer block is executed.
    #
    # <note markdown="1"> The API returns a success response to acknowledge the request.
    # However, the interaction and exchange of identity information occur
    # asynchronously after the response is returned.
    #
    #  </note>
    #
    # @option params [required, String] :state
    #   The `state` query parameter that was provided by Cognito in the
    #   `redirectUri`. This will also match the `state` parameter provided in
    #   the `AuthenticationUrl` from the [GetAuthenticationUrl][1] response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetAuthenticationUrl.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :code
    #   The `code` query parameter provided by Cognito in the `redirectUri`.
    #
    # @option params [String] :error
    #   The `error` query parameter provided by Cognito in the `redirectUri`.
    #
    # @option params [String] :error_description
    #   The `error_description` parameter provided by Cognito in the
    #   `redirectUri`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_participant_authentication({
    #     state: "ParticipantToken", # required
    #     instance_id: "InstanceId", # required
    #     code: "AuthorizationCode",
    #     error: "AuthenticationError",
    #     error_description: "AuthenticationErrorDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateParticipantAuthentication AWS API Documentation
    #
    # @overload update_participant_authentication(params = {})
    # @param [Hash] params ({})
    def update_participant_authentication(params = {}, options = {})
      req = build_request(:update_participant_authentication, params)
      req.send_request(options)
    end

    # Updates timeouts for when human chat participants are to be considered
    # idle, and when agents are automatically disconnected from a chat due
    # to idleness. You can set four timers:
    #
    # * Customer idle timeout
    #
    # * Customer auto-disconnect timeout
    #
    # * Agent idle timeout
    #
    # * Agent auto-disconnect timeout
    #
    # For more information about how chat timeouts work, see [Set up chat
    # timeouts for human participants][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [required, Types::UpdateParticipantRoleConfigChannelInfo] :channel_configuration
    #   The Amazon Connect channel you want to configure.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_participant_role_config({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     channel_configuration: { # required
    #       chat: {
    #         participant_timer_config_list: [ # required
    #           {
    #             participant_role: "CUSTOMER", # required, accepts CUSTOMER, AGENT
    #             timer_type: "IDLE", # required, accepts IDLE, DISCONNECT_NONCUSTOMER
    #             timer_value: { # required
    #               participant_timer_action: "Unset", # accepts Unset
    #               participant_timer_duration_in_minutes: 1,
    #             },
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateParticipantRoleConfig AWS API Documentation
    #
    # @overload update_participant_role_config(params = {})
    # @param [Hash] params ({})
    def update_participant_role_config(params = {}, options = {})
      req = build_request(:update_participant_role_config, params)
      req.send_request(options)
    end

    # Updates your claimed phone number from its current Amazon Connect
    # instance or traffic distribution group to another Amazon Connect
    # instance or traffic distribution group in the same Amazon Web Services
    # Region.
    #
    # After using this API, you must verify that the phone number is
    # attached to the correct flow in the target instance or traffic
    # distribution group. You need to do this because the API switches only
    # the phone number to a new instance or traffic distribution group. It
    # doesn't migrate the flow configuration of the phone number, too.
    #
    #  You can call [DescribePhoneNumber][1] API to verify the status of a
    # previous [UpdatePhoneNumber][2] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @option params [String] :target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
    #   distribution groups that phone number inbound traffic is routed
    #   through. You must enter `InstanceId` or `TargetArn`.
    #
    # @option params [String] :instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance. You must enter `InstanceId` or
    #   `TargetArn`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::UpdatePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePhoneNumberResponse#phone_number_id #phone_number_id} => String
    #   * {Types::UpdatePhoneNumberResponse#phone_number_arn #phone_number_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number({
    #     phone_number_id: "PhoneNumberId", # required
    #     target_arn: "ARN",
    #     instance_id: "InstanceId",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_id #=> String
    #   resp.phone_number_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePhoneNumber AWS API Documentation
    #
    # @overload update_phone_number(params = {})
    # @param [Hash] params ({})
    def update_phone_number(params = {}, options = {})
      req = build_request(:update_phone_number, params)
      req.send_request(options)
    end

    # Updates a phone number’s metadata.
    #
    # To verify the status of a previous UpdatePhoneNumberMetadata
    # operation, call the [DescribePhoneNumber][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    #
    # @option params [required, String] :phone_number_id
    #   The Amazon Resource Name (ARN) or resource ID of the phone number.
    #
    # @option params [String] :phone_number_description
    #   The description of the phone number.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number_metadata({
    #     phone_number_id: "PhoneNumberId", # required
    #     phone_number_description: "PhoneNumberDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePhoneNumberMetadata AWS API Documentation
    #
    # @overload update_phone_number_metadata(params = {})
    # @param [Hash] params ({})
    def update_phone_number_metadata(params = {}, options = {})
      req = build_request(:update_phone_number_metadata, params)
      req.send_request(options)
    end

    # Updates a predefined attribute for the specified Amazon Connect
    # instance. *Predefined attributes* are attributes in an Amazon Connect
    # instance that can be used to route contacts to an agent or pools of
    # agents within a queue. For more information, see [Create predefined
    # attributes for routing contacts to agents][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, String] :name
    #   The name of the predefined attribute.
    #
    # @option params [Types::PredefinedAttributeValues] :values
    #   The values of the predefined attribute.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_predefined_attribute({
    #     instance_id: "InstanceId", # required
    #     name: "PredefinedAttributeName", # required
    #     values: {
    #       string_list: ["PredefinedAttributeStringValue"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePredefinedAttribute AWS API Documentation
    #
    # @overload update_predefined_attribute(params = {})
    # @param [Hash] params ({})
    def update_predefined_attribute(params = {}, options = {})
      req = build_request(:update_predefined_attribute, params)
      req.send_request(options)
    end

    # Updates a prompt.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :prompt_id
    #   A unique identifier for the prompt.
    #
    # @option params [String] :name
    #   The name of the prompt.
    #
    # @option params [String] :description
    #   A description of the prompt.
    #
    # @option params [String] :s3_uri
    #   The URI for the S3 bucket where the prompt is stored. You can provide
    #   S3 pre-signed URLs returned by the [GetPromptFile][1] API instead of
    #   providing S3 URIs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html
    #
    # @return [Types::UpdatePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePromptResponse#prompt_arn #prompt_arn} => String
    #   * {Types::UpdatePromptResponse#prompt_id #prompt_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_prompt({
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #     name: "CommonNameLength127",
    #     description: "PromptDescription",
    #     s3_uri: "S3Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_arn #=> String
    #   resp.prompt_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePrompt AWS API Documentation
    #
    # @overload update_prompt(params = {})
    # @param [Hash] params ({})
    def update_prompt(params = {}, options = {})
      req = build_request(:update_prompt, params)
      req.send_request(options)
    end

    # Updates the hours of operation for the specified queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueHoursOfOperation AWS API Documentation
    #
    # @overload update_queue_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def update_queue_hours_of_operation(params = {}, options = {})
      req = build_request(:update_queue_hours_of_operation, params)
      req.send_request(options)
    end

    # Updates the maximum number of contacts allowed in a queue before it is
    # considered full.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [Integer] :max_contacts
    #   The maximum number of contacts that can be in the queue before it is
    #   considered full.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_max_contacts({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     max_contacts: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueMaxContacts AWS API Documentation
    #
    # @overload update_queue_max_contacts(params = {})
    # @param [Hash] params ({})
    def update_queue_max_contacts(params = {}, options = {})
      req = build_request(:update_queue_max_contacts, params)
      req.send_request(options)
    end

    # Updates the name and description of a queue. At least `Name` or
    # `Description` must be provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [String] :name
    #   The name of the queue.
    #
    # @option params [String] :description
    #   The description of the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_name({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     name: "CommonNameLength127",
    #     description: "QueueDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueName AWS API Documentation
    #
    # @overload update_queue_name(params = {})
    # @param [Hash] params ({})
    def update_queue_name(params = {}, options = {})
      req = build_request(:update_queue_name, params)
      req.send_request(options)
    end

    # Updates the outbound caller ID name, number, and outbound whisper flow
    # for a specified queue.
    #
    # * If the phone number is claimed to a traffic distribution group that
    #   was created in the same Region as the Amazon Connect instance where
    #   you are calling this API, then you can use a full phone number ARN
    #   or a UUID for `OutboundCallerIdNumberId`. However, if the phone
    #   number is claimed to a traffic distribution group that is in one
    #   Region, and you are calling this API from an instance in another
    #   Amazon Web Services Region that is associated with the traffic
    #   distribution group, you must provide a full phone number ARN. If a
    #   UUID is provided in this scenario, you will receive a
    #   `ResourceNotFoundException`.
    #
    # * Only use the phone number ARN format that doesn't contain
    #   `instance` in the path, for example,
    #   `arn:aws:connect:us-east-1:1234567890:phone-number/uuid`. This is
    #   the same ARN format that is returned when you call the
    #   [ListPhoneNumbersV2][1] API.
    #
    # * If you plan to use IAM policies to allow/deny access to this API for
    #   phone number resources claimed to a traffic distribution group, see
    #   [Allow or Deny queue API actions for phone numbers in a replica
    #   Region][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, Types::OutboundCallerConfig] :outbound_caller_config
    #   The outbound caller ID name, number, and outbound whisper flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_outbound_caller_config({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     outbound_caller_config: { # required
    #       outbound_caller_id_name: "OutboundCallerIdName",
    #       outbound_caller_id_number_id: "PhoneNumberId",
    #       outbound_flow_id: "ContactFlowId",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueOutboundCallerConfig AWS API Documentation
    #
    # @overload update_queue_outbound_caller_config(params = {})
    # @param [Hash] params ({})
    def update_queue_outbound_caller_config(params = {}, options = {})
      req = build_request(:update_queue_outbound_caller_config, params)
      req.send_request(options)
    end

    # Updates the outbound email address Id for a specified queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, Types::OutboundEmailConfig] :outbound_email_config
    #   The outbound email address ID for a specified queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_outbound_email_config({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     outbound_email_config: { # required
    #       outbound_email_address_id: "EmailAddressId",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueOutboundEmailConfig AWS API Documentation
    #
    # @overload update_queue_outbound_email_config(params = {})
    # @param [Hash] params ({})
    def update_queue_outbound_email_config(params = {}, options = {})
      req = build_request(:update_queue_outbound_email_config, params)
      req.send_request(options)
    end

    # Updates the status of the queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, String] :status
    #   The status of the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_status({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     status: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueStatus AWS API Documentation
    #
    # @overload update_queue_status(params = {})
    # @param [Hash] params ({})
    def update_queue_status(params = {}, options = {})
      req = build_request(:update_queue_status, params)
      req.send_request(options)
    end

    # Updates the configuration settings for the specified quick connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @option params [required, Types::QuickConnectConfig] :quick_connect_config
    #   Information about the configuration settings for the quick connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_connect_config({
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #     quick_connect_config: { # required
    #       quick_connect_type: "USER", # required, accepts USER, QUEUE, PHONE_NUMBER
    #       user_config: {
    #         user_id: "UserId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       queue_config: {
    #         queue_id: "QueueId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       phone_config: {
    #         phone_number: "PhoneNumber", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQuickConnectConfig AWS API Documentation
    #
    # @overload update_quick_connect_config(params = {})
    # @param [Hash] params ({})
    def update_quick_connect_config(params = {}, options = {})
      req = build_request(:update_quick_connect_config, params)
      req.send_request(options)
    end

    # Updates the name and description of a quick connect. The request
    # accepts the following data in JSON format. At least `Name` or
    # `Description` must be provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @option params [String] :name
    #   The name of the quick connect.
    #
    # @option params [String] :description
    #   The description of the quick connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_connect_name({
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #     name: "QuickConnectName",
    #     description: "UpdateQuickConnectDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQuickConnectName AWS API Documentation
    #
    # @overload update_quick_connect_name(params = {})
    # @param [Hash] params ({})
    def update_quick_connect_name(params = {}, options = {})
      req = build_request(:update_quick_connect_name, params)
      req.send_request(options)
    end

    # Whether agents with this routing profile will have their routing order
    # calculated based on *time since their last inbound contact* or
    # *longest idle time*.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, String] :agent_availability_timer
    #   Whether agents with this routing profile will have their routing order
    #   calculated based on *time since their last inbound contact* or
    #   *longest idle time*.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_agent_availability_timer({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     agent_availability_timer: "TIME_SINCE_LAST_ACTIVITY", # required, accepts TIME_SINCE_LAST_ACTIVITY, TIME_SINCE_LAST_INBOUND
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileAgentAvailabilityTimer AWS API Documentation
    #
    # @overload update_routing_profile_agent_availability_timer(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_agent_availability_timer(params = {}, options = {})
      req = build_request(:update_routing_profile_agent_availability_timer, params)
      req.send_request(options)
    end

    # Updates the channels that agents can handle in the Contact Control
    # Panel (CCP) for a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::MediaConcurrency>] :media_concurrencies
    #   The channels that agents can handle in the Contact Control Panel
    #   (CCP).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_concurrency({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     media_concurrencies: [ # required
    #       {
    #         channel: "VOICE", # required, accepts VOICE, CHAT, TASK, EMAIL
    #         concurrency: 1, # required
    #         cross_channel_behavior: {
    #           behavior_type: "ROUTE_CURRENT_CHANNEL_ONLY", # required, accepts ROUTE_CURRENT_CHANNEL_ONLY, ROUTE_ANY_CHANNEL
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileConcurrency AWS API Documentation
    #
    # @overload update_routing_profile_concurrency(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_concurrency(params = {}, options = {})
      req = build_request(:update_routing_profile_concurrency, params)
      req.send_request(options)
    end

    # Updates the default outbound queue of a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, String] :default_outbound_queue_id
    #   The identifier for the default outbound queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_default_outbound_queue({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     default_outbound_queue_id: "QueueId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileDefaultOutboundQueue AWS API Documentation
    #
    # @overload update_routing_profile_default_outbound_queue(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_default_outbound_queue(params = {}, options = {})
      req = build_request(:update_routing_profile_default_outbound_queue, params)
      req.send_request(options)
    end

    # Updates the name and description of a routing profile. The request
    # accepts the following data in JSON format. At least `Name` or
    # `Description` must be provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [String] :name
    #   The name of the routing profile. Must not be more than 127 characters.
    #
    # @option params [String] :description
    #   The description of the routing profile. Must not be more than 250
    #   characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_name({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     name: "RoutingProfileName",
    #     description: "RoutingProfileDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileName AWS API Documentation
    #
    # @overload update_routing_profile_name(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_name(params = {}, options = {})
      req = build_request(:update_routing_profile_name, params)
      req.send_request(options)
    end

    # Updates the properties associated with a set of queues for a routing
    # profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The queues to be updated for this routing profile. Queues must first
    #   be associated to the routing profile. You can do this using
    #   AssociateRoutingProfileQueues.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_configs: [ # required
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT, TASK, EMAIL
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileQueues AWS API Documentation
    #
    # @overload update_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_queues(params = {}, options = {})
      req = build_request(:update_routing_profile_queues, params)
      req.send_request(options)
    end

    # Updates a rule for the specified Amazon Connect instance.
    #
    # Use the [Rules Function language][1] to code conditions for the rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html
    #
    # @option params [required, String] :rule_id
    #   A unique identifier for the rule.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the rule. You can change the name only if
    #   `TriggerEventSource` is one of the following values:
    #   `OnZendeskTicketCreate` \| `OnZendeskTicketStatusUpdate` \|
    #   `OnSalesforceCaseCreate`
    #
    # @option params [required, String] :function
    #   The conditions of the rule.
    #
    # @option params [required, Array<Types::RuleAction>] :actions
    #   A list of actions to be run when the rule is triggered.
    #
    # @option params [required, String] :publish_status
    #   The publish status of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule({
    #     rule_id: "RuleId", # required
    #     instance_id: "InstanceId", # required
    #     name: "RuleName", # required
    #     function: "RuleFunction", # required
    #     actions: [ # required
    #       {
    #         action_type: "CREATE_TASK", # required, accepts CREATE_TASK, ASSIGN_CONTACT_CATEGORY, GENERATE_EVENTBRIDGE_EVENT, SEND_NOTIFICATION, CREATE_CASE, UPDATE_CASE, ASSIGN_SLA, END_ASSOCIATED_TASKS, SUBMIT_AUTO_EVALUATION
    #         task_action: {
    #           name: "TaskNameExpression", # required
    #           description: "TaskDescriptionExpression",
    #           contact_flow_id: "ContactFlowId", # required
    #           references: {
    #             "ReferenceKey" => {
    #               value: "ReferenceValue",
    #               type: "URL", # required, accepts URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
    #               status: "AVAILABLE", # accepts AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED
    #               arn: "ReferenceArn",
    #               status_reason: "ReferenceStatusReason",
    #             },
    #           },
    #         },
    #         event_bridge_action: {
    #           name: "EventBridgeActionName", # required
    #         },
    #         assign_contact_category_action: {
    #         },
    #         send_notification_action: {
    #           delivery_method: "EMAIL", # required, accepts EMAIL
    #           subject: "Subject",
    #           content: "Content", # required
    #           content_type: "PLAIN_TEXT", # required, accepts PLAIN_TEXT
    #           recipient: { # required
    #             user_tags: {
    #               "String" => "String",
    #             },
    #             user_ids: ["UserId"],
    #           },
    #         },
    #         create_case_action: {
    #           fields: [ # required
    #             {
    #               id: "FieldValueId", # required
    #               value: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue",
    #               },
    #             },
    #           ],
    #           template_id: "TemplateId", # required
    #         },
    #         update_case_action: {
    #           fields: [ # required
    #             {
    #               id: "FieldValueId", # required
    #               value: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue",
    #               },
    #             },
    #           ],
    #         },
    #         assign_sla_action: {
    #           sla_assignment_type: "CASES", # required, accepts CASES
    #           case_sla_configuration: {
    #             name: "SlaName", # required
    #             type: "CaseField", # required, accepts CaseField
    #             field_id: "FieldValueId",
    #             target_field_values: [
    #               {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue",
    #               },
    #             ],
    #             target_sla_minutes: 1, # required
    #           },
    #         },
    #         end_associated_tasks_action: {
    #         },
    #         submit_auto_evaluation_action: {
    #           evaluation_form_id: "EvaluationFormId", # required
    #         },
    #       },
    #     ],
    #     publish_status: "DRAFT", # required, accepts DRAFT, PUBLISHED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRule AWS API Documentation
    #
    # @overload update_rule(params = {})
    # @param [Hash] params ({})
    def update_rule(params = {}, options = {})
      req = build_request(:update_rule, params)
      req.send_request(options)
    end

    # Updates a security profile.
    #
    # For information about security profiles, see [Security Profiles][1] in
    # the *Amazon Connect Administrator Guide*. For a mapping of the API
    # name and user interface name of the security profile permissions, see
    # [List of security profile permissions][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [String] :description
    #   The description of the security profile.
    #
    # @option params [Array<String>] :permissions
    #   The permissions granted to a security profile. For a list of valid
    #   permissions, see [List of security profile permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Hash<String,String>] :allowed_access_control_tags
    #   The list of tags that a security profile uses to restrict access to
    #   resources in Amazon Connect.
    #
    # @option params [Array<String>] :tag_restricted_resources
    #   The list of resources that a security profile applies tag restrictions
    #   to in Amazon Connect.
    #
    # @option params [Array<Types::Application>] :applications
    #   A list of the third-party application's metadata.
    #
    # @option params [Array<String>] :hierarchy_restricted_resources
    #   The list of resources that a security profile applies hierarchy
    #   restrictions to in Amazon Connect. Following are acceptable
    #   ResourceNames: `User`.
    #
    # @option params [String] :allowed_access_control_hierarchy_group_id
    #   The identifier of the hierarchy group that a security profile uses to
    #   restrict access to resources in Amazon Connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_profile({
    #     description: "SecurityProfileDescription",
    #     permissions: ["SecurityProfilePermission"],
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #     allowed_access_control_tags: {
    #       "SecurityProfilePolicyKey" => "SecurityProfilePolicyValue",
    #     },
    #     tag_restricted_resources: ["TagRestrictedResourceName"],
    #     applications: [
    #       {
    #         namespace: "Namespace",
    #         application_permissions: ["Permission"],
    #       },
    #     ],
    #     hierarchy_restricted_resources: ["HierarchyRestrictedResourceName"],
    #     allowed_access_control_hierarchy_group_id: "HierarchyGroupId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateSecurityProfile AWS API Documentation
    #
    # @overload update_security_profile(params = {})
    # @param [Hash] params ({})
    def update_security_profile(params = {}, options = {})
      req = build_request(:update_security_profile, params)
      req.send_request(options)
    end

    # Updates details about a specific task template in the specified Amazon
    # Connect instance. This operation does not support partial updates.
    # Instead it does a full update of template content.
    #
    # @option params [required, String] :task_template_id
    #   A unique identifier for the task template.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :name
    #   The name of the task template.
    #
    # @option params [String] :description
    #   The description of the task template.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow that runs by default when a task is created
    #   by referencing this template.
    #
    # @option params [String] :self_assign_flow_id
    #   The ContactFlowId for the flow that will be run if this template is
    #   used to create a self-assigned task.
    #
    # @option params [Types::TaskTemplateConstraints] :constraints
    #   Constraints that are applicable to the fields listed.
    #
    # @option params [Types::TaskTemplateDefaults] :defaults
    #   The default values for fields when a task is created by referencing
    #   this template.
    #
    # @option params [String] :status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to it.
    #   Tasks can only be created from `ACTIVE` templates. If a template is
    #   marked as `INACTIVE`, then a task that refers to this template cannot
    #   be created.
    #
    # @option params [Array<Types::TaskTemplateField>] :fields
    #   Fields that are part of the template.
    #
    # @return [Types::UpdateTaskTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTaskTemplateResponse#instance_id #instance_id} => String
    #   * {Types::UpdateTaskTemplateResponse#id #id} => String
    #   * {Types::UpdateTaskTemplateResponse#arn #arn} => String
    #   * {Types::UpdateTaskTemplateResponse#name #name} => String
    #   * {Types::UpdateTaskTemplateResponse#description #description} => String
    #   * {Types::UpdateTaskTemplateResponse#contact_flow_id #contact_flow_id} => String
    #   * {Types::UpdateTaskTemplateResponse#self_assign_flow_id #self_assign_flow_id} => String
    #   * {Types::UpdateTaskTemplateResponse#constraints #constraints} => Types::TaskTemplateConstraints
    #   * {Types::UpdateTaskTemplateResponse#defaults #defaults} => Types::TaskTemplateDefaults
    #   * {Types::UpdateTaskTemplateResponse#fields #fields} => Array&lt;Types::TaskTemplateField&gt;
    #   * {Types::UpdateTaskTemplateResponse#status #status} => String
    #   * {Types::UpdateTaskTemplateResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateTaskTemplateResponse#created_time #created_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task_template({
    #     task_template_id: "TaskTemplateId", # required
    #     instance_id: "InstanceId", # required
    #     name: "TaskTemplateName",
    #     description: "TaskTemplateDescription",
    #     contact_flow_id: "ContactFlowId",
    #     self_assign_flow_id: "ContactFlowId",
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #       read_only_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #       invisible_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #           default_value: "TaskTemplateFieldValue",
    #         },
    #       ],
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     fields: [
    #       {
    #         id: { # required
    #           name: "TaskTemplateFieldName",
    #         },
    #         description: "TaskTemplateFieldDescription",
    #         type: "NAME", # accepts NAME, DESCRIPTION, SCHEDULED_TIME, QUICK_CONNECT, URL, NUMBER, TEXT, TEXT_AREA, DATE_TIME, BOOLEAN, SINGLE_SELECT, EMAIL, SELF_ASSIGN, EXPIRY_DURATION
    #         single_select_options: ["TaskTemplateSingleSelectOption"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.contact_flow_id #=> String
    #   resp.self_assign_flow_id #=> String
    #   resp.constraints.required_fields #=> Array
    #   resp.constraints.required_fields[0].id.name #=> String
    #   resp.constraints.read_only_fields #=> Array
    #   resp.constraints.read_only_fields[0].id.name #=> String
    #   resp.constraints.invisible_fields #=> Array
    #   resp.constraints.invisible_fields[0].id.name #=> String
    #   resp.defaults.default_field_values #=> Array
    #   resp.defaults.default_field_values[0].id.name #=> String
    #   resp.defaults.default_field_values[0].default_value #=> String
    #   resp.fields #=> Array
    #   resp.fields[0].id.name #=> String
    #   resp.fields[0].description #=> String
    #   resp.fields[0].type #=> String, one of "NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL", "SELF_ASSIGN", "EXPIRY_DURATION"
    #   resp.fields[0].single_select_options #=> Array
    #   resp.fields[0].single_select_options[0] #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.last_modified_time #=> Time
    #   resp.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTaskTemplate AWS API Documentation
    #
    # @overload update_task_template(params = {})
    # @param [Hash] params ({})
    def update_task_template(params = {}, options = {})
      req = build_request(:update_task_template, params)
      req.send_request(options)
    end

    # Updates the traffic distribution for a given traffic distribution
    # group.
    #
    # When you shift telephony traffic, also shift agents and/or agent
    # sign-ins to ensure they can handle the calls in the other Region. If
    # you don't shift the agents, voice calls will go to the shifted Region
    # but there won't be any agents available to receive the calls.
    #
    # <note markdown="1"> The `SignInConfig` distribution is available only on a default
    # `TrafficDistributionGroup` (see the `IsDefault` parameter in the
    # [TrafficDistributionGroup][1] data type). If you call
    # `UpdateTrafficDistribution` with a modified `SignInConfig` and a
    # non-default `TrafficDistributionGroup`, an `InvalidRequestException`
    # is returned.
    #
    #  </note>
    #
    # For more information about updating a traffic distribution group, see
    # [Update telephony traffic distribution across Amazon Web Services
    # Regions ][2] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/update-telephony-traffic-distribution.html
    #
    # @option params [required, String] :id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the traffic
    #   distribution group was created. The ARN must be provided if the call
    #   is from the replicated Region.
    #
    # @option params [Types::TelephonyConfig] :telephony_config
    #   The distribution of traffic between the instance and its replica(s).
    #
    # @option params [Types::SignInConfig] :sign_in_config
    #   The distribution that determines which Amazon Web Services Regions
    #   should be used to sign in agents in to both the instance and its
    #   replica(s).
    #
    # @option params [Types::AgentConfig] :agent_config
    #   The distribution of agents between the instance and its replica(s).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_traffic_distribution({
    #     id: "TrafficDistributionGroupIdOrArn", # required
    #     telephony_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           percentage: 1, # required
    #         },
    #       ],
    #     },
    #     sign_in_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           enabled: false, # required
    #         },
    #       ],
    #     },
    #     agent_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           percentage: 1, # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTrafficDistribution AWS API Documentation
    #
    # @overload update_traffic_distribution(params = {})
    # @param [Hash] params ({})
    def update_traffic_distribution(params = {}, options = {})
      req = build_request(:update_traffic_distribution, params)
      req.send_request(options)
    end

    # Assigns the specified hierarchy group to the specified user.
    #
    # @option params [String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy({
    #     hierarchy_group_id: "HierarchyGroupId",
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchy AWS API Documentation
    #
    # @overload update_user_hierarchy(params = {})
    # @param [Hash] params ({})
    def update_user_hierarchy(params = {}, options = {})
      req = build_request(:update_user_hierarchy, params)
      req.send_request(options)
    end

    # Updates the name of the user hierarchy group.
    #
    # @option params [required, String] :name
    #   The name of the hierarchy group. Must not be more than 100 characters.
    #
    # @option params [required, String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy_group_name({
    #     name: "HierarchyGroupName", # required
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchyGroupName AWS API Documentation
    #
    # @overload update_user_hierarchy_group_name(params = {})
    # @param [Hash] params ({})
    def update_user_hierarchy_group_name(params = {}, options = {})
      req = build_request(:update_user_hierarchy_group_name, params)
      req.send_request(options)
    end

    # Updates the user hierarchy structure: add, remove, and rename user
    # hierarchy levels.
    #
    # @option params [required, Types::HierarchyStructureUpdate] :hierarchy_structure
    #   The hierarchy levels to update.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy_structure({
    #     hierarchy_structure: { # required
    #       level_one: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_two: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_three: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_four: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_five: {
    #         name: "HierarchyLevelName", # required
    #       },
    #     },
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchyStructure AWS API Documentation
    #
    # @overload update_user_hierarchy_structure(params = {})
    # @param [Hash] params ({})
    def update_user_hierarchy_structure(params = {}, options = {})
      req = build_request(:update_user_hierarchy_structure, params)
      req.send_request(options)
    end

    # Updates the identity information for the specified user.
    #
    # We strongly recommend limiting who has the ability to invoke
    # `UpdateUserIdentityInfo`. Someone with that ability can change the
    # login credentials of other users by changing their email address. This
    # poses a security risk to your organization. They can change the email
    # address of a user to the attacker's email address, and then reset the
    # password through email. For more information, see [Best Practices for
    # Security Profiles][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html
    #
    # @option params [required, Types::UserIdentityInfo] :identity_info
    #   The identity information for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_identity_info({
    #     identity_info: { # required
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #       secondary_email: "Email",
    #       mobile: "PhoneNumber",
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserIdentityInfo AWS API Documentation
    #
    # @overload update_user_identity_info(params = {})
    # @param [Hash] params ({})
    def update_user_identity_info(params = {}, options = {})
      req = build_request(:update_user_identity_info, params)
      req.send_request(options)
    end

    # Updates the phone configuration settings for the specified user.
    #
    # @option params [required, Types::UserPhoneConfig] :phone_config
    #   Information about phone configuration settings for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_phone_config({
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber",
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserPhoneConfig AWS API Documentation
    #
    # @overload update_user_phone_config(params = {})
    # @param [Hash] params ({})
    def update_user_phone_config(params = {}, options = {})
      req = build_request(:update_user_phone_config, params)
      req.send_request(options)
    end

    # Updates the properties associated with the proficiencies of a user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, Array<Types::UserProficiency>] :user_proficiencies
    #   The proficiencies to be updated for the user. Proficiencies must first
    #   be associated to the user. You can do this using
    #   AssociateUserProficiencies API.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_proficiencies({
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #     user_proficiencies: [ # required
    #       {
    #         attribute_name: "PredefinedAttributeName", # required
    #         attribute_value: "PredefinedAttributeStringValue", # required
    #         level: 1.0, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserProficiencies AWS API Documentation
    #
    # @overload update_user_proficiencies(params = {})
    # @param [Hash] params ({})
    def update_user_proficiencies(params = {}, options = {})
      req = build_request(:update_user_proficiencies, params)
      req.send_request(options)
    end

    # Assigns the specified routing profile to the specified user.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_routing_profile({
    #     routing_profile_id: "RoutingProfileId", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserRoutingProfile AWS API Documentation
    #
    # @overload update_user_routing_profile(params = {})
    # @param [Hash] params ({})
    def update_user_routing_profile(params = {}, options = {})
      req = build_request(:update_user_routing_profile, params)
      req.send_request(options)
    end

    # Assigns the specified security profiles to the specified user.
    #
    # @option params [required, Array<String>] :security_profile_ids
    #   The identifiers of the security profiles for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_security_profiles({
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserSecurityProfiles AWS API Documentation
    #
    # @overload update_user_security_profiles(params = {})
    # @param [Hash] params ({})
    def update_user_security_profiles(params = {}, options = {})
      req = build_request(:update_user_security_profiles, params)
      req.send_request(options)
    end

    # Updates the view content of the given view identifier in the specified
    # Amazon Connect instance.
    #
    # It performs content validation if `Status` is set to `SAVED` and
    # performs full content validation if `Status` is `PUBLISHED`. Note that
    # the `$SAVED` alias' content will always be updated, but the `$LATEST`
    # alias' content will only be updated if `Status` is `PUBLISHED`.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #
    # @option params [required, String] :status
    #   Indicates the view status as either `SAVED` or `PUBLISHED`. The
    #   `PUBLISHED` status will initiate validation on the content.
    #
    # @option params [required, Types::ViewInputContent] :content
    #   View content containing all content necessary to render a view except
    #   for runtime input data and the runtime input schema, which is
    #   auto-generated by this operation.
    #
    #   The total uncompressed content has a maximum file size of 400kB.
    #
    # @return [Types::UpdateViewContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateViewContentResponse#view #view} => Types::View
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_view_content({
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     status: "PUBLISHED", # required, accepts PUBLISHED, SAVED
    #     content: { # required
    #       template: "ViewTemplate",
    #       actions: ["ViewAction"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.view.id #=> String
    #   resp.view.arn #=> String
    #   resp.view.name #=> String
    #   resp.view.status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.view.type #=> String, one of "CUSTOMER_MANAGED", "AWS_MANAGED"
    #   resp.view.description #=> String
    #   resp.view.version #=> Integer
    #   resp.view.version_description #=> String
    #   resp.view.content.input_schema #=> String
    #   resp.view.content.template #=> String
    #   resp.view.content.actions #=> Array
    #   resp.view.content.actions[0] #=> String
    #   resp.view.tags #=> Hash
    #   resp.view.tags["TagKey"] #=> String
    #   resp.view.created_time #=> Time
    #   resp.view.last_modified_time #=> Time
    #   resp.view.view_content_sha_256 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateViewContent AWS API Documentation
    #
    # @overload update_view_content(params = {})
    # @param [Hash] params ({})
    def update_view_content(params = {}, options = {})
      req = build_request(:update_view_content, params)
      req.send_request(options)
    end

    # Updates the view metadata. Note that either `Name` or `Description`
    # must be provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #
    # @option params [String] :name
    #   The name of the view.
    #
    # @option params [String] :description
    #   The description of the view.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_view_metadata({
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     name: "ViewName",
    #     description: "ViewDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateViewMetadata AWS API Documentation
    #
    # @overload update_view_metadata(params = {})
    # @param [Hash] params ({})
    def update_view_metadata(params = {}, options = {})
      req = build_request(:update_view_metadata, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Connect')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-connect'
      context[:gem_version] = '1.215.0'
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
