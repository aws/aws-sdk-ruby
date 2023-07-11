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

Aws::Plugins::GlobalConfiguration.add_identifier(:kendraranking)

module Aws::KendraRanking
  # An API client for KendraRanking.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::KendraRanking::Client.new(
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

    @identifier = :kendraranking

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
    add_plugin(Aws::KendraRanking::Plugins::Endpoints)

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
    #   @option options [Aws::KendraRanking::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::KendraRanking::EndpointParameters`
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

    # Creates a rescore execution plan. A rescore execution plan is an
    # Amazon Kendra Intelligent Ranking resource used for provisioning the
    # `Rescore` API. You set the number of capacity units that you require
    # for Amazon Kendra Intelligent Ranking to rescore or re-rank a search
    # service's results.
    #
    # For an example of using the `CreateRescoreExecutionPlan` API,
    # including using the Python and Java SDKs, see [Semantically ranking a
    # search service's results][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/search-service-rerank.html
    #
    # @option params [required, String] :name
    #   A name for the rescore execution plan.
    #
    # @option params [String] :description
    #   A description for the rescore execution plan.
    #
    # @option params [Types::CapacityUnitsConfiguration] :capacity_units
    #   You can set additional capacity units to meet the needs of your
    #   rescore execution plan. You are given a single capacity unit by
    #   default. If you want to use the default capacity, you don't set
    #   additional capacity units. For more information on the default
    #   capacity and additional capacity units, see [Adjusting capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize your rescore
    #   execution plan. You can also use tags to help control access to the
    #   rescore execution plan. Tag keys and values can consist of Unicode
    #   letters, digits, white space, and any of the following symbols: \_ . :
    #   / = + - @.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create a rescore
    #   execution plan. Multiple calls to the
    #   `CreateRescoreExecutionPlanRequest` API with the same client token
    #   will create only one rescore execution plan.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateRescoreExecutionPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRescoreExecutionPlanResponse#id #id} => String
    #   * {Types::CreateRescoreExecutionPlanResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rescore_execution_plan({
    #     name: "RescoreExecutionPlanName", # required
    #     description: "Description",
    #     capacity_units: {
    #       rescore_capacity_units: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientTokenName",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/CreateRescoreExecutionPlan AWS API Documentation
    #
    # @overload create_rescore_execution_plan(params = {})
    # @param [Hash] params ({})
    def create_rescore_execution_plan(params = {}, options = {})
      req = build_request(:create_rescore_execution_plan, params)
      req.send_request(options)
    end

    # Deletes a rescore execution plan. A rescore execution plan is an
    # Amazon Kendra Intelligent Ranking resource used for provisioning the
    # `Rescore` API.
    #
    # @option params [required, String] :id
    #   The identifier of the rescore execution plan that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rescore_execution_plan({
    #     id: "RescoreExecutionPlanId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/DeleteRescoreExecutionPlan AWS API Documentation
    #
    # @overload delete_rescore_execution_plan(params = {})
    # @param [Hash] params ({})
    def delete_rescore_execution_plan(params = {}, options = {})
      req = build_request(:delete_rescore_execution_plan, params)
      req.send_request(options)
    end

    # Gets information about a rescore execution plan. A rescore execution
    # plan is an Amazon Kendra Intelligent Ranking resource used for
    # provisioning the `Rescore` API.
    #
    # @option params [required, String] :id
    #   The identifier of the rescore execution plan that you want to get
    #   information on.
    #
    # @return [Types::DescribeRescoreExecutionPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRescoreExecutionPlanResponse#id #id} => String
    #   * {Types::DescribeRescoreExecutionPlanResponse#arn #arn} => String
    #   * {Types::DescribeRescoreExecutionPlanResponse#name #name} => String
    #   * {Types::DescribeRescoreExecutionPlanResponse#description #description} => String
    #   * {Types::DescribeRescoreExecutionPlanResponse#capacity_units #capacity_units} => Types::CapacityUnitsConfiguration
    #   * {Types::DescribeRescoreExecutionPlanResponse#created_at #created_at} => Time
    #   * {Types::DescribeRescoreExecutionPlanResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeRescoreExecutionPlanResponse#status #status} => String
    #   * {Types::DescribeRescoreExecutionPlanResponse#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rescore_execution_plan({
    #     id: "RescoreExecutionPlanId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.capacity_units.rescore_capacity_units #=> Integer
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/DescribeRescoreExecutionPlan AWS API Documentation
    #
    # @overload describe_rescore_execution_plan(params = {})
    # @param [Hash] params ({})
    def describe_rescore_execution_plan(params = {}, options = {})
      req = build_request(:describe_rescore_execution_plan, params)
      req.send_request(options)
    end

    # Lists your rescore execution plans. A rescore execution plan is an
    # Amazon Kendra Intelligent Ranking resource used for provisioning the
    # `Rescore` API.
    #
    # @option params [String] :next_token
    #   If the response is truncated, Amazon Kendra Intelligent Ranking
    #   returns a pagination token in the response. You can use this
    #   pagination token to retrieve the next set of rescore execution plans.
    #
    # @option params [Integer] :max_results
    #   The maximum number of rescore execution plans to return.
    #
    # @return [Types::ListRescoreExecutionPlansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRescoreExecutionPlansResponse#summary_items #summary_items} => Array&lt;Types::RescoreExecutionPlanSummary&gt;
    #   * {Types::ListRescoreExecutionPlansResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rescore_execution_plans({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary_items #=> Array
    #   resp.summary_items[0].name #=> String
    #   resp.summary_items[0].id #=> String
    #   resp.summary_items[0].created_at #=> Time
    #   resp.summary_items[0].updated_at #=> Time
    #   resp.summary_items[0].status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ListRescoreExecutionPlans AWS API Documentation
    #
    # @overload list_rescore_execution_plans(params = {})
    # @param [Hash] params ({})
    def list_rescore_execution_plans(params = {}, options = {})
      req = build_request(:list_rescore_execution_plans, params)
      req.send_request(options)
    end

    # Gets a list of tags associated with a specified resource. A rescore
    # execution plan is an example of a resource that can have tags
    # associated with it.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the rescore execution plan to get a
    #   list of tags for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Rescores or re-ranks search results from a search service such as
    # OpenSearch (self managed). You use the semantic search capabilities of
    # Amazon Kendra Intelligent Ranking to improve the search service's
    # results.
    #
    # @option params [required, String] :rescore_execution_plan_id
    #   The identifier of the rescore execution plan. A rescore execution plan
    #   is an Amazon Kendra Intelligent Ranking resource used for provisioning
    #   the `Rescore` API.
    #
    # @option params [required, String] :search_query
    #   The input query from the search service.
    #
    # @option params [required, Array<Types::Document>] :documents
    #   The list of documents for Amazon Kendra Intelligent Ranking to rescore
    #   or rank on.
    #
    # @return [Types::RescoreResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RescoreResult#rescore_id #rescore_id} => String
    #   * {Types::RescoreResult#result_items #result_items} => Array&lt;Types::RescoreResultItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rescore({
    #     rescore_execution_plan_id: "RescoreExecutionPlanId", # required
    #     search_query: "SearchQuery", # required
    #     documents: [ # required
    #       {
    #         id: "DocumentId", # required
    #         group_id: "GroupId",
    #         title: "DocumentTitle",
    #         body: "DocumentBody",
    #         tokenized_title: ["Tokens"],
    #         tokenized_body: ["Tokens"],
    #         original_score: 1.0, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rescore_id #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].document_id #=> String
    #   resp.result_items[0].score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/Rescore AWS API Documentation
    #
    # @overload rescore(params = {})
    # @param [Hash] params ({})
    def rescore(params = {}, options = {})
      req = build_request(:rescore, params)
      req.send_request(options)
    end

    # Adds a specified tag to a specified rescore execution plan. A rescore
    # execution plan is an Amazon Kendra Intelligent Ranking resource used
    # for provisioning the `Rescore` API. If the tag already exists, the
    # existing value is replaced with the new value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the rescore execution plan to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tag keys to add to a rescore execution plan. If a tag
    #   already exists, the existing value is replaced with the new value.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a rescore execution plan. A rescore execution plan
    # is an Amazon Kendra Intelligent Ranking resource used for provisioning
    # the `Rescore` operation.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the rescore execution plan to remove
    #   the tag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the rescore execution plan. If a tag
    #   key does not exist on the resource, it is ignored.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a rescore execution plan. A rescore execution plan is an
    # Amazon Kendra Intelligent Ranking resource used for provisioning the
    # `Rescore` API. You can update the number of capacity units you require
    # for Amazon Kendra Intelligent Ranking to rescore or re-rank a search
    # service's results.
    #
    # @option params [required, String] :id
    #   The identifier of the rescore execution plan that you want to update.
    #
    # @option params [String] :name
    #   A new name for the rescore execution plan.
    #
    # @option params [String] :description
    #   A new description for the rescore execution plan.
    #
    # @option params [Types::CapacityUnitsConfiguration] :capacity_units
    #   You can set additional capacity units to meet the needs of your
    #   rescore execution plan. You are given a single capacity unit by
    #   default. If you want to use the default capacity, you don't set
    #   additional capacity units. For more information on the default
    #   capacity and additional capacity units, see [Adjusting capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rescore_execution_plan({
    #     id: "RescoreExecutionPlanId", # required
    #     name: "RescoreExecutionPlanName",
    #     description: "Description",
    #     capacity_units: {
    #       rescore_capacity_units: 1, # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/UpdateRescoreExecutionPlan AWS API Documentation
    #
    # @overload update_rescore_execution_plan(params = {})
    # @param [Hash] params ({})
    def update_rescore_execution_plan(params = {}, options = {})
      req = build_request(:update_rescore_execution_plan, params)
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
      context[:gem_name] = 'aws-sdk-kendraranking'
      context[:gem_version] = '1.6.0'
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
