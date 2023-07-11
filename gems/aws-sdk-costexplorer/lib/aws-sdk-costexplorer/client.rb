# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:costexplorer)

module Aws::CostExplorer
  # An API client for CostExplorer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CostExplorer::Client.new(
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

    @identifier = :costexplorer

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::CostExplorer::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
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
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
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
    #   @option options [Aws::CostExplorer::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CostExplorer::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a new cost anomaly detection monitor with the requested type
    # and monitor specification.
    #
    # @option params [required, Types::AnomalyMonitor] :anomaly_monitor
    #   The cost anomaly detection monitor object that you want to create.
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   An optional list of tags to associate with the specified [
    #   `AnomalyMonitor` ][1]. You can use resource tags to control access to
    #   your `monitor` using IAM policies.
    #
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource. The following restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can assign
    #     a maximum of 50 user-tags to one resource. The remaining are
    #     reserved for Amazon Web Services use
    #
    #   * The maximum length of a key is 128 characters
    #
    #   * The maximum length of a value is 256 characters
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`
    #
    #   * Keys and values are case sensitive
    #
    #   * Keys and values are trimmed for any leading or trailing whitespaces
    #
    #   * Don’t use `aws:` as a prefix for your keys. This prefix is reserved
    #     for Amazon Web Services use
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html
    #
    # @return [Types::CreateAnomalyMonitorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnomalyMonitorResponse#monitor_arn #monitor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_anomaly_monitor({
    #     anomaly_monitor: { # required
    #       monitor_arn: "GenericString",
    #       monitor_name: "GenericString", # required
    #       creation_date: "YearMonthDay",
    #       last_updated_date: "YearMonthDay",
    #       last_evaluated_date: "YearMonthDay",
    #       monitor_type: "DIMENSIONAL", # required, accepts DIMENSIONAL, CUSTOM
    #       monitor_dimension: "SERVICE", # accepts SERVICE
    #       monitor_specification: {
    #         or: [
    #           {
    #             # recursive Expression
    #           },
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           },
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #         },
    #       },
    #       dimensional_value_count: 1,
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateAnomalyMonitor AWS API Documentation
    #
    # @overload create_anomaly_monitor(params = {})
    # @param [Hash] params ({})
    def create_anomaly_monitor(params = {}, options = {})
      req = build_request(:create_anomaly_monitor, params)
      req.send_request(options)
    end

    # Adds an alert subscription to a cost anomaly detection monitor. You
    # can use each subscription to define subscribers with email or SNS
    # notifications. Email subscribers can set an absolute or percentage
    # threshold and a time frequency for receiving notifications.
    #
    # @option params [required, Types::AnomalySubscription] :anomaly_subscription
    #   The cost anomaly subscription object that you want to create.
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   An optional list of tags to associate with the specified [
    #   `AnomalySubscription` ][1]. You can use resource tags to control
    #   access to your `subscription` using IAM policies.
    #
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource. The following restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can assign
    #     a maximum of 50 user-tags to one resource. The remaining are
    #     reserved for Amazon Web Services use
    #
    #   * The maximum length of a key is 128 characters
    #
    #   * The maximum length of a value is 256 characters
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`
    #
    #   * Keys and values are case sensitive
    #
    #   * Keys and values are trimmed for any leading or trailing whitespaces
    #
    #   * Don’t use `aws:` as a prefix for your keys. This prefix is reserved
    #     for Amazon Web Services use
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html
    #
    # @return [Types::CreateAnomalySubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnomalySubscriptionResponse#subscription_arn #subscription_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_anomaly_subscription({
    #     anomaly_subscription: { # required
    #       subscription_arn: "GenericString",
    #       account_id: "GenericString",
    #       monitor_arn_list: ["Arn"], # required
    #       subscribers: [ # required
    #         {
    #           address: "SubscriberAddress",
    #           type: "EMAIL", # accepts EMAIL, SNS
    #           status: "CONFIRMED", # accepts CONFIRMED, DECLINED
    #         },
    #       ],
    #       threshold: 1.0,
    #       frequency: "DAILY", # required, accepts DAILY, IMMEDIATE, WEEKLY
    #       subscription_name: "GenericString", # required
    #       threshold_expression: {
    #         or: [
    #           {
    #             # recursive Expression
    #           },
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           },
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #         },
    #       },
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateAnomalySubscription AWS API Documentation
    #
    # @overload create_anomaly_subscription(params = {})
    # @param [Hash] params ({})
    def create_anomaly_subscription(params = {}, options = {})
      req = build_request(:create_anomaly_subscription, params)
      req.send_request(options)
    end

    # Creates a new Cost Category with the requested name and rules.
    #
    # @option params [required, String] :name
    #   The unique name of the Cost Category.
    #
    # @option params [String] :effective_start
    #   The Cost Category's effective start date. It can only be a billing
    #   start date (first day of the month). If the date isn't provided,
    #   it's the first day of the current month. Dates can't be before the
    #   previous twelve months, or in the future.
    #
    # @option params [required, String] :rule_version
    #   The rule schema version in this particular Cost Category.
    #
    # @option params [required, Array<Types::CostCategoryRule>] :rules
    #   The Cost Category rules used to categorize costs. For more
    #   information, see [CostCategoryRule][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html
    #
    # @option params [String] :default_value
    #   The default value for the cost category.
    #
    # @option params [Array<Types::CostCategorySplitChargeRule>] :split_charge_rules
    #   The split charge rules used to allocate your charges between your Cost
    #   Category values.
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   An optional list of tags to associate with the specified [
    #   `CostCategory` ][1]. You can use resource tags to control access to
    #   your `cost category` using IAM policies.
    #
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource. The following restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can assign
    #     a maximum of 50 user-tags to one resource. The remaining are
    #     reserved for Amazon Web Services use
    #
    #   * The maximum length of a key is 128 characters
    #
    #   * The maximum length of a value is 256 characters
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`
    #
    #   * Keys and values are case sensitive
    #
    #   * Keys and values are trimmed for any leading or trailing whitespaces
    #
    #   * Don’t use `aws:` as a prefix for your keys. This prefix is reserved
    #     for Amazon Web Services use
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html
    #
    # @return [Types::CreateCostCategoryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCostCategoryDefinitionResponse#cost_category_arn #cost_category_arn} => String
    #   * {Types::CreateCostCategoryDefinitionResponse#effective_start #effective_start} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cost_category_definition({
    #     name: "CostCategoryName", # required
    #     effective_start: "ZonedDateTime",
    #     rule_version: "CostCategoryExpression.v1", # required, accepts CostCategoryExpression.v1
    #     rules: [ # required
    #       {
    #         value: "CostCategoryValue",
    #         rule: {
    #           or: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #           },
    #         },
    #         inherited_value: {
    #           dimension_name: "LINKED_ACCOUNT_NAME", # accepts LINKED_ACCOUNT_NAME, TAG
    #           dimension_key: "GenericString",
    #         },
    #         type: "REGULAR", # accepts REGULAR, INHERITED_VALUE
    #       },
    #     ],
    #     default_value: "CostCategoryValue",
    #     split_charge_rules: [
    #       {
    #         source: "GenericString", # required
    #         targets: ["GenericString"], # required
    #         method: "FIXED", # required, accepts FIXED, PROPORTIONAL, EVEN
    #         parameters: [
    #           {
    #             type: "ALLOCATION_PERCENTAGES", # required, accepts ALLOCATION_PERCENTAGES
    #             values: ["GenericString"], # required
    #           },
    #         ],
    #       },
    #     ],
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cost_category_arn #=> String
    #   resp.effective_start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateCostCategoryDefinition AWS API Documentation
    #
    # @overload create_cost_category_definition(params = {})
    # @param [Hash] params ({})
    def create_cost_category_definition(params = {}, options = {})
      req = build_request(:create_cost_category_definition, params)
      req.send_request(options)
    end

    # Deletes a cost anomaly monitor.
    #
    # @option params [required, String] :monitor_arn
    #   The unique identifier of the cost anomaly monitor that you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_anomaly_monitor({
    #     monitor_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteAnomalyMonitor AWS API Documentation
    #
    # @overload delete_anomaly_monitor(params = {})
    # @param [Hash] params ({})
    def delete_anomaly_monitor(params = {}, options = {})
      req = build_request(:delete_anomaly_monitor, params)
      req.send_request(options)
    end

    # Deletes a cost anomaly subscription.
    #
    # @option params [required, String] :subscription_arn
    #   The unique identifier of the cost anomaly subscription that you want
    #   to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_anomaly_subscription({
    #     subscription_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteAnomalySubscription AWS API Documentation
    #
    # @overload delete_anomaly_subscription(params = {})
    # @param [Hash] params ({})
    def delete_anomaly_subscription(params = {}, options = {})
      req = build_request(:delete_anomaly_subscription, params)
      req.send_request(options)
    end

    # Deletes a Cost Category. Expenses from this month going forward will
    # no longer be categorized with this Cost Category.
    #
    # @option params [required, String] :cost_category_arn
    #   The unique identifier for your Cost Category.
    #
    # @return [Types::DeleteCostCategoryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCostCategoryDefinitionResponse#cost_category_arn #cost_category_arn} => String
    #   * {Types::DeleteCostCategoryDefinitionResponse#effective_end #effective_end} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cost_category_definition({
    #     cost_category_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cost_category_arn #=> String
    #   resp.effective_end #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteCostCategoryDefinition AWS API Documentation
    #
    # @overload delete_cost_category_definition(params = {})
    # @param [Hash] params ({})
    def delete_cost_category_definition(params = {}, options = {})
      req = build_request(:delete_cost_category_definition, params)
      req.send_request(options)
    end

    # Returns the name, Amazon Resource Name (ARN), rules, definition, and
    # effective dates of a Cost Category that's defined in the account.
    #
    # You have the option to use `EffectiveOn` to return a Cost Category
    # that's active on a specific date. If there's no `EffectiveOn`
    # specified, you see a Cost Category that's effective on the current
    # date. If Cost Category is still effective, `EffectiveEnd` is omitted
    # in the response.
    #
    # @option params [required, String] :cost_category_arn
    #   The unique identifier for your Cost Category.
    #
    # @option params [String] :effective_on
    #   The date when the Cost Category was effective.
    #
    # @return [Types::DescribeCostCategoryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCostCategoryDefinitionResponse#cost_category #cost_category} => Types::CostCategory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cost_category_definition({
    #     cost_category_arn: "Arn", # required
    #     effective_on: "ZonedDateTime",
    #   })
    #
    # @example Response structure
    #
    #   resp.cost_category.cost_category_arn #=> String
    #   resp.cost_category.effective_start #=> String
    #   resp.cost_category.effective_end #=> String
    #   resp.cost_category.name #=> String
    #   resp.cost_category.rule_version #=> String, one of "CostCategoryExpression.v1"
    #   resp.cost_category.rules #=> Array
    #   resp.cost_category.rules[0].value #=> String
    #   resp.cost_category.rules[0].rule.or #=> Array
    #   resp.cost_category.rules[0].rule.or[0] #=> Types::Expression
    #   resp.cost_category.rules[0].rule.and #=> Array
    #   resp.cost_category.rules[0].rule.and[0] #=> Types::Expression
    #   resp.cost_category.rules[0].rule.not #=> Types::Expression
    #   resp.cost_category.rules[0].rule.dimensions.key #=> String, one of "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"
    #   resp.cost_category.rules[0].rule.dimensions.values #=> Array
    #   resp.cost_category.rules[0].rule.dimensions.values[0] #=> String
    #   resp.cost_category.rules[0].rule.dimensions.match_options #=> Array
    #   resp.cost_category.rules[0].rule.dimensions.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.cost_category.rules[0].rule.tags.key #=> String
    #   resp.cost_category.rules[0].rule.tags.values #=> Array
    #   resp.cost_category.rules[0].rule.tags.values[0] #=> String
    #   resp.cost_category.rules[0].rule.tags.match_options #=> Array
    #   resp.cost_category.rules[0].rule.tags.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.cost_category.rules[0].rule.cost_categories.key #=> String
    #   resp.cost_category.rules[0].rule.cost_categories.values #=> Array
    #   resp.cost_category.rules[0].rule.cost_categories.values[0] #=> String
    #   resp.cost_category.rules[0].rule.cost_categories.match_options #=> Array
    #   resp.cost_category.rules[0].rule.cost_categories.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.cost_category.rules[0].inherited_value.dimension_name #=> String, one of "LINKED_ACCOUNT_NAME", "TAG"
    #   resp.cost_category.rules[0].inherited_value.dimension_key #=> String
    #   resp.cost_category.rules[0].type #=> String, one of "REGULAR", "INHERITED_VALUE"
    #   resp.cost_category.split_charge_rules #=> Array
    #   resp.cost_category.split_charge_rules[0].source #=> String
    #   resp.cost_category.split_charge_rules[0].targets #=> Array
    #   resp.cost_category.split_charge_rules[0].targets[0] #=> String
    #   resp.cost_category.split_charge_rules[0].method #=> String, one of "FIXED", "PROPORTIONAL", "EVEN"
    #   resp.cost_category.split_charge_rules[0].parameters #=> Array
    #   resp.cost_category.split_charge_rules[0].parameters[0].type #=> String, one of "ALLOCATION_PERCENTAGES"
    #   resp.cost_category.split_charge_rules[0].parameters[0].values #=> Array
    #   resp.cost_category.split_charge_rules[0].parameters[0].values[0] #=> String
    #   resp.cost_category.processing_status #=> Array
    #   resp.cost_category.processing_status[0].component #=> String, one of "COST_EXPLORER"
    #   resp.cost_category.processing_status[0].status #=> String, one of "PROCESSING", "APPLIED"
    #   resp.cost_category.default_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DescribeCostCategoryDefinition AWS API Documentation
    #
    # @overload describe_cost_category_definition(params = {})
    # @param [Hash] params ({})
    def describe_cost_category_definition(params = {}, options = {})
      req = build_request(:describe_cost_category_definition, params)
      req.send_request(options)
    end

    # Retrieves all of the cost anomalies detected on your account during
    # the time period that's specified by the `DateInterval` object.
    # Anomalies are available for up to 90 days.
    #
    # @option params [String] :monitor_arn
    #   Retrieves all of the cost anomalies detected for a specific cost
    #   anomaly monitor Amazon Resource Name (ARN).
    #
    # @option params [required, Types::AnomalyDateInterval] :date_interval
    #   Assigns the start and end dates for retrieving cost anomalies. The
    #   returned anomaly object will have an `AnomalyEndDate` in the specified
    #   time range.
    #
    # @option params [String] :feedback
    #   Filters anomaly results by the feedback field on the anomaly object.
    #
    # @option params [Types::TotalImpactFilter] :total_impact
    #   Filters anomaly results by the total impact field on the anomaly
    #   object. For example, you can filter anomalies `GREATER_THAN 200.00` to
    #   retrieve anomalies, with an estimated dollar impact greater than 200.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The number of entries a paginated response contains.
    #
    # @return [Types::GetAnomaliesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnomaliesResponse#anomalies #anomalies} => Array&lt;Types::Anomaly&gt;
    #   * {Types::GetAnomaliesResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_anomalies({
    #     monitor_arn: "GenericString",
    #     date_interval: { # required
    #       start_date: "YearMonthDay", # required
    #       end_date: "YearMonthDay",
    #     },
    #     feedback: "YES", # accepts YES, NO, PLANNED_ACTIVITY
    #     total_impact: {
    #       numeric_operator: "EQUAL", # required, accepts EQUAL, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, BETWEEN
    #       start_value: 1.0, # required
    #       end_value: 1.0,
    #     },
    #     next_page_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.anomalies #=> Array
    #   resp.anomalies[0].anomaly_id #=> String
    #   resp.anomalies[0].anomaly_start_date #=> String
    #   resp.anomalies[0].anomaly_end_date #=> String
    #   resp.anomalies[0].dimension_value #=> String
    #   resp.anomalies[0].root_causes #=> Array
    #   resp.anomalies[0].root_causes[0].service #=> String
    #   resp.anomalies[0].root_causes[0].region #=> String
    #   resp.anomalies[0].root_causes[0].linked_account #=> String
    #   resp.anomalies[0].root_causes[0].usage_type #=> String
    #   resp.anomalies[0].root_causes[0].linked_account_name #=> String
    #   resp.anomalies[0].anomaly_score.max_score #=> Float
    #   resp.anomalies[0].anomaly_score.current_score #=> Float
    #   resp.anomalies[0].impact.max_impact #=> Float
    #   resp.anomalies[0].impact.total_impact #=> Float
    #   resp.anomalies[0].impact.total_actual_spend #=> Float
    #   resp.anomalies[0].impact.total_expected_spend #=> Float
    #   resp.anomalies[0].impact.total_impact_percentage #=> Float
    #   resp.anomalies[0].monitor_arn #=> String
    #   resp.anomalies[0].feedback #=> String, one of "YES", "NO", "PLANNED_ACTIVITY"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomalies AWS API Documentation
    #
    # @overload get_anomalies(params = {})
    # @param [Hash] params ({})
    def get_anomalies(params = {}, options = {})
      req = build_request(:get_anomalies, params)
      req.send_request(options)
    end

    # Retrieves the cost anomaly monitor definitions for your account. You
    # can filter using a list of cost anomaly monitor Amazon Resource Names
    # (ARNs).
    #
    # @option params [Array<String>] :monitor_arn_list
    #   A list of cost anomaly monitor ARNs.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The number of entries that a paginated response contains.
    #
    # @return [Types::GetAnomalyMonitorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnomalyMonitorsResponse#anomaly_monitors #anomaly_monitors} => Array&lt;Types::AnomalyMonitor&gt;
    #   * {Types::GetAnomalyMonitorsResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_anomaly_monitors({
    #     monitor_arn_list: ["Value"],
    #     next_page_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_monitors #=> Array
    #   resp.anomaly_monitors[0].monitor_arn #=> String
    #   resp.anomaly_monitors[0].monitor_name #=> String
    #   resp.anomaly_monitors[0].creation_date #=> String
    #   resp.anomaly_monitors[0].last_updated_date #=> String
    #   resp.anomaly_monitors[0].last_evaluated_date #=> String
    #   resp.anomaly_monitors[0].monitor_type #=> String, one of "DIMENSIONAL", "CUSTOM"
    #   resp.anomaly_monitors[0].monitor_dimension #=> String, one of "SERVICE"
    #   resp.anomaly_monitors[0].monitor_specification.or #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.or[0] #=> Types::Expression
    #   resp.anomaly_monitors[0].monitor_specification.and #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.and[0] #=> Types::Expression
    #   resp.anomaly_monitors[0].monitor_specification.not #=> Types::Expression
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.key #=> String, one of "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.values #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.values[0] #=> String
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.match_options #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.anomaly_monitors[0].monitor_specification.tags.key #=> String
    #   resp.anomaly_monitors[0].monitor_specification.tags.values #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.tags.values[0] #=> String
    #   resp.anomaly_monitors[0].monitor_specification.tags.match_options #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.tags.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.key #=> String
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.values #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.values[0] #=> String
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.match_options #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.anomaly_monitors[0].dimensional_value_count #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomalyMonitors AWS API Documentation
    #
    # @overload get_anomaly_monitors(params = {})
    # @param [Hash] params ({})
    def get_anomaly_monitors(params = {}, options = {})
      req = build_request(:get_anomaly_monitors, params)
      req.send_request(options)
    end

    # Retrieves the cost anomaly subscription objects for your account. You
    # can filter using a list of cost anomaly monitor Amazon Resource Names
    # (ARNs).
    #
    # @option params [Array<String>] :subscription_arn_list
    #   A list of cost anomaly subscription ARNs.
    #
    # @option params [String] :monitor_arn
    #   Cost anomaly monitor ARNs.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The number of entries a paginated response contains.
    #
    # @return [Types::GetAnomalySubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnomalySubscriptionsResponse#anomaly_subscriptions #anomaly_subscriptions} => Array&lt;Types::AnomalySubscription&gt;
    #   * {Types::GetAnomalySubscriptionsResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_anomaly_subscriptions({
    #     subscription_arn_list: ["Value"],
    #     monitor_arn: "GenericString",
    #     next_page_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_subscriptions #=> Array
    #   resp.anomaly_subscriptions[0].subscription_arn #=> String
    #   resp.anomaly_subscriptions[0].account_id #=> String
    #   resp.anomaly_subscriptions[0].monitor_arn_list #=> Array
    #   resp.anomaly_subscriptions[0].monitor_arn_list[0] #=> String
    #   resp.anomaly_subscriptions[0].subscribers #=> Array
    #   resp.anomaly_subscriptions[0].subscribers[0].address #=> String
    #   resp.anomaly_subscriptions[0].subscribers[0].type #=> String, one of "EMAIL", "SNS"
    #   resp.anomaly_subscriptions[0].subscribers[0].status #=> String, one of "CONFIRMED", "DECLINED"
    #   resp.anomaly_subscriptions[0].threshold #=> Float
    #   resp.anomaly_subscriptions[0].frequency #=> String, one of "DAILY", "IMMEDIATE", "WEEKLY"
    #   resp.anomaly_subscriptions[0].subscription_name #=> String
    #   resp.anomaly_subscriptions[0].threshold_expression.or #=> Array
    #   resp.anomaly_subscriptions[0].threshold_expression.or[0] #=> Types::Expression
    #   resp.anomaly_subscriptions[0].threshold_expression.and #=> Array
    #   resp.anomaly_subscriptions[0].threshold_expression.and[0] #=> Types::Expression
    #   resp.anomaly_subscriptions[0].threshold_expression.not #=> Types::Expression
    #   resp.anomaly_subscriptions[0].threshold_expression.dimensions.key #=> String, one of "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"
    #   resp.anomaly_subscriptions[0].threshold_expression.dimensions.values #=> Array
    #   resp.anomaly_subscriptions[0].threshold_expression.dimensions.values[0] #=> String
    #   resp.anomaly_subscriptions[0].threshold_expression.dimensions.match_options #=> Array
    #   resp.anomaly_subscriptions[0].threshold_expression.dimensions.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.anomaly_subscriptions[0].threshold_expression.tags.key #=> String
    #   resp.anomaly_subscriptions[0].threshold_expression.tags.values #=> Array
    #   resp.anomaly_subscriptions[0].threshold_expression.tags.values[0] #=> String
    #   resp.anomaly_subscriptions[0].threshold_expression.tags.match_options #=> Array
    #   resp.anomaly_subscriptions[0].threshold_expression.tags.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.anomaly_subscriptions[0].threshold_expression.cost_categories.key #=> String
    #   resp.anomaly_subscriptions[0].threshold_expression.cost_categories.values #=> Array
    #   resp.anomaly_subscriptions[0].threshold_expression.cost_categories.values[0] #=> String
    #   resp.anomaly_subscriptions[0].threshold_expression.cost_categories.match_options #=> Array
    #   resp.anomaly_subscriptions[0].threshold_expression.cost_categories.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomalySubscriptions AWS API Documentation
    #
    # @overload get_anomaly_subscriptions(params = {})
    # @param [Hash] params ({})
    def get_anomaly_subscriptions(params = {}, options = {})
      req = build_request(:get_anomaly_subscriptions, params)
      req.send_request(options)
    end

    # Retrieves cost and usage metrics for your account. You can specify
    # which cost and usage-related metric that you want the request to
    # return. For example, you can specify `BlendedCosts` or
    # `UsageQuantity`. You can also filter and group your data by various
    # dimensions, such as `SERVICE` or `AZ`, in a specific time range. For a
    # complete list of valid dimensions, see the [GetDimensionValues][1]
    # operation. Management account in an organization in Organizations have
    # access to all member accounts.
    #
    # For information about filter limitations, see [Quotas and
    # restrictions][2] in the *Billing and Cost Management User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html
    # [2]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html
    #
    # @option params [required, Types::DateInterval] :time_period
    #   Sets the start date and end date for retrieving Amazon Web Services
    #   costs. The start date is inclusive, but the end date is exclusive. For
    #   example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then
    #   the cost and usage data is retrieved from `2017-01-01` up to and
    #   including `2017-04-30` but not including `2017-05-01`.
    #
    # @option params [required, String] :granularity
    #   Sets the Amazon Web Services cost granularity to `MONTHLY` or `DAILY`,
    #   or `HOURLY`. If `Granularity` isn't set, the response object doesn't
    #   include the `Granularity`, either `MONTHLY` or `DAILY`, or `HOURLY`.
    #
    # @option params [Types::Expression] :filter
    #   Filters Amazon Web Services costs by different dimensions. For
    #   example, you can specify `SERVICE` and `LINKED_ACCOUNT` and get the
    #   costs that are associated with that account's usage of that service.
    #   You can nest `Expression` objects to define any combination of
    #   dimension filters. For more information, see [Expression][1].
    #
    #   Valid values for `MatchOptions` for `Dimensions` are `EQUALS` and
    #   `CASE_SENSITIVE`.
    #
    #   Valid values for `MatchOptions` for `CostCategories` and `Tags` are
    #   `EQUALS`, `ABSENT`, and `CASE_SENSITIVE`. Default values are `EQUALS`
    #   and `CASE_SENSITIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [required, Array<String>] :metrics
    #   Which metrics are returned in the query. For more information about
    #   blended and unblended rates, see [Why does the "blended" annotation
    #   appear on some line items in my bill?][1].
    #
    #   Valid values are `AmortizedCost`, `BlendedCost`, `NetAmortizedCost`,
    #   `NetUnblendedCost`, `NormalizedUsageAmount`, `UnblendedCost`, and
    #   `UsageQuantity`.
    #
    #   <note markdown="1"> If you return the `UsageQuantity` metric, the service aggregates all
    #   usage numbers without taking into account the units. For example, if
    #   you aggregate `usageQuantity` across all of Amazon EC2, the results
    #   aren't meaningful because Amazon EC2 compute hours and data transfer
    #   are measured in different units (for example, hours and GB). To get
    #   more meaningful `UsageQuantity` metrics, filter by `UsageType` or
    #   `UsageTypeGroups`.
    #
    #    </note>
    #
    #   `Metrics` is required for `GetCostAndUsage` requests.
    #
    #
    #
    #   [1]: http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   You can group Amazon Web Services costs using up to two different
    #   groups, either dimensions, tag keys, cost categories, or any two group
    #   by types.
    #
    #   Valid values for the `DIMENSION` type are `AZ`, `INSTANCE_TYPE`,
    #   `LEGAL_ENTITY_NAME`, `INVOICING_ENTITY`, `LINKED_ACCOUNT`,
    #   `OPERATION`, `PLATFORM`, `PURCHASE_TYPE`, `SERVICE`, `TENANCY`,
    #   `RECORD_TYPE`, and `USAGE_TYPE`.
    #
    #   When you group by the `TAG` type and include a valid tag key, you get
    #   all tag values, including empty strings.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @return [Types::GetCostAndUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCostAndUsageResponse#next_page_token #next_page_token} => String
    #   * {Types::GetCostAndUsageResponse#group_definitions #group_definitions} => Array&lt;Types::GroupDefinition&gt;
    #   * {Types::GetCostAndUsageResponse#results_by_time #results_by_time} => Array&lt;Types::ResultByTime&gt;
    #   * {Types::GetCostAndUsageResponse#dimension_value_attributes #dimension_value_attributes} => Array&lt;Types::DimensionValuesWithAttributes&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_and_usage({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     granularity: "DAILY", # required, accepts DAILY, MONTHLY, HOURLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     metrics: ["MetricName"], # required
    #     group_by: [
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #         key: "GroupDefinitionKey",
    #       },
    #     ],
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_page_token #=> String
    #   resp.group_definitions #=> Array
    #   resp.group_definitions[0].type #=> String, one of "DIMENSION", "TAG", "COST_CATEGORY"
    #   resp.group_definitions[0].key #=> String
    #   resp.results_by_time #=> Array
    #   resp.results_by_time[0].time_period.start #=> String
    #   resp.results_by_time[0].time_period.end #=> String
    #   resp.results_by_time[0].total #=> Hash
    #   resp.results_by_time[0].total["MetricName"].amount #=> String
    #   resp.results_by_time[0].total["MetricName"].unit #=> String
    #   resp.results_by_time[0].groups #=> Array
    #   resp.results_by_time[0].groups[0].keys #=> Array
    #   resp.results_by_time[0].groups[0].keys[0] #=> String
    #   resp.results_by_time[0].groups[0].metrics #=> Hash
    #   resp.results_by_time[0].groups[0].metrics["MetricName"].amount #=> String
    #   resp.results_by_time[0].groups[0].metrics["MetricName"].unit #=> String
    #   resp.results_by_time[0].estimated #=> Boolean
    #   resp.dimension_value_attributes #=> Array
    #   resp.dimension_value_attributes[0].value #=> String
    #   resp.dimension_value_attributes[0].attributes #=> Hash
    #   resp.dimension_value_attributes[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsage AWS API Documentation
    #
    # @overload get_cost_and_usage(params = {})
    # @param [Hash] params ({})
    def get_cost_and_usage(params = {}, options = {})
      req = build_request(:get_cost_and_usage, params)
      req.send_request(options)
    end

    # Retrieves cost and usage metrics with resources for your account. You
    # can specify which cost and usage-related metric, such as
    # `BlendedCosts` or `UsageQuantity`, that you want the request to
    # return. You can also filter and group your data by various dimensions,
    # such as `SERVICE` or `AZ`, in a specific time range. For a complete
    # list of valid dimensions, see the [GetDimensionValues][1] operation.
    # Management account in an organization in Organizations have access to
    # all member accounts. This API is currently available for the Amazon
    # Elastic Compute Cloud – Compute service only.
    #
    # <note markdown="1"> This is an opt-in only feature. You can enable this feature from the
    # Cost Explorer Settings page. For information about how to access the
    # Settings page, see [Controlling Access for Cost Explorer][2] in the
    # *Billing and Cost Management User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html
    # [2]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html
    #
    # @option params [required, Types::DateInterval] :time_period
    #   Sets the start and end dates for retrieving Amazon Web Services costs.
    #   The range must be within the last 14 days (the start date cannot be
    #   earlier than 14 days ago). The start date is inclusive, but the end
    #   date is exclusive. For example, if `start` is `2017-01-01` and `end`
    #   is `2017-05-01`, then the cost and usage data is retrieved from
    #   `2017-01-01` up to and including `2017-04-30` but not including
    #   `2017-05-01`.
    #
    # @option params [required, String] :granularity
    #   Sets the Amazon Web Services cost granularity to `MONTHLY`, `DAILY`,
    #   or `HOURLY`. If `Granularity` isn't set, the response object doesn't
    #   include the `Granularity`, `MONTHLY`, `DAILY`, or `HOURLY`.
    #
    # @option params [required, Types::Expression] :filter
    #   Filters Amazon Web Services costs by different dimensions. For
    #   example, you can specify `SERVICE` and `LINKED_ACCOUNT` and get the
    #   costs that are associated with that account's usage of that service.
    #   You can nest `Expression` objects to define any combination of
    #   dimension filters. For more information, see [Expression][1].
    #
    #   The `GetCostAndUsageWithResources` operation requires that you either
    #   group by or filter by a `ResourceId`. It requires the [Expression][1]
    #   `"SERVICE = Amazon Elastic Compute Cloud - Compute"` in the filter.
    #
    #   Valid values for `MatchOptions` for `Dimensions` are `EQUALS` and
    #   `CASE_SENSITIVE`.
    #
    #   Valid values for `MatchOptions` for `CostCategories` and `Tags` are
    #   `EQUALS`, `ABSENT`, and `CASE_SENSITIVE`. Default values are `EQUALS`
    #   and `CASE_SENSITIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [Array<String>] :metrics
    #   Which metrics are returned in the query. For more information about
    #   blended and unblended rates, see [Why does the "blended" annotation
    #   appear on some line items in my bill?][1].
    #
    #   Valid values are `AmortizedCost`, `BlendedCost`, `NetAmortizedCost`,
    #   `NetUnblendedCost`, `NormalizedUsageAmount`, `UnblendedCost`, and
    #   `UsageQuantity`.
    #
    #   <note markdown="1"> If you return the `UsageQuantity` metric, the service aggregates all
    #   usage numbers without taking the units into account. For example, if
    #   you aggregate `usageQuantity` across all of Amazon EC2, the results
    #   aren't meaningful because Amazon EC2 compute hours and data transfer
    #   are measured in different units (for example, hour or GB). To get more
    #   meaningful `UsageQuantity` metrics, filter by `UsageType` or
    #   `UsageTypeGroups`.
    #
    #    </note>
    #
    #   `Metrics` is required for `GetCostAndUsageWithResources` requests.
    #
    #
    #
    #   [1]: http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   You can group Amazon Web Services costs using up to two different
    #   groups: `DIMENSION`, `TAG`, `COST_CATEGORY`.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @return [Types::GetCostAndUsageWithResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCostAndUsageWithResourcesResponse#next_page_token #next_page_token} => String
    #   * {Types::GetCostAndUsageWithResourcesResponse#group_definitions #group_definitions} => Array&lt;Types::GroupDefinition&gt;
    #   * {Types::GetCostAndUsageWithResourcesResponse#results_by_time #results_by_time} => Array&lt;Types::ResultByTime&gt;
    #   * {Types::GetCostAndUsageWithResourcesResponse#dimension_value_attributes #dimension_value_attributes} => Array&lt;Types::DimensionValuesWithAttributes&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_and_usage_with_resources({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     granularity: "DAILY", # required, accepts DAILY, MONTHLY, HOURLY
    #     filter: { # required
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     metrics: ["MetricName"],
    #     group_by: [
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #         key: "GroupDefinitionKey",
    #       },
    #     ],
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_page_token #=> String
    #   resp.group_definitions #=> Array
    #   resp.group_definitions[0].type #=> String, one of "DIMENSION", "TAG", "COST_CATEGORY"
    #   resp.group_definitions[0].key #=> String
    #   resp.results_by_time #=> Array
    #   resp.results_by_time[0].time_period.start #=> String
    #   resp.results_by_time[0].time_period.end #=> String
    #   resp.results_by_time[0].total #=> Hash
    #   resp.results_by_time[0].total["MetricName"].amount #=> String
    #   resp.results_by_time[0].total["MetricName"].unit #=> String
    #   resp.results_by_time[0].groups #=> Array
    #   resp.results_by_time[0].groups[0].keys #=> Array
    #   resp.results_by_time[0].groups[0].keys[0] #=> String
    #   resp.results_by_time[0].groups[0].metrics #=> Hash
    #   resp.results_by_time[0].groups[0].metrics["MetricName"].amount #=> String
    #   resp.results_by_time[0].groups[0].metrics["MetricName"].unit #=> String
    #   resp.results_by_time[0].estimated #=> Boolean
    #   resp.dimension_value_attributes #=> Array
    #   resp.dimension_value_attributes[0].value #=> String
    #   resp.dimension_value_attributes[0].attributes #=> Hash
    #   resp.dimension_value_attributes[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsageWithResources AWS API Documentation
    #
    # @overload get_cost_and_usage_with_resources(params = {})
    # @param [Hash] params ({})
    def get_cost_and_usage_with_resources(params = {}, options = {})
      req = build_request(:get_cost_and_usage_with_resources, params)
      req.send_request(options)
    end

    # Retrieves an array of Cost Category names and values incurred cost.
    #
    # <note markdown="1"> If some Cost Category names and values are not associated with any
    # cost, they will not be returned by this API.
    #
    #  </note>
    #
    # @option params [String] :search_string
    #   The value that you want to search the filter values for.
    #
    #   If you don't specify a `CostCategoryName`, `SearchString` is used to
    #   filter Cost Category names that match the `SearchString` pattern. If
    #   you specify a `CostCategoryName`, `SearchString` is used to filter
    #   Cost Category values that match the `SearchString` pattern.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The time period of the request.
    #
    # @option params [String] :cost_category_name
    #   The unique name of the Cost Category.
    #
    # @option params [Types::Expression] :filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that acts
    #         on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values are
    #         combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is supported.
    #
    #       * For example, you can filter for linked account names that start
    #         with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical operators
    #       `AND/OR/NOT` to create a list of one or more `Expression` objects.
    #       By doing this, you can filter by more advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION ==
    #       us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows: `\{
    #       "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION", "Values": [
    #       "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key": "TagName",
    #       "Values": ["Value1"] \} \} ]\}, \{"Not": \{"Dimensions": \{ "Key":
    #       "USAGE_TYPE", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR and
    #   NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #
    # @option params [Array<Types::SortDefinition>] :sort_by
    #   The value that you sort the data by.
    #
    #   The key represents the cost and usage metrics. The following values
    #   are supported:
    #
    #   * `BlendedCost`
    #
    #   * `UnblendedCost`
    #
    #   * `AmortizedCost`
    #
    #   * `NetAmortizedCost`
    #
    #   * `NetUnblendedCost`
    #
    #   * `UsageQuantity`
    #
    #   * `NormalizedUsageAmount`
    #
    #   The supported key values for the `SortOrder` value are `ASCENDING` and
    #   `DESCENDING`.
    #
    #   When you use the `SortBy` value, the `NextPageToken` and
    #   `SearchString` key values aren't supported.
    #
    # @option params [Integer] :max_results
    #   This field is only used when the `SortBy` value is provided in the
    #   request.
    #
    #   The maximum number of objects that are returned for this request. If
    #   `MaxResults` isn't specified with the `SortBy` value, the request
    #   returns 1000 results as the default value for this parameter.
    #
    #   For `GetCostCategories`, MaxResults has an upper quota of 1000.
    #
    # @option params [String] :next_page_token
    #   If the number of objects that are still available for retrieval
    #   exceeds the quota, Amazon Web Services returns a NextPageToken value
    #   in the response. To retrieve the next batch of objects, provide the
    #   NextPageToken from the previous call in your next request.
    #
    # @return [Types::GetCostCategoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCostCategoriesResponse#next_page_token #next_page_token} => String
    #   * {Types::GetCostCategoriesResponse#cost_category_names #cost_category_names} => Array&lt;String&gt;
    #   * {Types::GetCostCategoriesResponse#cost_category_values #cost_category_values} => Array&lt;String&gt;
    #   * {Types::GetCostCategoriesResponse#return_size #return_size} => Integer
    #   * {Types::GetCostCategoriesResponse#total_size #total_size} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_categories({
    #     search_string: "SearchString",
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     cost_category_name: "CostCategoryName",
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     sort_by: [
    #       {
    #         key: "SortDefinitionKey", # required
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #     ],
    #     max_results: 1,
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_page_token #=> String
    #   resp.cost_category_names #=> Array
    #   resp.cost_category_names[0] #=> String
    #   resp.cost_category_values #=> Array
    #   resp.cost_category_values[0] #=> String
    #   resp.return_size #=> Integer
    #   resp.total_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostCategories AWS API Documentation
    #
    # @overload get_cost_categories(params = {})
    # @param [Hash] params ({})
    def get_cost_categories(params = {}, options = {})
      req = build_request(:get_cost_categories, params)
      req.send_request(options)
    end

    # Retrieves a forecast for how much Amazon Web Services predicts that
    # you will spend over the forecast time period that you select, based on
    # your past costs.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The period of time that you want the forecast to cover. The start date
    #   must be equal to or no later than the current date to avoid a
    #   validation error.
    #
    # @option params [required, String] :metric
    #   Which metric Cost Explorer uses to create your forecast. For more
    #   information about blended and unblended rates, see [Why does the
    #   "blended" annotation appear on some line items in my bill?][1].
    #
    #   Valid values for a `GetCostForecast` call are the following:
    #
    #   * AMORTIZED\_COST
    #
    #   * BLENDED\_COST
    #
    #   * NET\_AMORTIZED\_COST
    #
    #   * NET\_UNBLENDED\_COST
    #
    #   * UNBLENDED\_COST
    #
    #
    #
    #   [1]: http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #
    # @option params [required, String] :granularity
    #   How granular you want the forecast to be. You can get 3 months of
    #   `DAILY` forecasts or 12 months of `MONTHLY` forecasts.
    #
    #   The `GetCostForecast` operation supports only `DAILY` and `MONTHLY`
    #   granularities.
    #
    # @option params [Types::Expression] :filter
    #   The filters that you want to use to filter your forecast. The
    #   `GetCostForecast` API supports filtering by the following dimensions:
    #
    #   * `AZ`
    #
    #   * `INSTANCE_TYPE`
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `LINKED_ACCOUNT_NAME`
    #
    #   * `OPERATION`
    #
    #   * `PURCHASE_TYPE`
    #
    #   * `REGION`
    #
    #   * `SERVICE`
    #
    #   * `USAGE_TYPE`
    #
    #   * `USAGE_TYPE_GROUP`
    #
    #   * `RECORD_TYPE`
    #
    #   * `OPERATING_SYSTEM`
    #
    #   * `TENANCY`
    #
    #   * `SCOPE`
    #
    #   * `PLATFORM`
    #
    #   * `SUBSCRIPTION_ID`
    #
    #   * `LEGAL_ENTITY_NAME`
    #
    #   * `DEPLOYMENT_OPTION`
    #
    #   * `DATABASE_ENGINE`
    #
    #   * `INSTANCE_TYPE_FAMILY`
    #
    #   * `BILLING_ENTITY`
    #
    #   * `RESERVATION_ID`
    #
    #   * `SAVINGS_PLAN_ARN`
    #
    # @option params [Integer] :prediction_interval_level
    #   Cost Explorer always returns the mean forecast as a single point. You
    #   can request a prediction interval around the mean by specifying a
    #   confidence level. The higher the confidence level, the more confident
    #   Cost Explorer is about the actual value falling in the prediction
    #   interval. Higher confidence levels result in wider prediction
    #   intervals.
    #
    # @return [Types::GetCostForecastResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCostForecastResponse#total #total} => Types::MetricValue
    #   * {Types::GetCostForecastResponse#forecast_results_by_time #forecast_results_by_time} => Array&lt;Types::ForecastResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_forecast({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     metric: "BLENDED_COST", # required, accepts BLENDED_COST, UNBLENDED_COST, AMORTIZED_COST, NET_UNBLENDED_COST, NET_AMORTIZED_COST, USAGE_QUANTITY, NORMALIZED_USAGE_AMOUNT
    #     granularity: "DAILY", # required, accepts DAILY, MONTHLY, HOURLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     prediction_interval_level: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.total.amount #=> String
    #   resp.total.unit #=> String
    #   resp.forecast_results_by_time #=> Array
    #   resp.forecast_results_by_time[0].time_period.start #=> String
    #   resp.forecast_results_by_time[0].time_period.end #=> String
    #   resp.forecast_results_by_time[0].mean_value #=> String
    #   resp.forecast_results_by_time[0].prediction_interval_lower_bound #=> String
    #   resp.forecast_results_by_time[0].prediction_interval_upper_bound #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostForecast AWS API Documentation
    #
    # @overload get_cost_forecast(params = {})
    # @param [Hash] params ({})
    def get_cost_forecast(params = {}, options = {})
      req = build_request(:get_cost_forecast, params)
      req.send_request(options)
    end

    # Retrieves all available filter values for a specified filter over a
    # period of time. You can search the dimension values for an arbitrary
    # string.
    #
    # @option params [String] :search_string
    #   The value that you want to search the filter values for.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The start date and end date for retrieving the dimension values. The
    #   start date is inclusive, but the end date is exclusive. For example,
    #   if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost
    #   and usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #
    # @option params [required, String] :dimension
    #   The name of the dimension. Each `Dimension` is available for a
    #   different `Context`. For more information, see `Context`.
    #   `LINK_ACCOUNT_NAME` and `SERVICE_CODE` can only be used in
    #   [CostCategoryRule][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/AAPI_CostCategoryRule.html
    #
    # @option params [String] :context
    #   The context for the call to `GetDimensionValues`. This can be
    #   `RESERVATIONS` or `COST_AND_USAGE`. The default value is
    #   `COST_AND_USAGE`. If the context is set to `RESERVATIONS`, the
    #   resulting dimension values can be used in the
    #   `GetReservationUtilization` operation. If the context is set to
    #   `COST_AND_USAGE`, the resulting dimension values can be used in the
    #   `GetCostAndUsage` operation.
    #
    #   If you set the context to `COST_AND_USAGE`, you can use the following
    #   dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is `us-east-1a`.
    #
    #   * BILLING\_ENTITY - The Amazon Web Services seller that your account
    #     is with. Possible values are the following:
    #
    #     \- Amazon Web Services(Amazon Web Services): The entity that sells
    #     Amazon Web Services.
    #
    #     \- AISPL (Amazon Internet Services Pvt. Ltd.): The local Indian
    #     entity that's an acting reseller for Amazon Web Services in India.
    #
    #     \- Amazon Web Services Marketplace: The entity that supports the sale
    #     of solutions that are built on Amazon Web Services by third-party
    #     software providers.
    #
    #   * CACHE\_ENGINE - The Amazon ElastiCache operating system. Examples
    #     are Windows or Linux.
    #
    #   * DEPLOYMENT\_OPTION - The scope of Amazon Relational Database Service
    #     deployments. Valid values are `SingleAZ` and `MultiAZ`.
    #
    #   * DATABASE\_ENGINE - The Amazon Relational Database Service database.
    #     Examples are Aurora or MySQL.
    #
    #   * INSTANCE\_TYPE - The type of Amazon EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * INSTANCE\_TYPE\_FAMILY - A family of instance types optimized to fit
    #     different use cases. Examples are `Compute Optimized` (for example,
    #     `C4`, `C5`, `C6g`, and `C7g`), `Memory Optimization` (for example,
    #     `R4`, `R5n`, `R5b`, and `R6g`).
    #
    #   * INVOICING\_ENTITY - The name of the entity that issues the Amazon
    #     Web Services invoice.
    #
    #   * LEGAL\_ENTITY\_NAME - The name of the organization that sells you
    #     Amazon Web Services services, such as Amazon Web Services.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     Amazon Web Services ID of the member account.
    #
    #   * OPERATING\_SYSTEM - The operating system. Examples are Windows or
    #     Linux.
    #
    #   * OPERATION - The action performed. Examples include `RunInstance` and
    #     `CreateBucket`.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #     Linux.
    #
    #   * PURCHASE\_TYPE - The reservation type of the purchase that this
    #     usage is related to. Examples include On-Demand Instances and
    #     Standard Reserved Instances.
    #
    #   * RESERVATION\_ID - The unique identifier for an Amazon Web Services
    #     Reservation Instance.
    #
    #   * SAVINGS\_PLAN\_ARN - The unique identifier for your Savings Plans.
    #
    #   * SAVINGS\_PLANS\_TYPE - Type of Savings Plans (EC2 Instance or
    #     Compute).
    #
    #   * SERVICE - The Amazon Web Services service such as Amazon DynamoDB.
    #
    #   * TENANCY - The tenancy of a resource. Examples are shared or
    #     dedicated.
    #
    #   * USAGE\_TYPE - The type of usage. An example is
    #     DataTransfer-In-Bytes. The response for the `GetDimensionValues`
    #     operation includes a unit attribute. Examples include GB and Hrs.
    #
    #   * USAGE\_TYPE\_GROUP - The grouping of common usage types. An example
    #     is Amazon EC2: CloudWatch – Alarms. The response for this operation
    #     includes a unit attribute.
    #
    #   * REGION - The Amazon Web Services Region.
    #
    #   * RECORD\_TYPE - The different types of charges such as Reserved
    #     Instance (RI) fees, usage costs, tax refunds, and credits.
    #
    #   * RESOURCE\_ID - The unique identifier of the resource. ResourceId is
    #     an opt-in feature only available for last 14 days for EC2-Compute
    #     Service.
    #
    #   If you set the context to `RESERVATIONS`, you can use the following
    #   dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is `us-east-1a`.
    #
    #   * CACHE\_ENGINE - The Amazon ElastiCache operating system. Examples
    #     are Windows or Linux.
    #
    #   * DEPLOYMENT\_OPTION - The scope of Amazon Relational Database Service
    #     deployments. Valid values are `SingleAZ` and `MultiAZ`.
    #
    #   * INSTANCE\_TYPE - The type of Amazon EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     Amazon Web Services ID of the member account.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #     Linux.
    #
    #   * REGION - The Amazon Web Services Region.
    #
    #   * SCOPE (Utilization only) - The scope of a Reserved Instance (RI).
    #     Values are regional or a single Availability Zone.
    #
    #   * TAG (Coverage only) - The tags that are associated with a Reserved
    #     Instance (RI).
    #
    #   * TENANCY - The tenancy of a resource. Examples are shared or
    #     dedicated.
    #
    #   If you set the context to `SAVINGS_PLANS`, you can use the following
    #   dimensions for searching:
    #
    #   * SAVINGS\_PLANS\_TYPE - Type of Savings Plans (EC2 Instance or
    #     Compute)
    #
    #   * PAYMENT\_OPTION - The payment option for the given Savings Plans
    #     (for example, All Upfront)
    #
    #   * REGION - The Amazon Web Services Region.
    #
    #   * INSTANCE\_TYPE\_FAMILY - The family of instances (For example, `m5`)
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     Amazon Web Services ID of the member account.
    #
    #   * SAVINGS\_PLAN\_ARN - The unique identifier for your Savings Plans.
    #
    # @option params [Types::Expression] :filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that acts
    #         on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values are
    #         combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is supported.
    #
    #       * For example, you can filter for linked account names that start
    #         with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical operators
    #       `AND/OR/NOT` to create a list of one or more `Expression` objects.
    #       By doing this, you can filter by more advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION ==
    #       us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows: `\{
    #       "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION", "Values": [
    #       "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key": "TagName",
    #       "Values": ["Value1"] \} \} ]\}, \{"Not": \{"Dimensions": \{ "Key":
    #       "USAGE_TYPE", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR and
    #   NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #
    # @option params [Array<Types::SortDefinition>] :sort_by
    #   The value that you want to sort the data by.
    #
    #   The key represents cost and usage metrics. The following values are
    #   supported:
    #
    #   * `BlendedCost`
    #
    #   * `UnblendedCost`
    #
    #   * `AmortizedCost`
    #
    #   * `NetAmortizedCost`
    #
    #   * `NetUnblendedCost`
    #
    #   * `UsageQuantity`
    #
    #   * `NormalizedUsageAmount`
    #
    #   The supported values for the `SortOrder` key are `ASCENDING` or
    #   `DESCENDING`.
    #
    #   When you specify a `SortBy` paramater, the context must be
    #   `COST_AND_USAGE`. Further, when using `SortBy`, `NextPageToken` and
    #   `SearchString` aren't supported.
    #
    # @option params [Integer] :max_results
    #   This field is only used when SortBy is provided in the request. The
    #   maximum number of objects that are returned for this request. If
    #   MaxResults isn't specified with SortBy, the request returns 1000
    #   results as the default value for this parameter.
    #
    #   For `GetDimensionValues`, MaxResults has an upper limit of 1000.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @return [Types::GetDimensionValuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDimensionValuesResponse#dimension_values #dimension_values} => Array&lt;Types::DimensionValuesWithAttributes&gt;
    #   * {Types::GetDimensionValuesResponse#return_size #return_size} => Integer
    #   * {Types::GetDimensionValuesResponse#total_size #total_size} => Integer
    #   * {Types::GetDimensionValuesResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dimension_values({
    #     search_string: "SearchString",
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     dimension: "AZ", # required, accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #     context: "COST_AND_USAGE", # accepts COST_AND_USAGE, RESERVATIONS, SAVINGS_PLANS
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     sort_by: [
    #       {
    #         key: "SortDefinitionKey", # required
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #     ],
    #     max_results: 1,
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.dimension_values #=> Array
    #   resp.dimension_values[0].value #=> String
    #   resp.dimension_values[0].attributes #=> Hash
    #   resp.dimension_values[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.return_size #=> Integer
    #   resp.total_size #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetDimensionValues AWS API Documentation
    #
    # @overload get_dimension_values(params = {})
    # @param [Hash] params ({})
    def get_dimension_values(params = {}, options = {})
      req = build_request(:get_dimension_values, params)
      req.send_request(options)
    end

    # Retrieves the reservation coverage for your account, which you can use
    # to see how much of your Amazon Elastic Compute Cloud, Amazon
    # ElastiCache, Amazon Relational Database Service, or Amazon Redshift
    # usage is covered by a reservation. An organization's management
    # account can see the coverage of the associated member accounts. This
    # supports dimensions, Cost Categories, and nested expressions. For any
    # time period, you can filter data about reservation usage by the
    # following dimensions:
    #
    # * AZ
    #
    # * CACHE\_ENGINE
    #
    # * DATABASE\_ENGINE
    #
    # * DEPLOYMENT\_OPTION
    #
    # * INSTANCE\_TYPE
    #
    # * LINKED\_ACCOUNT
    #
    # * OPERATING\_SYSTEM
    #
    # * PLATFORM
    #
    # * REGION
    #
    # * SERVICE
    #
    # * TAG
    #
    # * TENANCY
    #
    # To determine valid values for a dimension, use the
    # `GetDimensionValues` operation.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The start and end dates of the period that you want to retrieve data
    #   about reservation coverage for. You can retrieve data for a maximum of
    #   13 months: the last 12 months and the current month. The start date is
    #   inclusive, but the end date is exclusive. For example, if `start` is
    #   `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data
    #   is retrieved from `2017-01-01` up to and including `2017-04-30` but
    #   not including `2017-05-01`.
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   You can group the data by the following attributes:
    #
    #   * AZ
    #
    #   * CACHE\_ENGINE
    #
    #   * DATABASE\_ENGINE
    #
    #   * DEPLOYMENT\_OPTION
    #
    #   * INSTANCE\_TYPE
    #
    #   * INVOICING\_ENTITY
    #
    #   * LINKED\_ACCOUNT
    #
    #   * OPERATING\_SYSTEM
    #
    #   * PLATFORM
    #
    #   * REGION
    #
    #   * TENANCY
    #
    # @option params [String] :granularity
    #   The granularity of the Amazon Web Services cost data for the
    #   reservation. Valid values are `MONTHLY` and `DAILY`.
    #
    #   If `GroupBy` is set, `Granularity` can't be set. If `Granularity`
    #   isn't set, the response object doesn't include `Granularity`, either
    #   `MONTHLY` or `DAILY`.
    #
    #   The `GetReservationCoverage` operation supports only `DAILY` and
    #   `MONTHLY` granularities.
    #
    # @option params [Types::Expression] :filter
    #   Filters utilization data by dimensions. You can filter by the
    #   following dimensions:
    #
    #   * AZ
    #
    #   * CACHE\_ENGINE
    #
    #   * DATABASE\_ENGINE
    #
    #   * DEPLOYMENT\_OPTION
    #
    #   * INSTANCE\_TYPE
    #
    #   * LINKED\_ACCOUNT
    #
    #   * OPERATING\_SYSTEM
    #
    #   * PLATFORM
    #
    #   * REGION
    #
    #   * SERVICE
    #
    #   * TAG
    #
    #   * TENANCY
    #
    #   `GetReservationCoverage` uses the same [Expression][1] object as the
    #   other operations, but only `AND` is supported among each dimension.
    #   You can nest only one level deep. If there are multiple values for a
    #   dimension, they are OR'd together.
    #
    #   If you don't provide a `SERVICE` filter, Cost Explorer defaults to
    #   EC2.
    #
    #   Cost category is also supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [Array<String>] :metrics
    #   The measurement that you want your reservation coverage reported in.
    #
    #   Valid values are `Hour`, `Unit`, and `Cost`. You can use multiple
    #   values in a request.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Types::SortDefinition] :sort_by
    #   The value by which you want to sort the data.
    #
    #   The following values are supported for `Key`:
    #
    #   * `OnDemandCost`
    #
    #   * `CoverageHoursPercentage`
    #
    #   * `OnDemandHours`
    #
    #   * `ReservedHours`
    #
    #   * `TotalRunningHours`
    #
    #   * `CoverageNormalizedUnitsPercentage`
    #
    #   * `OnDemandNormalizedUnits`
    #
    #   * `ReservedNormalizedUnits`
    #
    #   * `TotalRunningNormalizedUnits`
    #
    #   * `Time`
    #
    #   Supported values for `SortOrder` are `ASCENDING` or `DESCENDING`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you returned for this request. If
    #   more objects are available, in the response, Amazon Web Services
    #   provides a NextPageToken value that you can use in a subsequent call
    #   to get the next batch of objects.
    #
    # @return [Types::GetReservationCoverageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReservationCoverageResponse#coverages_by_time #coverages_by_time} => Array&lt;Types::CoverageByTime&gt;
    #   * {Types::GetReservationCoverageResponse#total #total} => Types::Coverage
    #   * {Types::GetReservationCoverageResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_coverage({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #         key: "GroupDefinitionKey",
    #       },
    #     ],
    #     granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     metrics: ["MetricName"],
    #     next_page_token: "NextPageToken",
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.coverages_by_time #=> Array
    #   resp.coverages_by_time[0].time_period.start #=> String
    #   resp.coverages_by_time[0].time_period.end #=> String
    #   resp.coverages_by_time[0].groups #=> Array
    #   resp.coverages_by_time[0].groups[0].attributes #=> Hash
    #   resp.coverages_by_time[0].groups[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_hours.on_demand_hours #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_hours.reserved_hours #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_hours.total_running_hours #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_hours.coverage_hours_percentage #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_normalized_units.on_demand_normalized_units #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_normalized_units.reserved_normalized_units #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_normalized_units.total_running_normalized_units #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_normalized_units.coverage_normalized_units_percentage #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_cost.on_demand_cost #=> String
    #   resp.coverages_by_time[0].total.coverage_hours.on_demand_hours #=> String
    #   resp.coverages_by_time[0].total.coverage_hours.reserved_hours #=> String
    #   resp.coverages_by_time[0].total.coverage_hours.total_running_hours #=> String
    #   resp.coverages_by_time[0].total.coverage_hours.coverage_hours_percentage #=> String
    #   resp.coverages_by_time[0].total.coverage_normalized_units.on_demand_normalized_units #=> String
    #   resp.coverages_by_time[0].total.coverage_normalized_units.reserved_normalized_units #=> String
    #   resp.coverages_by_time[0].total.coverage_normalized_units.total_running_normalized_units #=> String
    #   resp.coverages_by_time[0].total.coverage_normalized_units.coverage_normalized_units_percentage #=> String
    #   resp.coverages_by_time[0].total.coverage_cost.on_demand_cost #=> String
    #   resp.total.coverage_hours.on_demand_hours #=> String
    #   resp.total.coverage_hours.reserved_hours #=> String
    #   resp.total.coverage_hours.total_running_hours #=> String
    #   resp.total.coverage_hours.coverage_hours_percentage #=> String
    #   resp.total.coverage_normalized_units.on_demand_normalized_units #=> String
    #   resp.total.coverage_normalized_units.reserved_normalized_units #=> String
    #   resp.total.coverage_normalized_units.total_running_normalized_units #=> String
    #   resp.total.coverage_normalized_units.coverage_normalized_units_percentage #=> String
    #   resp.total.coverage_cost.on_demand_cost #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationCoverage AWS API Documentation
    #
    # @overload get_reservation_coverage(params = {})
    # @param [Hash] params ({})
    def get_reservation_coverage(params = {}, options = {})
      req = build_request(:get_reservation_coverage, params)
      req.send_request(options)
    end

    # Gets recommendations for reservation purchases. These recommendations
    # might help you to reduce your costs. Reservations provide a discounted
    # hourly rate (up to 75%) compared to On-Demand pricing.
    #
    # Amazon Web Services generates your recommendations by identifying your
    # On-Demand usage during a specific time period and collecting your
    # usage into categories that are eligible for a reservation. After
    # Amazon Web Services has these categories, it simulates every
    # combination of reservations in each category of usage to identify the
    # best number of each type of Reserved Instance (RI) to purchase to
    # maximize your estimated savings.
    #
    # For example, Amazon Web Services automatically aggregates your Amazon
    # EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon)
    # Region and recommends that you buy size-flexible regional reservations
    # to apply to the c4 family usage. Amazon Web Services recommends the
    # smallest size instance in an instance family. This makes it easier to
    # purchase a size-flexible Reserved Instance (RI). Amazon Web Services
    # also shows the equal number of normalized units. This way, you can
    # purchase any instance size that you want. For this example, your RI
    # recommendation is for `c4.large` because that is the smallest size
    # instance in the c4 instance family.
    #
    # @option params [String] :account_id
    #   The account ID that's associated with the recommendation.
    #
    # @option params [required, String] :service
    #   The specific service that you want recommendations for.
    #
    # @option params [Types::Expression] :filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that acts
    #         on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values are
    #         combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is supported.
    #
    #       * For example, you can filter for linked account names that start
    #         with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical operators
    #       `AND/OR/NOT` to create a list of one or more `Expression` objects.
    #       By doing this, you can filter by more advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION ==
    #       us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows: `\{
    #       "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION", "Values": [
    #       "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key": "TagName",
    #       "Values": ["Value1"] \} \} ]\}, \{"Not": \{"Dimensions": \{ "Key":
    #       "USAGE_TYPE", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR and
    #   NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #
    # @option params [String] :account_scope
    #   The account scope that you want your recommendations for. Amazon Web
    #   Services calculates recommendations including the management account
    #   and member accounts if the value is set to `PAYER`. If the value is
    #   `LINKED`, recommendations are calculated for individual member
    #   accounts only.
    #
    # @option params [String] :lookback_period_in_days
    #   The number of previous days that you want Amazon Web Services to
    #   consider when it calculates your recommendations.
    #
    # @option params [String] :term_in_years
    #   The reservation term that you want recommendations for.
    #
    # @option params [String] :payment_option
    #   The reservation purchase option that you want recommendations for.
    #
    # @option params [Types::ServiceSpecification] :service_specification
    #   The hardware specifications for the service instances that you want
    #   recommendations for, such as standard or convertible Amazon EC2
    #   instances.
    #
    # @option params [Integer] :page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #
    # @option params [String] :next_page_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #
    # @return [Types::GetReservationPurchaseRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReservationPurchaseRecommendationResponse#metadata #metadata} => Types::ReservationPurchaseRecommendationMetadata
    #   * {Types::GetReservationPurchaseRecommendationResponse#recommendations #recommendations} => Array&lt;Types::ReservationPurchaseRecommendation&gt;
    #   * {Types::GetReservationPurchaseRecommendationResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_purchase_recommendation({
    #     account_id: "GenericString",
    #     service: "GenericString", # required
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     account_scope: "PAYER", # accepts PAYER, LINKED
    #     lookback_period_in_days: "SEVEN_DAYS", # accepts SEVEN_DAYS, THIRTY_DAYS, SIXTY_DAYS
    #     term_in_years: "ONE_YEAR", # accepts ONE_YEAR, THREE_YEARS
    #     payment_option: "NO_UPFRONT", # accepts NO_UPFRONT, PARTIAL_UPFRONT, ALL_UPFRONT, LIGHT_UTILIZATION, MEDIUM_UTILIZATION, HEAVY_UTILIZATION
    #     service_specification: {
    #       ec2_specification: {
    #         offering_class: "STANDARD", # accepts STANDARD, CONVERTIBLE
    #       },
    #     },
    #     page_size: 1,
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.recommendation_id #=> String
    #   resp.metadata.generation_timestamp #=> String
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].account_scope #=> String, one of "PAYER", "LINKED"
    #   resp.recommendations[0].lookback_period_in_days #=> String, one of "SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"
    #   resp.recommendations[0].term_in_years #=> String, one of "ONE_YEAR", "THREE_YEARS"
    #   resp.recommendations[0].payment_option #=> String, one of "NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"
    #   resp.recommendations[0].service_specification.ec2_specification.offering_class #=> String, one of "STANDARD", "CONVERTIBLE"
    #   resp.recommendations[0].recommendation_details #=> Array
    #   resp.recommendations[0].recommendation_details[0].account_id #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.family #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.instance_type #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.availability_zone #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.platform #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.tenancy #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.family #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.instance_type #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.database_engine #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.database_edition #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.deployment_option #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.license_model #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.family #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.node_type #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.family #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.node_type #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.product_description #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.instance_class #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.instance_size #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].recommended_number_of_instances_to_purchase #=> String
    #   resp.recommendations[0].recommendation_details[0].recommended_normalized_units_to_purchase #=> String
    #   resp.recommendations[0].recommendation_details[0].minimum_number_of_instances_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].minimum_normalized_units_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].maximum_number_of_instances_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].maximum_normalized_units_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].average_number_of_instances_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].average_normalized_units_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].average_utilization #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_break_even_in_months #=> String
    #   resp.recommendations[0].recommendation_details[0].currency_code #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_monthly_savings_amount #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_monthly_savings_percentage #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_monthly_on_demand_cost #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_reservation_cost_for_lookback_period #=> String
    #   resp.recommendations[0].recommendation_details[0].upfront_cost #=> String
    #   resp.recommendations[0].recommendation_details[0].recurring_standard_monthly_cost #=> String
    #   resp.recommendations[0].recommendation_summary.total_estimated_monthly_savings_amount #=> String
    #   resp.recommendations[0].recommendation_summary.total_estimated_monthly_savings_percentage #=> String
    #   resp.recommendations[0].recommendation_summary.currency_code #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationPurchaseRecommendation AWS API Documentation
    #
    # @overload get_reservation_purchase_recommendation(params = {})
    # @param [Hash] params ({})
    def get_reservation_purchase_recommendation(params = {}, options = {})
      req = build_request(:get_reservation_purchase_recommendation, params)
      req.send_request(options)
    end

    # Retrieves the reservation utilization for your account. Management
    # account in an organization have access to member accounts. You can
    # filter data by dimensions in a time period. You can use
    # `GetDimensionValues` to determine the possible dimension values.
    # Currently, you can group only by `SUBSCRIPTION_ID`.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   Sets the start and end dates for retrieving Reserved Instance (RI)
    #   utilization. The start date is inclusive, but the end date is
    #   exclusive. For example, if `start` is `2017-01-01` and `end` is
    #   `2017-05-01`, then the cost and usage data is retrieved from
    #   `2017-01-01` up to and including `2017-04-30` but not including
    #   `2017-05-01`.
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   Groups only by `SUBSCRIPTION_ID`. Metadata is included.
    #
    # @option params [String] :granularity
    #   If `GroupBy` is set, `Granularity` can't be set. If `Granularity`
    #   isn't set, the response object doesn't include `Granularity`, either
    #   `MONTHLY` or `DAILY`. If both `GroupBy` and `Granularity` aren't set,
    #   `GetReservationUtilization` defaults to `DAILY`.
    #
    #   The `GetReservationUtilization` operation supports only `DAILY` and
    #   `MONTHLY` granularities.
    #
    # @option params [Types::Expression] :filter
    #   Filters utilization data by dimensions. You can filter by the
    #   following dimensions:
    #
    #   * AZ
    #
    #   * CACHE\_ENGINE
    #
    #   * DEPLOYMENT\_OPTION
    #
    #   * INSTANCE\_TYPE
    #
    #   * LINKED\_ACCOUNT
    #
    #   * OPERATING\_SYSTEM
    #
    #   * PLATFORM
    #
    #   * REGION
    #
    #   * SERVICE
    #
    #   * SCOPE
    #
    #   * TENANCY
    #
    #   `GetReservationUtilization` uses the same [Expression][1] object as
    #   the other operations, but only `AND` is supported among each
    #   dimension, and nesting is supported up to only one level deep. If
    #   there are multiple values for a dimension, they are OR'd together.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [Types::SortDefinition] :sort_by
    #   The value that you want to sort the data by.
    #
    #   The following values are supported for `Key`:
    #
    #   * `UtilizationPercentage`
    #
    #   * `UtilizationPercentageInUnits`
    #
    #   * `PurchasedHours`
    #
    #   * `PurchasedUnits`
    #
    #   * `TotalActualHours`
    #
    #   * `TotalActualUnits`
    #
    #   * `UnusedHours`
    #
    #   * `UnusedUnits`
    #
    #   * `OnDemandCostOfRIHoursUsed`
    #
    #   * `NetRISavings`
    #
    #   * `TotalPotentialRISavings`
    #
    #   * `AmortizedUpfrontFee`
    #
    #   * `AmortizedRecurringFee`
    #
    #   * `TotalAmortizedFee`
    #
    #   * `RICostForUnusedHours`
    #
    #   * `RealizedSavings`
    #
    #   * `UnrealizedSavings`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and `DESCENDING`.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you returned for this request. If
    #   more objects are available, in the response, Amazon Web Services
    #   provides a NextPageToken value that you can use in a subsequent call
    #   to get the next batch of objects.
    #
    # @return [Types::GetReservationUtilizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReservationUtilizationResponse#utilizations_by_time #utilizations_by_time} => Array&lt;Types::UtilizationByTime&gt;
    #   * {Types::GetReservationUtilizationResponse#total #total} => Types::ReservationAggregates
    #   * {Types::GetReservationUtilizationResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_utilization({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #         key: "GroupDefinitionKey",
    #       },
    #     ],
    #     granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     next_page_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.utilizations_by_time #=> Array
    #   resp.utilizations_by_time[0].time_period.start #=> String
    #   resp.utilizations_by_time[0].time_period.end #=> String
    #   resp.utilizations_by_time[0].groups #=> Array
    #   resp.utilizations_by_time[0].groups[0].key #=> String
    #   resp.utilizations_by_time[0].groups[0].value #=> String
    #   resp.utilizations_by_time[0].groups[0].attributes #=> Hash
    #   resp.utilizations_by_time[0].groups[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.utilizations_by_time[0].groups[0].utilization.utilization_percentage #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.utilization_percentage_in_units #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.purchased_hours #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.purchased_units #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.total_actual_hours #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.total_actual_units #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.unused_hours #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.unused_units #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.on_demand_cost_of_ri_hours_used #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.net_ri_savings #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.total_potential_ri_savings #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.amortized_upfront_fee #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.amortized_recurring_fee #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.total_amortized_fee #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.ri_cost_for_unused_hours #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.realized_savings #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.unrealized_savings #=> String
    #   resp.utilizations_by_time[0].total.utilization_percentage #=> String
    #   resp.utilizations_by_time[0].total.utilization_percentage_in_units #=> String
    #   resp.utilizations_by_time[0].total.purchased_hours #=> String
    #   resp.utilizations_by_time[0].total.purchased_units #=> String
    #   resp.utilizations_by_time[0].total.total_actual_hours #=> String
    #   resp.utilizations_by_time[0].total.total_actual_units #=> String
    #   resp.utilizations_by_time[0].total.unused_hours #=> String
    #   resp.utilizations_by_time[0].total.unused_units #=> String
    #   resp.utilizations_by_time[0].total.on_demand_cost_of_ri_hours_used #=> String
    #   resp.utilizations_by_time[0].total.net_ri_savings #=> String
    #   resp.utilizations_by_time[0].total.total_potential_ri_savings #=> String
    #   resp.utilizations_by_time[0].total.amortized_upfront_fee #=> String
    #   resp.utilizations_by_time[0].total.amortized_recurring_fee #=> String
    #   resp.utilizations_by_time[0].total.total_amortized_fee #=> String
    #   resp.utilizations_by_time[0].total.ri_cost_for_unused_hours #=> String
    #   resp.utilizations_by_time[0].total.realized_savings #=> String
    #   resp.utilizations_by_time[0].total.unrealized_savings #=> String
    #   resp.total.utilization_percentage #=> String
    #   resp.total.utilization_percentage_in_units #=> String
    #   resp.total.purchased_hours #=> String
    #   resp.total.purchased_units #=> String
    #   resp.total.total_actual_hours #=> String
    #   resp.total.total_actual_units #=> String
    #   resp.total.unused_hours #=> String
    #   resp.total.unused_units #=> String
    #   resp.total.on_demand_cost_of_ri_hours_used #=> String
    #   resp.total.net_ri_savings #=> String
    #   resp.total.total_potential_ri_savings #=> String
    #   resp.total.amortized_upfront_fee #=> String
    #   resp.total.amortized_recurring_fee #=> String
    #   resp.total.total_amortized_fee #=> String
    #   resp.total.ri_cost_for_unused_hours #=> String
    #   resp.total.realized_savings #=> String
    #   resp.total.unrealized_savings #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationUtilization AWS API Documentation
    #
    # @overload get_reservation_utilization(params = {})
    # @param [Hash] params ({})
    def get_reservation_utilization(params = {}, options = {})
      req = build_request(:get_reservation_utilization, params)
      req.send_request(options)
    end

    # Creates recommendations that help you save cost by identifying idle
    # and underutilized Amazon EC2 instances.
    #
    # Recommendations are generated to either downsize or terminate
    # instances, along with providing savings detail and metrics. For more
    # information about calculation and function, see [Optimizing Your Cost
    # with Rightsizing Recommendations][1] in the *Billing and Cost
    # Management User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html
    #
    # @option params [Types::Expression] :filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that acts
    #         on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values are
    #         combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is supported.
    #
    #       * For example, you can filter for linked account names that start
    #         with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical operators
    #       `AND/OR/NOT` to create a list of one or more `Expression` objects.
    #       By doing this, you can filter by more advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION ==
    #       us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows: `\{
    #       "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION", "Values": [
    #       "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key": "TagName",
    #       "Values": ["Value1"] \} \} ]\}, \{"Not": \{"Dimensions": \{ "Key":
    #       "USAGE_TYPE", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR and
    #   NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #
    # @option params [Types::RightsizingRecommendationConfiguration] :configuration
    #   You can use Configuration to customize recommendations across two
    #   attributes. You can choose to view recommendations for instances
    #   within the same instance families or across different instance
    #   families. You can also choose to view your estimated savings that are
    #   associated with recommendations with consideration of existing Savings
    #   Plans or RI benefits, or neither.
    #
    # @option params [required, String] :service
    #   The specific service that you want recommendations for. The only valid
    #   value for `GetRightsizingRecommendation` is "`AmazonEC2`".
    #
    # @option params [Integer] :page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #
    # @option params [String] :next_page_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #
    # @return [Types::GetRightsizingRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRightsizingRecommendationResponse#metadata #metadata} => Types::RightsizingRecommendationMetadata
    #   * {Types::GetRightsizingRecommendationResponse#summary #summary} => Types::RightsizingRecommendationSummary
    #   * {Types::GetRightsizingRecommendationResponse#rightsizing_recommendations #rightsizing_recommendations} => Array&lt;Types::RightsizingRecommendation&gt;
    #   * {Types::GetRightsizingRecommendationResponse#next_page_token #next_page_token} => String
    #   * {Types::GetRightsizingRecommendationResponse#configuration #configuration} => Types::RightsizingRecommendationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rightsizing_recommendation({
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     configuration: {
    #       recommendation_target: "SAME_INSTANCE_FAMILY", # required, accepts SAME_INSTANCE_FAMILY, CROSS_INSTANCE_FAMILY
    #       benefits_considered: false, # required
    #     },
    #     service: "GenericString", # required
    #     page_size: 1,
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.recommendation_id #=> String
    #   resp.metadata.generation_timestamp #=> String
    #   resp.metadata.lookback_period_in_days #=> String, one of "SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"
    #   resp.metadata.additional_metadata #=> String
    #   resp.summary.total_recommendation_count #=> String
    #   resp.summary.estimated_total_monthly_savings_amount #=> String
    #   resp.summary.savings_currency_code #=> String
    #   resp.summary.savings_percentage #=> String
    #   resp.rightsizing_recommendations #=> Array
    #   resp.rightsizing_recommendations[0].account_id #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_id #=> String
    #   resp.rightsizing_recommendations[0].current_instance.instance_name #=> String
    #   resp.rightsizing_recommendations[0].current_instance.tags #=> Array
    #   resp.rightsizing_recommendations[0].current_instance.tags[0].key #=> String
    #   resp.rightsizing_recommendations[0].current_instance.tags[0].values #=> Array
    #   resp.rightsizing_recommendations[0].current_instance.tags[0].values[0] #=> String
    #   resp.rightsizing_recommendations[0].current_instance.tags[0].match_options #=> Array
    #   resp.rightsizing_recommendations[0].current_instance.tags[0].match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.hourly_on_demand_rate #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.instance_type #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.platform #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.region #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.sku #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.memory #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.network_performance #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.storage #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.vcpu #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.max_cpu_utilization_percentage #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.max_memory_utilization_percentage #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.max_storage_utilization_percentage #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_read_ops_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_write_ops_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_read_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_write_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_read_ops_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_write_ops_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_read_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_write_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization.network_in_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization.network_out_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization.network_packets_in_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization.network_packets_out_per_second #=> String
    #   resp.rightsizing_recommendations[0].current_instance.reservation_covered_hours_in_lookback_period #=> String
    #   resp.rightsizing_recommendations[0].current_instance.savings_plans_covered_hours_in_lookback_period #=> String
    #   resp.rightsizing_recommendations[0].current_instance.on_demand_hours_in_lookback_period #=> String
    #   resp.rightsizing_recommendations[0].current_instance.total_running_hours_in_lookback_period #=> String
    #   resp.rightsizing_recommendations[0].current_instance.monthly_cost #=> String
    #   resp.rightsizing_recommendations[0].current_instance.currency_code #=> String
    #   resp.rightsizing_recommendations[0].rightsizing_type #=> String, one of "TERMINATE", "MODIFY"
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances #=> Array
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].estimated_monthly_cost #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].estimated_monthly_savings #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].currency_code #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].default_target_instance #=> Boolean
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.hourly_on_demand_rate #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.instance_type #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.platform #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.region #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.sku #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.memory #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.network_performance #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.storage #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details.ec2_resource_details.vcpu #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.max_cpu_utilization_percentage #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.max_memory_utilization_percentage #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.max_storage_utilization_percentage #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_read_ops_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_write_ops_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_read_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_write_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_read_ops_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_write_ops_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_read_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_write_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.network_resource_utilization.network_in_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.network_resource_utilization.network_out_bytes_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.network_resource_utilization.network_packets_in_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization.ec2_resource_utilization.network_resource_utilization.network_packets_out_per_second #=> String
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].platform_differences #=> Array
    #   resp.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].platform_differences[0] #=> String, one of "HYPERVISOR", "NETWORK_INTERFACE", "STORAGE_INTERFACE", "INSTANCE_STORE_AVAILABILITY", "VIRTUALIZATION_TYPE"
    #   resp.rightsizing_recommendations[0].terminate_recommendation_detail.estimated_monthly_savings #=> String
    #   resp.rightsizing_recommendations[0].terminate_recommendation_detail.currency_code #=> String
    #   resp.rightsizing_recommendations[0].finding_reason_codes #=> Array
    #   resp.rightsizing_recommendations[0].finding_reason_codes[0] #=> String, one of "CPU_OVER_PROVISIONED", "CPU_UNDER_PROVISIONED", "MEMORY_OVER_PROVISIONED", "MEMORY_UNDER_PROVISIONED", "EBS_THROUGHPUT_OVER_PROVISIONED", "EBS_THROUGHPUT_UNDER_PROVISIONED", "EBS_IOPS_OVER_PROVISIONED", "EBS_IOPS_UNDER_PROVISIONED", "NETWORK_BANDWIDTH_OVER_PROVISIONED", "NETWORK_BANDWIDTH_UNDER_PROVISIONED", "NETWORK_PPS_OVER_PROVISIONED", "NETWORK_PPS_UNDER_PROVISIONED", "DISK_IOPS_OVER_PROVISIONED", "DISK_IOPS_UNDER_PROVISIONED", "DISK_THROUGHPUT_OVER_PROVISIONED", "DISK_THROUGHPUT_UNDER_PROVISIONED"
    #   resp.next_page_token #=> String
    #   resp.configuration.recommendation_target #=> String, one of "SAME_INSTANCE_FAMILY", "CROSS_INSTANCE_FAMILY"
    #   resp.configuration.benefits_considered #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetRightsizingRecommendation AWS API Documentation
    #
    # @overload get_rightsizing_recommendation(params = {})
    # @param [Hash] params ({})
    def get_rightsizing_recommendation(params = {}, options = {})
      req = build_request(:get_rightsizing_recommendation, params)
      req.send_request(options)
    end

    # Retrieves the Savings Plans covered for your account. This enables you
    # to see how much of your cost is covered by a Savings Plan. An
    # organization’s management account can see the coverage of the
    # associated member accounts. This supports dimensions, Cost Categories,
    # and nested expressions. For any time period, you can filter data for
    # Savings Plans usage with the following dimensions:
    #
    # * `LINKED_ACCOUNT`
    #
    # * `REGION`
    #
    # * `SERVICE`
    #
    # * `INSTANCE_FAMILY`
    #
    # To determine valid values for a dimension, use the
    # `GetDimensionValues` operation.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The time period that you want the usage and costs for. The `Start`
    #   date must be within 13 months. The `End` date must be after the
    #   `Start` date, and before the current date. Future dates can't be used
    #   as an `End` date.
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   You can group the data using the attributes `INSTANCE_FAMILY`,
    #   `REGION`, or `SERVICE`.
    #
    # @option params [String] :granularity
    #   The granularity of the Amazon Web Services cost data for your Savings
    #   Plans. `Granularity` can't be set if `GroupBy` is set.
    #
    #   The `GetSavingsPlansCoverage` operation supports only `DAILY` and
    #   `MONTHLY` granularities.
    #
    # @option params [Types::Expression] :filter
    #   Filters Savings Plans coverage data by dimensions. You can filter data
    #   for Savings Plans usage with the following dimensions:
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `REGION`
    #
    #   * `SERVICE`
    #
    #   * `INSTANCE_FAMILY`
    #
    #   `GetSavingsPlansCoverage` uses the same [Expression][1] object as the
    #   other operations, but only `AND` is supported among each dimension. If
    #   there are multiple values for a dimension, they are OR'd together.
    #
    #   Cost category is also supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [Array<String>] :metrics
    #   The measurement that you want your Savings Plans coverage reported in.
    #   The only valid value is `SpendCoveredBySavingsPlans`.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The number of items to be returned in a response. The default is `20`,
    #   with a minimum value of `1`.
    #
    # @option params [Types::SortDefinition] :sort_by
    #   The value that you want to sort the data by.
    #
    #   The following values are supported for `Key`:
    #
    #   * `SpendCoveredBySavingsPlan`
    #
    #   * `OnDemandCost`
    #
    #   * `CoveragePercentage`
    #
    #   * `TotalCost`
    #
    #   * `InstanceFamily`
    #
    #   * `Region`
    #
    #   * `Service`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and `DESCENDING`.
    #
    # @return [Types::GetSavingsPlansCoverageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSavingsPlansCoverageResponse#savings_plans_coverages #savings_plans_coverages} => Array&lt;Types::SavingsPlansCoverage&gt;
    #   * {Types::GetSavingsPlansCoverageResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_savings_plans_coverage({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #         key: "GroupDefinitionKey",
    #       },
    #     ],
    #     granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     metrics: ["MetricName"],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plans_coverages #=> Array
    #   resp.savings_plans_coverages[0].attributes #=> Hash
    #   resp.savings_plans_coverages[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.savings_plans_coverages[0].coverage.spend_covered_by_savings_plans #=> String
    #   resp.savings_plans_coverages[0].coverage.on_demand_cost #=> String
    #   resp.savings_plans_coverages[0].coverage.total_cost #=> String
    #   resp.savings_plans_coverages[0].coverage.coverage_percentage #=> String
    #   resp.savings_plans_coverages[0].time_period.start #=> String
    #   resp.savings_plans_coverages[0].time_period.end #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansCoverage AWS API Documentation
    #
    # @overload get_savings_plans_coverage(params = {})
    # @param [Hash] params ({})
    def get_savings_plans_coverage(params = {}, options = {})
      req = build_request(:get_savings_plans_coverage, params)
      req.send_request(options)
    end

    # Retrieves the Savings Plans recommendations for your account. First
    # use `StartSavingsPlansPurchaseRecommendationGeneration` to generate a
    # new set of recommendations, and then use
    # `GetSavingsPlansPurchaseRecommendation` to retrieve them.
    #
    # @option params [required, String] :savings_plans_type
    #   The Savings Plans recommendation type that's requested.
    #
    # @option params [required, String] :term_in_years
    #   The savings plan recommendation term that's used to generate these
    #   recommendations.
    #
    # @option params [required, String] :payment_option
    #   The payment option that's used to generate these recommendations.
    #
    # @option params [String] :account_scope
    #   The account scope that you want your recommendations for. Amazon Web
    #   Services calculates recommendations including the management account
    #   and member accounts if the value is set to `PAYER`. If the value is
    #   `LINKED`, recommendations are calculated for individual member
    #   accounts only.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #
    # @option params [required, String] :lookback_period_in_days
    #   The lookback period that's used to generate the recommendation.
    #
    # @option params [Types::Expression] :filter
    #   You can filter your recommendations by Account ID with the
    #   `LINKED_ACCOUNT` dimension. To filter your recommendations by Account
    #   ID, specify `Key` as `LINKED_ACCOUNT` and `Value` as the
    #   comma-separated Acount ID(s) that you want to see Savings Plans
    #   purchase recommendations for.
    #
    #   For GetSavingsPlansPurchaseRecommendation, the `Filter` doesn't
    #   include `CostCategories` or `Tags`. It only includes `Dimensions`.
    #   With `Dimensions`, `Key` must be `LINKED_ACCOUNT` and `Value` can be a
    #   single Account ID or multiple comma-separated Account IDs that you
    #   want to see Savings Plans Purchase Recommendations for. `AND` and `OR`
    #   operators are not supported.
    #
    # @return [Types::GetSavingsPlansPurchaseRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSavingsPlansPurchaseRecommendationResponse#metadata #metadata} => Types::SavingsPlansPurchaseRecommendationMetadata
    #   * {Types::GetSavingsPlansPurchaseRecommendationResponse#savings_plans_purchase_recommendation #savings_plans_purchase_recommendation} => Types::SavingsPlansPurchaseRecommendation
    #   * {Types::GetSavingsPlansPurchaseRecommendationResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_savings_plans_purchase_recommendation({
    #     savings_plans_type: "COMPUTE_SP", # required, accepts COMPUTE_SP, EC2_INSTANCE_SP, SAGEMAKER_SP
    #     term_in_years: "ONE_YEAR", # required, accepts ONE_YEAR, THREE_YEARS
    #     payment_option: "NO_UPFRONT", # required, accepts NO_UPFRONT, PARTIAL_UPFRONT, ALL_UPFRONT, LIGHT_UTILIZATION, MEDIUM_UTILIZATION, HEAVY_UTILIZATION
    #     account_scope: "PAYER", # accepts PAYER, LINKED
    #     next_page_token: "NextPageToken",
    #     page_size: 1,
    #     lookback_period_in_days: "SEVEN_DAYS", # required, accepts SEVEN_DAYS, THIRTY_DAYS, SIXTY_DAYS
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.recommendation_id #=> String
    #   resp.metadata.generation_timestamp #=> String
    #   resp.metadata.additional_metadata #=> String
    #   resp.savings_plans_purchase_recommendation.account_scope #=> String, one of "PAYER", "LINKED"
    #   resp.savings_plans_purchase_recommendation.savings_plans_type #=> String, one of "COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"
    #   resp.savings_plans_purchase_recommendation.term_in_years #=> String, one of "ONE_YEAR", "THREE_YEARS"
    #   resp.savings_plans_purchase_recommendation.payment_option #=> String, one of "NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"
    #   resp.savings_plans_purchase_recommendation.lookback_period_in_days #=> String, one of "SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details #=> Array
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].savings_plans_details.region #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].savings_plans_details.instance_family #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].savings_plans_details.offering_id #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].account_id #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].upfront_cost #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_roi #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].currency_code #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_sp_cost #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_on_demand_cost #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_on_demand_cost_with_current_commitment #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_savings_amount #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_savings_percentage #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].hourly_commitment_to_purchase #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_average_utilization #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_monthly_savings_amount #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].current_minimum_hourly_on_demand_spend #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].current_maximum_hourly_on_demand_spend #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].current_average_hourly_on_demand_spend #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_roi #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.currency_code #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_total_cost #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.current_on_demand_spend #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_savings_amount #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.total_recommendation_count #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.daily_commitment_to_purchase #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.hourly_commitment_to_purchase #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_savings_percentage #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_monthly_savings_amount #=> String
    #   resp.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_on_demand_cost_with_current_commitment #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansPurchaseRecommendation AWS API Documentation
    #
    # @overload get_savings_plans_purchase_recommendation(params = {})
    # @param [Hash] params ({})
    def get_savings_plans_purchase_recommendation(params = {}, options = {})
      req = build_request(:get_savings_plans_purchase_recommendation, params)
      req.send_request(options)
    end

    # Retrieves the Savings Plans utilization for your account across date
    # ranges with daily or monthly granularity. Management account in an
    # organization have access to member accounts. You can use
    # `GetDimensionValues` in `SAVINGS_PLANS` to determine the possible
    # dimension values.
    #
    # <note markdown="1"> You can't group by any dimension values for
    # `GetSavingsPlansUtilization`.
    #
    #  </note>
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The time period that you want the usage and costs for. The `Start`
    #   date must be within 13 months. The `End` date must be after the
    #   `Start` date, and before the current date. Future dates can't be used
    #   as an `End` date.
    #
    # @option params [String] :granularity
    #   The granularity of the Amazon Web Services utillization data for your
    #   Savings Plans.
    #
    #   The `GetSavingsPlansUtilization` operation supports only `DAILY` and
    #   `MONTHLY` granularities.
    #
    # @option params [Types::Expression] :filter
    #   Filters Savings Plans utilization coverage data for active Savings
    #   Plans dimensions. You can filter data with the following dimensions:
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `SAVINGS_PLAN_ARN`
    #
    #   * `SAVINGS_PLANS_TYPE`
    #
    #   * `REGION`
    #
    #   * `PAYMENT_OPTION`
    #
    #   * `INSTANCE_TYPE_FAMILY`
    #
    #   `GetSavingsPlansUtilization` uses the same [Expression][1] object as
    #   the other operations, but only `AND` is supported among each
    #   dimension.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [Types::SortDefinition] :sort_by
    #   The value that you want to sort the data by.
    #
    #   The following values are supported for `Key`:
    #
    #   * `UtilizationPercentage`
    #
    #   * `TotalCommitment`
    #
    #   * `UsedCommitment`
    #
    #   * `UnusedCommitment`
    #
    #   * `NetSavings`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and `DESCENDING`.
    #
    # @return [Types::GetSavingsPlansUtilizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSavingsPlansUtilizationResponse#savings_plans_utilizations_by_time #savings_plans_utilizations_by_time} => Array&lt;Types::SavingsPlansUtilizationByTime&gt;
    #   * {Types::GetSavingsPlansUtilizationResponse#total #total} => Types::SavingsPlansUtilizationAggregates
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_savings_plans_utilization({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plans_utilizations_by_time #=> Array
    #   resp.savings_plans_utilizations_by_time[0].time_period.start #=> String
    #   resp.savings_plans_utilizations_by_time[0].time_period.end #=> String
    #   resp.savings_plans_utilizations_by_time[0].utilization.total_commitment #=> String
    #   resp.savings_plans_utilizations_by_time[0].utilization.used_commitment #=> String
    #   resp.savings_plans_utilizations_by_time[0].utilization.unused_commitment #=> String
    #   resp.savings_plans_utilizations_by_time[0].utilization.utilization_percentage #=> String
    #   resp.savings_plans_utilizations_by_time[0].savings.net_savings #=> String
    #   resp.savings_plans_utilizations_by_time[0].savings.on_demand_cost_equivalent #=> String
    #   resp.savings_plans_utilizations_by_time[0].amortized_commitment.amortized_recurring_commitment #=> String
    #   resp.savings_plans_utilizations_by_time[0].amortized_commitment.amortized_upfront_commitment #=> String
    #   resp.savings_plans_utilizations_by_time[0].amortized_commitment.total_amortized_commitment #=> String
    #   resp.total.utilization.total_commitment #=> String
    #   resp.total.utilization.used_commitment #=> String
    #   resp.total.utilization.unused_commitment #=> String
    #   resp.total.utilization.utilization_percentage #=> String
    #   resp.total.savings.net_savings #=> String
    #   resp.total.savings.on_demand_cost_equivalent #=> String
    #   resp.total.amortized_commitment.amortized_recurring_commitment #=> String
    #   resp.total.amortized_commitment.amortized_upfront_commitment #=> String
    #   resp.total.amortized_commitment.total_amortized_commitment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansUtilization AWS API Documentation
    #
    # @overload get_savings_plans_utilization(params = {})
    # @param [Hash] params ({})
    def get_savings_plans_utilization(params = {}, options = {})
      req = build_request(:get_savings_plans_utilization, params)
      req.send_request(options)
    end

    # Retrieves attribute data along with aggregate utilization and savings
    # data for a given time period. This doesn't support granular or
    # grouped data (daily/monthly) in response. You can't retrieve data by
    # dates in a single response similar to `GetSavingsPlanUtilization`, but
    # you have the option to make multiple calls to
    # `GetSavingsPlanUtilizationDetails` by providing individual dates. You
    # can use `GetDimensionValues` in `SAVINGS_PLANS` to determine the
    # possible dimension values.
    #
    # <note markdown="1"> `GetSavingsPlanUtilizationDetails` internally groups data by
    # `SavingsPlansArn`.
    #
    #  </note>
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The time period that you want the usage and costs for. The `Start`
    #   date must be within 13 months. The `End` date must be after the
    #   `Start` date, and before the current date. Future dates can't be used
    #   as an `End` date.
    #
    # @option params [Types::Expression] :filter
    #   Filters Savings Plans utilization coverage data for active Savings
    #   Plans dimensions. You can filter data with the following dimensions:
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `SAVINGS_PLAN_ARN`
    #
    #   * `REGION`
    #
    #   * `PAYMENT_OPTION`
    #
    #   * `INSTANCE_TYPE_FAMILY`
    #
    #   `GetSavingsPlansUtilizationDetails` uses the same [Expression][1]
    #   object as the other operations, but only `AND` is supported among each
    #   dimension.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [Array<String>] :data_type
    #   The data type.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The number of items to be returned in a response. The default is `20`,
    #   with a minimum value of `1`.
    #
    # @option params [Types::SortDefinition] :sort_by
    #   The value that you want to sort the data by.
    #
    #   The following values are supported for `Key`:
    #
    #   * `UtilizationPercentage`
    #
    #   * `TotalCommitment`
    #
    #   * `UsedCommitment`
    #
    #   * `UnusedCommitment`
    #
    #   * `NetSavings`
    #
    #   * `AmortizedRecurringCommitment`
    #
    #   * `AmortizedUpfrontCommitment`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and `DESCENDING`.
    #
    # @return [Types::GetSavingsPlansUtilizationDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSavingsPlansUtilizationDetailsResponse#savings_plans_utilization_details #savings_plans_utilization_details} => Array&lt;Types::SavingsPlansUtilizationDetail&gt;
    #   * {Types::GetSavingsPlansUtilizationDetailsResponse#total #total} => Types::SavingsPlansUtilizationAggregates
    #   * {Types::GetSavingsPlansUtilizationDetailsResponse#time_period #time_period} => Types::DateInterval
    #   * {Types::GetSavingsPlansUtilizationDetailsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_savings_plans_utilization_details({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     data_type: ["ATTRIBUTES"], # accepts ATTRIBUTES, UTILIZATION, AMORTIZED_COMMITMENT, SAVINGS
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plans_utilization_details #=> Array
    #   resp.savings_plans_utilization_details[0].savings_plan_arn #=> String
    #   resp.savings_plans_utilization_details[0].attributes #=> Hash
    #   resp.savings_plans_utilization_details[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.savings_plans_utilization_details[0].utilization.total_commitment #=> String
    #   resp.savings_plans_utilization_details[0].utilization.used_commitment #=> String
    #   resp.savings_plans_utilization_details[0].utilization.unused_commitment #=> String
    #   resp.savings_plans_utilization_details[0].utilization.utilization_percentage #=> String
    #   resp.savings_plans_utilization_details[0].savings.net_savings #=> String
    #   resp.savings_plans_utilization_details[0].savings.on_demand_cost_equivalent #=> String
    #   resp.savings_plans_utilization_details[0].amortized_commitment.amortized_recurring_commitment #=> String
    #   resp.savings_plans_utilization_details[0].amortized_commitment.amortized_upfront_commitment #=> String
    #   resp.savings_plans_utilization_details[0].amortized_commitment.total_amortized_commitment #=> String
    #   resp.total.utilization.total_commitment #=> String
    #   resp.total.utilization.used_commitment #=> String
    #   resp.total.utilization.unused_commitment #=> String
    #   resp.total.utilization.utilization_percentage #=> String
    #   resp.total.savings.net_savings #=> String
    #   resp.total.savings.on_demand_cost_equivalent #=> String
    #   resp.total.amortized_commitment.amortized_recurring_commitment #=> String
    #   resp.total.amortized_commitment.amortized_upfront_commitment #=> String
    #   resp.total.amortized_commitment.total_amortized_commitment #=> String
    #   resp.time_period.start #=> String
    #   resp.time_period.end #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansUtilizationDetails AWS API Documentation
    #
    # @overload get_savings_plans_utilization_details(params = {})
    # @param [Hash] params ({})
    def get_savings_plans_utilization_details(params = {}, options = {})
      req = build_request(:get_savings_plans_utilization_details, params)
      req.send_request(options)
    end

    # Queries for available tag keys and tag values for a specified period.
    # You can search the tag values for an arbitrary string.
    #
    # @option params [String] :search_string
    #   The value that you want to search for.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The start and end dates for retrieving the dimension values. The start
    #   date is inclusive, but the end date is exclusive. For example, if
    #   `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and
    #   usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #
    # @option params [String] :tag_key
    #   The key of the tag that you want to return values for.
    #
    # @option params [Types::Expression] :filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that acts
    #         on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values are
    #         combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is supported.
    #
    #       * For example, you can filter for linked account names that start
    #         with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical operators
    #       `AND/OR/NOT` to create a list of one or more `Expression` objects.
    #       By doing this, you can filter by more advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION ==
    #       us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows: `\{
    #       "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION", "Values": [
    #       "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key": "TagName",
    #       "Values": ["Value1"] \} \} ]\}, \{"Not": \{"Dimensions": \{ "Key":
    #       "USAGE_TYPE", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR and
    #   NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #
    # @option params [Array<Types::SortDefinition>] :sort_by
    #   The value that you want to sort the data by.
    #
    #   The key represents cost and usage metrics. The following values are
    #   supported:
    #
    #   * `BlendedCost`
    #
    #   * `UnblendedCost`
    #
    #   * `AmortizedCost`
    #
    #   * `NetAmortizedCost`
    #
    #   * `NetUnblendedCost`
    #
    #   * `UsageQuantity`
    #
    #   * `NormalizedUsageAmount`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and `DESCENDING`.
    #
    #   When you use `SortBy`, `NextPageToken` and `SearchString` aren't
    #   supported.
    #
    # @option params [Integer] :max_results
    #   This field is only used when SortBy is provided in the request. The
    #   maximum number of objects that are returned for this request. If
    #   MaxResults isn't specified with SortBy, the request returns 1000
    #   results as the default value for this parameter.
    #
    #   For `GetTags`, MaxResults has an upper quota of 1000.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @return [Types::GetTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagsResponse#next_page_token #next_page_token} => String
    #   * {Types::GetTagsResponse#tags #tags} => Array&lt;String&gt;
    #   * {Types::GetTagsResponse#return_size #return_size} => Integer
    #   * {Types::GetTagsResponse#total_size #total_size} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     search_string: "SearchString",
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     tag_key: "TagKey",
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     sort_by: [
    #       {
    #         key: "SortDefinitionKey", # required
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #     ],
    #     max_results: 1,
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_page_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0] #=> String
    #   resp.return_size #=> Integer
    #   resp.total_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetTags AWS API Documentation
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
      req.send_request(options)
    end

    # Retrieves a forecast for how much Amazon Web Services predicts that
    # you will use over the forecast time period that you select, based on
    # your past usage.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The start and end dates of the period that you want to retrieve usage
    #   forecast for. The start date is included in the period, but the end
    #   date isn't included in the period. For example, if `start` is
    #   `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data
    #   is retrieved from `2017-01-01` up to and including `2017-04-30` but
    #   not including `2017-05-01`. The start date must be equal to or later
    #   than the current date to avoid a validation error.
    #
    # @option params [required, String] :metric
    #   Which metric Cost Explorer uses to create your forecast.
    #
    #   Valid values for a `GetUsageForecast` call are the following:
    #
    #   * USAGE\_QUANTITY
    #
    #   * NORMALIZED\_USAGE\_AMOUNT
    #
    # @option params [required, String] :granularity
    #   How granular you want the forecast to be. You can get 3 months of
    #   `DAILY` forecasts or 12 months of `MONTHLY` forecasts.
    #
    #   The `GetUsageForecast` operation supports only `DAILY` and `MONTHLY`
    #   granularities.
    #
    # @option params [Types::Expression] :filter
    #   The filters that you want to use to filter your forecast. The
    #   `GetUsageForecast` API supports filtering by the following dimensions:
    #
    #   * `AZ`
    #
    #   * `INSTANCE_TYPE`
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `LINKED_ACCOUNT_NAME`
    #
    #   * `OPERATION`
    #
    #   * `PURCHASE_TYPE`
    #
    #   * `REGION`
    #
    #   * `SERVICE`
    #
    #   * `USAGE_TYPE`
    #
    #   * `USAGE_TYPE_GROUP`
    #
    #   * `RECORD_TYPE`
    #
    #   * `OPERATING_SYSTEM`
    #
    #   * `TENANCY`
    #
    #   * `SCOPE`
    #
    #   * `PLATFORM`
    #
    #   * `SUBSCRIPTION_ID`
    #
    #   * `LEGAL_ENTITY_NAME`
    #
    #   * `DEPLOYMENT_OPTION`
    #
    #   * `DATABASE_ENGINE`
    #
    #   * `INSTANCE_TYPE_FAMILY`
    #
    #   * `BILLING_ENTITY`
    #
    #   * `RESERVATION_ID`
    #
    #   * `SAVINGS_PLAN_ARN`
    #
    # @option params [Integer] :prediction_interval_level
    #   Amazon Web Services Cost Explorer always returns the mean forecast as
    #   a single point. You can request a prediction interval around the mean
    #   by specifying a confidence level. The higher the confidence level, the
    #   more confident Cost Explorer is about the actual value falling in the
    #   prediction interval. Higher confidence levels result in wider
    #   prediction intervals.
    #
    # @return [Types::GetUsageForecastResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUsageForecastResponse#total #total} => Types::MetricValue
    #   * {Types::GetUsageForecastResponse#forecast_results_by_time #forecast_results_by_time} => Array&lt;Types::ForecastResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_forecast({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     metric: "BLENDED_COST", # required, accepts BLENDED_COST, UNBLENDED_COST, AMORTIZED_COST, NET_UNBLENDED_COST, NET_AMORTIZED_COST, USAGE_QUANTITY, NORMALIZED_USAGE_AMOUNT
    #     granularity: "DAILY", # required, accepts DAILY, MONTHLY, HOURLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #     prediction_interval_level: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.total.amount #=> String
    #   resp.total.unit #=> String
    #   resp.forecast_results_by_time #=> Array
    #   resp.forecast_results_by_time[0].time_period.start #=> String
    #   resp.forecast_results_by_time[0].time_period.end #=> String
    #   resp.forecast_results_by_time[0].mean_value #=> String
    #   resp.forecast_results_by_time[0].prediction_interval_lower_bound #=> String
    #   resp.forecast_results_by_time[0].prediction_interval_upper_bound #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetUsageForecast AWS API Documentation
    #
    # @overload get_usage_forecast(params = {})
    # @param [Hash] params ({})
    def get_usage_forecast(params = {}, options = {})
      req = build_request(:get_usage_forecast, params)
      req.send_request(options)
    end

    # Get a list of cost allocation tags. All inputs in the API are optional
    # and serve as filters. By default, all cost allocation tags are
    # returned.
    #
    # @option params [String] :status
    #   The status of cost allocation tag keys that are returned for this
    #   request.
    #
    # @option params [Array<String>] :tag_keys
    #   The list of cost allocation tag keys that are returned for this
    #   request.
    #
    # @option params [String] :type
    #   The type of `CostAllocationTag` object that are returned for this
    #   request. The `AWSGenerated` type tags are tags that Amazon Web
    #   Services defines and applies to support Amazon Web Services resources
    #   for cost allocation purposes. The `UserDefined` type tags are tags
    #   that you define, create, and apply to resources.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that are returned for this request. By
    #   default, the request returns 100 results.
    #
    # @return [Types::ListCostAllocationTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCostAllocationTagsResponse#cost_allocation_tags #cost_allocation_tags} => Array&lt;Types::CostAllocationTag&gt;
    #   * {Types::ListCostAllocationTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cost_allocation_tags({
    #     status: "Active", # accepts Active, Inactive
    #     tag_keys: ["TagKey"],
    #     type: "AWSGenerated", # accepts AWSGenerated, UserDefined
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cost_allocation_tags #=> Array
    #   resp.cost_allocation_tags[0].tag_key #=> String
    #   resp.cost_allocation_tags[0].type #=> String, one of "AWSGenerated", "UserDefined"
    #   resp.cost_allocation_tags[0].status #=> String, one of "Active", "Inactive"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListCostAllocationTags AWS API Documentation
    #
    # @overload list_cost_allocation_tags(params = {})
    # @param [Hash] params ({})
    def list_cost_allocation_tags(params = {}, options = {})
      req = build_request(:list_cost_allocation_tags, params)
      req.send_request(options)
    end

    # Returns the name, Amazon Resource Name (ARN), `NumberOfRules` and
    # effective dates of all Cost Categories defined in the account. You
    # have the option to use `EffectiveOn` to return a list of Cost
    # Categories that were active on a specific date. If there is no
    # `EffectiveOn` specified, you’ll see Cost Categories that are effective
    # on the current date. If Cost Category is still effective,
    # `EffectiveEnd` is omitted in the response.
    # `ListCostCategoryDefinitions` supports pagination. The request can
    # have a `MaxResults` range up to 100.
    #
    # @option params [String] :effective_on
    #   The date when the Cost Category was effective.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The number of entries a paginated response contains.
    #
    # @return [Types::ListCostCategoryDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCostCategoryDefinitionsResponse#cost_category_references #cost_category_references} => Array&lt;Types::CostCategoryReference&gt;
    #   * {Types::ListCostCategoryDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cost_category_definitions({
    #     effective_on: "ZonedDateTime",
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cost_category_references #=> Array
    #   resp.cost_category_references[0].cost_category_arn #=> String
    #   resp.cost_category_references[0].name #=> String
    #   resp.cost_category_references[0].effective_start #=> String
    #   resp.cost_category_references[0].effective_end #=> String
    #   resp.cost_category_references[0].number_of_rules #=> Integer
    #   resp.cost_category_references[0].processing_status #=> Array
    #   resp.cost_category_references[0].processing_status[0].component #=> String, one of "COST_EXPLORER"
    #   resp.cost_category_references[0].processing_status[0].status #=> String, one of "PROCESSING", "APPLIED"
    #   resp.cost_category_references[0].values #=> Array
    #   resp.cost_category_references[0].values[0] #=> String
    #   resp.cost_category_references[0].default_value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListCostCategoryDefinitions AWS API Documentation
    #
    # @overload list_cost_category_definitions(params = {})
    # @param [Hash] params ({})
    def list_cost_category_definitions(params = {}, options = {})
      req = build_request(:list_cost_category_definitions, params)
      req.send_request(options)
    end

    # Retrieves a list of your historical recommendation generations within
    # the past 30 days.
    #
    # @option params [String] :generation_status
    #   The status of the recommendation generation.
    #
    # @option params [Array<String>] :recommendation_ids
    #   The IDs for each specific recommendation.
    #
    # @option params [Integer] :page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListSavingsPlansPurchaseRecommendationGenerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSavingsPlansPurchaseRecommendationGenerationResponse#generation_summary_list #generation_summary_list} => Array&lt;Types::GenerationSummary&gt;
    #   * {Types::ListSavingsPlansPurchaseRecommendationGenerationResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_savings_plans_purchase_recommendation_generation({
    #     generation_status: "SUCCEEDED", # accepts SUCCEEDED, PROCESSING, FAILED
    #     recommendation_ids: ["RecommendationId"],
    #     page_size: 1,
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.generation_summary_list #=> Array
    #   resp.generation_summary_list[0].recommendation_id #=> String
    #   resp.generation_summary_list[0].generation_status #=> String, one of "SUCCEEDED", "PROCESSING", "FAILED"
    #   resp.generation_summary_list[0].generation_started_time #=> String
    #   resp.generation_summary_list[0].generation_completion_time #=> String
    #   resp.generation_summary_list[0].estimated_completion_time #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListSavingsPlansPurchaseRecommendationGeneration AWS API Documentation
    #
    # @overload list_savings_plans_purchase_recommendation_generation(params = {})
    # @param [Hash] params ({})
    def list_savings_plans_purchase_recommendation_generation(params = {}, options = {})
      req = build_request(:list_savings_plans_purchase_recommendation_generation, params)
      req.send_request(options)
    end

    # Returns a list of resource tags associated with the resource specified
    # by the Amazon Resource Name (ARN).
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For a list of
    #   supported resources, see [ResourceTag][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].key #=> String
    #   resp.resource_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Modifies the feedback property of a given cost anomaly.
    #
    # @option params [required, String] :anomaly_id
    #   A cost anomaly ID.
    #
    # @option params [required, String] :feedback
    #   Describes whether the cost anomaly was a planned activity or you
    #   considered it an anomaly.
    #
    # @return [Types::ProvideAnomalyFeedbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProvideAnomalyFeedbackResponse#anomaly_id #anomaly_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provide_anomaly_feedback({
    #     anomaly_id: "GenericString", # required
    #     feedback: "YES", # required, accepts YES, NO, PLANNED_ACTIVITY
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ProvideAnomalyFeedback AWS API Documentation
    #
    # @overload provide_anomaly_feedback(params = {})
    # @param [Hash] params ({})
    def provide_anomaly_feedback(params = {}, options = {})
      req = build_request(:provide_anomaly_feedback, params)
      req.send_request(options)
    end

    # Requests a Savings Plans recommendation generation. This enables you
    # to calculate a fresh set of Savings Plans recommendations that takes
    # your latest usage data and current Savings Plans inventory into
    # account. You can refresh Savings Plans recommendations up to three
    # times daily for a consolidated billing family.
    #
    # <note markdown="1"> `StartSavingsPlansPurchaseRecommendationGeneration` has no request
    # syntax because no input parameters are needed to support this
    # operation.
    #
    #  </note>
    #
    # @return [Types::StartSavingsPlansPurchaseRecommendationGenerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSavingsPlansPurchaseRecommendationGenerationResponse#recommendation_id #recommendation_id} => String
    #   * {Types::StartSavingsPlansPurchaseRecommendationGenerationResponse#generation_started_time #generation_started_time} => String
    #   * {Types::StartSavingsPlansPurchaseRecommendationGenerationResponse#estimated_completion_time #estimated_completion_time} => String
    #
    # @example Response structure
    #
    #   resp.recommendation_id #=> String
    #   resp.generation_started_time #=> String
    #   resp.estimated_completion_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/StartSavingsPlansPurchaseRecommendationGeneration AWS API Documentation
    #
    # @overload start_savings_plans_purchase_recommendation_generation(params = {})
    # @param [Hash] params ({})
    def start_savings_plans_purchase_recommendation_generation(params = {}, options = {})
      req = build_request(:start_savings_plans_purchase_recommendation_generation, params)
      req.send_request(options)
    end

    # An API operation for adding one or more tags (key-value pairs) to a
    # resource.
    #
    # You can use the `TagResource` operation with a resource that already
    # has tags. If you specify a new tag key for the resource, this tag is
    # appended to the list of tags associated with the resource. If you
    # specify a tag key that is already associated with the resource, the
    # new tag value you specify replaces the previous value for that tag.
    #
    # Although the maximum number of array members is 200, user-tag maximum
    # is 50. The remaining are reserved for Amazon Web Services use.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For a list of
    #   supported resources, see [ResourceTag][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html
    #
    # @option params [required, Array<Types::ResourceTag>] :resource_tags
    #   A list of tag key-value pairs to be added to the resource.
    #
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource. The following restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can assign
    #     a maximum of 50 user-tags to one resource. The remaining are
    #     reserved for Amazon Web Services use
    #
    #   * The maximum length of a key is 128 characters
    #
    #   * The maximum length of a value is 256 characters
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`
    #
    #   * Keys and values are case sensitive
    #
    #   * Keys and values are trimmed for any leading or trailing whitespaces
    #
    #   * Don’t use `aws:` as a prefix for your keys. This prefix is reserved
    #     for Amazon Web Services use
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a resource. Specify only tag keys in
    # your request. Don't specify the value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For a list of
    #   supported resources, see [ResourceTag][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html
    #
    # @option params [required, Array<String>] :resource_tag_keys
    #   A list of tag keys associated with tags that need to be removed from
    #   the resource. If you specify a tag key that doesn't exist, it's
    #   ignored. Although the maximum number of array members is 200, user-tag
    #   maximum is 50. The remaining are reserved for Amazon Web Services use.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     resource_tag_keys: ["ResourceTagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing cost anomaly monitor. The changes made are applied
    # going forward, and doesn't change anomalies detected in the past.
    #
    # @option params [required, String] :monitor_arn
    #   Cost anomaly monitor Amazon Resource Names (ARNs).
    #
    # @option params [String] :monitor_name
    #   The new name for the cost anomaly monitor.
    #
    # @return [Types::UpdateAnomalyMonitorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnomalyMonitorResponse#monitor_arn #monitor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_anomaly_monitor({
    #     monitor_arn: "GenericString", # required
    #     monitor_name: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateAnomalyMonitor AWS API Documentation
    #
    # @overload update_anomaly_monitor(params = {})
    # @param [Hash] params ({})
    def update_anomaly_monitor(params = {}, options = {})
      req = build_request(:update_anomaly_monitor, params)
      req.send_request(options)
    end

    # Updates an existing cost anomaly monitor subscription.
    #
    # @option params [required, String] :subscription_arn
    #   A cost anomaly subscription Amazon Resource Name (ARN).
    #
    # @option params [Float] :threshold
    #   (deprecated)
    #
    #   The update to the threshold value for receiving notifications.
    #
    #   This field has been deprecated. To update a threshold, use
    #   ThresholdExpression. Continued use of Threshold will be treated as
    #   shorthand syntax for a ThresholdExpression.
    #
    # @option params [String] :frequency
    #   The update to the frequency value that subscribers receive
    #   notifications.
    #
    # @option params [Array<String>] :monitor_arn_list
    #   A list of cost anomaly monitor ARNs.
    #
    # @option params [Array<Types::Subscriber>] :subscribers
    #   The update to the subscriber list.
    #
    # @option params [String] :subscription_name
    #   The new name of the subscription.
    #
    # @option params [Types::Expression] :threshold_expression
    #   The update to the [Expression][1] object used to specify the anomalies
    #   that you want to generate alerts for. This supports dimensions and
    #   nested expressions. The supported dimensions are
    #   `ANOMALY_TOTAL_IMPACT_ABSOLUTE` and `ANOMALY_TOTAL_IMPACT_PERCENTAGE`.
    #   The supported nested expression types are `AND` and `OR`. The match
    #   option `GREATER_THAN_OR_EQUAL` is required. Values must be numbers
    #   between 0 and 10,000,000,000.
    #
    #   The following are examples of valid ThresholdExpressions:
    #
    #   * Absolute threshold: `\{ "Dimensions": \{ "Key":
    #     "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}`
    #
    #   * Percentage threshold: `\{ "Dimensions": \{ "Key":
    #     "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}`
    #
    #   * `AND` two thresholds together: `\{ "And": [ \{ "Dimensions": \{
    #     "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}, \{
    #     "Dimensions": \{ "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #     "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \}
    #     \} ] \}`
    #
    #   * `OR` two thresholds together: `\{ "Or": [ \{ "Dimensions": \{ "Key":
    #     "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}, \{
    #     "Dimensions": \{ "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #     "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \}
    #     \} ] \}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @return [Types::UpdateAnomalySubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnomalySubscriptionResponse#subscription_arn #subscription_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_anomaly_subscription({
    #     subscription_arn: "GenericString", # required
    #     threshold: 1.0,
    #     frequency: "DAILY", # accepts DAILY, IMMEDIATE, WEEKLY
    #     monitor_arn_list: ["Arn"],
    #     subscribers: [
    #       {
    #         address: "SubscriberAddress",
    #         type: "EMAIL", # accepts EMAIL, SNS
    #         status: "CONFIRMED", # accepts CONFIRMED, DECLINED
    #       },
    #     ],
    #     subscription_name: "GenericString",
    #     threshold_expression: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateAnomalySubscription AWS API Documentation
    #
    # @overload update_anomaly_subscription(params = {})
    # @param [Hash] params ({})
    def update_anomaly_subscription(params = {}, options = {})
      req = build_request(:update_anomaly_subscription, params)
      req.send_request(options)
    end

    # Updates status for cost allocation tags in bulk, with maximum batch
    # size of 20. If the tag status that's updated is the same as the
    # existing tag status, the request doesn't fail. Instead, it doesn't
    # have any effect on the tag status (for example, activating the active
    # tag).
    #
    # @option params [required, Array<Types::CostAllocationTagStatusEntry>] :cost_allocation_tags_status
    #   The list of `CostAllocationTagStatusEntry` objects that are used to
    #   update cost allocation tags status for this request.
    #
    # @return [Types::UpdateCostAllocationTagsStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCostAllocationTagsStatusResponse#errors #errors} => Array&lt;Types::UpdateCostAllocationTagsStatusError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cost_allocation_tags_status({
    #     cost_allocation_tags_status: [ # required
    #       {
    #         tag_key: "TagKey", # required
    #         status: "Active", # required, accepts Active, Inactive
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].tag_key #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostAllocationTagsStatus AWS API Documentation
    #
    # @overload update_cost_allocation_tags_status(params = {})
    # @param [Hash] params ({})
    def update_cost_allocation_tags_status(params = {}, options = {})
      req = build_request(:update_cost_allocation_tags_status, params)
      req.send_request(options)
    end

    # Updates an existing Cost Category. Changes made to the Cost Category
    # rules will be used to categorize the current month’s expenses and
    # future expenses. This won’t change categorization for the previous
    # months.
    #
    # @option params [required, String] :cost_category_arn
    #   The unique identifier for your Cost Category.
    #
    # @option params [String] :effective_start
    #   The Cost Category's effective start date. It can only be a billing
    #   start date (first day of the month). If the date isn't provided,
    #   it's the first day of the current month. Dates can't be before the
    #   previous twelve months, or in the future.
    #
    # @option params [required, String] :rule_version
    #   The rule schema version in this particular Cost Category.
    #
    # @option params [required, Array<Types::CostCategoryRule>] :rules
    #   The `Expression` object used to categorize costs. For more
    #   information, see [CostCategoryRule ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html
    #
    # @option params [String] :default_value
    #   The default value for the cost category.
    #
    # @option params [Array<Types::CostCategorySplitChargeRule>] :split_charge_rules
    #   The split charge rules used to allocate your charges between your Cost
    #   Category values.
    #
    # @return [Types::UpdateCostCategoryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCostCategoryDefinitionResponse#cost_category_arn #cost_category_arn} => String
    #   * {Types::UpdateCostCategoryDefinitionResponse#effective_start #effective_start} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cost_category_definition({
    #     cost_category_arn: "Arn", # required
    #     effective_start: "ZonedDateTime",
    #     rule_version: "CostCategoryExpression.v1", # required, accepts CostCategoryExpression.v1
    #     rules: [ # required
    #       {
    #         value: "CostCategoryValue",
    #         rule: {
    #           or: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
    #           },
    #         },
    #         inherited_value: {
    #           dimension_name: "LINKED_ACCOUNT_NAME", # accepts LINKED_ACCOUNT_NAME, TAG
    #           dimension_key: "GenericString",
    #         },
    #         type: "REGULAR", # accepts REGULAR, INHERITED_VALUE
    #       },
    #     ],
    #     default_value: "CostCategoryValue",
    #     split_charge_rules: [
    #       {
    #         source: "GenericString", # required
    #         targets: ["GenericString"], # required
    #         method: "FIXED", # required, accepts FIXED, PROPORTIONAL, EVEN
    #         parameters: [
    #           {
    #             type: "ALLOCATION_PERCENTAGES", # required, accepts ALLOCATION_PERCENTAGES
    #             values: ["GenericString"], # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cost_category_arn #=> String
    #   resp.effective_start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostCategoryDefinition AWS API Documentation
    #
    # @overload update_cost_category_definition(params = {})
    # @param [Hash] params ({})
    def update_cost_category_definition(params = {}, options = {})
      req = build_request(:update_cost_category_definition, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-costexplorer'
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
