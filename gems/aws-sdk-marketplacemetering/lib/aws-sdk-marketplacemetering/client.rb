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

module Aws::MarketplaceMetering
  # An API client for MarketplaceMetering.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MarketplaceMetering::Client.new(
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

    @identifier = :marketplacemetering

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
    add_plugin(Aws::MarketplaceMetering::Plugins::Endpoints)

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
    #   @option options [Aws::MarketplaceMetering::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MarketplaceMetering::EndpointParameters`.
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

    # The `CustomerIdentifier` parameter is scheduled for deprecation on
    # March 31, 2026. Use `CustomerAWSAccountID` instead.
    #
    #  These parameters are mutually exclusive. You can't specify both
    # `CustomerIdentifier` and `CustomerAWSAccountID` in the same request.
    #
    # To post metering records for customers, SaaS applications call
    # `BatchMeterUsage`, which is used for metering SaaS flexible
    # consumption pricing (FCP). Identical requests are idempotent and can
    # be retried with the same records or a subset of records. Each
    # `BatchMeterUsage` request is for only one product. If you want to
    # meter usage for multiple products, you must make multiple
    # `BatchMeterUsage` calls.
    #
    # Usage records should be submitted in quick succession following a
    # recorded event. Usage records aren't accepted 6 hours or more after
    # an event.
    #
    # `BatchMeterUsage` can process up to 25 `UsageRecords` at a time, and
    # each request must be less than 1 MB in size. Optionally, you can have
    # multiple usage allocations for usage data that's split into buckets
    # according to predefined tags.
    #
    # `BatchMeterUsage` returns a list of `UsageRecordResult` objects, which
    # have each `UsageRecord`. It also returns a list of
    # `UnprocessedRecords`, which indicate errors on the service side that
    # should be retried.
    #
    # For Amazon Web Services Regions that support `BatchMeterUsage`, see
    # [BatchMeterUsage Region support][1].
    #
    # <note markdown="1"> For an example of `BatchMeterUsage`, see [ BatchMeterUsage code
    # example][2] in the *Amazon Web Services Marketplace Seller Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#batchmeterusage-region-support
    # [2]: https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-batchmeterusage-example
    #
    # @option params [required, Array<Types::UsageRecord>] :usage_records
    #   The set of `UsageRecords` to submit. `BatchMeterUsage` accepts up to
    #   25 `UsageRecords` at a time.
    #
    # @option params [required, String] :product_code
    #   Product code is used to uniquely identify a product in Amazon Web
    #   Services Marketplace. The product code should be the same as the one
    #   used during the publishing of a new product.
    #
    # @return [Types::BatchMeterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchMeterUsageResult#results #results} => Array&lt;Types::UsageRecordResult&gt;
    #   * {Types::BatchMeterUsageResult#unprocessed_records #unprocessed_records} => Array&lt;Types::UsageRecord&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_meter_usage({
    #     usage_records: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         customer_identifier: "CustomerIdentifier",
    #         dimension: "UsageDimension", # required
    #         quantity: 1,
    #         usage_allocations: [
    #           {
    #             allocated_usage_quantity: 1, # required
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #         customer_aws_account_id: "CustomerAWSAccountId",
    #       },
    #     ],
    #     product_code: "ProductCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].usage_record.timestamp #=> Time
    #   resp.results[0].usage_record.customer_identifier #=> String
    #   resp.results[0].usage_record.dimension #=> String
    #   resp.results[0].usage_record.quantity #=> Integer
    #   resp.results[0].usage_record.usage_allocations #=> Array
    #   resp.results[0].usage_record.usage_allocations[0].allocated_usage_quantity #=> Integer
    #   resp.results[0].usage_record.usage_allocations[0].tags #=> Array
    #   resp.results[0].usage_record.usage_allocations[0].tags[0].key #=> String
    #   resp.results[0].usage_record.usage_allocations[0].tags[0].value #=> String
    #   resp.results[0].usage_record.customer_aws_account_id #=> String
    #   resp.results[0].metering_record_id #=> String
    #   resp.results[0].status #=> String, one of "Success", "CustomerNotSubscribed", "DuplicateRecord"
    #   resp.unprocessed_records #=> Array
    #   resp.unprocessed_records[0].timestamp #=> Time
    #   resp.unprocessed_records[0].customer_identifier #=> String
    #   resp.unprocessed_records[0].dimension #=> String
    #   resp.unprocessed_records[0].quantity #=> Integer
    #   resp.unprocessed_records[0].usage_allocations #=> Array
    #   resp.unprocessed_records[0].usage_allocations[0].allocated_usage_quantity #=> Integer
    #   resp.unprocessed_records[0].usage_allocations[0].tags #=> Array
    #   resp.unprocessed_records[0].usage_allocations[0].tags[0].key #=> String
    #   resp.unprocessed_records[0].usage_allocations[0].tags[0].value #=> String
    #   resp.unprocessed_records[0].customer_aws_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/BatchMeterUsage AWS API Documentation
    #
    # @overload batch_meter_usage(params = {})
    # @param [Hash] params ({})
    def batch_meter_usage(params = {}, options = {})
      req = build_request(:batch_meter_usage, params)
      req.send_request(options)
    end

    # API to emit metering records. For identical requests, the API is
    # idempotent and returns the metering record ID. This is used for
    # metering flexible consumption pricing (FCP) Amazon Machine Images
    # (AMI) and container products.
    #
    # `MeterUsage` is authenticated on the buyer's Amazon Web Services
    # account using credentials from the Amazon EC2 instance, Amazon ECS
    # task, or Amazon EKS pod.
    #
    # `MeterUsage` can optionally include multiple usage allocations, to
    # provide customers with usage data split into buckets by tags that you
    # define (or allow the customer to define).
    #
    # Submit usage records to report events from the previous hour. If you
    # submit records that are greater than six hours after events occur, the
    # records won’t be accepted. The timestamp in your request determines
    # when an event is recorded. You can only report usage once per hour for
    # each dimension. For AMI-based products, this is per dimension and per
    # EC2 instance. For container products, this is per dimension and per
    # ECS task or EKS pod. You can’t modify values after they’re recorded.
    # If you report usage before the current hour ends, you will be unable
    # to report additional usage until the next hour begins.
    #
    # For Amazon Web Services Regions that support `MeterUsage`, see
    # [MeterUsage Region support for Amazon EC2][1] and [MeterUsage Region
    # support for Amazon ECS and Amazon EKS][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#meterusage-region-support-ec2
    # [2]: https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#meterusage-region-support-ecs-eks
    #
    # @option params [required, String] :product_code
    #   Product code is used to uniquely identify a product in Amazon Web
    #   Services Marketplace. The product code should be the same as the one
    #   used during the publishing of a new product.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :timestamp
    #   Timestamp, in UTC, for which the usage is being reported. Your
    #   application can meter usage for up to six hours in the past. Make sure
    #   the `timestamp` value is not before the start of the software usage.
    #
    # @option params [required, String] :usage_dimension
    #   It will be one of the fcp dimension name provided during the
    #   publishing of the product.
    #
    # @option params [Integer] :usage_quantity
    #   Consumption value for the hour. Defaults to `0` if not specified.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the permissions required for the action, but
    #   does not make the request. If you have the permissions, the request
    #   returns `DryRunOperation`; otherwise, it returns
    #   `UnauthorizedException`. Defaults to `false` if not specified.
    #
    # @option params [Array<Types::UsageAllocation>] :usage_allocations
    #   The set of `UsageAllocations` to submit.
    #
    #   The sum of all `UsageAllocation` quantities must equal the
    #   `UsageQuantity` of the `MeterUsage` request, and each
    #   `UsageAllocation` must have a unique set of tags (include no tags).
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotencyConflictException` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::MeterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MeterUsageResult#metering_record_id #metering_record_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.meter_usage({
    #     product_code: "ProductCode", # required
    #     timestamp: Time.now, # required
    #     usage_dimension: "UsageDimension", # required
    #     usage_quantity: 1,
    #     dry_run: false,
    #     usage_allocations: [
    #       {
    #         allocated_usage_quantity: 1, # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.metering_record_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/MeterUsage AWS API Documentation
    #
    # @overload meter_usage(params = {})
    # @param [Hash] params ({})
    def meter_usage(params = {}, options = {})
      req = build_request(:meter_usage, params)
      req.send_request(options)
    end

    # Paid container software products sold through Amazon Web Services
    # Marketplace must integrate with the Amazon Web Services Marketplace
    # Metering Service and call the `RegisterUsage` operation for software
    # entitlement and metering. Free and BYOL products for Amazon ECS or
    # Amazon EKS aren't required to call `RegisterUsage`, but you may
    # choose to do so if you would like to receive usage data in your seller
    # reports. The sections below explain the behavior of `RegisterUsage`.
    # `RegisterUsage` performs two primary functions: metering and
    # entitlement.
    #
    # * *Entitlement*: `RegisterUsage` allows you to verify that the
    #   customer running your paid software is subscribed to your product on
    #   Amazon Web Services Marketplace, enabling you to guard against
    #   unauthorized use. Your container image that integrates with
    #   `RegisterUsage` is only required to guard against unauthorized use
    #   at container startup, as such a `CustomerNotSubscribedException` or
    #   `PlatformNotSupportedException` will only be thrown on the initial
    #   call to `RegisterUsage`. Subsequent calls from the same Amazon ECS
    #   task instance (e.g. task-id) or Amazon EKS pod will not throw a
    #   `CustomerNotSubscribedException`, even if the customer unsubscribes
    #   while the Amazon ECS task or Amazon EKS pod is still running.
    #
    # * *Metering*: `RegisterUsage` meters software use per ECS task, per
    #   hour, or per pod for Amazon EKS with usage prorated to the second. A
    #   minimum of 1 minute of usage applies to tasks that are short lived.
    #   For example, if a customer has a 10 node Amazon ECS or Amazon EKS
    #   cluster and a service configured as a Daemon Set, then Amazon ECS or
    #   Amazon EKS will launch a task on all 10 cluster nodes and the
    #   customer will be charged for 10 tasks. Software metering is handled
    #   by the Amazon Web Services Marketplace metering control plane—your
    #   software is not required to perform metering-specific actions other
    #   than to call `RegisterUsage` to commence metering. The Amazon Web
    #   Services Marketplace metering control plane will also bill customers
    #   for running ECS tasks and Amazon EKS pods, regardless of the
    #   customer's subscription state, which removes the need for your
    #   software to run entitlement checks at runtime. For containers,
    #   `RegisterUsage` should be called immediately at launch. If you don’t
    #   register the container within the first 6 hours of the launch,
    #   Amazon Web Services Marketplace Metering Service doesn’t provide any
    #   metering guarantees for previous months. Metering will continue,
    #   however, for the current month forward until the container ends.
    #   `RegisterUsage` is for metering paid hourly container products.
    #
    #   For Amazon Web Services Regions that support `RegisterUsage`, see
    #   [RegisterUsage Region support][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#registerusage-region-support
    #
    # @option params [required, String] :product_code
    #   Product code is used to uniquely identify a product in Amazon Web
    #   Services Marketplace. The product code should be the same as the one
    #   used during the publishing of a new product.
    #
    # @option params [required, Integer] :public_key_version
    #   Public Key Version provided by Amazon Web Services Marketplace
    #
    # @option params [String] :nonce
    #   (Optional) To scope down the registration to a specific running
    #   software instance and guard against replay attacks.
    #
    # @return [Types::RegisterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterUsageResult#public_key_rotation_timestamp #public_key_rotation_timestamp} => Time
    #   * {Types::RegisterUsageResult#signature #signature} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_usage({
    #     product_code: "ProductCode", # required
    #     public_key_version: 1, # required
    #     nonce: "Nonce",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_rotation_timestamp #=> Time
    #   resp.signature #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/RegisterUsage AWS API Documentation
    #
    # @overload register_usage(params = {})
    # @param [Hash] params ({})
    def register_usage(params = {}, options = {})
      req = build_request(:register_usage, params)
      req.send_request(options)
    end

    # `ResolveCustomer` is called by a SaaS application during the
    # registration process. When a buyer visits your website during the
    # registration process, the buyer submits a registration token through
    # their browser. The registration token is resolved through this API to
    # obtain a `CustomerIdentifier` along with the `CustomerAWSAccountId`
    # and `ProductCode`.
    #
    # <note markdown="1"> To successfully resolve the token, the API must be called from the
    # account that was used to publish the SaaS application. For an example
    # of using `ResolveCustomer`, see [ ResolveCustomer code example][1] in
    # the *Amazon Web Services Marketplace Seller Guide*.
    #
    #  </note>
    #
    # Permission is required for this operation. Your IAM role or user
    # performing this operation requires a policy to allow the
    # `aws-marketplace:ResolveCustomer` action. For more information, see
    # [Actions, resources, and condition keys for Amazon Web Services
    # Marketplace Metering Service][2] in the *Service Authorization
    # Reference*.
    #
    # For Amazon Web Services Regions that support `ResolveCustomer`, see
    # [ResolveCustomer Region support][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-resolvecustomer-example
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsmarketplacemeteringservice.html
    # [3]: https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#resolvecustomer-region-support
    #
    # @option params [required, String] :registration_token
    #   When a buyer visits your website during the registration process, the
    #   buyer submits a registration token through the browser. The
    #   registration token is resolved to obtain a `CustomerIdentifier` along
    #   with the `CustomerAWSAccountId` and `ProductCode`.
    #
    # @return [Types::ResolveCustomerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveCustomerResult#customer_identifier #customer_identifier} => String
    #   * {Types::ResolveCustomerResult#product_code #product_code} => String
    #   * {Types::ResolveCustomerResult#customer_aws_account_id #customer_aws_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_customer({
    #     registration_token: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_identifier #=> String
    #   resp.product_code #=> String
    #   resp.customer_aws_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ResolveCustomer AWS API Documentation
    #
    # @overload resolve_customer(params = {})
    # @param [Hash] params ({})
    def resolve_customer(params = {}, options = {})
      req = build_request(:resolve_customer, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MarketplaceMetering')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-marketplacemetering'
      context[:gem_version] = '1.88.0'
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
