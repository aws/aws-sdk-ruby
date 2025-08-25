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
require 'aws-sdk-core/plugins/event_stream_configuration'

module Aws::CloudWatchLogs
  # An API client for CloudWatchLogs.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudWatchLogs::Client.new(
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

    @identifier = :cloudwatchlogs

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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::CloudWatchLogs::Plugins::Endpoints)

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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Aws::CloudWatchLogs::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CloudWatchLogs::EndpointParameters`.
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

    # Associates the specified KMS key with either one log group in the
    # account, or with all stored CloudWatch Logs query insights results in
    # the account.
    #
    # When you use `AssociateKmsKey`, you specify either the `logGroupName`
    # parameter or the `resourceIdentifier` parameter. You can't specify
    # both of those parameters in the same operation.
    #
    # * Specify the `logGroupName` parameter to cause log events ingested
    #   into that log group to be encrypted with that key. Only the log
    #   events ingested after the key is associated are encrypted with that
    #   key.
    #
    #   Associating a KMS key with a log group overrides any existing
    #   associations between the log group and a KMS key. After a KMS key is
    #   associated with a log group, all newly ingested data for the log
    #   group is encrypted using the KMS key. This association is stored as
    #   long as the data encrypted with the KMS key is still within
    #   CloudWatch Logs. This enables CloudWatch Logs to decrypt this data
    #   whenever it is requested.
    #
    #   Associating a key with a log group does not cause the results of
    #   queries of that log group to be encrypted with that key. To have
    #   query results encrypted with a KMS key, you must use an
    #   `AssociateKmsKey` operation with the `resourceIdentifier` parameter
    #   that specifies a `query-result` resource.
    #
    # * Specify the `resourceIdentifier` parameter with a `query-result`
    #   resource, to use that key to encrypt the stored results of all
    #   future [StartQuery][1] operations in the account. The response from
    #   a [GetQueryResults][2] operation will still return the query results
    #   in plain text.
    #
    #   Even if you have not associated a key with your query results, the
    #   query results are encrypted when stored, using the default
    #   CloudWatch Logs method.
    #
    #   If you run a query from a monitoring account that queries logs in a
    #   source account, the query results key from the monitoring account,
    #   if any, is used.
    #
    # If you delete the key that is used to encrypt log events or log group
    # query results, then all the associated stored log events or query
    # results that were encrypted with that key will be unencryptable and
    # unusable.
    #
    # <note markdown="1"> CloudWatch Logs supports only symmetric KMS keys. Do not associate an
    # asymmetric KMS key with your log group or query results. For more
    # information, see [Using Symmetric and Asymmetric Keys][3].
    #
    #  </note>
    #
    # It can take up to 5 minutes for this operation to take effect.
    #
    # If you attempt to associate a KMS key with a log group but the KMS key
    # does not exist or the KMS key is disabled, you receive an
    # `InvalidParameterException` error.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    #   In your `AssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    # @option params [required, String] :kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key to use when encrypting
    #   log data. This must be a symmetric KMS key. For more information, see
    #   [Amazon Resource Names][1] and [Using Symmetric and Asymmetric
    #   Keys][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #
    # @option params [String] :resource_identifier
    #   Specifies the target for this operation. You must specify one of the
    #   following:
    #
    #   * Specify the following ARN to have future [GetQueryResults][1]
    #     operations in this account encrypt the results with the specified
    #     KMS key. Replace *REGION* and *ACCOUNT\_ID* with your Region and
    #     account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:query-result:*`
    #
    #   * Specify the ARN of a log group to have CloudWatch Logs use the KMS
    #     key to encrypt log events that are ingested and stored by that log
    #     group. The log group ARN must be in the following format. Replace
    #     *REGION* and *ACCOUNT\_ID* with your Region and account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:log-group:LOG_GROUP_NAME `
    #
    #   In your `AssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_kms_key({
    #     log_group_name: "LogGroupName",
    #     kms_key_id: "KmsKeyId", # required
    #     resource_identifier: "ResourceIdentifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AssociateKmsKey AWS API Documentation
    #
    # @overload associate_kms_key(params = {})
    # @param [Hash] params ({})
    def associate_kms_key(params = {}, options = {})
      req = build_request(:associate_kms_key, params)
      req.send_request(options)
    end

    # Cancels the specified export task.
    #
    # The task must be in the `PENDING` or `RUNNING` state.
    #
    # @option params [required, String] :task_id
    #   The ID of the export task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_export_task({
    #     task_id: "ExportTaskId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CancelExportTask AWS API Documentation
    #
    # @overload cancel_export_task(params = {})
    # @param [Hash] params ({})
    def cancel_export_task(params = {}, options = {})
      req = build_request(:cancel_export_task, params)
      req.send_request(options)
    end

    # Creates a *delivery*. A delivery is a connection between a logical
    # *delivery source* and a logical *delivery destination* that you have
    # already created.
    #
    # Only some Amazon Web Services services support being configured as a
    # delivery source using this operation. These services are listed as
    # **Supported \[V2 Permissions\]** in the table at [Enabling logging
    # from Amazon Web Services services.][1]
    #
    # A delivery destination can represent a log group in CloudWatch Logs,
    # an Amazon S3 bucket, a delivery stream in Firehose, or X-Ray.
    #
    # To configure logs delivery between a supported Amazon Web Services
    # service and a destination, you must do the following:
    #
    # * Create a delivery source, which is a logical object that represents
    #   the resource that is actually sending the logs. For more
    #   information, see [PutDeliverySource][2].
    #
    # * Create a *delivery destination*, which is a logical object that
    #   represents the actual delivery destination. For more information,
    #   see [PutDeliveryDestination][3].
    #
    # * If you are delivering logs cross-account, you must use
    #   [PutDeliveryDestinationPolicy][4] in the destination account to
    #   assign an IAM policy to the destination. This policy allows delivery
    #   to that destination.
    #
    # * Use `CreateDelivery` to create a *delivery* by pairing exactly one
    #   delivery source and one delivery destination.
    #
    # You can configure a single delivery source to send logs to multiple
    # destinations by creating multiple deliveries. You can also create
    # multiple deliveries to configure multiple delivery sources to send
    # logs to the same delivery destination.
    #
    # To update an existing delivery configuration, use
    # [UpdateDeliveryConfiguration][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
    # [5]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html
    #
    # @option params [required, String] :delivery_source_name
    #   The name of the delivery source to use for this delivery.
    #
    # @option params [required, String] :delivery_destination_arn
    #   The ARN of the delivery destination to use for this delivery.
    #
    # @option params [Array<String>] :record_fields
    #   The list of record fields to be delivered to the destination, in
    #   order. If the delivery's log source has mandatory fields, they must
    #   be included in this list.
    #
    # @option params [String] :field_delimiter
    #   The field delimiter to use between record fields when the final output
    #   format of a delivery is in `Plain`, `W3C`, or `Raw` format.
    #
    # @option params [Types::S3DeliveryConfiguration] :s3_delivery_configuration
    #   This structure contains parameters that are valid only when the
    #   delivery's delivery destination is an S3 bucket.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateDeliveryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeliveryResponse#delivery #delivery} => Types::Delivery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_delivery({
    #     delivery_source_name: "DeliverySourceName", # required
    #     delivery_destination_arn: "Arn", # required
    #     record_fields: ["FieldHeader"],
    #     field_delimiter: "FieldDelimiter",
    #     s3_delivery_configuration: {
    #       suffix_path: "DeliverySuffixPath",
    #       enable_hive_compatible_path: false,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery.id #=> String
    #   resp.delivery.arn #=> String
    #   resp.delivery.delivery_source_name #=> String
    #   resp.delivery.delivery_destination_arn #=> String
    #   resp.delivery.delivery_destination_type #=> String, one of "S3", "CWL", "FH", "XRAY"
    #   resp.delivery.record_fields #=> Array
    #   resp.delivery.record_fields[0] #=> String
    #   resp.delivery.field_delimiter #=> String
    #   resp.delivery.s3_delivery_configuration.suffix_path #=> String
    #   resp.delivery.s3_delivery_configuration.enable_hive_compatible_path #=> Boolean
    #   resp.delivery.tags #=> Hash
    #   resp.delivery.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateDelivery AWS API Documentation
    #
    # @overload create_delivery(params = {})
    # @param [Hash] params ({})
    def create_delivery(params = {}, options = {})
      req = build_request(:create_delivery, params)
      req.send_request(options)
    end

    # Creates an export task so that you can efficiently export data from a
    # log group to an Amazon S3 bucket. When you perform a
    # `CreateExportTask` operation, you must use credentials that have
    # permission to write to the S3 bucket that you specify as the
    # destination.
    #
    # Exporting log data to S3 buckets that are encrypted by KMS is
    # supported. Exporting log data to Amazon S3 buckets that have S3 Object
    # Lock enabled with a retention period is also supported.
    #
    # Exporting to S3 buckets that are encrypted with AES-256 is supported.
    #
    # This is an asynchronous call. If all the required information is
    # provided, this operation initiates an export task and responds with
    # the ID of the task. After the task has started, you can use
    # [DescribeExportTasks][1] to get the status of the export task. Each
    # account can only have one active (`RUNNING` or `PENDING`) export task
    # at a time. To cancel an export task, use [CancelExportTask][2].
    #
    # You can export logs from multiple log groups or multiple time ranges
    # to the same S3 bucket. To separate log data for each export task,
    # specify a prefix to be used as the Amazon S3 key prefix for all
    # exported objects.
    #
    # <note markdown="1"> We recommend that you don't regularly export to Amazon S3 as a way to
    # continuously archive your logs. For that use case, we instead
    # recommend that you use subscriptions. For more information about
    # subscriptions, see [Real-time processing of log data with
    # subscriptions][3].
    #
    #  </note>
    #
    # <note markdown="1"> Time-based sorting on chunks of log data inside an exported file is
    # not guaranteed. You can sort the exported log field data by using
    # Linux utilities.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions.html
    #
    # @option params [String] :task_name
    #   The name of the export task.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [String] :log_stream_name_prefix
    #   Export only log streams that match the provided prefix. If you don't
    #   specify a value, no prefix filter is applied.
    #
    # @option params [required, Integer] :from
    #   The start time of the range for the request, expressed as the number
    #   of milliseconds after `Jan 1, 1970 00:00:00 UTC`. Events with a
    #   timestamp earlier than this time are not exported.
    #
    # @option params [required, Integer] :to
    #   The end time of the range for the request, expressed as the number of
    #   milliseconds after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp
    #   later than this time are not exported.
    #
    #   You must specify a time that is not earlier than when this log group
    #   was created.
    #
    # @option params [required, String] :destination
    #   The name of S3 bucket for the exported log data. The bucket must be in
    #   the same Amazon Web Services Region.
    #
    # @option params [String] :destination_prefix
    #   The prefix used as the start of the key for every object exported. If
    #   you don't specify a value, the default is `exportedlogs`.
    #
    #   The length of this parameter must comply with the S3 object key name
    #   length limits. The object key name is a sequence of Unicode characters
    #   with UTF-8 encoding, and can be up to 1,024 bytes.
    #
    # @return [Types::CreateExportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExportTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_export_task({
    #     task_name: "ExportTaskName",
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name_prefix: "LogStreamName",
    #     from: 1, # required
    #     to: 1, # required
    #     destination: "ExportDestinationBucket", # required
    #     destination_prefix: "ExportDestinationPrefix",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateExportTask AWS API Documentation
    #
    # @overload create_export_task(params = {})
    # @param [Hash] params ({})
    def create_export_task(params = {}, options = {})
      req = build_request(:create_export_task, params)
      req.send_request(options)
    end

    # Creates an *anomaly detector* that regularly scans one or more log
    # groups and look for patterns and anomalies in the logs.
    #
    # An anomaly detector can help surface issues by automatically
    # discovering anomalies in your log event traffic. An anomaly detector
    # uses machine learning algorithms to scan log events and find
    # *patterns*. A pattern is a shared text structure that recurs among
    # your log fields. Patterns provide a useful tool for analyzing large
    # sets of logs because a large number of log events can often be
    # compressed into a few patterns.
    #
    # The anomaly detector uses pattern recognition to find `anomalies`,
    # which are unusual log events. It uses the `evaluationFrequency` to
    # compare current log events and patterns with trained baselines.
    #
    # Fields within a pattern are called *tokens*. Fields that vary within a
    # pattern, such as a request ID or timestamp, are referred to as
    # *dynamic tokens* and represented by `<*>`.
    #
    # The following is an example of a pattern:
    #
    # `[INFO] Request time: <*> ms`
    #
    # This pattern represents log events like `[INFO] Request time: 327 ms`
    # and other similar log events that differ only by the number, in this
    # csse 327. When the pattern is displayed, the different numbers are
    # replaced by `<*>`
    #
    # <note markdown="1"> Any parts of log events that are masked as sensitive data are not
    # scanned for anomalies. For more information about masking sensitive
    # data, see [Help protect sensitive log data with masking][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html
    #
    # @option params [required, Array<String>] :log_group_arn_list
    #   An array containing the ARN of the log group that this anomaly
    #   detector will watch. You can specify only one log group ARN.
    #
    # @option params [String] :detector_name
    #   A name for this anomaly detector.
    #
    # @option params [String] :evaluation_frequency
    #   Specifies how often the anomaly detector is to run and look for
    #   anomalies. Set this value according to the frequency that the log
    #   group receives new logs. For example, if the log group receives new
    #   log events every 10 minutes, then 15 minutes might be a good setting
    #   for `evaluationFrequency` .
    #
    # @option params [String] :filter_pattern
    #   You can use this parameter to limit the anomaly detection model to
    #   examine only log events that match the pattern you specify here. For
    #   more information, see [Filter and Pattern Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #
    # @option params [String] :kms_key_id
    #   Optionally assigns a KMS key to secure this anomaly detector and its
    #   findings. If a key is assigned, the anomalies found and the model used
    #   by this detector are encrypted at rest with the key. If a key is
    #   assigned to an anomaly detector, a user must have permissions for both
    #   this key and for the anomaly detector to retrieve information about
    #   the anomalies that it finds.
    #
    #   Make sure the value provided is a valid KMS key ARN. For more
    #   information about using a KMS key and to see the required IAM policy,
    #   see [Use a KMS key with an anomaly detector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/LogsAnomalyDetection-KMS.html
    #
    # @option params [Integer] :anomaly_visibility_time
    #   The number of days to have visibility on an anomaly. After this time
    #   period has elapsed for an anomaly, it will be automatically baselined
    #   and the anomaly detector will treat new occurrences of a similar
    #   anomaly as normal. Therefore, if you do not correct the cause of an
    #   anomaly during the time period specified in `anomalyVisibilityTime`,
    #   it will be considered normal going forward and will not be detected as
    #   an anomaly.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateLogAnomalyDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLogAnomalyDetectorResponse#anomaly_detector_arn #anomaly_detector_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_anomaly_detector({
    #     log_group_arn_list: ["LogGroupArn"], # required
    #     detector_name: "DetectorName",
    #     evaluation_frequency: "ONE_MIN", # accepts ONE_MIN, FIVE_MIN, TEN_MIN, FIFTEEN_MIN, THIRTY_MIN, ONE_HOUR
    #     filter_pattern: "FilterPattern",
    #     kms_key_id: "DetectorKmsKeyArn",
    #     anomaly_visibility_time: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_detector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogAnomalyDetector AWS API Documentation
    #
    # @overload create_log_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def create_log_anomaly_detector(params = {}, options = {})
      req = build_request(:create_log_anomaly_detector, params)
      req.send_request(options)
    end

    # Creates a log group with the specified name. You can create up to
    # 1,000,000 log groups per Region per account.
    #
    # You must use the following guidelines when naming a log group:
    #
    # * Log group names must be unique within a Region for an Amazon Web
    #   Services account.
    #
    # * Log group names can be between 1 and 512 characters long.
    #
    # * Log group names consist of the following characters: a-z, A-Z, 0-9,
    #   '\_' (underscore), '-' (hyphen), '/' (forward slash), '.'
    #   (period), and '#' (number sign)
    #
    # * Log group names can't start with the string `aws/`
    #
    # When you create a log group, by default the log events in the log
    # group do not expire. To set a retention policy so that events expire
    # and are deleted after a specified time, use [PutRetentionPolicy][1].
    #
    # If you associate an KMS key with the log group, ingested data is
    # encrypted using the KMS key. This association is stored as long as the
    # data encrypted with the KMS key is still within CloudWatch Logs. This
    # enables CloudWatch Logs to decrypt this data whenever it is requested.
    #
    # If you attempt to associate a KMS key with the log group but the KMS
    # key does not exist or the KMS key is disabled, you receive an
    # `InvalidParameterException` error.
    #
    # CloudWatch Logs supports only symmetric KMS keys. Do not associate an
    # asymmetric KMS key with your log group. For more information, see
    # [Using Symmetric and Asymmetric Keys][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #
    # @option params [required, String] :log_group_name
    #   A name for the log group.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key to use when encrypting
    #   log data. For more information, see [Amazon Resource Names][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value pairs to use for the tags.
    #
    #   You can grant users access to certain log groups while preventing them
    #   from accessing other log groups. To do so, tag your groups and use IAM
    #   policies that refer to those tags. To assign tags when you create a
    #   log group, you must have either the `logs:TagResource` or
    #   `logs:TagLogGroup` permission. For more information about tagging, see
    #   [Tagging Amazon Web Services resources][1]. For more information about
    #   using tags to control access, see [Controlling access to Amazon Web
    #   Services resources using tags][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #
    # @option params [String] :log_group_class
    #   Use this parameter to specify the log group class for this log group.
    #   There are three classes:
    #
    #   * The `Standard` log class supports all CloudWatch Logs features.
    #
    #   * The `Infrequent Access` log class supports a subset of CloudWatch
    #     Logs features and incurs lower costs.
    #
    #   * Use the `Delivery` log class only for delivering Lambda logs to
    #     store in Amazon S3 or Amazon Data Firehose. Log events in log groups
    #     in the Delivery class are kept in CloudWatch Logs for only one day.
    #     This log class doesn't offer rich CloudWatch Logs capabilities such
    #     as CloudWatch Logs Insights queries.
    #
    #   If you omit this parameter, the default of `STANDARD` is used.
    #
    #   The value of `logGroupClass` can't be changed after a log group is
    #   created.
    #
    #   For details about the features supported by each class, see [Log
    #   classes][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_group({
    #     log_group_name: "LogGroupName", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     log_group_class: "STANDARD", # accepts STANDARD, INFREQUENT_ACCESS, DELIVERY
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogGroup AWS API Documentation
    #
    # @overload create_log_group(params = {})
    # @param [Hash] params ({})
    def create_log_group(params = {}, options = {})
      req = build_request(:create_log_group, params)
      req.send_request(options)
    end

    # Creates a log stream for the specified log group. A log stream is a
    # sequence of log events that originate from a single source, such as an
    # application instance or a resource that is being monitored.
    #
    # There is no limit on the number of log streams that you can create for
    # a log group. There is a limit of 50 TPS on `CreateLogStream`
    # operations, after which transactions are throttled.
    #
    # You must use the following guidelines when naming a log stream:
    #
    # * Log stream names must be unique within the log group.
    #
    # * Log stream names can be between 1 and 512 characters long.
    #
    # * Don't use ':' (colon) or '*' (asterisk) characters.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_stream({
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogStream AWS API Documentation
    #
    # @overload create_log_stream(params = {})
    # @param [Hash] params ({})
    def create_log_stream(params = {}, options = {})
      req = build_request(:create_log_stream, params)
      req.send_request(options)
    end

    # Deletes a CloudWatch Logs account policy. This stops the account-wide
    # policy from applying to log groups in the account. If you delete a
    # data protection policy or subscription filter policy, any log-group
    # level policies of those types remain in effect.
    #
    # To use this operation, you must be signed on with the correct
    # permissions depending on the type of policy that you are deleting.
    #
    # * To delete a data protection policy, you must have the
    #   `logs:DeleteDataProtectionPolicy` and `logs:DeleteAccountPolicy`
    #   permissions.
    #
    # * To delete a subscription filter policy, you must have the
    #   `logs:DeleteSubscriptionFilter` and `logs:DeleteAccountPolicy`
    #   permissions.
    #
    # * To delete a transformer policy, you must have the
    #   `logs:DeleteTransformer` and `logs:DeleteAccountPolicy` permissions.
    #
    # * To delete a field index policy, you must have the
    #   `logs:DeleteIndexPolicy` and `logs:DeleteAccountPolicy` permissions.
    #
    # If you delete a field index policy, the indexing of the log events
    # that happened before you deleted the policy will still be used for up
    # to 30 days to improve CloudWatch Logs Insights queries.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to delete.
    #
    # @option params [required, String] :policy_type
    #   The type of policy to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_policy({
    #     policy_name: "PolicyName", # required
    #     policy_type: "DATA_PROTECTION_POLICY", # required, accepts DATA_PROTECTION_POLICY, SUBSCRIPTION_FILTER_POLICY, FIELD_INDEX_POLICY, TRANSFORMER_POLICY, METRIC_EXTRACTION_POLICY
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteAccountPolicy AWS API Documentation
    #
    # @overload delete_account_policy(params = {})
    # @param [Hash] params ({})
    def delete_account_policy(params = {}, options = {})
      req = build_request(:delete_account_policy, params)
      req.send_request(options)
    end

    # Deletes the data protection policy from the specified log group.
    #
    # For more information about data protection policies, see
    # [PutDataProtectionPolicy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html
    #
    # @option params [required, String] :log_group_identifier
    #   The name or ARN of the log group that you want to delete the data
    #   protection policy for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_protection_policy({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDataProtectionPolicy AWS API Documentation
    #
    # @overload delete_data_protection_policy(params = {})
    # @param [Hash] params ({})
    def delete_data_protection_policy(params = {}, options = {})
      req = build_request(:delete_data_protection_policy, params)
      req.send_request(options)
    end

    # Deletes a *delivery*. A delivery is a connection between a logical
    # *delivery source* and a logical *delivery destination*. Deleting a
    # delivery only deletes the connection between the delivery source and
    # delivery destination. It does not delete the delivery destination or
    # the delivery source.
    #
    # @option params [required, String] :id
    #   The unique ID of the delivery to delete. You can find the ID of a
    #   delivery with the [DescribeDeliveries][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery({
    #     id: "DeliveryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDelivery AWS API Documentation
    #
    # @overload delete_delivery(params = {})
    # @param [Hash] params ({})
    def delete_delivery(params = {}, options = {})
      req = build_request(:delete_delivery, params)
      req.send_request(options)
    end

    # Deletes a *delivery destination*. A delivery is a connection between a
    # logical *delivery source* and a logical *delivery destination*.
    #
    # You can't delete a delivery destination if any current deliveries are
    # associated with it. To find whether any deliveries are associated with
    # this delivery destination, use the [DescribeDeliveries][1] operation
    # and check the `deliveryDestinationArn` field in the results.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html
    #
    # @option params [required, String] :name
    #   The name of the delivery destination that you want to delete. You can
    #   find a list of delivery destination names by using the
    #   [DescribeDeliveryDestinations][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveryDestinations.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_destination({
    #     name: "DeliveryDestinationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDeliveryDestination AWS API Documentation
    #
    # @overload delete_delivery_destination(params = {})
    # @param [Hash] params ({})
    def delete_delivery_destination(params = {}, options = {})
      req = build_request(:delete_delivery_destination, params)
      req.send_request(options)
    end

    # Deletes a delivery destination policy. For more information about
    # these policies, see [PutDeliveryDestinationPolicy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
    #
    # @option params [required, String] :delivery_destination_name
    #   The name of the delivery destination that you want to delete the
    #   policy for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_destination_policy({
    #     delivery_destination_name: "DeliveryDestinationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDeliveryDestinationPolicy AWS API Documentation
    #
    # @overload delete_delivery_destination_policy(params = {})
    # @param [Hash] params ({})
    def delete_delivery_destination_policy(params = {}, options = {})
      req = build_request(:delete_delivery_destination_policy, params)
      req.send_request(options)
    end

    # Deletes a *delivery source*. A delivery is a connection between a
    # logical *delivery source* and a logical *delivery destination*.
    #
    # You can't delete a delivery source if any current deliveries are
    # associated with it. To find whether any deliveries are associated with
    # this delivery source, use the [DescribeDeliveries][1] operation and
    # check the `deliverySourceName` field in the results.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html
    #
    # @option params [required, String] :name
    #   The name of the delivery source that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_source({
    #     name: "DeliverySourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDeliverySource AWS API Documentation
    #
    # @overload delete_delivery_source(params = {})
    # @param [Hash] params ({})
    def delete_delivery_source(params = {}, options = {})
      req = build_request(:delete_delivery_source, params)
      req.send_request(options)
    end

    # Deletes the specified destination, and eventually disables all the
    # subscription filters that publish to it. This operation does not
    # delete the physical resource encapsulated by the destination.
    #
    # @option params [required, String] :destination_name
    #   The name of the destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_destination({
    #     destination_name: "DestinationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDestination AWS API Documentation
    #
    # @overload delete_destination(params = {})
    # @param [Hash] params ({})
    def delete_destination(params = {}, options = {})
      req = build_request(:delete_destination, params)
      req.send_request(options)
    end

    # Deletes a log-group level field index policy that was applied to a
    # single log group. The indexing of the log events that happened before
    # you delete the policy will still be used for as many as 30 days to
    # improve CloudWatch Logs Insights queries.
    #
    # You can't use this operation to delete an account-level index policy.
    # Instead, use [DeletAccountPolicy][1].
    #
    # If you delete a log-group level field index policy and there is an
    # account-level field index policy, in a few minutes the log group
    # begins using that account-wide policy to index new incoming log
    # events.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteAccountPolicy.html
    #
    # @option params [required, String] :log_group_identifier
    #   The log group to delete the index policy for. You can specify either
    #   the name or the ARN of the log group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index_policy({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteIndexPolicy AWS API Documentation
    #
    # @overload delete_index_policy(params = {})
    # @param [Hash] params ({})
    def delete_index_policy(params = {}, options = {})
      req = build_request(:delete_index_policy, params)
      req.send_request(options)
    end

    # Deletes the integration between CloudWatch Logs and OpenSearch
    # Service. If your integration has active vended logs dashboards, you
    # must specify `true` for the `force` parameter, otherwise the operation
    # will fail. If you delete the integration by setting `force` to `true`,
    # all your vended logs dashboards powered by OpenSearch Service will be
    # deleted and the data that was on them will no longer be accessible.
    #
    # @option params [required, String] :integration_name
    #   The name of the integration to delete. To find the name of your
    #   integration, use [ListIntegrations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html
    #
    # @option params [Boolean] :force
    #   Specify `true` to force the deletion of the integration even if vended
    #   logs dashboards currently exist.
    #
    #   The default is `false`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration({
    #     integration_name: "IntegrationName", # required
    #     force: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteIntegration AWS API Documentation
    #
    # @overload delete_integration(params = {})
    # @param [Hash] params ({})
    def delete_integration(params = {}, options = {})
      req = build_request(:delete_integration, params)
      req.send_request(options)
    end

    # Deletes the specified CloudWatch Logs anomaly detector.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the anomaly detector to delete. You can find the ARNs of
    #   log anomaly detectors in your account by using the
    #   [ListLogAnomalyDetectors][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_anomaly_detector({
    #     anomaly_detector_arn: "AnomalyDetectorArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogAnomalyDetector AWS API Documentation
    #
    # @overload delete_log_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def delete_log_anomaly_detector(params = {}, options = {})
      req = build_request(:delete_log_anomaly_detector, params)
      req.send_request(options)
    end

    # Deletes the specified log group and permanently deletes all the
    # archived log events associated with the log group.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_group({
    #     log_group_name: "LogGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogGroup AWS API Documentation
    #
    # @overload delete_log_group(params = {})
    # @param [Hash] params ({})
    def delete_log_group(params = {}, options = {})
      req = build_request(:delete_log_group, params)
      req.send_request(options)
    end

    # Deletes the specified log stream and permanently deletes all the
    # archived log events associated with the log stream.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_stream({
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogStream AWS API Documentation
    #
    # @overload delete_log_stream(params = {})
    # @param [Hash] params ({})
    def delete_log_stream(params = {}, options = {})
      req = build_request(:delete_log_stream, params)
      req.send_request(options)
    end

    # Deletes the specified metric filter.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :filter_name
    #   The name of the metric filter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_metric_filter({
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteMetricFilter AWS API Documentation
    #
    # @overload delete_metric_filter(params = {})
    # @param [Hash] params ({})
    def delete_metric_filter(params = {}, options = {})
      req = build_request(:delete_metric_filter, params)
      req.send_request(options)
    end

    # Deletes a saved CloudWatch Logs Insights query definition. A query
    # definition contains details about a saved CloudWatch Logs Insights
    # query.
    #
    # Each `DeleteQueryDefinition` operation can delete one query
    # definition.
    #
    # You must have the `logs:DeleteQueryDefinition` permission to be able
    # to perform this operation.
    #
    # @option params [required, String] :query_definition_id
    #   The ID of the query definition that you want to delete. You can use
    #   [DescribeQueryDefinitions][1] to retrieve the IDs of your saved query
    #   definitions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #
    # @return [Types::DeleteQueryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteQueryDefinitionResponse#success #success} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_query_definition({
    #     query_definition_id: "QueryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteQueryDefinition AWS API Documentation
    #
    # @overload delete_query_definition(params = {})
    # @param [Hash] params ({})
    def delete_query_definition(params = {}, options = {})
      req = build_request(:delete_query_definition, params)
      req.send_request(options)
    end

    # Deletes a resource policy from this account. This revokes the access
    # of the identities in that policy to put log events to this account.
    #
    # @option params [String] :policy_name
    #   The name of the policy to be revoked. This parameter is required.
    #
    # @option params [String] :resource_arn
    #   The ARN of the CloudWatch Logs resource for which the resource policy
    #   needs to be deleted
    #
    # @option params [String] :expected_revision_id
    #   The expected revision ID of the resource policy. Required when
    #   deleting a resource-scoped policy to prevent concurrent modifications.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     policy_name: "PolicyName",
    #     resource_arn: "Arn",
    #     expected_revision_id: "ExpectedRevisionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes the specified retention policy.
    #
    # Log events do not expire if they belong to log groups without a
    # retention policy.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_retention_policy({
    #     log_group_name: "LogGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteRetentionPolicy AWS API Documentation
    #
    # @overload delete_retention_policy(params = {})
    # @param [Hash] params ({})
    def delete_retention_policy(params = {}, options = {})
      req = build_request(:delete_retention_policy, params)
      req.send_request(options)
    end

    # Deletes the specified subscription filter.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :filter_name
    #   The name of the subscription filter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_filter({
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteSubscriptionFilter AWS API Documentation
    #
    # @overload delete_subscription_filter(params = {})
    # @param [Hash] params ({})
    def delete_subscription_filter(params = {}, options = {})
      req = build_request(:delete_subscription_filter, params)
      req.send_request(options)
    end

    # Deletes the log transformer for the specified log group. As soon as
    # you do this, the transformation of incoming log events according to
    # that transformer stops. If this account has an account-level
    # transformer that applies to this log group, the log group begins using
    # that account-level transformer when this log-group level transformer
    # is deleted.
    #
    # After you delete a transformer, be sure to edit any metric filters or
    # subscription filters that relied on the transformed versions of the
    # log events.
    #
    # @option params [required, String] :log_group_identifier
    #   Specify either the name or ARN of the log group to delete the
    #   transformer for. If the log group is in a source account and you are
    #   using a monitoring account, you must use the log group ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_transformer({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteTransformer AWS API Documentation
    #
    # @overload delete_transformer(params = {})
    # @param [Hash] params ({})
    def delete_transformer(params = {}, options = {})
      req = build_request(:delete_transformer, params)
      req.send_request(options)
    end

    # Returns a list of all CloudWatch Logs account policies in the account.
    #
    # To use this operation, you must be signed on with the correct
    # permissions depending on the type of policy that you are retrieving
    # information for.
    #
    # * To see data protection policies, you must have the
    #   `logs:GetDataProtectionPolicy` and `logs:DescribeAccountPolicies`
    #   permissions.
    #
    # * To see subscription filter policies, you must have the
    #   `logs:DescribeSubscriptionFilters` and
    #   `logs:DescribeAccountPolicies` permissions.
    #
    # * To see transformer policies, you must have the `logs:GetTransformer`
    #   and `logs:DescribeAccountPolicies` permissions.
    #
    # * To see field index policies, you must have the
    #   `logs:DescribeIndexPolicies` and `logs:DescribeAccountPolicies`
    #   permissions.
    #
    # @option params [required, String] :policy_type
    #   Use this parameter to limit the returned policies to only the policies
    #   that match the policy type that you specify.
    #
    # @option params [String] :policy_name
    #   Use this parameter to limit the returned policies to only the policy
    #   with the name that you specify.
    #
    # @option params [Array<String>] :account_identifiers
    #   If you are using an account that is set up as a monitoring account for
    #   CloudWatch unified cross-account observability, you can use this to
    #   specify the account ID of a source account. If you do, the operation
    #   returns the account policy for the specified account. Currently, you
    #   can specify only one account ID in this parameter.
    #
    #   If you omit this parameter, only the policy in the current account is
    #   returned.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeAccountPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountPoliciesResponse#account_policies #account_policies} => Array&lt;Types::AccountPolicy&gt;
    #   * {Types::DescribeAccountPoliciesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_policies({
    #     policy_type: "DATA_PROTECTION_POLICY", # required, accepts DATA_PROTECTION_POLICY, SUBSCRIPTION_FILTER_POLICY, FIELD_INDEX_POLICY, TRANSFORMER_POLICY, METRIC_EXTRACTION_POLICY
    #     policy_name: "PolicyName",
    #     account_identifiers: ["AccountId"],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_policies #=> Array
    #   resp.account_policies[0].policy_name #=> String
    #   resp.account_policies[0].policy_document #=> String
    #   resp.account_policies[0].last_updated_time #=> Integer
    #   resp.account_policies[0].policy_type #=> String, one of "DATA_PROTECTION_POLICY", "SUBSCRIPTION_FILTER_POLICY", "FIELD_INDEX_POLICY", "TRANSFORMER_POLICY", "METRIC_EXTRACTION_POLICY"
    #   resp.account_policies[0].scope #=> String, one of "ALL"
    #   resp.account_policies[0].selection_criteria #=> String
    #   resp.account_policies[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeAccountPolicies AWS API Documentation
    #
    # @overload describe_account_policies(params = {})
    # @param [Hash] params ({})
    def describe_account_policies(params = {}, options = {})
      req = build_request(:describe_account_policies, params)
      req.send_request(options)
    end

    # Use this operation to return the valid and default values that are
    # used when creating delivery sources, delivery destinations, and
    # deliveries. For more information about deliveries, see
    # [CreateDelivery][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    #
    # @option params [String] :service
    #   Use this parameter to filter the response to include only the
    #   configuration templates that apply to the Amazon Web Services service
    #   that you specify here.
    #
    # @option params [Array<String>] :log_types
    #   Use this parameter to filter the response to include only the
    #   configuration templates that apply to the log types that you specify
    #   here.
    #
    # @option params [Array<String>] :resource_types
    #   Use this parameter to filter the response to include only the
    #   configuration templates that apply to the resource types that you
    #   specify here.
    #
    # @option params [Array<String>] :delivery_destination_types
    #   Use this parameter to filter the response to include only the
    #   configuration templates that apply to the delivery destination types
    #   that you specify here.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [Integer] :limit
    #   Use this parameter to limit the number of configuration templates that
    #   are returned in the response.
    #
    # @return [Types::DescribeConfigurationTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationTemplatesResponse#configuration_templates #configuration_templates} => Array&lt;Types::ConfigurationTemplate&gt;
    #   * {Types::DescribeConfigurationTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_templates({
    #     service: "Service",
    #     log_types: ["LogType"],
    #     resource_types: ["ResourceType"],
    #     delivery_destination_types: ["S3"], # accepts S3, CWL, FH, XRAY
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_templates #=> Array
    #   resp.configuration_templates[0].service #=> String
    #   resp.configuration_templates[0].log_type #=> String
    #   resp.configuration_templates[0].resource_type #=> String
    #   resp.configuration_templates[0].delivery_destination_type #=> String, one of "S3", "CWL", "FH", "XRAY"
    #   resp.configuration_templates[0].default_delivery_config_values.record_fields #=> Array
    #   resp.configuration_templates[0].default_delivery_config_values.record_fields[0] #=> String
    #   resp.configuration_templates[0].default_delivery_config_values.field_delimiter #=> String
    #   resp.configuration_templates[0].default_delivery_config_values.s3_delivery_configuration.suffix_path #=> String
    #   resp.configuration_templates[0].default_delivery_config_values.s3_delivery_configuration.enable_hive_compatible_path #=> Boolean
    #   resp.configuration_templates[0].allowed_fields #=> Array
    #   resp.configuration_templates[0].allowed_fields[0].name #=> String
    #   resp.configuration_templates[0].allowed_fields[0].mandatory #=> Boolean
    #   resp.configuration_templates[0].allowed_output_formats #=> Array
    #   resp.configuration_templates[0].allowed_output_formats[0] #=> String, one of "json", "plain", "w3c", "raw", "parquet"
    #   resp.configuration_templates[0].allowed_action_for_allow_vended_logs_delivery_for_resource #=> String
    #   resp.configuration_templates[0].allowed_field_delimiters #=> Array
    #   resp.configuration_templates[0].allowed_field_delimiters[0] #=> String
    #   resp.configuration_templates[0].allowed_suffix_path_fields #=> Array
    #   resp.configuration_templates[0].allowed_suffix_path_fields[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeConfigurationTemplates AWS API Documentation
    #
    # @overload describe_configuration_templates(params = {})
    # @param [Hash] params ({})
    def describe_configuration_templates(params = {}, options = {})
      req = build_request(:describe_configuration_templates, params)
      req.send_request(options)
    end

    # Retrieves a list of the deliveries that have been created in the
    # account.
    #
    # A *delivery* is a connection between a [ *delivery source* ][1] and a
    # [ *delivery destination* ][2].
    #
    # A delivery source represents an Amazon Web Services resource that
    # sends logs to an logs delivery destination. The destination can be
    # CloudWatch Logs, Amazon S3, Firehose or X-Ray. Only some Amazon Web
    # Services services support being configured as a delivery source. These
    # services are listed in [Enable logging from Amazon Web Services
    # services.][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [Integer] :limit
    #   Optionally specify the maximum number of deliveries to return in the
    #   response.
    #
    # @return [Types::DescribeDeliveriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeliveriesResponse#deliveries #deliveries} => Array&lt;Types::Delivery&gt;
    #   * {Types::DescribeDeliveriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_deliveries({
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.deliveries #=> Array
    #   resp.deliveries[0].id #=> String
    #   resp.deliveries[0].arn #=> String
    #   resp.deliveries[0].delivery_source_name #=> String
    #   resp.deliveries[0].delivery_destination_arn #=> String
    #   resp.deliveries[0].delivery_destination_type #=> String, one of "S3", "CWL", "FH", "XRAY"
    #   resp.deliveries[0].record_fields #=> Array
    #   resp.deliveries[0].record_fields[0] #=> String
    #   resp.deliveries[0].field_delimiter #=> String
    #   resp.deliveries[0].s3_delivery_configuration.suffix_path #=> String
    #   resp.deliveries[0].s3_delivery_configuration.enable_hive_compatible_path #=> Boolean
    #   resp.deliveries[0].tags #=> Hash
    #   resp.deliveries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliveries AWS API Documentation
    #
    # @overload describe_deliveries(params = {})
    # @param [Hash] params ({})
    def describe_deliveries(params = {}, options = {})
      req = build_request(:describe_deliveries, params)
      req.send_request(options)
    end

    # Retrieves a list of the delivery destinations that have been created
    # in the account.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [Integer] :limit
    #   Optionally specify the maximum number of delivery destinations to
    #   return in the response.
    #
    # @return [Types::DescribeDeliveryDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeliveryDestinationsResponse#delivery_destinations #delivery_destinations} => Array&lt;Types::DeliveryDestination&gt;
    #   * {Types::DescribeDeliveryDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_destinations({
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_destinations #=> Array
    #   resp.delivery_destinations[0].name #=> String
    #   resp.delivery_destinations[0].arn #=> String
    #   resp.delivery_destinations[0].delivery_destination_type #=> String, one of "S3", "CWL", "FH", "XRAY"
    #   resp.delivery_destinations[0].output_format #=> String, one of "json", "plain", "w3c", "raw", "parquet"
    #   resp.delivery_destinations[0].delivery_destination_configuration.destination_resource_arn #=> String
    #   resp.delivery_destinations[0].tags #=> Hash
    #   resp.delivery_destinations[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliveryDestinations AWS API Documentation
    #
    # @overload describe_delivery_destinations(params = {})
    # @param [Hash] params ({})
    def describe_delivery_destinations(params = {}, options = {})
      req = build_request(:describe_delivery_destinations, params)
      req.send_request(options)
    end

    # Retrieves a list of the delivery sources that have been created in the
    # account.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [Integer] :limit
    #   Optionally specify the maximum number of delivery sources to return in
    #   the response.
    #
    # @return [Types::DescribeDeliverySourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeliverySourcesResponse#delivery_sources #delivery_sources} => Array&lt;Types::DeliverySource&gt;
    #   * {Types::DescribeDeliverySourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_sources({
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_sources #=> Array
    #   resp.delivery_sources[0].name #=> String
    #   resp.delivery_sources[0].arn #=> String
    #   resp.delivery_sources[0].resource_arns #=> Array
    #   resp.delivery_sources[0].resource_arns[0] #=> String
    #   resp.delivery_sources[0].service #=> String
    #   resp.delivery_sources[0].log_type #=> String
    #   resp.delivery_sources[0].tags #=> Hash
    #   resp.delivery_sources[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDeliverySources AWS API Documentation
    #
    # @overload describe_delivery_sources(params = {})
    # @param [Hash] params ({})
    def describe_delivery_sources(params = {}, options = {})
      req = build_request(:describe_delivery_sources, params)
      req.send_request(options)
    end

    # Lists all your destinations. The results are ASCII-sorted by
    # destination name.
    #
    # @option params [String] :destination_name_prefix
    #   The prefix to match. If you don't specify a value, no prefix filter
    #   is applied.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default maximum value of 50 items is used.
    #
    # @return [Types::DescribeDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDestinationsResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
    #   * {Types::DescribeDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_destinations({
    #     destination_name_prefix: "DestinationName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.destinations #=> Array
    #   resp.destinations[0].destination_name #=> String
    #   resp.destinations[0].target_arn #=> String
    #   resp.destinations[0].role_arn #=> String
    #   resp.destinations[0].access_policy #=> String
    #   resp.destinations[0].arn #=> String
    #   resp.destinations[0].creation_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDestinations AWS API Documentation
    #
    # @overload describe_destinations(params = {})
    # @param [Hash] params ({})
    def describe_destinations(params = {}, options = {})
      req = build_request(:describe_destinations, params)
      req.send_request(options)
    end

    # Lists the specified export tasks. You can list all your export tasks
    # or filter the results based on task ID or task status.
    #
    # @option params [String] :task_id
    #   The ID of the export task. Specifying a task ID filters the results to
    #   one or zero export tasks.
    #
    # @option params [String] :status_code
    #   The status code of the export task. Specifying a status code filters
    #   the results to zero or more export tasks.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @return [Types::DescribeExportTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExportTasksResponse#export_tasks #export_tasks} => Array&lt;Types::ExportTask&gt;
    #   * {Types::DescribeExportTasksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export_tasks({
    #     task_id: "ExportTaskId",
    #     status_code: "CANCELLED", # accepts CANCELLED, COMPLETED, FAILED, PENDING, PENDING_CANCEL, RUNNING
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.export_tasks #=> Array
    #   resp.export_tasks[0].task_id #=> String
    #   resp.export_tasks[0].task_name #=> String
    #   resp.export_tasks[0].log_group_name #=> String
    #   resp.export_tasks[0].from #=> Integer
    #   resp.export_tasks[0].to #=> Integer
    #   resp.export_tasks[0].destination #=> String
    #   resp.export_tasks[0].destination_prefix #=> String
    #   resp.export_tasks[0].status.code #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"
    #   resp.export_tasks[0].status.message #=> String
    #   resp.export_tasks[0].execution_info.creation_time #=> Integer
    #   resp.export_tasks[0].execution_info.completion_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeExportTasks AWS API Documentation
    #
    # @overload describe_export_tasks(params = {})
    # @param [Hash] params ({})
    def describe_export_tasks(params = {}, options = {})
      req = build_request(:describe_export_tasks, params)
      req.send_request(options)
    end

    # Returns a list of field indexes listed in the field index policies of
    # one or more log groups. For more information about field index
    # policies, see [PutIndexPolicy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html
    #
    # @option params [required, Array<String>] :log_group_identifiers
    #   An array containing the names or ARNs of the log groups that you want
    #   to retrieve field indexes for.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @return [Types::DescribeFieldIndexesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFieldIndexesResponse#field_indexes #field_indexes} => Array&lt;Types::FieldIndex&gt;
    #   * {Types::DescribeFieldIndexesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_field_indexes({
    #     log_group_identifiers: ["LogGroupIdentifier"], # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.field_indexes #=> Array
    #   resp.field_indexes[0].log_group_identifier #=> String
    #   resp.field_indexes[0].field_index_name #=> String
    #   resp.field_indexes[0].last_scan_time #=> Integer
    #   resp.field_indexes[0].first_event_time #=> Integer
    #   resp.field_indexes[0].last_event_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeFieldIndexes AWS API Documentation
    #
    # @overload describe_field_indexes(params = {})
    # @param [Hash] params ({})
    def describe_field_indexes(params = {}, options = {})
      req = build_request(:describe_field_indexes, params)
      req.send_request(options)
    end

    # Returns the field index policies of one or more log groups. For more
    # information about field index policies, see [PutIndexPolicy][1].
    #
    # If a specified log group has a log-group level index policy, that
    # policy is returned by this operation.
    #
    # If a specified log group doesn't have a log-group level index policy,
    # but an account-wide index policy applies to it, that account-wide
    # policy is returned by this operation.
    #
    # To find information about only account-level policies, use
    # [DescribeAccountPolicies][2] instead.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeAccountPolicies.html
    #
    # @option params [required, Array<String>] :log_group_identifiers
    #   An array containing the name or ARN of the log group that you want to
    #   retrieve field index policies for.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @return [Types::DescribeIndexPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIndexPoliciesResponse#index_policies #index_policies} => Array&lt;Types::IndexPolicy&gt;
    #   * {Types::DescribeIndexPoliciesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index_policies({
    #     log_group_identifiers: ["LogGroupIdentifier"], # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.index_policies #=> Array
    #   resp.index_policies[0].log_group_identifier #=> String
    #   resp.index_policies[0].last_update_time #=> Integer
    #   resp.index_policies[0].policy_document #=> String
    #   resp.index_policies[0].policy_name #=> String
    #   resp.index_policies[0].source #=> String, one of "ACCOUNT", "LOG_GROUP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeIndexPolicies AWS API Documentation
    #
    # @overload describe_index_policies(params = {})
    # @param [Hash] params ({})
    def describe_index_policies(params = {}, options = {})
      req = build_request(:describe_index_policies, params)
      req.send_request(options)
    end

    # Returns information about log groups. You can return all your log
    # groups or filter the results by prefix. The results are ASCII-sorted
    # by log group name.
    #
    # CloudWatch Logs doesn't support IAM policies that control access to
    # the `DescribeLogGroups` action by using the `aws:ResourceTag/key-name
    # ` condition key. Other CloudWatch Logs actions do support the use of
    # the `aws:ResourceTag/key-name ` condition key to control access. For
    # more information about using tags to control access, see [Controlling
    # access to Amazon Web Services resources using tags][1].
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [Array<String>] :account_identifiers
    #   When `includeLinkedAccounts` is set to `true`, use this parameter to
    #   specify the list of accounts to search. You can specify as many as 20
    #   account IDs in the array.
    #
    # @option params [String] :log_group_name_prefix
    #   The prefix to match.
    #
    #   <note markdown="1"> `logGroupNamePrefix` and `logGroupNamePattern` are mutually exclusive.
    #   Only one of these parameters can be passed.
    #
    #    </note>
    #
    # @option params [String] :log_group_name_pattern
    #   If you specify a string for this parameter, the operation returns only
    #   log groups that have names that match the string based on a
    #   case-sensitive substring search. For example, if you specify
    #   `DataLogs`, log groups named `DataLogs`, `aws/DataLogs`, and
    #   `GroupDataLogs` would match, but `datalogs`, `Data/log/s` and
    #   `Groupdata` would not match.
    #
    #   If you specify `logGroupNamePattern` in your request, then only `arn`,
    #   `creationTime`, and `logGroupName` are included in the response.
    #
    #   <note markdown="1"> `logGroupNamePattern` and `logGroupNamePrefix` are mutually exclusive.
    #   Only one of these parameters can be passed.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @option params [Boolean] :include_linked_accounts
    #   If you are using a monitoring account, set this to `true` to have the
    #   operation return log groups in the accounts listed in
    #   `accountIdentifiers`.
    #
    #   If this parameter is set to `true` and `accountIdentifiers` contains a
    #   null value, the operation returns all log groups in the monitoring
    #   account and all log groups in all source accounts that are linked to
    #   the monitoring account.
    #
    #   The default for this parameter is `false`.
    #
    # @option params [String] :log_group_class
    #   Use this parameter to limit the results to only those log groups in
    #   the specified log group class. If you omit this parameter, log groups
    #   of all classes can be returned.
    #
    #   Specifies the log group class for this log group. There are three
    #   classes:
    #
    #   * The `Standard` log class supports all CloudWatch Logs features.
    #
    #   * The `Infrequent Access` log class supports a subset of CloudWatch
    #     Logs features and incurs lower costs.
    #
    #   * Use the `Delivery` log class only for delivering Lambda logs to
    #     store in Amazon S3 or Amazon Data Firehose. Log events in log groups
    #     in the Delivery class are kept in CloudWatch Logs for only one day.
    #     This log class doesn't offer rich CloudWatch Logs capabilities such
    #     as CloudWatch Logs Insights queries.
    #
    #   For details about the features supported by each class, see [Log
    #   classes][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html
    #
    # @option params [Array<String>] :log_group_identifiers
    #   Use this array to filter the list of log groups returned. If you
    #   specify this parameter, the only other filter that you can choose to
    #   specify is `includeLinkedAccounts`.
    #
    #   If you are using this operation in a monitoring account, you can
    #   specify the ARNs of log groups in source accounts and in the
    #   monitoring account itself. If you are using this operation in an
    #   account that is not a cross-account monitoring account, you can
    #   specify only log group names in the same account as the operation.
    #
    # @return [Types::DescribeLogGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLogGroupsResponse#log_groups #log_groups} => Array&lt;Types::LogGroup&gt;
    #   * {Types::DescribeLogGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_log_groups({
    #     account_identifiers: ["AccountId"],
    #     log_group_name_prefix: "LogGroupName",
    #     log_group_name_pattern: "LogGroupNamePattern",
    #     next_token: "NextToken",
    #     limit: 1,
    #     include_linked_accounts: false,
    #     log_group_class: "STANDARD", # accepts STANDARD, INFREQUENT_ACCESS, DELIVERY
    #     log_group_identifiers: ["LogGroupIdentifier"],
    #   })
    #
    # @example Response structure
    #
    #   resp.log_groups #=> Array
    #   resp.log_groups[0].log_group_name #=> String
    #   resp.log_groups[0].creation_time #=> Integer
    #   resp.log_groups[0].retention_in_days #=> Integer
    #   resp.log_groups[0].metric_filter_count #=> Integer
    #   resp.log_groups[0].arn #=> String
    #   resp.log_groups[0].stored_bytes #=> Integer
    #   resp.log_groups[0].kms_key_id #=> String
    #   resp.log_groups[0].data_protection_status #=> String, one of "ACTIVATED", "DELETED", "ARCHIVED", "DISABLED"
    #   resp.log_groups[0].inherited_properties #=> Array
    #   resp.log_groups[0].inherited_properties[0] #=> String, one of "ACCOUNT_DATA_PROTECTION"
    #   resp.log_groups[0].log_group_class #=> String, one of "STANDARD", "INFREQUENT_ACCESS", "DELIVERY"
    #   resp.log_groups[0].log_group_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogGroups AWS API Documentation
    #
    # @overload describe_log_groups(params = {})
    # @param [Hash] params ({})
    def describe_log_groups(params = {}, options = {})
      req = build_request(:describe_log_groups, params)
      req.send_request(options)
    end

    # Lists the log streams for the specified log group. You can list all
    # the log streams or filter the results by prefix. You can also control
    # how the results are ordered.
    #
    # You can specify the log group to search by using either
    # `logGroupIdentifier` or `logGroupName`. You must include one of these
    # two parameters, but you can't include both.
    #
    # This operation has a limit of 25 transactions per second, after which
    # transactions are throttled.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [String] :log_group_identifier
    #   Specify either the name or ARN of the log group to view. If the log
    #   group is in a source account and you are using a monitoring account,
    #   you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [String] :log_stream_name_prefix
    #   The prefix to match.
    #
    #   If `orderBy` is `LastEventTime`, you cannot specify this parameter.
    #
    # @option params [String] :order_by
    #   If the value is `LogStreamName`, the results are ordered by log stream
    #   name. If the value is `LastEventTime`, the results are ordered by the
    #   event time. The default value is `LogStreamName`.
    #
    #   If you order the results by event time, you cannot specify the
    #   `logStreamNamePrefix` parameter.
    #
    #   `lastEventTimestamp` represents the time of the most recent log event
    #   in the log stream in CloudWatch Logs. This number is expressed as the
    #   number of milliseconds after `Jan 1, 1970 00:00:00 UTC`.
    #   `lastEventTimestamp` updates on an eventual consistency basis. It
    #   typically updates in less than an hour from ingestion, but in rare
    #   situations might take longer.
    #
    # @option params [Boolean] :descending
    #   If the value is true, results are returned in descending order. If the
    #   value is to false, results are returned in ascending order. The
    #   default value is false.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @return [Types::DescribeLogStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLogStreamsResponse#log_streams #log_streams} => Array&lt;Types::LogStream&gt;
    #   * {Types::DescribeLogStreamsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_log_streams({
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_name_prefix: "LogStreamName",
    #     order_by: "LogStreamName", # accepts LogStreamName, LastEventTime
    #     descending: false,
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_streams #=> Array
    #   resp.log_streams[0].log_stream_name #=> String
    #   resp.log_streams[0].creation_time #=> Integer
    #   resp.log_streams[0].first_event_timestamp #=> Integer
    #   resp.log_streams[0].last_event_timestamp #=> Integer
    #   resp.log_streams[0].last_ingestion_time #=> Integer
    #   resp.log_streams[0].upload_sequence_token #=> String
    #   resp.log_streams[0].arn #=> String
    #   resp.log_streams[0].stored_bytes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogStreams AWS API Documentation
    #
    # @overload describe_log_streams(params = {})
    # @param [Hash] params ({})
    def describe_log_streams(params = {}, options = {})
      req = build_request(:describe_log_streams, params)
      req.send_request(options)
    end

    # Lists the specified metric filters. You can list all of the metric
    # filters or filter the results by log name, prefix, metric name, or
    # metric namespace. The results are ASCII-sorted by filter name.
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    # @option params [String] :filter_name_prefix
    #   The prefix to match. CloudWatch Logs uses the value that you set here
    #   only if you also include the `logGroupName` parameter in your request.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @option params [String] :metric_name
    #   Filters results to include only those with the specified metric name.
    #   If you include this parameter in your request, you must also include
    #   the `metricNamespace` parameter.
    #
    # @option params [String] :metric_namespace
    #   Filters results to include only those in the specified namespace. If
    #   you include this parameter in your request, you must also include the
    #   `metricName` parameter.
    #
    # @return [Types::DescribeMetricFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMetricFiltersResponse#metric_filters #metric_filters} => Array&lt;Types::MetricFilter&gt;
    #   * {Types::DescribeMetricFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_metric_filters({
    #     log_group_name: "LogGroupName",
    #     filter_name_prefix: "FilterName",
    #     next_token: "NextToken",
    #     limit: 1,
    #     metric_name: "MetricName",
    #     metric_namespace: "MetricNamespace",
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_filters #=> Array
    #   resp.metric_filters[0].filter_name #=> String
    #   resp.metric_filters[0].filter_pattern #=> String
    #   resp.metric_filters[0].metric_transformations #=> Array
    #   resp.metric_filters[0].metric_transformations[0].metric_name #=> String
    #   resp.metric_filters[0].metric_transformations[0].metric_namespace #=> String
    #   resp.metric_filters[0].metric_transformations[0].metric_value #=> String
    #   resp.metric_filters[0].metric_transformations[0].default_value #=> Float
    #   resp.metric_filters[0].metric_transformations[0].dimensions #=> Hash
    #   resp.metric_filters[0].metric_transformations[0].dimensions["DimensionsKey"] #=> String
    #   resp.metric_filters[0].metric_transformations[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.metric_filters[0].creation_time #=> Integer
    #   resp.metric_filters[0].log_group_name #=> String
    #   resp.metric_filters[0].apply_on_transformed_logs #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeMetricFilters AWS API Documentation
    #
    # @overload describe_metric_filters(params = {})
    # @param [Hash] params ({})
    def describe_metric_filters(params = {}, options = {})
      req = build_request(:describe_metric_filters, params)
      req.send_request(options)
    end

    # Returns a list of CloudWatch Logs Insights queries that are scheduled,
    # running, or have been run recently in this account. You can request
    # all queries or limit it to queries of a specific log group or queries
    # with a certain status.
    #
    # @option params [String] :log_group_name
    #   Limits the returned queries to only those for the specified log group.
    #
    # @option params [String] :status
    #   Limits the returned queries to only those that have the specified
    #   status. Valid values are `Cancelled`, `Complete`, `Failed`, `Running`,
    #   and `Scheduled`.
    #
    # @option params [Integer] :max_results
    #   Limits the number of returned queries to the specified number.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [String] :query_language
    #   Limits the returned queries to only the queries that use the specified
    #   query language.
    #
    # @return [Types::DescribeQueriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQueriesResponse#queries #queries} => Array&lt;Types::QueryInfo&gt;
    #   * {Types::DescribeQueriesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_queries({
    #     log_group_name: "LogGroupName",
    #     status: "Scheduled", # accepts Scheduled, Running, Complete, Failed, Cancelled, Timeout, Unknown
    #     max_results: 1,
    #     next_token: "NextToken",
    #     query_language: "CWLI", # accepts CWLI, SQL, PPL
    #   })
    #
    # @example Response structure
    #
    #   resp.queries #=> Array
    #   resp.queries[0].query_language #=> String, one of "CWLI", "SQL", "PPL"
    #   resp.queries[0].query_id #=> String
    #   resp.queries[0].query_string #=> String
    #   resp.queries[0].status #=> String, one of "Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"
    #   resp.queries[0].create_time #=> Integer
    #   resp.queries[0].log_group_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueries AWS API Documentation
    #
    # @overload describe_queries(params = {})
    # @param [Hash] params ({})
    def describe_queries(params = {}, options = {})
      req = build_request(:describe_queries, params)
      req.send_request(options)
    end

    # This operation returns a paginated list of your saved CloudWatch Logs
    # Insights query definitions. You can retrieve query definitions from
    # the current account or from a source account that is linked to the
    # current account.
    #
    # You can use the `queryDefinitionNamePrefix` parameter to limit the
    # results to only the query definitions that have names that start with
    # a certain string.
    #
    # @option params [String] :query_language
    #   The query language used for this query. For more information about the
    #   query languages that CloudWatch Logs supports, see [Supported query
    #   languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #
    # @option params [String] :query_definition_name_prefix
    #   Use this parameter to filter your results to only the query
    #   definitions that have names that start with the prefix you specify.
    #
    # @option params [Integer] :max_results
    #   Limits the number of returned query definitions to the specified
    #   number.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @return [Types::DescribeQueryDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQueryDefinitionsResponse#query_definitions #query_definitions} => Array&lt;Types::QueryDefinition&gt;
    #   * {Types::DescribeQueryDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query_definitions({
    #     query_language: "CWLI", # accepts CWLI, SQL, PPL
    #     query_definition_name_prefix: "QueryDefinitionName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_definitions #=> Array
    #   resp.query_definitions[0].query_language #=> String, one of "CWLI", "SQL", "PPL"
    #   resp.query_definitions[0].query_definition_id #=> String
    #   resp.query_definitions[0].name #=> String
    #   resp.query_definitions[0].query_string #=> String
    #   resp.query_definitions[0].last_modified #=> Integer
    #   resp.query_definitions[0].log_group_names #=> Array
    #   resp.query_definitions[0].log_group_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueryDefinitions AWS API Documentation
    #
    # @overload describe_query_definitions(params = {})
    # @param [Hash] params ({})
    def describe_query_definitions(params = {}, options = {})
      req = build_request(:describe_query_definitions, params)
      req.send_request(options)
    end

    # Lists the resource policies in this account.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [Integer] :limit
    #   The maximum number of resource policies to be displayed with one call
    #   of this API.
    #
    # @option params [String] :resource_arn
    #   The ARN of the CloudWatch Logs resource for which to query the
    #   resource policy.
    #
    # @option params [String] :policy_scope
    #   Specifies the scope of the resource policy. Valid values are `ACCOUNT`
    #   or `RESOURCE`. When not specified, defaults to `ACCOUNT`.
    #
    # @return [Types::DescribeResourcePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourcePoliciesResponse#resource_policies #resource_policies} => Array&lt;Types::ResourcePolicy&gt;
    #   * {Types::DescribeResourcePoliciesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policies({
    #     next_token: "NextToken",
    #     limit: 1,
    #     resource_arn: "Arn",
    #     policy_scope: "ACCOUNT", # accepts ACCOUNT, RESOURCE
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policies #=> Array
    #   resp.resource_policies[0].policy_name #=> String
    #   resp.resource_policies[0].policy_document #=> String
    #   resp.resource_policies[0].last_updated_time #=> Integer
    #   resp.resource_policies[0].policy_scope #=> String, one of "ACCOUNT", "RESOURCE"
    #   resp.resource_policies[0].resource_arn #=> String
    #   resp.resource_policies[0].revision_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeResourcePolicies AWS API Documentation
    #
    # @overload describe_resource_policies(params = {})
    # @param [Hash] params ({})
    def describe_resource_policies(params = {}, options = {})
      req = build_request(:describe_resource_policies, params)
      req.send_request(options)
    end

    # Lists the subscription filters for the specified log group. You can
    # list all the subscription filters or filter the results by prefix. The
    # results are ASCII-sorted by filter name.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [String] :filter_name_prefix
    #   The prefix to match. If you don't specify a value, no prefix filter
    #   is applied.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #
    # @return [Types::DescribeSubscriptionFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubscriptionFiltersResponse#subscription_filters #subscription_filters} => Array&lt;Types::SubscriptionFilter&gt;
    #   * {Types::DescribeSubscriptionFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscription_filters({
    #     log_group_name: "LogGroupName", # required
    #     filter_name_prefix: "FilterName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription_filters #=> Array
    #   resp.subscription_filters[0].filter_name #=> String
    #   resp.subscription_filters[0].log_group_name #=> String
    #   resp.subscription_filters[0].filter_pattern #=> String
    #   resp.subscription_filters[0].destination_arn #=> String
    #   resp.subscription_filters[0].role_arn #=> String
    #   resp.subscription_filters[0].distribution #=> String, one of "Random", "ByLogStream"
    #   resp.subscription_filters[0].apply_on_transformed_logs #=> Boolean
    #   resp.subscription_filters[0].creation_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeSubscriptionFilters AWS API Documentation
    #
    # @overload describe_subscription_filters(params = {})
    # @param [Hash] params ({})
    def describe_subscription_filters(params = {}, options = {})
      req = build_request(:describe_subscription_filters, params)
      req.send_request(options)
    end

    # Disassociates the specified KMS key from the specified log group or
    # from all CloudWatch Logs Insights query results in the account.
    #
    # When you use `DisassociateKmsKey`, you specify either the
    # `logGroupName` parameter or the `resourceIdentifier` parameter. You
    # can't specify both of those parameters in the same operation.
    #
    # * Specify the `logGroupName` parameter to stop using the KMS key to
    #   encrypt future log events ingested and stored in the log group.
    #   Instead, they will be encrypted with the default CloudWatch Logs
    #   method. The log events that were ingested while the key was
    #   associated with the log group are still encrypted with that key.
    #   Therefore, CloudWatch Logs will need permissions for the key
    #   whenever that data is accessed.
    #
    # * Specify the `resourceIdentifier` parameter with the `query-result`
    #   resource to stop using the KMS key to encrypt the results of all
    #   future [StartQuery][1] operations in the account. They will instead
    #   be encrypted with the default CloudWatch Logs method. The results
    #   from queries that ran while the key was associated with the account
    #   are still encrypted with that key. Therefore, CloudWatch Logs will
    #   need permissions for the key whenever that data is accessed.
    #
    # It can take up to 5 minutes for this operation to take effect.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    #   In your `DisassociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    # @option params [String] :resource_identifier
    #   Specifies the target for this operation. You must specify one of the
    #   following:
    #
    #   * Specify the ARN of a log group to stop having CloudWatch Logs use
    #     the KMS key to encrypt log events that are ingested and stored by
    #     that log group. After you run this operation, CloudWatch Logs
    #     encrypts ingested log events with the default CloudWatch Logs
    #     method. The log group ARN must be in the following format. Replace
    #     *REGION* and *ACCOUNT\_ID* with your Region and account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:log-group:LOG_GROUP_NAME `
    #
    #   * Specify the following ARN to stop using this key to encrypt the
    #     results of future [StartQuery][1] operations in this account.
    #     Replace *REGION* and *ACCOUNT\_ID* with your Region and account ID.
    #
    #     `arn:aws:logs:REGION:ACCOUNT_ID:query-result:*`
    #
    #   In your `DisssociateKmsKey` operation, you must specify either the
    #   `resourceIdentifier` parameter or the `logGroup` parameter, but you
    #   can't specify both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_kms_key({
    #     log_group_name: "LogGroupName",
    #     resource_identifier: "ResourceIdentifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DisassociateKmsKey AWS API Documentation
    #
    # @overload disassociate_kms_key(params = {})
    # @param [Hash] params ({})
    def disassociate_kms_key(params = {}, options = {})
      req = build_request(:disassociate_kms_key, params)
      req.send_request(options)
    end

    # Lists log events from the specified log group. You can list all the
    # log events or filter the results using one or more of the following:
    #
    # * A filter pattern
    #
    # * A time range
    #
    # * The log stream name, or a log stream name prefix that matches
    #   mutltiple log streams
    #
    # You must have the `logs:FilterLogEvents` permission to perform this
    # operation.
    #
    # You can specify the log group to search by using either
    # `logGroupIdentifier` or `logGroupName`. You must include one of these
    # two parameters, but you can't include both.
    #
    # `FilterLogEvents` is a paginated operation. Each page returned can
    # contain up to 1 MB of log events or up to 10,000 log events. A
    # returned page might only be partially full, or even empty. For
    # example, if the result of a query would return 15,000 log events, the
    # first page isn't guaranteed to have 10,000 log events even if they
    # all fit into 1 MB.
    #
    # Partially full or empty pages don't necessarily mean that pagination
    # is finished. If the results include a `nextToken`, there might be more
    # log events available. You can return these additional log events by
    # providing the nextToken in a subsequent `FilterLogEvents` operation.
    # If the results don't include a `nextToken`, then pagination is
    # finished.
    #
    # Specifying the `limit` parameter only guarantees that a single page
    # doesn't return more log events than the specified limit, but it might
    # return fewer events than the limit. This is the expected API behavior.
    #
    # The returned log events are sorted by event timestamp, the timestamp
    # when the event was ingested by CloudWatch Logs, and the ID of the
    # `PutLogEvents` request.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][1].
    #
    # <note markdown="1"> If you are using [log transformation][2], the `FilterLogEvents`
    # operation returns only the original versions of log events, before
    # they were transformed. To view the transformed versions, you must use
    # a [CloudWatch Logs query.][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group to search.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [String] :log_group_identifier
    #   Specify either the name or ARN of the log group to view log events
    #   from. If the log group is in a source account and you are using a
    #   monitoring account, you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [Array<String>] :log_stream_names
    #   Filters the results to only logs from the log streams in this list.
    #
    #   If you specify a value for both `logStreamNames` and
    #   `logStreamNamePrefix`, the action returns an
    #   `InvalidParameterException` error.
    #
    # @option params [String] :log_stream_name_prefix
    #   Filters the results to include only events from log streams that have
    #   names starting with this prefix.
    #
    #   If you specify a value for both `logStreamNamePrefix` and
    #   `logStreamNames`, the action returns an `InvalidParameterException`
    #   error.
    #
    # @option params [Integer] :start_time
    #   The start of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp before this
    #   time are not returned.
    #
    # @option params [Integer] :end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp later than
    #   this time are not returned.
    #
    # @option params [String] :filter_pattern
    #   The filter pattern to use. For more information, see [Filter and
    #   Pattern Syntax][1].
    #
    #   If not provided, all the events are matched.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #
    # @option params [String] :next_token
    #   The token for the next set of events to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of events to return. The default is 10,000 events.
    #
    # @option params [Boolean] :interleaved
    #   If the value is true, the operation attempts to provide responses that
    #   contain events from multiple log streams within the log group,
    #   interleaved in a single response. If the value is false, all the
    #   matched log events in the first log stream are searched first, then
    #   those in the next log stream, and so on.
    #
    #   **Important** As of June 17, 2019, this parameter is ignored and the
    #   value is assumed to be true. The response from this operation always
    #   interleaves events from multiple log streams within a log group.
    #
    # @option params [Boolean] :unmask
    #   Specify `true` to display the log event fields with all sensitive data
    #   unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into an
    #   account with the `logs:Unmask` permission.
    #
    # @return [Types::FilterLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FilterLogEventsResponse#events #events} => Array&lt;Types::FilteredLogEvent&gt;
    #   * {Types::FilterLogEventsResponse#searched_log_streams #searched_log_streams} => Array&lt;Types::SearchedLogStream&gt;
    #   * {Types::FilterLogEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.filter_log_events({
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_names: ["LogStreamName"],
    #     log_stream_name_prefix: "LogStreamName",
    #     start_time: 1,
    #     end_time: 1,
    #     filter_pattern: "FilterPattern",
    #     next_token: "NextToken",
    #     limit: 1,
    #     interleaved: false,
    #     unmask: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].log_stream_name #=> String
    #   resp.events[0].timestamp #=> Integer
    #   resp.events[0].message #=> String
    #   resp.events[0].ingestion_time #=> Integer
    #   resp.events[0].event_id #=> String
    #   resp.searched_log_streams #=> Array
    #   resp.searched_log_streams[0].log_stream_name #=> String
    #   resp.searched_log_streams[0].searched_completely #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilterLogEvents AWS API Documentation
    #
    # @overload filter_log_events(params = {})
    # @param [Hash] params ({})
    def filter_log_events(params = {}, options = {})
      req = build_request(:filter_log_events, params)
      req.send_request(options)
    end

    # Returns information about a log group data protection policy.
    #
    # @option params [required, String] :log_group_identifier
    #   The name or ARN of the log group that contains the data protection
    #   policy that you want to see.
    #
    # @return [Types::GetDataProtectionPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataProtectionPolicyResponse#log_group_identifier #log_group_identifier} => String
    #   * {Types::GetDataProtectionPolicyResponse#policy_document #policy_document} => String
    #   * {Types::GetDataProtectionPolicyResponse#last_updated_time #last_updated_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_protection_policy({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_group_identifier #=> String
    #   resp.policy_document #=> String
    #   resp.last_updated_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDataProtectionPolicy AWS API Documentation
    #
    # @overload get_data_protection_policy(params = {})
    # @param [Hash] params ({})
    def get_data_protection_policy(params = {}, options = {})
      req = build_request(:get_data_protection_policy, params)
      req.send_request(options)
    end

    # Returns complete information about one logical *delivery*. A delivery
    # is a connection between a [ *delivery source* ][1] and a [ *delivery
    # destination* ][2].
    #
    # A delivery source represents an Amazon Web Services resource that
    # sends logs to an logs delivery destination. The destination can be
    # CloudWatch Logs, Amazon S3, or Firehose. Only some Amazon Web Services
    # services support being configured as a delivery source. These services
    # are listed in [Enable logging from Amazon Web Services services.][3]
    #
    # You need to specify the delivery `id` in this operation. You can find
    # the IDs of the deliveries in your account with the
    # [DescribeDeliveries][4] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html
    #
    # @option params [required, String] :id
    #   The ID of the delivery that you want to retrieve.
    #
    # @return [Types::GetDeliveryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeliveryResponse#delivery #delivery} => Types::Delivery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_delivery({
    #     id: "DeliveryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery.id #=> String
    #   resp.delivery.arn #=> String
    #   resp.delivery.delivery_source_name #=> String
    #   resp.delivery.delivery_destination_arn #=> String
    #   resp.delivery.delivery_destination_type #=> String, one of "S3", "CWL", "FH", "XRAY"
    #   resp.delivery.record_fields #=> Array
    #   resp.delivery.record_fields[0] #=> String
    #   resp.delivery.field_delimiter #=> String
    #   resp.delivery.s3_delivery_configuration.suffix_path #=> String
    #   resp.delivery.s3_delivery_configuration.enable_hive_compatible_path #=> Boolean
    #   resp.delivery.tags #=> Hash
    #   resp.delivery.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDelivery AWS API Documentation
    #
    # @overload get_delivery(params = {})
    # @param [Hash] params ({})
    def get_delivery(params = {}, options = {})
      req = build_request(:get_delivery, params)
      req.send_request(options)
    end

    # Retrieves complete information about one delivery destination.
    #
    # @option params [required, String] :name
    #   The name of the delivery destination that you want to retrieve.
    #
    # @return [Types::GetDeliveryDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeliveryDestinationResponse#delivery_destination #delivery_destination} => Types::DeliveryDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_delivery_destination({
    #     name: "DeliveryDestinationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_destination.name #=> String
    #   resp.delivery_destination.arn #=> String
    #   resp.delivery_destination.delivery_destination_type #=> String, one of "S3", "CWL", "FH", "XRAY"
    #   resp.delivery_destination.output_format #=> String, one of "json", "plain", "w3c", "raw", "parquet"
    #   resp.delivery_destination.delivery_destination_configuration.destination_resource_arn #=> String
    #   resp.delivery_destination.tags #=> Hash
    #   resp.delivery_destination.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliveryDestination AWS API Documentation
    #
    # @overload get_delivery_destination(params = {})
    # @param [Hash] params ({})
    def get_delivery_destination(params = {}, options = {})
      req = build_request(:get_delivery_destination, params)
      req.send_request(options)
    end

    # Retrieves the delivery destination policy assigned to the delivery
    # destination that you specify. For more information about delivery
    # destinations and their policies, see
    # [PutDeliveryDestinationPolicy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
    #
    # @option params [required, String] :delivery_destination_name
    #   The name of the delivery destination that you want to retrieve the
    #   policy of.
    #
    # @return [Types::GetDeliveryDestinationPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeliveryDestinationPolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_delivery_destination_policy({
    #     delivery_destination_name: "DeliveryDestinationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.delivery_destination_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliveryDestinationPolicy AWS API Documentation
    #
    # @overload get_delivery_destination_policy(params = {})
    # @param [Hash] params ({})
    def get_delivery_destination_policy(params = {}, options = {})
      req = build_request(:get_delivery_destination_policy, params)
      req.send_request(options)
    end

    # Retrieves complete information about one delivery source.
    #
    # @option params [required, String] :name
    #   The name of the delivery source that you want to retrieve.
    #
    # @return [Types::GetDeliverySourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeliverySourceResponse#delivery_source #delivery_source} => Types::DeliverySource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_delivery_source({
    #     name: "DeliverySourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_source.name #=> String
    #   resp.delivery_source.arn #=> String
    #   resp.delivery_source.resource_arns #=> Array
    #   resp.delivery_source.resource_arns[0] #=> String
    #   resp.delivery_source.service #=> String
    #   resp.delivery_source.log_type #=> String
    #   resp.delivery_source.tags #=> Hash
    #   resp.delivery_source.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetDeliverySource AWS API Documentation
    #
    # @overload get_delivery_source(params = {})
    # @param [Hash] params ({})
    def get_delivery_source(params = {}, options = {})
      req = build_request(:get_delivery_source, params)
      req.send_request(options)
    end

    # Returns information about one integration between CloudWatch Logs and
    # OpenSearch Service.
    #
    # @option params [required, String] :integration_name
    #   The name of the integration that you want to find information about.
    #   To find the name of your integration, use [ListIntegrations][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html
    #
    # @return [Types::GetIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationResponse#integration_name #integration_name} => String
    #   * {Types::GetIntegrationResponse#integration_type #integration_type} => String
    #   * {Types::GetIntegrationResponse#integration_status #integration_status} => String
    #   * {Types::GetIntegrationResponse#integration_details #integration_details} => Types::IntegrationDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration({
    #     integration_name: "IntegrationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_name #=> String
    #   resp.integration_type #=> String, one of "OPENSEARCH"
    #   resp.integration_status #=> String, one of "PROVISIONING", "ACTIVE", "FAILED"
    #   resp.integration_details.open_search_integration_details.data_source.data_source_name #=> String
    #   resp.integration_details.open_search_integration_details.data_source.status.status #=> String, one of "ACTIVE", "NOT_FOUND", "ERROR"
    #   resp.integration_details.open_search_integration_details.data_source.status.status_message #=> String
    #   resp.integration_details.open_search_integration_details.application.application_endpoint #=> String
    #   resp.integration_details.open_search_integration_details.application.application_arn #=> String
    #   resp.integration_details.open_search_integration_details.application.application_id #=> String
    #   resp.integration_details.open_search_integration_details.application.status.status #=> String, one of "ACTIVE", "NOT_FOUND", "ERROR"
    #   resp.integration_details.open_search_integration_details.application.status.status_message #=> String
    #   resp.integration_details.open_search_integration_details.collection.collection_endpoint #=> String
    #   resp.integration_details.open_search_integration_details.collection.collection_arn #=> String
    #   resp.integration_details.open_search_integration_details.collection.status.status #=> String, one of "ACTIVE", "NOT_FOUND", "ERROR"
    #   resp.integration_details.open_search_integration_details.collection.status.status_message #=> String
    #   resp.integration_details.open_search_integration_details.workspace.workspace_id #=> String
    #   resp.integration_details.open_search_integration_details.workspace.status.status #=> String, one of "ACTIVE", "NOT_FOUND", "ERROR"
    #   resp.integration_details.open_search_integration_details.workspace.status.status_message #=> String
    #   resp.integration_details.open_search_integration_details.encryption_policy.policy_name #=> String
    #   resp.integration_details.open_search_integration_details.encryption_policy.status.status #=> String, one of "ACTIVE", "NOT_FOUND", "ERROR"
    #   resp.integration_details.open_search_integration_details.encryption_policy.status.status_message #=> String
    #   resp.integration_details.open_search_integration_details.network_policy.policy_name #=> String
    #   resp.integration_details.open_search_integration_details.network_policy.status.status #=> String, one of "ACTIVE", "NOT_FOUND", "ERROR"
    #   resp.integration_details.open_search_integration_details.network_policy.status.status_message #=> String
    #   resp.integration_details.open_search_integration_details.access_policy.policy_name #=> String
    #   resp.integration_details.open_search_integration_details.access_policy.status.status #=> String, one of "ACTIVE", "NOT_FOUND", "ERROR"
    #   resp.integration_details.open_search_integration_details.access_policy.status.status_message #=> String
    #   resp.integration_details.open_search_integration_details.lifecycle_policy.policy_name #=> String
    #   resp.integration_details.open_search_integration_details.lifecycle_policy.status.status #=> String, one of "ACTIVE", "NOT_FOUND", "ERROR"
    #   resp.integration_details.open_search_integration_details.lifecycle_policy.status.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetIntegration AWS API Documentation
    #
    # @overload get_integration(params = {})
    # @param [Hash] params ({})
    def get_integration(params = {}, options = {})
      req = build_request(:get_integration, params)
      req.send_request(options)
    end

    # Retrieves information about the log anomaly detector that you specify.
    # The KMS key ARN detected is valid.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the anomaly detector to retrieve information about. You can
    #   find the ARNs of log anomaly detectors in your account by using the
    #   [ListLogAnomalyDetectors][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html
    #
    # @return [Types::GetLogAnomalyDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogAnomalyDetectorResponse#detector_name #detector_name} => String
    #   * {Types::GetLogAnomalyDetectorResponse#log_group_arn_list #log_group_arn_list} => Array&lt;String&gt;
    #   * {Types::GetLogAnomalyDetectorResponse#evaluation_frequency #evaluation_frequency} => String
    #   * {Types::GetLogAnomalyDetectorResponse#filter_pattern #filter_pattern} => String
    #   * {Types::GetLogAnomalyDetectorResponse#anomaly_detector_status #anomaly_detector_status} => String
    #   * {Types::GetLogAnomalyDetectorResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetLogAnomalyDetectorResponse#creation_time_stamp #creation_time_stamp} => Integer
    #   * {Types::GetLogAnomalyDetectorResponse#last_modified_time_stamp #last_modified_time_stamp} => Integer
    #   * {Types::GetLogAnomalyDetectorResponse#anomaly_visibility_time #anomaly_visibility_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_anomaly_detector({
    #     anomaly_detector_arn: "AnomalyDetectorArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_name #=> String
    #   resp.log_group_arn_list #=> Array
    #   resp.log_group_arn_list[0] #=> String
    #   resp.evaluation_frequency #=> String, one of "ONE_MIN", "FIVE_MIN", "TEN_MIN", "FIFTEEN_MIN", "THIRTY_MIN", "ONE_HOUR"
    #   resp.filter_pattern #=> String
    #   resp.anomaly_detector_status #=> String, one of "INITIALIZING", "TRAINING", "ANALYZING", "FAILED", "DELETED", "PAUSED"
    #   resp.kms_key_id #=> String
    #   resp.creation_time_stamp #=> Integer
    #   resp.last_modified_time_stamp #=> Integer
    #   resp.anomaly_visibility_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogAnomalyDetector AWS API Documentation
    #
    # @overload get_log_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def get_log_anomaly_detector(params = {}, options = {})
      req = build_request(:get_log_anomaly_detector, params)
      req.send_request(options)
    end

    # Lists log events from the specified log stream. You can list all of
    # the log events or filter using a time range.
    #
    # `GetLogEvents` is a paginated operation. Each page returned can
    # contain up to 1 MB of log events or up to 10,000 log events. A
    # returned page might only be partially full, or even empty. For
    # example, if the result of a query would return 15,000 log events, the
    # first page isn't guaranteed to have 10,000 log events even if they
    # all fit into 1 MB.
    #
    # Partially full or empty pages don't necessarily mean that pagination
    # is finished. As long as the `nextBackwardToken` or `nextForwardToken`
    # returned is NOT equal to the `nextToken` that you passed into the API
    # call, there might be more log events available. The token that you use
    # depends on the direction you want to move in along the log stream. The
    # returned tokens are never null.
    #
    # <note markdown="1"> If you set `startFromHead` to `true` and you don’t include `endTime`
    # in your request, you can end up in a situation where the pagination
    # doesn't terminate. This can happen when the new log events are being
    # added to the target log streams faster than they are being read. This
    # situation is a good use case for the CloudWatch Logs [Live Tail][1]
    # feature.
    #
    #  </note>
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][2].
    #
    # You can specify the log group to search by using either
    # `logGroupIdentifier` or `logGroupName`. You must include one of these
    # two parameters, but you can't include both.
    #
    # <note markdown="1"> If you are using [log transformation][3], the `GetLogEvents` operation
    # returns only the original versions of log events, before they were
    # transformed. To view the transformed versions, you must use a
    # [CloudWatch Logs query.][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs_LiveTail.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [String] :log_group_identifier
    #   Specify either the name or ARN of the log group to view events from.
    #   If the log group is in a source account and you are using a monitoring
    #   account, you must use the log group ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    # @option params [Integer] :start_time
    #   The start of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp equal to
    #   this time or later than this time are included. Events with a
    #   timestamp earlier than this time are not included.
    #
    # @option params [Integer] :end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after `Jan 1, 1970 00:00:00 UTC`. Events with a timestamp equal to or
    #   later than this time are not included.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of log events returned. If you don't specify a
    #   limit, the default is as many log events as can fit in a response size
    #   of 1 MB (up to 10,000 log events).
    #
    # @option params [Boolean] :start_from_head
    #   If the value is true, the earliest log events are returned first. If
    #   the value is false, the latest log events are returned first. The
    #   default value is false.
    #
    #   If you are using a previous `nextForwardToken` value as the
    #   `nextToken` in this operation, you must specify `true` for
    #   `startFromHead`.
    #
    # @option params [Boolean] :unmask
    #   Specify `true` to display the log event fields with all sensitive data
    #   unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into an
    #   account with the `logs:Unmask` permission.
    #
    # @return [Types::GetLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogEventsResponse#events #events} => Array&lt;Types::OutputLogEvent&gt;
    #   * {Types::GetLogEventsResponse#next_forward_token #next_forward_token} => String
    #   * {Types::GetLogEventsResponse#next_backward_token #next_backward_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_events({
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_name: "LogStreamName", # required
    #     start_time: 1,
    #     end_time: 1,
    #     next_token: "NextToken",
    #     limit: 1,
    #     start_from_head: false,
    #     unmask: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].timestamp #=> Integer
    #   resp.events[0].message #=> String
    #   resp.events[0].ingestion_time #=> Integer
    #   resp.next_forward_token #=> String
    #   resp.next_backward_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogEvents AWS API Documentation
    #
    # @overload get_log_events(params = {})
    # @param [Hash] params ({})
    def get_log_events(params = {}, options = {})
      req = build_request(:get_log_events, params)
      req.send_request(options)
    end

    # Returns a list of the fields that are included in log events in the
    # specified log group. Includes the percentage of log events that
    # contain each field. The search is limited to a time period that you
    # specify.
    #
    # You can specify the log group to search by using either
    # `logGroupIdentifier` or `logGroupName`. You must specify one of these
    # parameters, but you can't specify both.
    #
    # In the results, fields that start with `@` are fields generated by
    # CloudWatch Logs. For example, `@timestamp` is the timestamp of each
    # log event. For more information about the fields that are generated by
    # CloudWatch logs, see [Supported Logs and Discovered Fields][1].
    #
    # The response results are sorted by the frequency percentage, starting
    # with the highest percentage.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account and view data from the linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :log_group_name
    #   The name of the log group to search.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @option params [Integer] :time
    #   The time to set as the center of the query. If you specify `time`, the
    #   8 minutes before and 8 minutes after this time are searched. If you
    #   omit `time`, the most recent 15 minutes up to the current time are
    #   searched.
    #
    #   The `time` value is specified as epoch time, which is the number of
    #   seconds since `January 1, 1970, 00:00:00 UTC`.
    #
    # @option params [String] :log_group_identifier
    #   Specify either the name or ARN of the log group to view. If the log
    #   group is in a source account and you are using a monitoring account,
    #   you must specify the ARN.
    #
    #   <note markdown="1"> You must include either `logGroupIdentifier` or `logGroupName`, but
    #   not both.
    #
    #    </note>
    #
    # @return [Types::GetLogGroupFieldsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogGroupFieldsResponse#log_group_fields #log_group_fields} => Array&lt;Types::LogGroupField&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_group_fields({
    #     log_group_name: "LogGroupName",
    #     time: 1,
    #     log_group_identifier: "LogGroupIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.log_group_fields #=> Array
    #   resp.log_group_fields[0].name #=> String
    #   resp.log_group_fields[0].percent #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogGroupFields AWS API Documentation
    #
    # @overload get_log_group_fields(params = {})
    # @param [Hash] params ({})
    def get_log_group_fields(params = {}, options = {})
      req = build_request(:get_log_group_fields, params)
      req.send_request(options)
    end

    # Retrieves a large logging object (LLO) and streams it back. This API
    # is used to fetch the content of large portions of log events that have
    # been ingested through the PutOpenTelemetryLogs API. When log events
    # contain fields that would cause the total event size to exceed 1MB,
    # CloudWatch Logs automatically processes up to 10 fields, starting with
    # the largest fields. Each field is truncated as needed to keep the
    # total event size as close to 1MB as possible. The excess portions are
    # stored as Large Log Objects (LLOs) and these fields are processed
    # separately and LLO reference system fields (in the format
    # `@ptr.$[path.to.field]`) are added. The path in the reference field
    # reflects the original JSON structure where the large field was
    # located. For example, this could be `@ptr.$['input']['message']`,
    # `@ptr.$['AAA']['BBB']['CCC']['DDD']`, `@ptr.$['AAA']`, or any other
    # path matching your log structure.
    #
    # @option params [Boolean] :unmask
    #   A boolean flag that indicates whether to unmask sensitive log data.
    #   When set to true, any masked or redacted data in the log object will
    #   be displayed in its original form. Default is false.
    #
    # @option params [required, String] :log_object_pointer
    #   A pointer to the specific log object to retrieve. This is a required
    #   parameter that uniquely identifies the log object within CloudWatch
    #   Logs. The pointer is typically obtained from a previous query or
    #   filter operation.
    #
    # @return [Types::GetLogObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogObjectResponse#field_stream #field_stream} => Types::GetLogObjectResponseStream
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register get_log_object
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #get_log_object call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::CloudWatchLogs::EventStreams::GetLogObjectResponseStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #get_log_object
    #   # Example for registering callbacks for all event types and an error event
    #   client.get_log_object(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #get_log_object
    #   #  1) Create a Aws::CloudWatchLogs::EventStreams::GetLogObjectResponseStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::CloudWatchLogs::EventStreams::GetLogObjectResponseStream.new
    #   handler.on_fields_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::fields
    #   end
    #   handler.on_internal_streaming_exception_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::InternalStreamingException
    #   end
    #
    #   client.get_log_object(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_fields_event do |event|
    #       event # => Aws::CloudWatchLogs::Types::fields
    #     end
    #     stream.on_internal_streaming_exception_event do |event|
    #       event # => Aws::CloudWatchLogs::Types::InternalStreamingException
    #     end
    #   end
    #
    #   client.get_log_object(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::CloudWatchLogs::EventStreams::GetLogObjectResponseStream.new
    #   handler.on_fields_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::fields
    #   end
    #   handler.on_internal_streaming_exception_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::InternalStreamingException
    #   end
    #
    #   client.get_log_object(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.field_stream # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_object({
    #     unmask: false,
    #     log_object_pointer: "LogObjectPointer", # required
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.field_stream:
    #   resp.field_stream #=> Enumerator
    #   resp.field_stream.event_types #=> [:fields, :internal_streaming_exception]
    #
    #   # For :fields event available at #on_fields_event callback and response eventstream enumerator:
    #   event.data #=> String
    #
    #   # For :internal_streaming_exception event available at #on_internal_streaming_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogObject AWS API Documentation
    #
    # @overload get_log_object(params = {})
    # @param [Hash] params ({})
    def get_log_object(params = {}, options = {})
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::GetLogObjectResponseStream then handler
        when Proc then EventStreams::GetLogObjectResponseStream.new.tap(&handler)
        when nil then EventStreams::GetLogObjectResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::CloudWatchLogs::EventStreams::GetLogObjectResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:get_log_object, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options)
    end

    # Retrieves all of the fields and values of a single log event. All
    # fields are retrieved, even if the original query that produced the
    # `logRecordPointer` retrieved only a subset of fields. Fields are
    # returned as field name/field value pairs.
    #
    # The full unparsed log event is returned within `@message`.
    #
    # @option params [required, String] :log_record_pointer
    #   The pointer corresponding to the log event record you want to
    #   retrieve. You get this from the response of a `GetQueryResults`
    #   operation. In that response, the value of the `@ptr` field for a log
    #   event is the value to use as `logRecordPointer` to retrieve that
    #   complete log event record.
    #
    # @option params [Boolean] :unmask
    #   Specify `true` to display the log event fields with all sensitive data
    #   unmasked and visible. The default is `false`.
    #
    #   To use this operation with this parameter, you must be signed into an
    #   account with the `logs:Unmask` permission.
    #
    # @return [Types::GetLogRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogRecordResponse#log_record #log_record} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_record({
    #     log_record_pointer: "LogRecordPointer", # required
    #     unmask: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_record #=> Hash
    #   resp.log_record["Field"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogRecord AWS API Documentation
    #
    # @overload get_log_record(params = {})
    # @param [Hash] params ({})
    def get_log_record(params = {}, options = {})
      req = build_request(:get_log_record, params)
      req.send_request(options)
    end

    # Returns the results from the specified query.
    #
    # Only the fields requested in the query are returned, along with a
    # `@ptr` field, which is the identifier for the log record. You can use
    # the value of `@ptr` in a [GetLogRecord][1] operation to get the full
    # log record.
    #
    # `GetQueryResults` does not start running a query. To run a query, use
    # [StartQuery][2]. For more information about how long results of
    # previous queries are available, see [CloudWatch Logs quotas][3].
    #
    # If the value of the `Status` field in the output is `Running`, this
    # operation returns only partial results. If you see a value of
    # `Scheduled` or `Running` for the status, you can retry the operation
    # later to see the final results.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account to start queries in linked
    # source accounts. For more information, see [CloudWatch cross-account
    # observability][4].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/cloudwatch_limits_cwl.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [required, String] :query_id
    #   The ID number of the query.
    #
    # @return [Types::GetQueryResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsResponse#query_language #query_language} => String
    #   * {Types::GetQueryResultsResponse#results #results} => Array&lt;Array&lt;Types::ResultField&gt;&gt;
    #   * {Types::GetQueryResultsResponse#statistics #statistics} => Types::QueryStatistics
    #   * {Types::GetQueryResultsResponse#status #status} => String
    #   * {Types::GetQueryResultsResponse#encryption_key #encryption_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results({
    #     query_id: "QueryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_language #=> String, one of "CWLI", "SQL", "PPL"
    #   resp.results #=> Array
    #   resp.results[0] #=> Array
    #   resp.results[0][0].field #=> String
    #   resp.results[0][0].value #=> String
    #   resp.statistics.records_matched #=> Float
    #   resp.statistics.records_scanned #=> Float
    #   resp.statistics.estimated_records_skipped #=> Float
    #   resp.statistics.bytes_scanned #=> Float
    #   resp.statistics.estimated_bytes_skipped #=> Float
    #   resp.statistics.log_groups_scanned #=> Float
    #   resp.status #=> String, one of "Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"
    #   resp.encryption_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetQueryResults AWS API Documentation
    #
    # @overload get_query_results(params = {})
    # @param [Hash] params ({})
    def get_query_results(params = {}, options = {})
      req = build_request(:get_query_results, params)
      req.send_request(options)
    end

    # Returns the information about the log transformer associated with this
    # log group.
    #
    # This operation returns data only for transformers created at the log
    # group level. To get information for an account-level transformer, use
    # [DescribeAccountPolicies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeAccountPolicies.html
    #
    # @option params [required, String] :log_group_identifier
    #   Specify either the name or ARN of the log group to return transformer
    #   information for. If the log group is in a source account and you are
    #   using a monitoring account, you must use the log group ARN.
    #
    # @return [Types::GetTransformerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTransformerResponse#log_group_identifier #log_group_identifier} => String
    #   * {Types::GetTransformerResponse#creation_time #creation_time} => Integer
    #   * {Types::GetTransformerResponse#last_modified_time #last_modified_time} => Integer
    #   * {Types::GetTransformerResponse#transformer_config #transformer_config} => Array&lt;Types::Processor&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transformer({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_group_identifier #=> String
    #   resp.creation_time #=> Integer
    #   resp.last_modified_time #=> Integer
    #   resp.transformer_config #=> Array
    #   resp.transformer_config[0].add_keys.entries #=> Array
    #   resp.transformer_config[0].add_keys.entries[0].key #=> String
    #   resp.transformer_config[0].add_keys.entries[0].value #=> String
    #   resp.transformer_config[0].add_keys.entries[0].overwrite_if_exists #=> Boolean
    #   resp.transformer_config[0].copy_value.entries #=> Array
    #   resp.transformer_config[0].copy_value.entries[0].source #=> String
    #   resp.transformer_config[0].copy_value.entries[0].target #=> String
    #   resp.transformer_config[0].copy_value.entries[0].overwrite_if_exists #=> Boolean
    #   resp.transformer_config[0].csv.quote_character #=> String
    #   resp.transformer_config[0].csv.delimiter #=> String
    #   resp.transformer_config[0].csv.columns #=> Array
    #   resp.transformer_config[0].csv.columns[0] #=> String
    #   resp.transformer_config[0].csv.source #=> String
    #   resp.transformer_config[0].date_time_converter.source #=> String
    #   resp.transformer_config[0].date_time_converter.target #=> String
    #   resp.transformer_config[0].date_time_converter.target_format #=> String
    #   resp.transformer_config[0].date_time_converter.match_patterns #=> Array
    #   resp.transformer_config[0].date_time_converter.match_patterns[0] #=> String
    #   resp.transformer_config[0].date_time_converter.source_timezone #=> String
    #   resp.transformer_config[0].date_time_converter.target_timezone #=> String
    #   resp.transformer_config[0].date_time_converter.locale #=> String
    #   resp.transformer_config[0].delete_keys.with_keys #=> Array
    #   resp.transformer_config[0].delete_keys.with_keys[0] #=> String
    #   resp.transformer_config[0].grok.source #=> String
    #   resp.transformer_config[0].grok.match #=> String
    #   resp.transformer_config[0].list_to_map.source #=> String
    #   resp.transformer_config[0].list_to_map.key #=> String
    #   resp.transformer_config[0].list_to_map.value_key #=> String
    #   resp.transformer_config[0].list_to_map.target #=> String
    #   resp.transformer_config[0].list_to_map.flatten #=> Boolean
    #   resp.transformer_config[0].list_to_map.flattened_element #=> String, one of "first", "last"
    #   resp.transformer_config[0].lower_case_string.with_keys #=> Array
    #   resp.transformer_config[0].lower_case_string.with_keys[0] #=> String
    #   resp.transformer_config[0].move_keys.entries #=> Array
    #   resp.transformer_config[0].move_keys.entries[0].source #=> String
    #   resp.transformer_config[0].move_keys.entries[0].target #=> String
    #   resp.transformer_config[0].move_keys.entries[0].overwrite_if_exists #=> Boolean
    #   resp.transformer_config[0].parse_cloudfront.source #=> String
    #   resp.transformer_config[0].parse_json.source #=> String
    #   resp.transformer_config[0].parse_json.destination #=> String
    #   resp.transformer_config[0].parse_key_value.source #=> String
    #   resp.transformer_config[0].parse_key_value.destination #=> String
    #   resp.transformer_config[0].parse_key_value.field_delimiter #=> String
    #   resp.transformer_config[0].parse_key_value.key_value_delimiter #=> String
    #   resp.transformer_config[0].parse_key_value.key_prefix #=> String
    #   resp.transformer_config[0].parse_key_value.non_match_value #=> String
    #   resp.transformer_config[0].parse_key_value.overwrite_if_exists #=> Boolean
    #   resp.transformer_config[0].parse_route_53.source #=> String
    #   resp.transformer_config[0].parse_to_ocsf.source #=> String
    #   resp.transformer_config[0].parse_to_ocsf.event_source #=> String, one of "CloudTrail", "Route53Resolver", "VPCFlow", "EKSAudit", "AWSWAF"
    #   resp.transformer_config[0].parse_to_ocsf.ocsf_version #=> String, one of "V1.1"
    #   resp.transformer_config[0].parse_postgres.source #=> String
    #   resp.transformer_config[0].parse_vpc.source #=> String
    #   resp.transformer_config[0].parse_waf.source #=> String
    #   resp.transformer_config[0].rename_keys.entries #=> Array
    #   resp.transformer_config[0].rename_keys.entries[0].key #=> String
    #   resp.transformer_config[0].rename_keys.entries[0].rename_to #=> String
    #   resp.transformer_config[0].rename_keys.entries[0].overwrite_if_exists #=> Boolean
    #   resp.transformer_config[0].split_string.entries #=> Array
    #   resp.transformer_config[0].split_string.entries[0].source #=> String
    #   resp.transformer_config[0].split_string.entries[0].delimiter #=> String
    #   resp.transformer_config[0].substitute_string.entries #=> Array
    #   resp.transformer_config[0].substitute_string.entries[0].source #=> String
    #   resp.transformer_config[0].substitute_string.entries[0].from #=> String
    #   resp.transformer_config[0].substitute_string.entries[0].to #=> String
    #   resp.transformer_config[0].trim_string.with_keys #=> Array
    #   resp.transformer_config[0].trim_string.with_keys[0] #=> String
    #   resp.transformer_config[0].type_converter.entries #=> Array
    #   resp.transformer_config[0].type_converter.entries[0].key #=> String
    #   resp.transformer_config[0].type_converter.entries[0].type #=> String, one of "boolean", "integer", "double", "string"
    #   resp.transformer_config[0].upper_case_string.with_keys #=> Array
    #   resp.transformer_config[0].upper_case_string.with_keys[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetTransformer AWS API Documentation
    #
    # @overload get_transformer(params = {})
    # @param [Hash] params ({})
    def get_transformer(params = {}, options = {})
      req = build_request(:get_transformer, params)
      req.send_request(options)
    end

    # Returns a list of anomalies that log anomaly detectors have found. For
    # details about the structure format of each anomaly object that is
    # returned, see the example in this section.
    #
    # @option params [String] :anomaly_detector_arn
    #   Use this to optionally limit the results to only the anomalies found
    #   by a certain anomaly detector.
    #
    # @option params [String] :suppression_state
    #   You can specify this parameter if you want to the operation to return
    #   only anomalies that are currently either suppressed or unsuppressed.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return. If you don't specify a value,
    #   the default maximum value of 50 items is used.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @return [Types::ListAnomaliesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnomaliesResponse#anomalies #anomalies} => Array&lt;Types::Anomaly&gt;
    #   * {Types::ListAnomaliesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomalies({
    #     anomaly_detector_arn: "AnomalyDetectorArn",
    #     suppression_state: "SUPPRESSED", # accepts SUPPRESSED, UNSUPPRESSED
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.anomalies #=> Array
    #   resp.anomalies[0].anomaly_id #=> String
    #   resp.anomalies[0].pattern_id #=> String
    #   resp.anomalies[0].anomaly_detector_arn #=> String
    #   resp.anomalies[0].pattern_string #=> String
    #   resp.anomalies[0].pattern_regex #=> String
    #   resp.anomalies[0].priority #=> String
    #   resp.anomalies[0].first_seen #=> Integer
    #   resp.anomalies[0].last_seen #=> Integer
    #   resp.anomalies[0].description #=> String
    #   resp.anomalies[0].active #=> Boolean
    #   resp.anomalies[0].state #=> String, one of "Active", "Suppressed", "Baseline"
    #   resp.anomalies[0].histogram #=> Hash
    #   resp.anomalies[0].histogram["Time"] #=> Integer
    #   resp.anomalies[0].log_samples #=> Array
    #   resp.anomalies[0].log_samples[0].timestamp #=> Integer
    #   resp.anomalies[0].log_samples[0].message #=> String
    #   resp.anomalies[0].pattern_tokens #=> Array
    #   resp.anomalies[0].pattern_tokens[0].dynamic_token_position #=> Integer
    #   resp.anomalies[0].pattern_tokens[0].is_dynamic #=> Boolean
    #   resp.anomalies[0].pattern_tokens[0].token_string #=> String
    #   resp.anomalies[0].pattern_tokens[0].enumerations #=> Hash
    #   resp.anomalies[0].pattern_tokens[0].enumerations["TokenString"] #=> Integer
    #   resp.anomalies[0].pattern_tokens[0].inferred_token_name #=> String
    #   resp.anomalies[0].log_group_arn_list #=> Array
    #   resp.anomalies[0].log_group_arn_list[0] #=> String
    #   resp.anomalies[0].suppressed #=> Boolean
    #   resp.anomalies[0].suppressed_date #=> Integer
    #   resp.anomalies[0].suppressed_until #=> Integer
    #   resp.anomalies[0].is_pattern_level_suppression #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListAnomalies AWS API Documentation
    #
    # @overload list_anomalies(params = {})
    # @param [Hash] params ({})
    def list_anomalies(params = {}, options = {})
      req = build_request(:list_anomalies, params)
      req.send_request(options)
    end

    # Returns a list of integrations between CloudWatch Logs and other
    # services in this account. Currently, only one integration can be
    # created in an account, and this integration must be with OpenSearch
    # Service.
    #
    # @option params [String] :integration_name_prefix
    #   To limit the results to integrations that start with a certain name
    #   prefix, specify that name prefix here.
    #
    # @option params [String] :integration_type
    #   To limit the results to integrations of a certain type, specify that
    #   type here.
    #
    # @option params [String] :integration_status
    #   To limit the results to integrations with a certain status, specify
    #   that status here.
    #
    # @return [Types::ListIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegrationsResponse#integration_summaries #integration_summaries} => Array&lt;Types::IntegrationSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integrations({
    #     integration_name_prefix: "IntegrationNamePrefix",
    #     integration_type: "OPENSEARCH", # accepts OPENSEARCH
    #     integration_status: "PROVISIONING", # accepts PROVISIONING, ACTIVE, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_summaries #=> Array
    #   resp.integration_summaries[0].integration_name #=> String
    #   resp.integration_summaries[0].integration_type #=> String, one of "OPENSEARCH"
    #   resp.integration_summaries[0].integration_status #=> String, one of "PROVISIONING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListIntegrations AWS API Documentation
    #
    # @overload list_integrations(params = {})
    # @param [Hash] params ({})
    def list_integrations(params = {}, options = {})
      req = build_request(:list_integrations, params)
      req.send_request(options)
    end

    # Retrieves a list of the log anomaly detectors in the account.
    #
    # @option params [String] :filter_log_group_arn
    #   Use this to optionally filter the results to only include anomaly
    #   detectors that are associated with the specified log group.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return. If you don't specify a value,
    #   the default maximum value of 50 items is used.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @return [Types::ListLogAnomalyDetectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLogAnomalyDetectorsResponse#anomaly_detectors #anomaly_detectors} => Array&lt;Types::AnomalyDetector&gt;
    #   * {Types::ListLogAnomalyDetectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_anomaly_detectors({
    #     filter_log_group_arn: "LogGroupArn",
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_detectors #=> Array
    #   resp.anomaly_detectors[0].anomaly_detector_arn #=> String
    #   resp.anomaly_detectors[0].detector_name #=> String
    #   resp.anomaly_detectors[0].log_group_arn_list #=> Array
    #   resp.anomaly_detectors[0].log_group_arn_list[0] #=> String
    #   resp.anomaly_detectors[0].evaluation_frequency #=> String, one of "ONE_MIN", "FIVE_MIN", "TEN_MIN", "FIFTEEN_MIN", "THIRTY_MIN", "ONE_HOUR"
    #   resp.anomaly_detectors[0].filter_pattern #=> String
    #   resp.anomaly_detectors[0].anomaly_detector_status #=> String, one of "INITIALIZING", "TRAINING", "ANALYZING", "FAILED", "DELETED", "PAUSED"
    #   resp.anomaly_detectors[0].kms_key_id #=> String
    #   resp.anomaly_detectors[0].creation_time_stamp #=> Integer
    #   resp.anomaly_detectors[0].last_modified_time_stamp #=> Integer
    #   resp.anomaly_detectors[0].anomaly_visibility_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListLogAnomalyDetectors AWS API Documentation
    #
    # @overload list_log_anomaly_detectors(params = {})
    # @param [Hash] params ({})
    def list_log_anomaly_detectors(params = {}, options = {})
      req = build_request(:list_log_anomaly_detectors, params)
      req.send_request(options)
    end

    # Returns a list of log groups in the Region in your account. If you are
    # performing this action in a monitoring account, you can choose to also
    # return log groups from source accounts that are linked to the
    # monitoring account. For more information about using cross-account
    # observability to set up monitoring accounts and source accounts, see [
    # CloudWatch cross-account observability][1].
    #
    # You can optionally filter the list by log group class and by using
    # regular expressions in your request to match strings in the log group
    # names.
    #
    # This operation is paginated. By default, your first use of this
    # operation returns 50 results, and includes a token to use in a
    # subsequent operation to return more results.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :log_group_name_pattern
    #   Use this parameter to limit the returned log groups to only those with
    #   names that match the pattern that you specify. This parameter is a
    #   regular expression that can match prefixes and substrings, and
    #   supports wildcard matching and matching multiple patterns, as in the
    #   following examples.
    #
    #   * Use `^` to match log group names by prefix.
    #
    #   * For a substring match, specify the string to match. All matches are
    #     case sensitive
    #
    #   * To match multiple patterns, separate them with a `|` as in the
    #     example `^/aws/lambda|discovery`
    #
    #   You can specify as many as five different regular expression patterns
    #   in this field, each of which must be between 3 and 24 characters. You
    #   can include the `^` symbol as many as five times, and include the `|`
    #   symbol as many as four times.
    #
    # @option params [String] :log_group_class
    #   Use this parameter to limit the results to only those log groups in
    #   the specified log group class. If you omit this parameter, log groups
    #   of all classes can be returned.
    #
    # @option params [Boolean] :include_linked_accounts
    #   If you are using a monitoring account, set this to `true` to have the
    #   operation return log groups in the accounts listed in
    #   `accountIdentifiers`.
    #
    #   If this parameter is set to `true` and `accountIdentifiers` contains a
    #   null value, the operation returns all log groups in the monitoring
    #   account and all log groups in all source accounts that are linked to
    #   the monitoring account.
    #
    #   The default for this parameter is `false`.
    #
    # @option params [Array<String>] :account_identifiers
    #   When `includeLinkedAccounts` is set to `true`, use this parameter to
    #   specify the list of accounts to search. You can specify as many as 20
    #   account IDs in the array.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [Integer] :limit
    #   The maximum number of log groups to return. If you omit this
    #   parameter, the default is up to 50 log groups.
    #
    # @return [Types::ListLogGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLogGroupsResponse#log_groups #log_groups} => Array&lt;Types::LogGroupSummary&gt;
    #   * {Types::ListLogGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_groups({
    #     log_group_name_pattern: "LogGroupNameRegexPattern",
    #     log_group_class: "STANDARD", # accepts STANDARD, INFREQUENT_ACCESS, DELIVERY
    #     include_linked_accounts: false,
    #     account_identifiers: ["AccountId"],
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_groups #=> Array
    #   resp.log_groups[0].log_group_name #=> String
    #   resp.log_groups[0].log_group_arn #=> String
    #   resp.log_groups[0].log_group_class #=> String, one of "STANDARD", "INFREQUENT_ACCESS", "DELIVERY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListLogGroups AWS API Documentation
    #
    # @overload list_log_groups(params = {})
    # @param [Hash] params ({})
    def list_log_groups(params = {}, options = {})
      req = build_request(:list_log_groups, params)
      req.send_request(options)
    end

    # Returns a list of the log groups that were analyzed during a single
    # CloudWatch Logs Insights query. This can be useful for queries that
    # use log group name prefixes or the `filterIndex` command, because the
    # log groups are dynamically selected in these cases.
    #
    # For more information about field indexes, see [Create field indexes to
    # improve query performance and reduce costs][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html
    #
    # @option params [required, String] :query_id
    #   The ID of the query to use. This query ID is from the response to your
    #   [StartQuery][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. The token expires after
    #   24 hours.
    #
    # @option params [Integer] :max_results
    #   Limits the number of returned log groups to the specified number.
    #
    # @return [Types::ListLogGroupsForQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLogGroupsForQueryResponse#log_group_identifiers #log_group_identifiers} => Array&lt;String&gt;
    #   * {Types::ListLogGroupsForQueryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_groups_for_query({
    #     query_id: "QueryId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_group_identifiers #=> Array
    #   resp.log_group_identifiers[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListLogGroupsForQuery AWS API Documentation
    #
    # @overload list_log_groups_for_query(params = {})
    # @param [Hash] params ({})
    def list_log_groups_for_query(params = {}, options = {})
      req = build_request(:list_log_groups_for_query, params)
      req.send_request(options)
    end

    # Displays the tags associated with a CloudWatch Logs resource.
    # Currently, log groups and destinations support tagging.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you want to view tags for.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # The ListTagsLogGroup operation is on the path to deprecation. We
    # recommend that you use [ListTagsForResource][1] instead.
    #
    # Lists the tags for the specified log group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @return [Types::ListTagsLogGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsLogGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_log_group({
    #     log_group_name: "LogGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsLogGroup AWS API Documentation
    #
    # @overload list_tags_log_group(params = {})
    # @param [Hash] params ({})
    def list_tags_log_group(params = {}, options = {})
      req = build_request(:list_tags_log_group, params)
      req.send_request(options)
    end

    # Creates an account-level data protection policy, subscription filter
    # policy, field index policy, transformer policy, or metric extraction
    # policy that applies to all log groups or a subset of log groups in the
    # account.
    #
    # To use this operation, you must be signed on with the correct
    # permissions depending on the type of policy that you are creating.
    #
    # * To create a data protection policy, you must have the
    #   `logs:PutDataProtectionPolicy` and `logs:PutAccountPolicy`
    #   permissions.
    #
    # * To create a subscription filter policy, you must have the
    #   `logs:PutSubscriptionFilter` and `logs:PutAccountPolicy`
    #   permissions.
    #
    # * To create a transformer policy, you must have the
    #   `logs:PutTransformer` and `logs:PutAccountPolicy` permissions.
    #
    # * To create a field index policy, you must have the
    #   `logs:PutIndexPolicy` and `logs:PutAccountPolicy` permissions.
    #
    # * To create a metric extraction policy, you must have the
    #   `logs:PutMetricExtractionPolicy` and `logs:PutAccountPolicy`
    #   permissions.
    #
    # **Data protection policy**
    #
    # A data protection policy can help safeguard sensitive data that's
    # ingested by your log groups by auditing and masking the sensitive log
    # data. Each account can have only one account-level data protection
    # policy.
    #
    # Sensitive data is detected and masked when it is ingested into a log
    # group. When you set a data protection policy, log events ingested into
    # the log groups before that time are not masked.
    #
    # If you use `PutAccountPolicy` to create a data protection policy for
    # your whole account, it applies to both existing log groups and all log
    # groups that are created later in this account. The account-level
    # policy is applied to existing log groups with eventual consistency. It
    # might take up to 5 minutes before sensitive data in existing log
    # groups begins to be masked.
    #
    # By default, when a user views a log event that includes masked data,
    # the sensitive data is replaced by asterisks. A user who has the
    # `logs:Unmask` permission can use a [GetLogEvents][1] or
    # [FilterLogEvents][2] operation with the `unmask` parameter set to
    # `true` to view the unmasked log events. Users with the `logs:Unmask`
    # can also view unmasked data in the CloudWatch Logs console by running
    # a CloudWatch Logs Insights query with the `unmask` query command.
    #
    # For more information, including a list of types of data that can be
    # audited and masked, see [Protect sensitive log data with masking][3].
    #
    # To use the `PutAccountPolicy` operation for a data protection policy,
    # you must be signed on with the `logs:PutDataProtectionPolicy` and
    # `logs:PutAccountPolicy` permissions.
    #
    # The `PutAccountPolicy` operation applies to all log groups in the
    # account. You can use [PutDataProtectionPolicy][4] to create a data
    # protection policy that applies to just one log group. If a log group
    # has its own data protection policy and the account also has an
    # account-level data protection policy, then the two policies are
    # cumulative. Any sensitive term specified in either policy is masked.
    #
    # **Subscription filter policy**
    #
    # A subscription filter policy sets up a real-time feed of log events
    # from CloudWatch Logs to other Amazon Web Services services.
    # Account-level subscription filter policies apply to both existing log
    # groups and log groups that are created later in this account.
    # Supported destinations are Kinesis Data Streams, Firehose, and Lambda.
    # When log events are sent to the receiving service, they are Base64
    # encoded and compressed with the GZIP format.
    #
    # The following destinations are supported for subscription filters:
    #
    # * An Kinesis Data Streams data stream in the same account as the
    #   subscription policy, for same-account delivery.
    #
    # * An Firehose data stream in the same account as the subscription
    #   policy, for same-account delivery.
    #
    # * A Lambda function in the same account as the subscription policy,
    #   for same-account delivery.
    #
    # * A logical destination in a different account created with
    #   [PutDestination][5], for cross-account delivery. Kinesis Data
    #   Streams and Firehose are supported as logical destinations.
    #
    # Each account can have one account-level subscription filter policy per
    # Region. If you are updating an existing filter, you must specify the
    # correct name in `PolicyName`. To perform a `PutAccountPolicy`
    # subscription filter operation for any destination except a Lambda
    # function, you must also have the `iam:PassRole` permission.
    #
    # **Transformer policy**
    #
    # Creates or updates a *log transformer policy* for your account. You
    # use log transformers to transform log events into a different format,
    # making them easier for you to process and analyze. You can also
    # transform logs from different sources into standardized formats that
    # contain relevant, source-specific information. After you have created
    # a transformer, CloudWatch Logs performs this transformation at the
    # time of log ingestion. You can then refer to the transformed versions
    # of the logs during operations such as querying with CloudWatch Logs
    # Insights or creating metric filters or subscription filters.
    #
    # You can also use a transformer to copy metadata from metadata keys
    # into the log events themselves. This metadata can include log group
    # name, log stream name, account ID and Region.
    #
    # A transformer for a log group is a series of processors, where each
    # processor applies one type of transformation to the log events
    # ingested into this log group. For more information about the available
    # processors to use in a transformer, see [ Processors that you can
    # use][6].
    #
    # Having log events in standardized format enables visibility across
    # your applications for your log analysis, reporting, and alarming
    # needs. CloudWatch Logs provides transformation for common log types
    # with out-of-the-box transformation templates for major Amazon Web
    # Services log sources such as VPC flow logs, Lambda, and Amazon RDS.
    # You can use pre-built transformation templates or create custom
    # transformation policies.
    #
    # You can create transformers only for the log groups in the Standard
    # log class.
    #
    # You can have one account-level transformer policy that applies to all
    # log groups in the account. Or you can create as many as 20
    # account-level transformer policies that are each scoped to a subset of
    # log groups with the `selectionCriteria` parameter. If you have
    # multiple account-level transformer policies with selection criteria,
    # no two of them can use the same or overlapping log group name
    # prefixes. For example, if you have one policy filtered to log groups
    # that start with `my-log`, you can't have another field index policy
    # filtered to `my-logpprod` or `my-logging`.
    #
    # You can also set up a transformer at the log-group level. For more
    # information, see [PutTransformer][7]. If there is both a log-group
    # level transformer created with `PutTransformer` and an account-level
    # transformer that could apply to the same log group, the log group uses
    # only the log-group level transformer. It ignores the account-level
    # transformer.
    #
    # **Field index policy**
    #
    # You can use field index policies to create indexes on fields found in
    # log events in the log group. Creating field indexes can help lower the
    # scan volume for CloudWatch Logs Insights queries that reference those
    # fields, because these queries attempt to skip the processing of log
    # events that are known to not match the indexed field. Good fields to
    # index are fields that you often need to query for and fields or values
    # that match only a small fraction of the total log events. Common
    # examples of indexes include request ID, session ID, user IDs, or
    # instance IDs. For more information, see [Create field indexes to
    # improve query performance and reduce costs][8]
    #
    # To find the fields that are in your log group events, use the
    # [GetLogGroupFields][9] operation.
    #
    # For example, suppose you have created a field index for `requestId`.
    # Then, any CloudWatch Logs Insights query on that log group that
    # includes `requestId = value ` or `requestId in [value, value, ...]`
    # will attempt to process only the log events where the indexed field
    # matches the specified value.
    #
    # Matches of log events to the names of indexed fields are
    # case-sensitive. For example, an indexed field of `RequestId` won't
    # match a log event containing `requestId`.
    #
    # You can have one account-level field index policy that applies to all
    # log groups in the account. Or you can create as many as 20
    # account-level field index policies that are each scoped to a subset of
    # log groups with the `selectionCriteria` parameter. If you have
    # multiple account-level index policies with selection criteria, no two
    # of them can use the same or overlapping log group name prefixes. For
    # example, if you have one policy filtered to log groups that start with
    # `my-log`, you can't have another field index policy filtered to
    # `my-logpprod` or `my-logging`.
    #
    # If you create an account-level field index policy in a monitoring
    # account in cross-account observability, the policy is applied only to
    # the monitoring account and not to any source accounts.
    #
    # If you want to create a field index policy for a single log group, you
    # can use [PutIndexPolicy][10] instead of `PutAccountPolicy`. If you do
    # so, that log group will use only that log-group level policy, and will
    # ignore the account-level policy that you create with
    # [PutAccountPolicy][11].
    #
    # **Metric extraction policy**
    #
    # A metric extraction policy controls whether CloudWatch Metrics can be
    # created through the Embedded Metrics Format (EMF) for log groups in
    # your account. By default, EMF metric creation is enabled for all log
    # groups. You can use metric extraction policies to disable EMF metric
    # creation for your entire account or specific log groups.
    #
    # When a policy disables EMF metric creation for a log group, log events
    # in the EMF format are still ingested, but no CloudWatch Metrics are
    # created from them.
    #
    # Creating a policy disables metrics for AWS features that use EMF to
    # create metrics, such as CloudWatch Container Insights and CloudWatch
    # Application Signals. To prevent turning off those features by
    # accident, we recommend that you exclude the underlying log-groups
    # through a selection-criteria such as `LogGroupNamePrefix NOT IN
    # ["/aws/containerinsights", "/aws/ecs/containerinsights",
    # "/aws/application-signals/data"]`.
    #
    # Each account can have either one account-level metric extraction
    # policy that applies to all log groups, or up to 5 policies that are
    # each scoped to a subset of log groups with the `selectionCriteria`
    # parameter. The selection criteria supports filtering by `LogGroupName`
    # and `LogGroupNamePrefix` using the operators `IN` and `NOT IN`. You
    # can specify up to 50 values in each `IN` or `NOT IN` list.
    #
    # The selection criteria can be specified in these formats:
    #
    # `LogGroupName IN ["log-group-1", "log-group-2"]`
    #
    # `LogGroupNamePrefix NOT IN ["/aws/prefix1", "/aws/prefix2"]`
    #
    # If you have multiple account-level metric extraction policies with
    # selection criteria, no two of them can have overlapping criteria. For
    # example, if you have one policy with selection criteria
    # `LogGroupNamePrefix IN ["my-log"]`, you can't have another metric
    # extraction policy with selection criteria `LogGroupNamePrefix IN
    # ["/my-log-prod"]` or `LogGroupNamePrefix IN ["/my-logging"]`, as the
    # set of log groups matching these prefixes would be a subset of the log
    # groups matching the first policy's prefix, creating an overlap.
    #
    # When using `NOT IN`, only one policy with this operator is allowed per
    # account.
    #
    # When combining policies with `IN` and `NOT IN` operators, the overlap
    # check ensures that policies don't have conflicting effects. Two
    # policies with `IN` and `NOT IN` operators do not overlap if and only
    # if every value in the `IN `policy is completely contained within some
    # value in the `NOT IN` policy. For example:
    #
    # * If you have a `NOT IN` policy for prefix `"/aws/lambda"`, you can
    #   create an `IN` policy for the exact log group name
    #   `"/aws/lambda/function1"` because the set of log groups matching
    #   `"/aws/lambda/function1"` is a subset of the log groups matching
    #   `"/aws/lambda"`.
    #
    # * If you have a `NOT IN` policy for prefix `"/aws/lambda"`, you cannot
    #   create an `IN` policy for prefix `"/aws"` because the set of log
    #   groups matching `"/aws"` is not a subset of the log groups matching
    #   `"/aws/lambda"`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html
    # [5]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html
    # [6]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors
    # [7]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html
    # [8]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html
    # [9]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogGroupFields.html
    # [10]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html
    # [11]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html
    #
    # @option params [required, String] :policy_name
    #   A name for the policy. This must be unique within the account.
    #
    # @option params [required, String] :policy_document
    #   Specify the policy, in JSON.
    #
    #   **Data protection policy**
    #
    #   A data protection policy must include two JSON blocks:
    #
    #   * The first block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Audit` action. The `DataIdentifer`
    #     array lists the types of sensitive data that you want to mask. For
    #     more information about the available options, see [Types of data
    #     that you can mask][1].
    #
    #     The `Operation` property with an `Audit` action is required to find
    #     the sensitive data terms. This `Audit` action must contain a
    #     `FindingsDestination` object. You can optionally use that
    #     `FindingsDestination` object to list one or more destinations to
    #     send audit findings to. If you specify destinations such as log
    #     groups, Firehose streams, and S3 buckets, they must already exist.
    #
    #   * The second block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Deidentify` action. The
    #     `DataIdentifer` array must exactly match the `DataIdentifer` array
    #     in the first block of the policy.
    #
    #     The `Operation` property with the `Deidentify` action is what
    #     actually masks the data, and it must contain the ` "MaskConfig": {}`
    #     object. The ` "MaskConfig": {}` object must be empty.
    #
    #   For an example data protection policy, see the **Examples** section on
    #   this page.
    #
    #   The contents of the two `DataIdentifer` arrays must match exactly.
    #
    #   In addition to the two JSON blocks, the `policyDocument` can also
    #   include `Name`, `Description`, and `Version` fields. The `Name` is
    #   different than the operation's `policyName` parameter, and is used as
    #   a dimension when CloudWatch Logs reports audit findings metrics to
    #   CloudWatch.
    #
    #   The JSON specified in `policyDocument` can be up to 30,720 characters
    #   long.
    #
    #   **Subscription filter policy**
    #
    #   A subscription filter policy can include the following attributes in a
    #   JSON block:
    #
    #   * **DestinationArn** The ARN of the destination to deliver log events
    #     to. Supported destinations are:
    #
    #     * An Kinesis Data Streams data stream in the same account as the
    #       subscription policy, for same-account delivery.
    #
    #     * An Firehose data stream in the same account as the subscription
    #       policy, for same-account delivery.
    #
    #     * A Lambda function in the same account as the subscription policy,
    #       for same-account delivery.
    #
    #     * A logical destination in a different account created with
    #       [PutDestination][2], for cross-account delivery. Kinesis Data
    #       Streams and Firehose are supported as logical destinations.
    #   * **RoleArn** The ARN of an IAM role that grants CloudWatch Logs
    #     permissions to deliver ingested log events to the destination
    #     stream. You don't need to provide the ARN when you are working with
    #     a logical destination for cross-account delivery.
    #
    #   * **FilterPattern** A filter pattern for subscribing to a filtered
    #     stream of log events.
    #
    #   * **Distribution** The method used to distribute log data to the
    #     destination. By default, log data is grouped by log stream, but the
    #     grouping can be set to `Random` for a more even distribution. This
    #     property is only applicable when the destination is an Kinesis Data
    #     Streams data stream.
    #
    #   **Transformer policy**
    #
    #   A transformer policy must include one JSON block with the array of
    #   processors and their configurations. For more information about
    #   available processors, see [ Processors that you can use][3].
    #
    #   **Field index policy**
    #
    #   A field index filter policy can include the following attribute in a
    #   JSON block:
    #
    #   * **Fields** The array of field indexes to create.
    #
    #   ^
    #
    #   It must contain at least one field index.
    #
    #   The following is an example of an index policy document that creates
    #   two indexes, `RequestId` and `TransactionId`.
    #
    #   `"policyDocument": "{ "Fields": [ "RequestId", "TransactionId" ]
    #   }"`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors
    #
    # @option params [required, String] :policy_type
    #   The type of policy that you're creating or updating.
    #
    # @option params [String] :scope
    #   Currently the only valid value for this parameter is `ALL`, which
    #   specifies that the data protection policy applies to all log groups in
    #   the account. If you omit this parameter, the default of `ALL` is used.
    #
    # @option params [String] :selection_criteria
    #   Use this parameter to apply the new policy to a subset of log groups
    #   in the account.
    #
    #   Specifying `selectionCriteria` is valid only when you specify
    #   `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or
    #   `TRANSFORMER_POLICY`for `policyType`.
    #
    #   If `policyType` is `SUBSCRIPTION_FILTER_POLICY`, the only supported
    #   `selectionCriteria` filter is `LogGroupName NOT IN []`
    #
    #   If `policyType` is `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`, the
    #   only supported `selectionCriteria` filter is `LogGroupNamePrefix`
    #
    #   The `selectionCriteria` string can be up to 25KB in length. The length
    #   is determined by using its UTF-8 bytes.
    #
    #   Using the `selectionCriteria` parameter with
    #   `SUBSCRIPTION_FILTER_POLICY` is useful to help prevent infinite loops.
    #   For more information, see [Log recursion prevention][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions-recursion-prevention.html
    #
    # @return [Types::PutAccountPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAccountPolicyResponse#account_policy #account_policy} => Types::AccountPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_policy({
    #     policy_name: "PolicyName", # required
    #     policy_document: "AccountPolicyDocument", # required
    #     policy_type: "DATA_PROTECTION_POLICY", # required, accepts DATA_PROTECTION_POLICY, SUBSCRIPTION_FILTER_POLICY, FIELD_INDEX_POLICY, TRANSFORMER_POLICY, METRIC_EXTRACTION_POLICY
    #     scope: "ALL", # accepts ALL
    #     selection_criteria: "SelectionCriteria",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_policy.policy_name #=> String
    #   resp.account_policy.policy_document #=> String
    #   resp.account_policy.last_updated_time #=> Integer
    #   resp.account_policy.policy_type #=> String, one of "DATA_PROTECTION_POLICY", "SUBSCRIPTION_FILTER_POLICY", "FIELD_INDEX_POLICY", "TRANSFORMER_POLICY", "METRIC_EXTRACTION_POLICY"
    #   resp.account_policy.scope #=> String, one of "ALL"
    #   resp.account_policy.selection_criteria #=> String
    #   resp.account_policy.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutAccountPolicy AWS API Documentation
    #
    # @overload put_account_policy(params = {})
    # @param [Hash] params ({})
    def put_account_policy(params = {}, options = {})
      req = build_request(:put_account_policy, params)
      req.send_request(options)
    end

    # Creates a data protection policy for the specified log group. A data
    # protection policy can help safeguard sensitive data that's ingested
    # by the log group by auditing and masking the sensitive log data.
    #
    # Sensitive data is detected and masked when it is ingested into the log
    # group. When you set a data protection policy, log events ingested into
    # the log group before that time are not masked.
    #
    # By default, when a user views a log event that includes masked data,
    # the sensitive data is replaced by asterisks. A user who has the
    # `logs:Unmask` permission can use a [GetLogEvents][1] or
    # [FilterLogEvents][2] operation with the `unmask` parameter set to
    # `true` to view the unmasked log events. Users with the `logs:Unmask`
    # can also view unmasked data in the CloudWatch Logs console by running
    # a CloudWatch Logs Insights query with the `unmask` query command.
    #
    # For more information, including a list of types of data that can be
    # audited and masked, see [Protect sensitive log data with masking][3].
    #
    # The `PutDataProtectionPolicy` operation applies to only the specified
    # log group. You can also use [PutAccountPolicy][4] to create an
    # account-level data protection policy that applies to all log groups in
    # the account, including both existing log groups and log groups that
    # are created level. If a log group has its own data protection policy
    # and the account also has an account-level data protection policy, then
    # the two policies are cumulative. Any sensitive term specified in
    # either policy is masked.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html
    #
    # @option params [required, String] :log_group_identifier
    #   Specify either the log group name or log group ARN.
    #
    # @option params [required, String] :policy_document
    #   Specify the data protection policy, in JSON.
    #
    #   This policy must include two JSON blocks:
    #
    #   * The first block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Audit` action. The `DataIdentifer`
    #     array lists the types of sensitive data that you want to mask. For
    #     more information about the available options, see [Types of data
    #     that you can mask][1].
    #
    #     The `Operation` property with an `Audit` action is required to find
    #     the sensitive data terms. This `Audit` action must contain a
    #     `FindingsDestination` object. You can optionally use that
    #     `FindingsDestination` object to list one or more destinations to
    #     send audit findings to. If you specify destinations such as log
    #     groups, Firehose streams, and S3 buckets, they must already exist.
    #
    #   * The second block must include both a `DataIdentifer` array and an
    #     `Operation` property with an `Deidentify` action. The
    #     `DataIdentifer` array must exactly match the `DataIdentifer` array
    #     in the first block of the policy.
    #
    #     The `Operation` property with the `Deidentify` action is what
    #     actually masks the data, and it must contain the ` "MaskConfig": {}`
    #     object. The ` "MaskConfig": {}` object must be empty.
    #
    #   For an example data protection policy, see the **Examples** section on
    #   this page.
    #
    #   The contents of the two `DataIdentifer` arrays must match exactly.
    #
    #   In addition to the two JSON blocks, the `policyDocument` can also
    #   include `Name`, `Description`, and `Version` fields. The `Name` is
    #   used as a dimension when CloudWatch Logs reports audit findings
    #   metrics to CloudWatch.
    #
    #   The JSON specified in `policyDocument` can be up to 30,720 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html
    #
    # @return [Types::PutDataProtectionPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDataProtectionPolicyResponse#log_group_identifier #log_group_identifier} => String
    #   * {Types::PutDataProtectionPolicyResponse#policy_document #policy_document} => String
    #   * {Types::PutDataProtectionPolicyResponse#last_updated_time #last_updated_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_protection_policy({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #     policy_document: "DataProtectionPolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_group_identifier #=> String
    #   resp.policy_document #=> String
    #   resp.last_updated_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDataProtectionPolicy AWS API Documentation
    #
    # @overload put_data_protection_policy(params = {})
    # @param [Hash] params ({})
    def put_data_protection_policy(params = {}, options = {})
      req = build_request(:put_data_protection_policy, params)
      req.send_request(options)
    end

    # Creates or updates a logical *delivery destination*. A delivery
    # destination is an Amazon Web Services resource that represents an
    # Amazon Web Services service that logs can be sent to. CloudWatch Logs,
    # Amazon S3, and Firehose are supported as logs delivery destinations
    # and X-Ray as the trace delivery destination.
    #
    # To configure logs delivery between a supported Amazon Web Services
    # service and a destination, you must do the following:
    #
    # * Create a delivery source, which is a logical object that represents
    #   the resource that is actually sending the logs. For more
    #   information, see [PutDeliverySource][1].
    #
    # * Use `PutDeliveryDestination` to create a *delivery destination* in
    #   the same account of the actual delivery destination. The delivery
    #   destination that you create is a logical object that represents the
    #   actual delivery destination.
    #
    # * If you are delivering logs cross-account, you must use
    #   [PutDeliveryDestinationPolicy][2] in the destination account to
    #   assign an IAM policy to the destination. This policy allows delivery
    #   to that destination.
    #
    # * Use `CreateDelivery` to create a *delivery* by pairing exactly one
    #   delivery source and one delivery destination. For more information,
    #   see [CreateDelivery][3].
    #
    # You can configure a single delivery source to send logs to multiple
    # destinations by creating multiple deliveries. You can also create
    # multiple deliveries to configure multiple delivery sources to send
    # logs to the same delivery destination.
    #
    # Only some Amazon Web Services services support being configured as a
    # delivery source. These services are listed as **Supported \[V2
    # Permissions\]** in the table at [Enabling logging from Amazon Web
    # Services services.][4]
    #
    # If you use this operation to update an existing delivery destination,
    # all the current delivery destination parameters are overwritten with
    # the new parameter values that you specify.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    #
    # @option params [required, String] :name
    #   A name for this delivery destination. This name must be unique for all
    #   delivery destinations in your account.
    #
    # @option params [String] :output_format
    #   The format for the logs that this delivery destination will receive.
    #
    # @option params [Types::DeliveryDestinationConfiguration] :delivery_destination_configuration
    #   A structure that contains the ARN of the Amazon Web Services resource
    #   that will receive the logs.
    #
    #   <note markdown="1"> `deliveryDestinationConfiguration` is required for CloudWatch Logs,
    #   Amazon S3, Firehose log delivery destinations and not required for
    #   X-Ray trace delivery destinations. `deliveryDestinationType` is needed
    #   for X-Ray trace delivery destinations but not required for other logs
    #   delivery destinations.
    #
    #    </note>
    #
    # @option params [String] :delivery_destination_type
    #   The type of delivery destination. This parameter specifies the target
    #   service where log data will be delivered. Valid values include:
    #
    #   * `S3` - Amazon S3 for long-term storage and analytics
    #
    #   * `CWL` - CloudWatch Logs for centralized log management
    #
    #   * `FH` - Amazon Kinesis Data Firehose for real-time data streaming
    #
    #   * `XRAY` - Amazon Web Services X-Ray for distributed tracing and
    #     application monitoring
    #
    #   The delivery destination type determines the format and configuration
    #   options available for log delivery.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::PutDeliveryDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDeliveryDestinationResponse#delivery_destination #delivery_destination} => Types::DeliveryDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_delivery_destination({
    #     name: "DeliveryDestinationName", # required
    #     output_format: "json", # accepts json, plain, w3c, raw, parquet
    #     delivery_destination_configuration: {
    #       destination_resource_arn: "Arn", # required
    #     },
    #     delivery_destination_type: "S3", # accepts S3, CWL, FH, XRAY
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_destination.name #=> String
    #   resp.delivery_destination.arn #=> String
    #   resp.delivery_destination.delivery_destination_type #=> String, one of "S3", "CWL", "FH", "XRAY"
    #   resp.delivery_destination.output_format #=> String, one of "json", "plain", "w3c", "raw", "parquet"
    #   resp.delivery_destination.delivery_destination_configuration.destination_resource_arn #=> String
    #   resp.delivery_destination.tags #=> Hash
    #   resp.delivery_destination.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliveryDestination AWS API Documentation
    #
    # @overload put_delivery_destination(params = {})
    # @param [Hash] params ({})
    def put_delivery_destination(params = {}, options = {})
      req = build_request(:put_delivery_destination, params)
      req.send_request(options)
    end

    # Creates and assigns an IAM policy that grants permissions to
    # CloudWatch Logs to deliver logs cross-account to a specified
    # destination in this account. To configure the delivery of logs from an
    # Amazon Web Services service in another account to a logs delivery
    # destination in the current account, you must do the following:
    #
    # * Create a delivery source, which is a logical object that represents
    #   the resource that is actually sending the logs. For more
    #   information, see [PutDeliverySource][1].
    #
    # * Create a *delivery destination*, which is a logical object that
    #   represents the actual delivery destination. For more information,
    #   see [PutDeliveryDestination][2].
    #
    # * Use this operation in the destination account to assign an IAM
    #   policy to the destination. This policy allows delivery to that
    #   destination.
    #
    # * Create a *delivery* by pairing exactly one delivery source and one
    #   delivery destination. For more information, see [CreateDelivery][3].
    #
    # Only some Amazon Web Services services support being configured as a
    # delivery source. These services are listed as **Supported \[V2
    # Permissions\]** in the table at [Enabling logging from Amazon Web
    # Services services.][4]
    #
    # The contents of the policy must include two statements. One statement
    # enables general logs delivery, and the other allows delivery to the
    # chosen destination. See the examples for the needed policies.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    #
    # @option params [required, String] :delivery_destination_name
    #   The name of the delivery destination to assign this policy to.
    #
    # @option params [required, String] :delivery_destination_policy
    #   The contents of the policy.
    #
    # @return [Types::PutDeliveryDestinationPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDeliveryDestinationPolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_delivery_destination_policy({
    #     delivery_destination_name: "DeliveryDestinationName", # required
    #     delivery_destination_policy: "DeliveryDestinationPolicy", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.delivery_destination_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliveryDestinationPolicy AWS API Documentation
    #
    # @overload put_delivery_destination_policy(params = {})
    # @param [Hash] params ({})
    def put_delivery_destination_policy(params = {}, options = {})
      req = build_request(:put_delivery_destination_policy, params)
      req.send_request(options)
    end

    # Creates or updates a logical *delivery source*. A delivery source
    # represents an Amazon Web Services resource that sends logs to an logs
    # delivery destination. The destination can be CloudWatch Logs, Amazon
    # S3, Firehose or X-Ray for sending traces.
    #
    # To configure logs delivery between a delivery destination and an
    # Amazon Web Services service that is supported as a delivery source,
    # you must do the following:
    #
    # * Use `PutDeliverySource` to create a delivery source, which is a
    #   logical object that represents the resource that is actually sending
    #   the logs.
    #
    # * Use `PutDeliveryDestination` to create a *delivery destination*,
    #   which is a logical object that represents the actual delivery
    #   destination. For more information, see [PutDeliveryDestination][1].
    #
    # * If you are delivering logs cross-account, you must use
    #   [PutDeliveryDestinationPolicy][2] in the destination account to
    #   assign an IAM policy to the destination. This policy allows delivery
    #   to that destination.
    #
    # * Use `CreateDelivery` to create a *delivery* by pairing exactly one
    #   delivery source and one delivery destination. For more information,
    #   see [CreateDelivery][3].
    #
    # You can configure a single delivery source to send logs to multiple
    # destinations by creating multiple deliveries. You can also create
    # multiple deliveries to configure multiple delivery sources to send
    # logs to the same delivery destination.
    #
    # Only some Amazon Web Services services support being configured as a
    # delivery source. These services are listed as **Supported \[V2
    # Permissions\]** in the table at [Enabling logging from Amazon Web
    # Services services.][4]
    #
    # If you use this operation to update an existing delivery source, all
    # the current delivery source parameters are overwritten with the new
    # parameter values that you specify.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    #
    # @option params [required, String] :name
    #   A name for this delivery source. This name must be unique for all
    #   delivery sources in your account.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the Amazon Web Services resource that is generating and
    #   sending logs. For example,
    #   `arn:aws:workmail:us-east-1:123456789012:organization/m-1234EXAMPLEabcd1234abcd1234abcd1234`
    #
    # @option params [required, String] :log_type
    #   Defines the type of log that the source is sending.
    #
    #   * For Amazon Bedrock, the valid value is `APPLICATION_LOGS` and
    #     `TRACES`.
    #
    #   * For CloudFront, the valid value is `ACCESS_LOGS`.
    #
    #   * For Amazon CodeWhisperer, the valid value is `EVENT_LOGS`.
    #
    #   * For Elemental MediaPackage, the valid values are
    #     `EGRESS_ACCESS_LOGS` and `INGRESS_ACCESS_LOGS`.
    #
    #   * For Elemental MediaTailor, the valid values are
    #     `AD_DECISION_SERVER_LOGS`, `MANIFEST_SERVICE_LOGS`, and
    #     `TRANSCODE_LOGS`.
    #
    #   * For Entity Resolution, the valid value is `WORKFLOW_LOGS`.
    #
    #   * For IAM Identity Center, the valid value is `ERROR_LOGS`.
    #
    #   * For PCS, the valid values are `PCS_SCHEDULER_LOGS` and
    #     `PCS_JOBCOMP_LOGS`.
    #
    #   * For Amazon Q, the valid value is `EVENT_LOGS`.
    #
    #   * For Amazon SES mail manager, the valid values are `APPLICATION_LOG`
    #     and `TRAFFIC_POLICY_DEBUG_LOGS`.
    #
    #   * For Amazon WorkMail, the valid values are `ACCESS_CONTROL_LOGS`,
    #     `AUTHENTICATION_LOGS`, `WORKMAIL_AVAILABILITY_PROVIDER_LOGS`,
    #     `WORKMAIL_MAILBOX_ACCESS_LOGS`, and
    #     `WORKMAIL_PERSONAL_ACCESS_TOKEN_LOGS`.
    #
    #   * For Amazon VPC Route Server, the valid value is `EVENT_LOGS`.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::PutDeliverySourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDeliverySourceResponse#delivery_source #delivery_source} => Types::DeliverySource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_delivery_source({
    #     name: "DeliverySourceName", # required
    #     resource_arn: "Arn", # required
    #     log_type: "LogType", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_source.name #=> String
    #   resp.delivery_source.arn #=> String
    #   resp.delivery_source.resource_arns #=> Array
    #   resp.delivery_source.resource_arns[0] #=> String
    #   resp.delivery_source.service #=> String
    #   resp.delivery_source.log_type #=> String
    #   resp.delivery_source.tags #=> Hash
    #   resp.delivery_source.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDeliverySource AWS API Documentation
    #
    # @overload put_delivery_source(params = {})
    # @param [Hash] params ({})
    def put_delivery_source(params = {}, options = {})
      req = build_request(:put_delivery_source, params)
      req.send_request(options)
    end

    # Creates or updates a destination. This operation is used only to
    # create destinations for cross-account subscriptions.
    #
    # A destination encapsulates a physical resource (such as an Amazon
    # Kinesis stream). With a destination, you can subscribe to a real-time
    # stream of log events for a different account, ingested using
    # [PutLogEvents][1].
    #
    # Through an access policy, a destination controls what is written to
    # it. By default, `PutDestination` does not set any access policy with
    # the destination, which means a cross-account user cannot call
    # [PutSubscriptionFilter][2] against this destination. To enable this,
    # the destination owner must call [PutDestinationPolicy][3] after
    # `PutDestination`.
    #
    # To perform a `PutDestination` operation, you must also have the
    # `iam:PassRole` permission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html
    #
    # @option params [required, String] :destination_name
    #   A name for the destination.
    #
    # @option params [required, String] :target_arn
    #   The ARN of an Amazon Kinesis stream to which to deliver matching log
    #   events.
    #
    # @option params [required, String] :role_arn
    #   The ARN of an IAM role that grants CloudWatch Logs permissions to call
    #   the Amazon Kinesis `PutRecord` operation on the destination stream.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional list of key-value pairs to associate with the resource.
    #
    #   For more information about tagging, see [Tagging Amazon Web Services
    #   resources][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::PutDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDestinationResponse#destination #destination} => Types::Destination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_destination({
    #     destination_name: "DestinationName", # required
    #     target_arn: "TargetArn", # required
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.destination.destination_name #=> String
    #   resp.destination.target_arn #=> String
    #   resp.destination.role_arn #=> String
    #   resp.destination.access_policy #=> String
    #   resp.destination.arn #=> String
    #   resp.destination.creation_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestination AWS API Documentation
    #
    # @overload put_destination(params = {})
    # @param [Hash] params ({})
    def put_destination(params = {}, options = {})
      req = build_request(:put_destination, params)
      req.send_request(options)
    end

    # Creates or updates an access policy associated with an existing
    # destination. An access policy is an [IAM policy document][1] that is
    # used to authorize claims to register a subscription filter against a
    # given destination.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html
    #
    # @option params [required, String] :destination_name
    #   A name for an existing destination.
    #
    # @option params [required, String] :access_policy
    #   An IAM policy document that authorizes cross-account users to deliver
    #   their log events to the associated destination. This can be up to 5120
    #   bytes.
    #
    # @option params [Boolean] :force_update
    #   Specify true if you are updating an existing destination policy to
    #   grant permission to an organization ID instead of granting permission
    #   to individual Amazon Web Services accounts. Before you update a
    #   destination policy this way, you must first update the subscription
    #   filters in the accounts that send logs to this destination. If you do
    #   not, the subscription filters might stop working. By specifying `true`
    #   for `forceUpdate`, you are affirming that you have already updated the
    #   subscription filters. For more information, see [ Updating an existing
    #   cross-account subscription][1]
    #
    #   If you omit this parameter, the default of `false` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_destination_policy({
    #     destination_name: "DestinationName", # required
    #     access_policy: "AccessPolicy", # required
    #     force_update: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationPolicy AWS API Documentation
    #
    # @overload put_destination_policy(params = {})
    # @param [Hash] params ({})
    def put_destination_policy(params = {}, options = {})
      req = build_request(:put_destination_policy, params)
      req.send_request(options)
    end

    # Creates or updates a *field index policy* for the specified log group.
    # Only log groups in the Standard log class support field index
    # policies. For more information about log classes, see [Log
    # classes][1].
    #
    # You can use field index policies to create *field indexes* on fields
    # found in log events in the log group. Creating field indexes speeds up
    # and lowers the costs for CloudWatch Logs Insights queries that
    # reference those field indexes, because these queries attempt to skip
    # the processing of log events that are known to not match the indexed
    # field. Good fields to index are fields that you often need to query
    # for and fields or values that match only a small fraction of the total
    # log events. Common examples of indexes include request ID, session ID,
    # userID, and instance IDs. For more information, see [Create field
    # indexes to improve query performance and reduce costs][2].
    #
    # To find the fields that are in your log group events, use the
    # [GetLogGroupFields][3] operation.
    #
    # For example, suppose you have created a field index for `requestId`.
    # Then, any CloudWatch Logs Insights query on that log group that
    # includes `requestId = value ` or `requestId IN [value, value, ...]`
    # will process fewer log events to reduce costs, and have improved
    # performance.
    #
    # Each index policy has the following quotas and restrictions:
    #
    # * As many as 20 fields can be included in the policy.
    #
    # * Each field name can include as many as 100 characters.
    #
    # Matches of log events to the names of indexed fields are
    # case-sensitive. For example, a field index of `RequestId` won't match
    # a log event containing `requestId`.
    #
    # Log group-level field index policies created with `PutIndexPolicy`
    # override account-level field index policies created with
    # [PutAccountPolicy][4]. If you use `PutIndexPolicy` to create a field
    # index policy for a log group, that log group uses only that policy.
    # The log group ignores any account-wide field index policy that you
    # might have created.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogGroupFields.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html
    #
    # @option params [required, String] :log_group_identifier
    #   Specify either the log group name or log group ARN to apply this field
    #   index policy to. If you specify an ARN, use the format
    #   arn:aws:logs:*region*:*account-id*:log-group:*log\_group\_name* Don't
    #   include an * at the end.
    #
    # @option params [required, String] :policy_document
    #   The index policy document, in JSON format. The following is an example
    #   of an index policy document that creates two indexes, `RequestId` and
    #   `TransactionId`.
    #
    #   `"policyDocument": "{ "Fields": [ "RequestId", "TransactionId" ] }"`
    #
    #   The policy document must include at least one field index. For more
    #   information about the fields that can be included and other
    #   restrictions, see [Field index syntax and quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing-Syntax.html
    #
    # @return [Types::PutIndexPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutIndexPolicyResponse#index_policy #index_policy} => Types::IndexPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_index_policy({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #     policy_document: "PolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.index_policy.log_group_identifier #=> String
    #   resp.index_policy.last_update_time #=> Integer
    #   resp.index_policy.policy_document #=> String
    #   resp.index_policy.policy_name #=> String
    #   resp.index_policy.source #=> String, one of "ACCOUNT", "LOG_GROUP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutIndexPolicy AWS API Documentation
    #
    # @overload put_index_policy(params = {})
    # @param [Hash] params ({})
    def put_index_policy(params = {}, options = {})
      req = build_request(:put_index_policy, params)
      req.send_request(options)
    end

    # Creates an integration between CloudWatch Logs and another service in
    # this account. Currently, only integrations with OpenSearch Service are
    # supported, and currently you can have only one integration in your
    # account.
    #
    # Integrating with OpenSearch Service makes it possible for you to
    # create curated vended logs dashboards, powered by OpenSearch Service
    # analytics. For more information, see [Vended log dashboards powered by
    # Amazon OpenSearch Service][1].
    #
    # You can use this operation only to create a new integration. You
    # can't modify an existing integration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-OpenSearch-Dashboards.html
    #
    # @option params [required, String] :integration_name
    #   A name for the integration.
    #
    # @option params [required, Types::ResourceConfig] :resource_config
    #   A structure that contains configuration information for the
    #   integration that you are creating.
    #
    # @option params [required, String] :integration_type
    #   The type of integration. Currently, the only supported type is
    #   `OPENSEARCH`.
    #
    # @return [Types::PutIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutIntegrationResponse#integration_name #integration_name} => String
    #   * {Types::PutIntegrationResponse#integration_status #integration_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_integration({
    #     integration_name: "IntegrationName", # required
    #     resource_config: { # required
    #       open_search_resource_config: {
    #         kms_key_arn: "Arn",
    #         data_source_role_arn: "Arn", # required
    #         dashboard_viewer_principals: ["Arn"], # required
    #         application_arn: "Arn",
    #         retention_days: 1, # required
    #       },
    #     },
    #     integration_type: "OPENSEARCH", # required, accepts OPENSEARCH
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_name #=> String
    #   resp.integration_status #=> String, one of "PROVISIONING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutIntegration AWS API Documentation
    #
    # @overload put_integration(params = {})
    # @param [Hash] params ({})
    def put_integration(params = {}, options = {})
      req = build_request(:put_integration, params)
      req.send_request(options)
    end

    # Uploads a batch of log events to the specified log stream.
    #
    # The sequence token is now ignored in `PutLogEvents` actions.
    # `PutLogEvents` actions are always accepted and never return
    # `InvalidSequenceTokenException` or `DataAlreadyAcceptedException` even
    # if the sequence token is not valid. You can use parallel
    # `PutLogEvents` actions on the same log stream.
    #
    # The batch of events must satisfy the following constraints:
    #
    # * The maximum batch size is 1,048,576 bytes. This size is calculated
    #   as the sum of all event messages in UTF-8, plus 26 bytes for each
    #   log event.
    #
    # * Events more than 2 hours in the future are rejected while processing
    #   remaining valid events.
    #
    # * Events older than 14 days or preceding the log group's retention
    #   period are rejected while processing remaining valid events.
    #
    # * The log events in the batch must be in chronological order by their
    #   timestamp. The timestamp is the time that the event occurred,
    #   expressed as the number of milliseconds after `Jan 1, 1970 00:00:00
    #   UTC`. (In Amazon Web Services Tools for PowerShell and the Amazon
    #   Web Services SDK for .NET, the timestamp is specified in .NET
    #   format: `yyyy-mm-ddThh:mm:ss`. For example, `2017-09-15T13:45:30`.)
    #
    # * A batch of log events in a single request must be in a chronological
    #   order. Otherwise, the operation fails.
    #
    # * Each log event can be no larger than 1 MB.
    #
    # * The maximum number of log events in a batch is 10,000.
    #
    # * For valid events (within 14 days in the past to 2 hours in future),
    #   the time span in a single batch cannot exceed 24 hours. Otherwise,
    #   the operation fails.
    #
    # The quota of five requests per second per log stream has been removed.
    # Instead, `PutLogEvents` actions are throttled based on a per-second
    # per-account quota. You can request an increase to the per-second
    # throttling quota by using the Service Quotas service.
    #
    # If a call to `PutLogEvents` returns "UnrecognizedClientException"
    # the most likely cause is a non-valid Amazon Web Services access key ID
    # or secret key.
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    # @option params [required, Array<Types::InputLogEvent>] :log_events
    #   The log events.
    #
    # @option params [String] :sequence_token
    #   The sequence token obtained from the response of the previous
    #   `PutLogEvents` call.
    #
    #   The `sequenceToken` parameter is now ignored in `PutLogEvents`
    #   actions. `PutLogEvents` actions are now accepted and never return
    #   `InvalidSequenceTokenException` or `DataAlreadyAcceptedException` even
    #   if the sequence token is not valid.
    #
    # @option params [Types::Entity] :entity
    #   The entity associated with the log events.
    #
    # @return [Types::PutLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutLogEventsResponse#next_sequence_token #next_sequence_token} => String
    #   * {Types::PutLogEventsResponse#rejected_log_events_info #rejected_log_events_info} => Types::RejectedLogEventsInfo
    #   * {Types::PutLogEventsResponse#rejected_entity_info #rejected_entity_info} => Types::RejectedEntityInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_log_events({
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #     log_events: [ # required
    #       {
    #         timestamp: 1, # required
    #         message: "EventMessage", # required
    #       },
    #     ],
    #     sequence_token: "SequenceToken",
    #     entity: {
    #       key_attributes: {
    #         "EntityKeyAttributesKey" => "EntityKeyAttributesValue",
    #       },
    #       attributes: {
    #         "EntityAttributesKey" => "EntityAttributesValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_sequence_token #=> String
    #   resp.rejected_log_events_info.too_new_log_event_start_index #=> Integer
    #   resp.rejected_log_events_info.too_old_log_event_end_index #=> Integer
    #   resp.rejected_log_events_info.expired_log_event_end_index #=> Integer
    #   resp.rejected_entity_info.error_type #=> String, one of "InvalidEntity", "InvalidTypeValue", "InvalidKeyAttributes", "InvalidAttributes", "EntitySizeTooLarge", "UnsupportedLogGroupType", "MissingRequiredFields"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutLogEvents AWS API Documentation
    #
    # @overload put_log_events(params = {})
    # @param [Hash] params ({})
    def put_log_events(params = {}, options = {})
      req = build_request(:put_log_events, params)
      req.send_request(options)
    end

    # Creates or updates a metric filter and associates it with the
    # specified log group. With metric filters, you can configure rules to
    # extract metric data from log events ingested through
    # [PutLogEvents][1].
    #
    # The maximum number of metric filters that can be associated with a log
    # group is 100.
    #
    # Using regular expressions in filter patterns is supported. For these
    # filters, there is a quota of two regular expression patterns within a
    # single filter pattern. There is also a quota of five regular
    # expression patterns per log group. For more information about using
    # regular expressions in filter patterns, see [ Filter pattern syntax
    # for metric filters, subscription filters, filter log events, and Live
    # Tail][2].
    #
    # When you create a metric filter, you can also optionally assign a unit
    # and dimensions to the metric that is created.
    #
    # Metrics extracted from log events are charged as custom metrics. To
    # prevent unexpected high charges, do not specify high-cardinality
    # fields such as `IPAddress` or `requestID` as dimensions. Each
    # different value found for a dimension is treated as a separate metric
    # and accrues charges as a separate custom metric.
    #
    #  CloudWatch Logs might disable a metric filter if it generates 1,000
    # different name/value pairs for your specified dimensions within one
    # hour.
    #
    #  You can also set up a billing alarm to alert you if your charges are
    # higher than expected. For more information, see [ Creating a Billing
    # Alarm to Monitor Your Estimated Amazon Web Services Charges][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :filter_name
    #   A name for the metric filter.
    #
    # @option params [required, String] :filter_pattern
    #   A filter pattern for extracting metric data out of ingested log
    #   events.
    #
    # @option params [required, Array<Types::MetricTransformation>] :metric_transformations
    #   A collection of information that defines how metric data gets emitted.
    #
    # @option params [Boolean] :apply_on_transformed_logs
    #   This parameter is valid only for log groups that have an active log
    #   transformer. For more information about log transformers, see
    #   [PutTransformer][1].
    #
    #   If the log group uses either a log-group level or account-level
    #   transformer, and you specify `true`, the metric filter will be applied
    #   on the transformed version of the log events instead of the original
    #   ingested log events.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metric_filter({
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #     filter_pattern: "FilterPattern", # required
    #     metric_transformations: [ # required
    #       {
    #         metric_name: "MetricName", # required
    #         metric_namespace: "MetricNamespace", # required
    #         metric_value: "MetricValue", # required
    #         default_value: 1.0,
    #         dimensions: {
    #           "DimensionsKey" => "DimensionsValue",
    #         },
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #       },
    #     ],
    #     apply_on_transformed_logs: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutMetricFilter AWS API Documentation
    #
    # @overload put_metric_filter(params = {})
    # @param [Hash] params ({})
    def put_metric_filter(params = {}, options = {})
      req = build_request(:put_metric_filter, params)
      req.send_request(options)
    end

    # Creates or updates a query definition for CloudWatch Logs Insights.
    # For more information, see [Analyzing Log Data with CloudWatch Logs
    # Insights][1].
    #
    # To update a query definition, specify its `queryDefinitionId` in your
    # request. The values of `name`, `queryString`, and `logGroupNames` are
    # changed to the values that you specify in your update operation. No
    # current values are retained from the current query definition. For
    # example, imagine updating a current query definition that includes log
    # groups. If you don't specify the `logGroupNames` parameter in your
    # update operation, the query definition changes to contain no log
    # groups.
    #
    # You must have the `logs:PutQueryDefinition` permission to be able to
    # perform this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html
    #
    # @option params [String] :query_language
    #   Specify the query language to use for this query. The options are Logs
    #   Insights QL, OpenSearch PPL, and OpenSearch SQL. For more information
    #   about the query languages that CloudWatch Logs supports, see
    #   [Supported query languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #
    # @option params [required, String] :name
    #   A name for the query definition. If you are saving numerous query
    #   definitions, we recommend that you name them. This way, you can find
    #   the ones you want by using the first part of the name as a filter in
    #   the `queryDefinitionNamePrefix` parameter of
    #   [DescribeQueryDefinitions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #
    # @option params [String] :query_definition_id
    #   If you are updating a query definition, use this parameter to specify
    #   the ID of the query definition that you want to update. You can use
    #   [DescribeQueryDefinitions][1] to retrieve the IDs of your saved query
    #   definitions.
    #
    #   If you are creating a query definition, do not specify this parameter.
    #   CloudWatch generates a unique ID for the new query definition and
    #   include it in the response to this operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #
    # @option params [Array<String>] :log_group_names
    #   Use this parameter to include specific log groups as part of your
    #   query definition. If your query uses the OpenSearch Service query
    #   language, you specify the log group names inside the `querystring`
    #   instead of here.
    #
    #   If you are updating an existing query definition for the Logs Insights
    #   QL or OpenSearch Service PPL and you omit this parameter, then the
    #   updated definition will contain no log groups.
    #
    # @option params [required, String] :query_string
    #   The query string to use for this definition. For more information, see
    #   [CloudWatch Logs Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #
    # @option params [String] :client_token
    #   Used as an idempotency token, to avoid returning an exception if the
    #   service receives the same request twice because of a network error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PutQueryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutQueryDefinitionResponse#query_definition_id #query_definition_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_query_definition({
    #     query_language: "CWLI", # accepts CWLI, SQL, PPL
    #     name: "QueryDefinitionName", # required
    #     query_definition_id: "QueryId",
    #     log_group_names: ["LogGroupName"],
    #     query_string: "QueryDefinitionString", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_definition_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutQueryDefinition AWS API Documentation
    #
    # @overload put_query_definition(params = {})
    # @param [Hash] params ({})
    def put_query_definition(params = {}, options = {})
      req = build_request(:put_query_definition, params)
      req.send_request(options)
    end

    # Creates or updates a resource policy allowing other Amazon Web
    # Services services to put log events to this account, such as Amazon
    # Route 53. An account can have up to 10 resource policies per Amazon
    # Web Services Region.
    #
    # @option params [String] :policy_name
    #   Name of the new policy. This parameter is required.
    #
    # @option params [String] :policy_document
    #   Details of the new policy, including the identity of the principal
    #   that is enabled to put logs to this account. This is formatted as a
    #   JSON string. This parameter is required.
    #
    #   The following example creates a resource policy enabling the Route 53
    #   service to put DNS query logs in to the specified log group. Replace
    #   `"logArn"` with the ARN of your CloudWatch Logs resource, such as a
    #   log group or log stream.
    #
    #   CloudWatch Logs also supports [aws:SourceArn][1] and
    #   [aws:SourceAccount][2] condition context keys.
    #
    #   In the example resource policy, you would replace the value of
    #   `SourceArn` with the resource making the call from Route 53 to
    #   CloudWatch Logs. You would also replace the value of `SourceAccount`
    #   with the Amazon Web Services account ID making that call.
    #
    #
    #
    #   `{ "Version": "2012-10-17", "Statement": [ { "Sid":
    #   "Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": {
    #   "Service": [ "route53.amazonaws.com" ] }, "Action":
    #   "logs:PutLogEvents", "Resource": "logArn", "Condition": { "ArnLike": {
    #   "aws:SourceArn": "myRoute53ResourceArn" }, "StringEquals": {
    #   "aws:SourceAccount": "myAwsAccountId" } } } ] }`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount
    #
    # @option params [String] :resource_arn
    #   The ARN of the CloudWatch Logs resource to which the resource policy
    #   needs to be added or attached. Currently only supports LogGroup ARN.
    #
    # @option params [String] :expected_revision_id
    #   The expected revision ID of the resource policy. Required when
    #   `resourceArn` is provided to prevent concurrent modifications. Use
    #   `null` when creating a resource policy for the first time.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#resource_policy #resource_policy} => Types::ResourcePolicy
    #   * {Types::PutResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy_name: "PolicyName",
    #     policy_document: "PolicyDocument",
    #     resource_arn: "Arn",
    #     expected_revision_id: "ExpectedRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policy.policy_name #=> String
    #   resp.resource_policy.policy_document #=> String
    #   resp.resource_policy.last_updated_time #=> Integer
    #   resp.resource_policy.policy_scope #=> String, one of "ACCOUNT", "RESOURCE"
    #   resp.resource_policy.resource_arn #=> String
    #   resp.resource_policy.revision_id #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Sets the retention of the specified log group. With a retention
    # policy, you can configure the number of days for which to retain log
    # events in the specified log group.
    #
    # <note markdown="1"> CloudWatch Logs doesn't immediately delete log events when they reach
    # their retention setting. It typically takes up to 72 hours after that
    # before log events are deleted, but in rare situations might take
    # longer.
    #
    #  To illustrate, imagine that you change a log group to have a longer
    # retention setting when it contains log events that are past the
    # expiration date, but haven't been deleted. Those log events will take
    # up to 72 hours to be deleted after the new retention date is reached.
    # To make sure that log data is deleted permanently, keep a log group at
    # its lower retention setting until 72 hours after the previous
    # retention period ends. Alternatively, wait to change the retention
    # setting until you confirm that the earlier log events are deleted.
    #
    #  When log events reach their retention setting they are marked for
    # deletion. After they are marked for deletion, they do not add to your
    # archival storage costs anymore, even if they are not actually deleted
    # until later. These log events marked for deletion are also not
    # included when you use an API to retrieve the `storedBytes` value to
    # see how many bytes a log group is storing.
    #
    #  </note>
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, Integer] :retention_in_days
    #   The number of days to retain the log events in the specified log
    #   group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180,
    #   365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, and 3653.
    #
    #   To set a log group so that its log events do not expire, use
    #   [DeleteRetentionPolicy][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_policy({
    #     log_group_name: "LogGroupName", # required
    #     retention_in_days: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutRetentionPolicy AWS API Documentation
    #
    # @overload put_retention_policy(params = {})
    # @param [Hash] params ({})
    def put_retention_policy(params = {}, options = {})
      req = build_request(:put_retention_policy, params)
      req.send_request(options)
    end

    # Creates or updates a subscription filter and associates it with the
    # specified log group. With subscription filters, you can subscribe to a
    # real-time stream of log events ingested through [PutLogEvents][1] and
    # have them delivered to a specific destination. When log events are
    # sent to the receiving service, they are Base64 encoded and compressed
    # with the GZIP format.
    #
    # The following destinations are supported for subscription filters:
    #
    # * An Amazon Kinesis data stream belonging to the same account as the
    #   subscription filter, for same-account delivery.
    #
    # * A logical destination created with [PutDestination][2] that belongs
    #   to a different account, for cross-account delivery. We currently
    #   support Kinesis Data Streams and Firehose as logical destinations.
    #
    # * An Amazon Kinesis Data Firehose delivery stream that belongs to the
    #   same account as the subscription filter, for same-account delivery.
    #
    # * An Lambda function that belongs to the same account as the
    #   subscription filter, for same-account delivery.
    #
    # Each log group can have up to two subscription filters associated with
    # it. If you are updating an existing filter, you must specify the
    # correct name in `filterName`.
    #
    # Using regular expressions in filter patterns is supported. For these
    # filters, there is a quotas of quota of two regular expression patterns
    # within a single filter pattern. There is also a quota of five regular
    # expression patterns per log group. For more information about using
    # regular expressions in filter patterns, see [ Filter pattern syntax
    # for metric filters, subscription filters, filter log events, and Live
    # Tail][3].
    #
    # To perform a `PutSubscriptionFilter` operation for any destination
    # except a Lambda function, you must also have the `iam:PassRole`
    # permission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, String] :filter_name
    #   A name for the subscription filter. If you are updating an existing
    #   filter, you must specify the correct name in `filterName`. To find the
    #   name of the filter currently associated with a log group, use
    #   [DescribeSubscriptionFilters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html
    #
    # @option params [required, String] :filter_pattern
    #   A filter pattern for subscribing to a filtered stream of log events.
    #
    # @option params [required, String] :destination_arn
    #   The ARN of the destination to deliver matching log events to.
    #   Currently, the supported destinations are:
    #
    #   * An Amazon Kinesis stream belonging to the same account as the
    #     subscription filter, for same-account delivery.
    #
    #   * A logical destination (specified using an ARN) belonging to a
    #     different account, for cross-account delivery.
    #
    #     If you're setting up a cross-account subscription, the destination
    #     must have an IAM policy associated with it. The IAM policy must
    #     allow the sender to send logs to the destination. For more
    #     information, see [PutDestinationPolicy][1].
    #
    #   * A Kinesis Data Firehose delivery stream belonging to the same
    #     account as the subscription filter, for same-account delivery.
    #
    #   * A Lambda function belonging to the same account as the subscription
    #     filter, for same-account delivery.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html
    #
    # @option params [String] :role_arn
    #   The ARN of an IAM role that grants CloudWatch Logs permissions to
    #   deliver ingested log events to the destination stream. You don't need
    #   to provide the ARN when you are working with a logical destination for
    #   cross-account delivery.
    #
    # @option params [String] :distribution
    #   The method used to distribute log data to the destination. By default,
    #   log data is grouped by log stream, but the grouping can be set to
    #   random for a more even distribution. This property is only applicable
    #   when the destination is an Amazon Kinesis data stream.
    #
    # @option params [Boolean] :apply_on_transformed_logs
    #   This parameter is valid only for log groups that have an active log
    #   transformer. For more information about log transformers, see
    #   [PutTransformer][1].
    #
    #   If the log group uses either a log-group level or account-level
    #   transformer, and you specify `true`, the subscription filter will be
    #   applied on the transformed version of the log events instead of the
    #   original ingested log events.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_subscription_filter({
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #     filter_pattern: "FilterPattern", # required
    #     destination_arn: "DestinationArn", # required
    #     role_arn: "RoleArn",
    #     distribution: "Random", # accepts Random, ByLogStream
    #     apply_on_transformed_logs: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutSubscriptionFilter AWS API Documentation
    #
    # @overload put_subscription_filter(params = {})
    # @param [Hash] params ({})
    def put_subscription_filter(params = {}, options = {})
      req = build_request(:put_subscription_filter, params)
      req.send_request(options)
    end

    # Creates or updates a *log transformer* for a single log group. You use
    # log transformers to transform log events into a different format,
    # making them easier for you to process and analyze. You can also
    # transform logs from different sources into standardized formats that
    # contains relevant, source-specific information.
    #
    # After you have created a transformer, CloudWatch Logs performs the
    # transformations at the time of log ingestion. You can then refer to
    # the transformed versions of the logs during operations such as
    # querying with CloudWatch Logs Insights or creating metric filters or
    # subscription filers.
    #
    # You can also use a transformer to copy metadata from metadata keys
    # into the log events themselves. This metadata can include log group
    # name, log stream name, account ID and Region.
    #
    # A transformer for a log group is a series of processors, where each
    # processor applies one type of transformation to the log events
    # ingested into this log group. The processors work one after another,
    # in the order that you list them, like a pipeline. For more information
    # about the available processors to use in a transformer, see [
    # Processors that you can use][1].
    #
    # Having log events in standardized format enables visibility across
    # your applications for your log analysis, reporting, and alarming
    # needs. CloudWatch Logs provides transformation for common log types
    # with out-of-the-box transformation templates for major Amazon Web
    # Services log sources such as VPC flow logs, Lambda, and Amazon RDS.
    # You can use pre-built transformation templates or create custom
    # transformation policies.
    #
    # You can create transformers only for the log groups in the Standard
    # log class.
    #
    # You can also set up a transformer at the account level. For more
    # information, see [PutAccountPolicy][2]. If there is both a log-group
    # level transformer created with `PutTransformer` and an account-level
    # transformer that could apply to the same log group, the log group uses
    # only the log-group level transformer. It ignores the account-level
    # transformer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html
    #
    # @option params [required, String] :log_group_identifier
    #   Specify either the name or ARN of the log group to create the
    #   transformer for.
    #
    # @option params [required, Array<Types::Processor>] :transformer_config
    #   This structure contains the configuration of this log transformer. A
    #   log transformer is an array of processors, where each processor
    #   applies one type of transformation to the log events that are
    #   ingested.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_transformer({
    #     log_group_identifier: "LogGroupIdentifier", # required
    #     transformer_config: [ # required
    #       {
    #         add_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               value: "AddKeyValue", # required
    #               overwrite_if_exists: false,
    #             },
    #           ],
    #         },
    #         copy_value: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false,
    #             },
    #           ],
    #         },
    #         csv: {
    #           quote_character: "QuoteCharacter",
    #           delimiter: "Delimiter",
    #           columns: ["Column"],
    #           source: "Source",
    #         },
    #         date_time_converter: {
    #           source: "Source", # required
    #           target: "Target", # required
    #           target_format: "TargetFormat",
    #           match_patterns: ["MatchPattern"], # required
    #           source_timezone: "SourceTimezone",
    #           target_timezone: "TargetTimezone",
    #           locale: "Locale",
    #         },
    #         delete_keys: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         grok: {
    #           source: "Source",
    #           match: "GrokMatch", # required
    #         },
    #         list_to_map: {
    #           source: "Source", # required
    #           key: "Key", # required
    #           value_key: "ValueKey",
    #           target: "Target",
    #           flatten: false,
    #           flattened_element: "first", # accepts first, last
    #         },
    #         lower_case_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         move_keys: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false,
    #             },
    #           ],
    #         },
    #         parse_cloudfront: {
    #           source: "Source",
    #         },
    #         parse_json: {
    #           source: "Source",
    #           destination: "DestinationField",
    #         },
    #         parse_key_value: {
    #           source: "Source",
    #           destination: "DestinationField",
    #           field_delimiter: "ParserFieldDelimiter",
    #           key_value_delimiter: "KeyValueDelimiter",
    #           key_prefix: "KeyPrefix",
    #           non_match_value: "NonMatchValue",
    #           overwrite_if_exists: false,
    #         },
    #         parse_route_53: {
    #           source: "Source",
    #         },
    #         parse_to_ocsf: {
    #           source: "Source",
    #           event_source: "CloudTrail", # required, accepts CloudTrail, Route53Resolver, VPCFlow, EKSAudit, AWSWAF
    #           ocsf_version: "V1.1", # required, accepts V1.1
    #         },
    #         parse_postgres: {
    #           source: "Source",
    #         },
    #         parse_vpc: {
    #           source: "Source",
    #         },
    #         parse_waf: {
    #           source: "Source",
    #         },
    #         rename_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               rename_to: "RenameTo", # required
    #               overwrite_if_exists: false,
    #             },
    #           ],
    #         },
    #         split_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               delimiter: "SplitStringDelimiter", # required
    #             },
    #           ],
    #         },
    #         substitute_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               from: "FromKey", # required
    #               to: "ToKey", # required
    #             },
    #           ],
    #         },
    #         trim_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         type_converter: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               type: "boolean", # required, accepts boolean, integer, double, string
    #             },
    #           ],
    #         },
    #         upper_case_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutTransformer AWS API Documentation
    #
    # @overload put_transformer(params = {})
    # @param [Hash] params ({})
    def put_transformer(params = {}, options = {})
      req = build_request(:put_transformer, params)
      req.send_request(options)
    end

    # Starts a Live Tail streaming session for one or more log groups. A
    # Live Tail session returns a stream of log events that have been
    # recently ingested in the log groups. For more information, see [Use
    # Live Tail to view logs in near real time][1].
    #
    # The response to this operation is a response stream, over which the
    # server sends live log events and the client receives them.
    #
    # The following objects are sent over the stream:
    #
    # * A single [LiveTailSessionStart][2] object is sent at the start of
    #   the session.
    #
    # * Every second, a [LiveTailSessionUpdate][3] object is sent. Each of
    #   these objects contains an array of the actual log events.
    #
    #   If no new log events were ingested in the past second, the
    #   `LiveTailSessionUpdate` object will contain an empty array.
    #
    #   The array of log events contained in a `LiveTailSessionUpdate` can
    #   include as many as 500 log events. If the number of log events
    #   matching the request exceeds 500 per second, the log events are
    #   sampled down to 500 log events to be included in each
    #   `LiveTailSessionUpdate` object.
    #
    #   If your client consumes the log events slower than the server
    #   produces them, CloudWatch Logs buffers up to 10
    #   `LiveTailSessionUpdate` events or 5000 log events, after which it
    #   starts dropping the oldest events.
    #
    # * A [SessionStreamingException][4] object is returned if an unknown
    #   error occurs on the server side.
    #
    # * A [SessionTimeoutException][5] object is returned when the session
    #   times out, after it has been kept open for three hours.
    #
    # <note markdown="1"> The `StartLiveTail` API routes requests to
    # `streaming-logs.Region.amazonaws.com` using SDK host prefix injection.
    # VPC endpoint support is not available for this API.
    #
    #  </note>
    #
    # You can end a session before it times out by closing the session
    # stream or by closing the client that is receiving the stream. The
    # session also ends if the established connection between the client and
    # the server breaks.
    #
    # For examples of using an SDK to start a Live Tail session, see [ Start
    # a Live Tail session using an Amazon Web Services SDK][6].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs_LiveTail.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_LiveTailSessionStart.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_LiveTailSessionUpdate.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTailResponseStream.html#CWL-Type-StartLiveTailResponseStream-SessionStreamingException
    # [5]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTailResponseStream.html#CWL-Type-StartLiveTailResponseStream-SessionTimeoutException
    # [6]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/example_cloudwatch-logs_StartLiveTail_section.html
    #
    # @option params [required, Array<String>] :log_group_identifiers
    #   An array where each item in the array is a log group to include in the
    #   Live Tail session.
    #
    #   Specify each log group by its ARN.
    #
    #   If you specify an ARN, the ARN can't end with an asterisk (*).
    #
    #   <note markdown="1"> You can include up to 10 log groups.
    #
    #    </note>
    #
    # @option params [Array<String>] :log_stream_names
    #   If you specify this parameter, then only log events in the log streams
    #   that you specify here are included in the Live Tail session.
    #
    #   If you specify this field, you can't also specify the
    #   `logStreamNamePrefixes` field.
    #
    #   <note markdown="1"> You can specify this parameter only if you specify only one log group
    #   in `logGroupIdentifiers`.
    #
    #    </note>
    #
    # @option params [Array<String>] :log_stream_name_prefixes
    #   If you specify this parameter, then only log events in the log streams
    #   that have names that start with the prefixes that you specify here are
    #   included in the Live Tail session.
    #
    #   If you specify this field, you can't also specify the
    #   `logStreamNames` field.
    #
    #   <note markdown="1"> You can specify this parameter only if you specify only one log group
    #   in `logGroupIdentifiers`.
    #
    #    </note>
    #
    # @option params [String] :log_event_filter_pattern
    #   An optional pattern to use to filter the results to include only log
    #   events that match the pattern. For example, a filter pattern of `error
    #   404` causes only log events that include both `error` and `404` to be
    #   included in the Live Tail stream.
    #
    #   Regular expression filter patterns are supported.
    #
    #   For more information about filter pattern syntax, see [Filter and
    #   Pattern Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #
    # @return [Types::StartLiveTailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartLiveTailResponse#response_stream #response_stream} => Types::StartLiveTailResponseStream
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register start_live_tail
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #start_live_tail call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::CloudWatchLogs::EventStreams::StartLiveTailResponseStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #start_live_tail
    #   # Example for registering callbacks for all event types and an error event
    #   client.start_live_tail(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #start_live_tail
    #   #  1) Create a Aws::CloudWatchLogs::EventStreams::StartLiveTailResponseStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::CloudWatchLogs::EventStreams::StartLiveTailResponseStream.new
    #   handler.on_session_start_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::sessionStart
    #   end
    #   handler.on_session_update_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::sessionUpdate
    #   end
    #   handler.on_session_timeout_exception_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::SessionTimeoutException
    #   end
    #   handler.on_session_streaming_exception_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::SessionStreamingException
    #   end
    #
    #   client.start_live_tail(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_session_start_event do |event|
    #       event # => Aws::CloudWatchLogs::Types::sessionStart
    #     end
    #     stream.on_session_update_event do |event|
    #       event # => Aws::CloudWatchLogs::Types::sessionUpdate
    #     end
    #     stream.on_session_timeout_exception_event do |event|
    #       event # => Aws::CloudWatchLogs::Types::SessionTimeoutException
    #     end
    #     stream.on_session_streaming_exception_event do |event|
    #       event # => Aws::CloudWatchLogs::Types::SessionStreamingException
    #     end
    #   end
    #
    #   client.start_live_tail(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::CloudWatchLogs::EventStreams::StartLiveTailResponseStream.new
    #   handler.on_session_start_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::sessionStart
    #   end
    #   handler.on_session_update_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::sessionUpdate
    #   end
    #   handler.on_session_timeout_exception_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::SessionTimeoutException
    #   end
    #   handler.on_session_streaming_exception_event do |event|
    #     event # => Aws::CloudWatchLogs::Types::SessionStreamingException
    #   end
    #
    #   client.start_live_tail(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.response_stream # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_live_tail({
    #     log_group_identifiers: ["LogGroupIdentifier"], # required
    #     log_stream_names: ["LogStreamName"],
    #     log_stream_name_prefixes: ["LogStreamName"],
    #     log_event_filter_pattern: "FilterPattern",
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.response_stream:
    #   resp.response_stream #=> Enumerator
    #   resp.response_stream.event_types #=> [:session_start, :session_update, :session_timeout_exception, :session_streaming_exception]
    #
    #   # For :session_start event available at #on_session_start_event callback and response eventstream enumerator:
    #   event.request_id #=> String
    #   event.session_id #=> String
    #   event.log_group_identifiers #=> Array
    #   event.log_group_identifiers[0] #=> String
    #   event.log_stream_names #=> Array
    #   event.log_stream_names[0] #=> String
    #   event.log_stream_name_prefixes #=> Array
    #   event.log_stream_name_prefixes[0] #=> String
    #   event.log_event_filter_pattern #=> String
    #
    #   # For :session_update event available at #on_session_update_event callback and response eventstream enumerator:
    #   event.session_metadata.sampled #=> Boolean
    #   event.session_results #=> Array
    #   event.session_results[0].log_stream_name #=> String
    #   event.session_results[0].log_group_identifier #=> String
    #   event.session_results[0].message #=> String
    #   event.session_results[0].timestamp #=> Integer
    #   event.session_results[0].ingestion_time #=> Integer
    #
    #   # For :session_timeout_exception event available at #on_session_timeout_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :session_streaming_exception event available at #on_session_streaming_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartLiveTail AWS API Documentation
    #
    # @overload start_live_tail(params = {})
    # @param [Hash] params ({})
    def start_live_tail(params = {}, options = {})
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::StartLiveTailResponseStream then handler
        when Proc then EventStreams::StartLiveTailResponseStream.new.tap(&handler)
        when nil then EventStreams::StartLiveTailResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::CloudWatchLogs::EventStreams::StartLiveTailResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:start_live_tail, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options)
    end

    # Starts a query of one or more log groups using CloudWatch Logs
    # Insights. You specify the log groups and time range to query and the
    # query string to use.
    #
    # For more information, see [CloudWatch Logs Insights Query Syntax][1].
    #
    # After you run a query using `StartQuery`, the query results are stored
    # by CloudWatch Logs. You can use [GetQueryResults][2] to retrieve the
    # results of a query, using the `queryId` that `StartQuery` returns.
    #
    # <note markdown="1"> To specify the log groups to query, a `StartQuery` operation must
    # include one of the following:
    #
    #  * Either exactly one of the following parameters: `logGroupName`,
    #   `logGroupNames`, or `logGroupIdentifiers`
    #
    # * Or the `queryString` must include a `SOURCE` command to select log
    #   groups for the query. The `SOURCE` command can select log groups
    #   based on log group name prefix, account ID, and log class.
    #
    #   For more information about the `SOURCE` command, see [SOURCE][3].
    #
    #  </note>
    #
    # If you have associated a KMS key with the query results in this
    # account, then [StartQuery][4] uses that key to encrypt the results
    # when it stores them. If no key is associated with query results, the
    # query results are encrypted with the default CloudWatch Logs
    # encryption method.
    #
    # Queries time out after 60 minutes of runtime. If your queries are
    # timing out, reduce the time range being searched or partition your
    # query into a number of queries.
    #
    # If you are using CloudWatch cross-account observability, you can use
    # this operation in a monitoring account to start a query in a linked
    # source account. For more information, see [CloudWatch cross-account
    # observability][5]. For a cross-account `StartQuery` operation, the
    # query definition must be defined in the monitoring account.
    #
    # You can have up to 30 concurrent CloudWatch Logs insights queries,
    # including queries that have been added to dashboards.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax-Source.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html
    # [5]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html
    #
    # @option params [String] :query_language
    #   Specify the query language to use for this query. The options are Logs
    #   Insights QL, OpenSearch PPL, and OpenSearch SQL. For more information
    #   about the query languages that CloudWatch Logs supports, see
    #   [Supported query languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html
    #
    # @option params [String] :log_group_name
    #   The log group on which to perform the query.
    #
    #   <note markdown="1"> A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or `logGroupIdentifiers`.
    #   The exception is queries using the OpenSearch Service SQL query
    #   language, where you specify the log group names inside the
    #   `querystring` instead of here.
    #
    #    </note>
    #
    # @option params [Array<String>] :log_group_names
    #   The list of log groups to be queried. You can include up to 50 log
    #   groups.
    #
    #   <note markdown="1"> A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or `logGroupIdentifiers`.
    #   The exception is queries using the OpenSearch Service SQL query
    #   language, where you specify the log group names inside the
    #   `querystring` instead of here.
    #
    #    </note>
    #
    # @option params [Array<String>] :log_group_identifiers
    #   The list of log groups to query. You can include up to 50 log groups.
    #
    #   You can specify them by the log group name or ARN. If a log group that
    #   you're querying is in a source account and you're using a monitoring
    #   account, you must specify the ARN of the log group here. The query
    #   definition must also be defined in the monitoring account.
    #
    #   If you specify an ARN, use the format
    #   arn:aws:logs:*region*:*account-id*:log-group:*log\_group\_name* Don't
    #   include an * at the end.
    #
    #   A `StartQuery` operation must include exactly one of the following
    #   parameters: `logGroupName`, `logGroupNames`, or `logGroupIdentifiers`.
    #   The exception is queries using the OpenSearch Service SQL query
    #   language, where you specify the log group names inside the
    #   `querystring` instead of here.
    #
    # @option params [required, Integer] :start_time
    #   The beginning of the time range to query. The range is inclusive, so
    #   the specified start time is included in the query. Specified as epoch
    #   time, the number of seconds since `January 1, 1970, 00:00:00 UTC`.
    #
    # @option params [required, Integer] :end_time
    #   The end of the time range to query. The range is inclusive, so the
    #   specified end time is included in the query. Specified as epoch time,
    #   the number of seconds since `January 1, 1970, 00:00:00 UTC`.
    #
    # @option params [required, String] :query_string
    #   The query string to use. For more information, see [CloudWatch Logs
    #   Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #
    # @option params [Integer] :limit
    #   The maximum number of log events to return in the query. If the query
    #   string uses the `fields` command, only the specified fields and their
    #   values are returned. The default is 10,000.
    #
    # @return [Types::StartQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryResponse#query_id #query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query({
    #     query_language: "CWLI", # accepts CWLI, SQL, PPL
    #     log_group_name: "LogGroupName",
    #     log_group_names: ["LogGroupName"],
    #     log_group_identifiers: ["LogGroupIdentifier"],
    #     start_time: 1, # required
    #     end_time: 1, # required
    #     query_string: "QueryString", # required
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartQuery AWS API Documentation
    #
    # @overload start_query(params = {})
    # @param [Hash] params ({})
    def start_query(params = {}, options = {})
      req = build_request(:start_query, params)
      req.send_request(options)
    end

    # Stops a CloudWatch Logs Insights query that is in progress. If the
    # query has already ended, the operation returns an error indicating
    # that the specified query is not running.
    #
    # @option params [required, String] :query_id
    #   The ID number of the query to stop. To find this ID number, use
    #   `DescribeQueries`.
    #
    # @return [Types::StopQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopQueryResponse#success #success} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query({
    #     query_id: "QueryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StopQuery AWS API Documentation
    #
    # @overload stop_query(params = {})
    # @param [Hash] params ({})
    def stop_query(params = {}, options = {})
      req = build_request(:stop_query, params)
      req.send_request(options)
    end

    # The TagLogGroup operation is on the path to deprecation. We recommend
    # that you use [TagResource][1] instead.
    #
    # Adds or updates the specified tags for the specified log group.
    #
    # To list the tags for a log group, use [ListTagsForResource][2]. To
    # remove tags, use [UntagResource][3].
    #
    # For more information about tags, see [Tag Log Groups in Amazon
    # CloudWatch Logs][4] in the *Amazon CloudWatch Logs User Guide*.
    #
    # CloudWatch Logs doesn't support IAM policies that prevent users from
    # assigning specified tags to log groups using the
    # `aws:Resource/key-name ` or `aws:TagKeys` condition keys. For more
    # information about using tags to control access, see [Controlling
    # access to Amazon Web Services resources using tags][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging
    # [5]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value pairs to use for the tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_log_group({
    #     log_group_name: "LogGroupName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TagLogGroup AWS API Documentation
    #
    # @overload tag_log_group(params = {})
    # @param [Hash] params ({})
    def tag_log_group(params = {}, options = {})
      req = build_request(:tag_log_group, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified CloudWatch
    # Logs resource. Currently, the only CloudWatch Logs resources that can
    # be tagged are log groups and destinations.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the `TagResource` action with a resource that already has
    # tags. If you specify a new tag key for the alarm, this tag is appended
    # to the list of tags associated with the alarm. If you specify a tag
    # key that is already associated with the alarm, the new tag value that
    # you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a CloudWatch Logs resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you're adding tags to.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Tests the filter pattern of a metric filter against a sample of log
    # event messages. You can use this operation to validate the correctness
    # of a metric filter pattern.
    #
    # @option params [required, String] :filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #
    # @option params [required, Array<String>] :log_event_messages
    #   The log event messages to test.
    #
    # @return [Types::TestMetricFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestMetricFilterResponse#matches #matches} => Array&lt;Types::MetricFilterMatchRecord&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_metric_filter({
    #     filter_pattern: "FilterPattern", # required
    #     log_event_messages: ["EventMessage"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.matches #=> Array
    #   resp.matches[0].event_number #=> Integer
    #   resp.matches[0].event_message #=> String
    #   resp.matches[0].extracted_values #=> Hash
    #   resp.matches[0].extracted_values["Token"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestMetricFilter AWS API Documentation
    #
    # @overload test_metric_filter(params = {})
    # @param [Hash] params ({})
    def test_metric_filter(params = {}, options = {})
      req = build_request(:test_metric_filter, params)
      req.send_request(options)
    end

    # Use this operation to test a log transformer. You enter the
    # transformer configuration and a set of log events to test with. The
    # operation responds with an array that includes the original log events
    # and the transformed versions.
    #
    # @option params [required, Array<Types::Processor>] :transformer_config
    #   This structure contains the configuration of this log transformer that
    #   you want to test. A log transformer is an array of processors, where
    #   each processor applies one type of transformation to the log events
    #   that are ingested.
    #
    # @option params [required, Array<String>] :log_event_messages
    #   An array of the raw log events that you want to use to test this
    #   transformer.
    #
    # @return [Types::TestTransformerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestTransformerResponse#transformed_logs #transformed_logs} => Array&lt;Types::TransformedLogRecord&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_transformer({
    #     transformer_config: [ # required
    #       {
    #         add_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               value: "AddKeyValue", # required
    #               overwrite_if_exists: false,
    #             },
    #           ],
    #         },
    #         copy_value: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false,
    #             },
    #           ],
    #         },
    #         csv: {
    #           quote_character: "QuoteCharacter",
    #           delimiter: "Delimiter",
    #           columns: ["Column"],
    #           source: "Source",
    #         },
    #         date_time_converter: {
    #           source: "Source", # required
    #           target: "Target", # required
    #           target_format: "TargetFormat",
    #           match_patterns: ["MatchPattern"], # required
    #           source_timezone: "SourceTimezone",
    #           target_timezone: "TargetTimezone",
    #           locale: "Locale",
    #         },
    #         delete_keys: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         grok: {
    #           source: "Source",
    #           match: "GrokMatch", # required
    #         },
    #         list_to_map: {
    #           source: "Source", # required
    #           key: "Key", # required
    #           value_key: "ValueKey",
    #           target: "Target",
    #           flatten: false,
    #           flattened_element: "first", # accepts first, last
    #         },
    #         lower_case_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         move_keys: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false,
    #             },
    #           ],
    #         },
    #         parse_cloudfront: {
    #           source: "Source",
    #         },
    #         parse_json: {
    #           source: "Source",
    #           destination: "DestinationField",
    #         },
    #         parse_key_value: {
    #           source: "Source",
    #           destination: "DestinationField",
    #           field_delimiter: "ParserFieldDelimiter",
    #           key_value_delimiter: "KeyValueDelimiter",
    #           key_prefix: "KeyPrefix",
    #           non_match_value: "NonMatchValue",
    #           overwrite_if_exists: false,
    #         },
    #         parse_route_53: {
    #           source: "Source",
    #         },
    #         parse_to_ocsf: {
    #           source: "Source",
    #           event_source: "CloudTrail", # required, accepts CloudTrail, Route53Resolver, VPCFlow, EKSAudit, AWSWAF
    #           ocsf_version: "V1.1", # required, accepts V1.1
    #         },
    #         parse_postgres: {
    #           source: "Source",
    #         },
    #         parse_vpc: {
    #           source: "Source",
    #         },
    #         parse_waf: {
    #           source: "Source",
    #         },
    #         rename_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               rename_to: "RenameTo", # required
    #               overwrite_if_exists: false,
    #             },
    #           ],
    #         },
    #         split_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               delimiter: "SplitStringDelimiter", # required
    #             },
    #           ],
    #         },
    #         substitute_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               from: "FromKey", # required
    #               to: "ToKey", # required
    #             },
    #           ],
    #         },
    #         trim_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         type_converter: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               type: "boolean", # required, accepts boolean, integer, double, string
    #             },
    #           ],
    #         },
    #         upper_case_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #       },
    #     ],
    #     log_event_messages: ["EventMessage"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transformed_logs #=> Array
    #   resp.transformed_logs[0].event_number #=> Integer
    #   resp.transformed_logs[0].event_message #=> String
    #   resp.transformed_logs[0].transformed_event_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestTransformer AWS API Documentation
    #
    # @overload test_transformer(params = {})
    # @param [Hash] params ({})
    def test_transformer(params = {}, options = {})
      req = build_request(:test_transformer, params)
      req.send_request(options)
    end

    # The UntagLogGroup operation is on the path to deprecation. We
    # recommend that you use [UntagResource][1] instead.
    #
    # Removes the specified tags from the specified log group.
    #
    # To list the tags for a log group, use [ListTagsForResource][2]. To add
    # tags, use [TagResource][3].
    #
    # When using IAM policies to control tag management for CloudWatch Logs
    # log groups, the condition keys `aws:Resource/key-name` and
    # `aws:TagKeys` cannot be used to restrict which tags users can assign.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html
    #
    # @option params [required, String] :log_group_name
    #   The name of the log group.
    #
    # @option params [required, Array<String>] :tags
    #   The tag keys. The corresponding tags are removed from the log group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_log_group({
    #     log_group_name: "LogGroupName", # required
    #     tags: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UntagLogGroup AWS API Documentation
    #
    # @overload untag_log_group(params = {})
    # @param [Hash] params ({})
    def untag_log_group(params = {}, options = {})
      req = build_request(:untag_log_group, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch Logs resource that you're removing tags
    #   from.
    #
    #   The ARN format of a log group is
    #   `arn:aws:logs:Region:account-id:log-group:log-group-name `
    #
    #   The ARN format of a destination is
    #   `arn:aws:logs:Region:account-id:destination:destination-name `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Use this operation to *suppress* anomaly detection for a specified
    # anomaly or pattern. If you suppress an anomaly, CloudWatch Logs won't
    # report new occurrences of that anomaly and won't update that anomaly
    # with new data. If you suppress a pattern, CloudWatch Logs won't
    # report any anomalies related to that pattern.
    #
    # You must specify either `anomalyId` or `patternId`, but you can't
    # specify both parameters in the same operation.
    #
    # If you have previously used this operation to suppress detection of a
    # pattern or anomaly, you can use it again to cause CloudWatch Logs to
    # end the suppression. To do this, use this operation and specify the
    # anomaly or pattern to stop suppressing, and omit the `suppressionType`
    # and `suppressionPeriod` parameters.
    #
    # @option params [String] :anomaly_id
    #   If you are suppressing or unsuppressing an anomaly, specify its unique
    #   ID here. You can find anomaly IDs by using the [ListAnomalies][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html
    #
    # @option params [String] :pattern_id
    #   If you are suppressing or unsuppressing an pattern, specify its unique
    #   ID here. You can find pattern IDs by using the [ListAnomalies][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the anomaly detector that this operation is to act on.
    #
    # @option params [String] :suppression_type
    #   Use this to specify whether the suppression to be temporary or
    #   infinite. If you specify `LIMITED`, you must also specify a
    #   `suppressionPeriod`. If you specify `INFINITE`, any value for
    #   `suppressionPeriod` is ignored.
    #
    # @option params [Types::SuppressionPeriod] :suppression_period
    #   If you are temporarily suppressing an anomaly or pattern, use this
    #   structure to specify how long the suppression is to last.
    #
    # @option params [Boolean] :baseline
    #   Set this to `true` to prevent CloudWatch Logs from displaying this
    #   behavior as an anomaly in the future. The behavior is then treated as
    #   baseline behavior. However, if similar but more severe occurrences of
    #   this behavior occur in the future, those will still be reported as
    #   anomalies.
    #
    #   The default is `false`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_anomaly({
    #     anomaly_id: "AnomalyId",
    #     pattern_id: "PatternId",
    #     anomaly_detector_arn: "AnomalyDetectorArn", # required
    #     suppression_type: "LIMITED", # accepts LIMITED, INFINITE
    #     suppression_period: {
    #       value: 1,
    #       suppression_unit: "SECONDS", # accepts SECONDS, MINUTES, HOURS
    #     },
    #     baseline: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UpdateAnomaly AWS API Documentation
    #
    # @overload update_anomaly(params = {})
    # @param [Hash] params ({})
    def update_anomaly(params = {}, options = {})
      req = build_request(:update_anomaly, params)
      req.send_request(options)
    end

    # Use this operation to update the configuration of a [delivery][1] to
    # change either the S3 path pattern or the format of the delivered logs.
    # You can't use this operation to change the source or destination of
    # the delivery.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Delivery.html
    #
    # @option params [required, String] :id
    #   The ID of the delivery to be updated by this request.
    #
    # @option params [Array<String>] :record_fields
    #   The list of record fields to be delivered to the destination, in
    #   order. If the delivery's log source has mandatory fields, they must
    #   be included in this list.
    #
    # @option params [String] :field_delimiter
    #   The field delimiter to use between record fields when the final output
    #   format of a delivery is in `Plain`, `W3C`, or `Raw` format.
    #
    # @option params [Types::S3DeliveryConfiguration] :s3_delivery_configuration
    #   This structure contains parameters that are valid only when the
    #   delivery's delivery destination is an S3 bucket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_delivery_configuration({
    #     id: "DeliveryId", # required
    #     record_fields: ["FieldHeader"],
    #     field_delimiter: "FieldDelimiter",
    #     s3_delivery_configuration: {
    #       suffix_path: "DeliverySuffixPath",
    #       enable_hive_compatible_path: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UpdateDeliveryConfiguration AWS API Documentation
    #
    # @overload update_delivery_configuration(params = {})
    # @param [Hash] params ({})
    def update_delivery_configuration(params = {}, options = {})
      req = build_request(:update_delivery_configuration, params)
      req.send_request(options)
    end

    # Updates an existing log anomaly detector.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the anomaly detector that you want to update.
    #
    # @option params [String] :evaluation_frequency
    #   Specifies how often the anomaly detector runs and look for anomalies.
    #   Set this value according to the frequency that the log group receives
    #   new logs. For example, if the log group receives new log events every
    #   10 minutes, then setting `evaluationFrequency` to `FIFTEEN_MIN` might
    #   be appropriate.
    #
    # @option params [String] :filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
    #
    # @option params [Integer] :anomaly_visibility_time
    #   The number of days to use as the life cycle of anomalies. After this
    #   time, anomalies are automatically baselined and the anomaly detector
    #   model will treat new occurrences of similar event as normal.
    #   Therefore, if you do not correct the cause of an anomaly during this
    #   time, it will be considered normal going forward and will not be
    #   detected.
    #
    # @option params [required, Boolean] :enabled
    #   Use this parameter to pause or restart the anomaly detector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_log_anomaly_detector({
    #     anomaly_detector_arn: "AnomalyDetectorArn", # required
    #     evaluation_frequency: "ONE_MIN", # accepts ONE_MIN, FIVE_MIN, TEN_MIN, FIFTEEN_MIN, THIRTY_MIN, ONE_HOUR
    #     filter_pattern: "FilterPattern",
    #     anomaly_visibility_time: 1,
    #     enabled: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UpdateLogAnomalyDetector AWS API Documentation
    #
    # @overload update_log_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def update_log_anomaly_detector(params = {}, options = {})
      req = build_request(:update_log_anomaly_detector, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CloudWatchLogs')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cloudwatchlogs'
      context[:gem_version] = '1.125.0'
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
