# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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
    #           key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #       },
    #       dimensional_value_count: 1,
    #     },
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

    # Adds a subscription to a cost anomaly detection monitor. You can use
    # each subscription to define subscribers with email or SNS
    # notifications. Email subscribers can set a dollar threshold and a time
    # frequency for receiving notifications.
    #
    # @option params [required, Types::AnomalySubscription] :anomaly_subscription
    #   The cost anomaly subscription object that you want to create.
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
    #       monitor_arn_list: ["Value"], # required
    #       subscribers: [ # required
    #         {
    #           address: "SubscriberAddress",
    #           type: "EMAIL", # accepts EMAIL, SNS
    #           status: "CONFIRMED", # accepts CONFIRMED, DECLINED
    #         },
    #       ],
    #       threshold: 1.0, # required
    #       frequency: "DAILY", # required, accepts DAILY, IMMEDIATE, WEEKLY
    #       subscription_name: "GenericString", # required
    #     },
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
    # @return [Types::CreateCostCategoryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCostCategoryDefinitionResponse#cost_category_arn #cost_category_arn} => String
    #   * {Types::CreateCostCategoryDefinitionResponse#effective_start #effective_start} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cost_category_definition({
    #     name: "CostCategoryName", # required
    #     rule_version: "CostCategoryExpression.v1", # required, accepts CostCategoryExpression.v1
    #     rules: [ # required
    #       {
    #         value: "CostCategoryValue", # required
    #         rule: { # required
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #           },
    #         },
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

    # Returns the name, ARN, rules, definition, and effective dates of a
    # Cost Category that's defined in the account.
    #
    # You have the option to use `EffectiveOn` to return a Cost Category
    # that is active on a specific date. If there is no `EffectiveOn`
    # specified, you’ll see a Cost Category that is effective on the current
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
    #   resp.cost_category.rules[0].rule.dimensions.key #=> String, one of "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION"
    #   resp.cost_category.rules[0].rule.dimensions.values #=> Array
    #   resp.cost_category.rules[0].rule.dimensions.values[0] #=> String
    #   resp.cost_category.rules[0].rule.dimensions.match_options #=> Array
    #   resp.cost_category.rules[0].rule.dimensions.match_options[0] #=> String, one of "EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.cost_category.rules[0].rule.tags.key #=> String
    #   resp.cost_category.rules[0].rule.tags.values #=> Array
    #   resp.cost_category.rules[0].rule.tags.values[0] #=> String
    #   resp.cost_category.rules[0].rule.tags.match_options #=> Array
    #   resp.cost_category.rules[0].rule.tags.match_options[0] #=> String, one of "EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.cost_category.rules[0].rule.cost_categories.key #=> String
    #   resp.cost_category.rules[0].rule.cost_categories.values #=> Array
    #   resp.cost_category.rules[0].rule.cost_categories.values[0] #=> String
    #   resp.cost_category.rules[0].rule.cost_categories.match_options #=> Array
    #   resp.cost_category.rules[0].rule.cost_categories.match_options[0] #=> String, one of "EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.cost_category.processing_status #=> Array
    #   resp.cost_category.processing_status[0].component #=> String, one of "COST_EXPLORER"
    #   resp.cost_category.processing_status[0].status #=> String, one of "PROCESSING", "APPLIED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DescribeCostCategoryDefinition AWS API Documentation
    #
    # @overload describe_cost_category_definition(params = {})
    # @param [Hash] params ({})
    def describe_cost_category_definition(params = {}, options = {})
      req = build_request(:describe_cost_category_definition, params)
      req.send_request(options)
    end

    # Retrieves all of the cost anomalies detected on your account, during
    # the time period specified by the `DateInterval` object.
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
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
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
    #   resp.anomalies[0].anomaly_score.max_score #=> Float
    #   resp.anomalies[0].anomaly_score.current_score #=> Float
    #   resp.anomalies[0].impact.max_impact #=> Float
    #   resp.anomalies[0].impact.total_impact #=> Float
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
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
    #
    # @option params [Integer] :max_results
    #   The number of entries a paginated response contains.
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
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.key #=> String, one of "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION"
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.values #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.values[0] #=> String
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.match_options #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.dimensions.match_options[0] #=> String, one of "EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.anomaly_monitors[0].monitor_specification.tags.key #=> String
    #   resp.anomaly_monitors[0].monitor_specification.tags.values #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.tags.values[0] #=> String
    #   resp.anomaly_monitors[0].monitor_specification.tags.match_options #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.tags.match_options[0] #=> String, one of "EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.key #=> String
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.values #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.values[0] #=> String
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.match_options #=> Array
    #   resp.anomaly_monitors[0].monitor_specification.cost_categories.match_options[0] #=> String, one of "EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"
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
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
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
    # which cost and usage-related metric, such as `BlendedCosts` or
    # `UsageQuantity`, that you want the request to return. You can also
    # filter and group your data by various dimensions, such as `SERVICE` or
    # `AZ`, in a specific time range. For a complete list of valid
    # dimensions, see the [GetDimensionValues][1] operation. Master account
    # in an organization in AWS Organizations have access to all member
    # accounts.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html
    #
    # @option params [required, Types::DateInterval] :time_period
    #   Sets the start and end dates for retrieving AWS costs. The start date
    #   is inclusive, but the end date is exclusive. For example, if `start`
    #   is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage
    #   data is retrieved from `2017-01-01` up to and including `2017-04-30`
    #   but not including `2017-05-01`.
    #
    # @option params [String] :granularity
    #   Sets the AWS cost granularity to `MONTHLY` or `DAILY`, or `HOURLY`. If
    #   `Granularity` isn't set, the response object doesn't include the
    #   `Granularity`, either `MONTHLY` or `DAILY`, or `HOURLY`.
    #
    # @option params [Types::Expression] :filter
    #   Filters AWS costs by different dimensions. For example, you can
    #   specify `SERVICE` and `LINKED_ACCOUNT` and get the costs that are
    #   associated with that account's usage of that service. You can nest
    #   `Expression` objects to define any combination of dimension filters.
    #   For more information, see [Expression][1].
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
    #   are measured in different units (for example, hours vs. GB). To get
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
    #   You can group AWS costs using up to two different groups, either
    #   dimensions, tag keys, cost categories, or any two group by types.
    #
    #   When you group by tag key, you get all tag values, including empty
    #   strings.
    #
    #   Valid values are `AZ`, `INSTANCE_TYPE`, `LEGAL_ENTITY_NAME`,
    #   `LINKED_ACCOUNT`, `OPERATION`, `PLATFORM`, `PURCHASE_TYPE`, `SERVICE`,
    #   `TAGS`, `TENANCY`, `RECORD_TYPE`, and `USAGE_TYPE`.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
    #
    # @return [Types::GetCostAndUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCostAndUsageResponse#next_page_token #next_page_token} => String
    #   * {Types::GetCostAndUsageResponse#group_definitions #group_definitions} => Array&lt;Types::GroupDefinition&gt;
    #   * {Types::GetCostAndUsageResponse#results_by_time #results_by_time} => Array&lt;Types::ResultByTime&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_and_usage({
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
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
    # Master account in an organization in AWS Organizations have access to
    # all member accounts. This API is currently available for the Amazon
    # Elastic Compute Cloud – Compute service only.
    #
    # <note markdown="1"> This is an opt-in only feature. You can enable this feature from the
    # Cost Explorer Settings page. For information on how to access the
    # Settings page, see [Controlling Access for Cost Explorer][2] in the
    # *AWS Billing and Cost Management User Guide*.
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
    # @option params [String] :granularity
    #   Sets the AWS cost granularity to `MONTHLY`, `DAILY`, or `HOURLY`. If
    #   `Granularity` isn't set, the response object doesn't include the
    #   `Granularity`, `MONTHLY`, `DAILY`, or `HOURLY`.
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
    #   are measured in different units (for example, hours vs. GB). To get
    #   more meaningful `UsageQuantity` metrics, filter by `UsageType` or
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
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
    #
    # @return [Types::GetCostAndUsageWithResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCostAndUsageWithResourcesResponse#next_page_token #next_page_token} => String
    #   * {Types::GetCostAndUsageWithResourcesResponse#group_definitions #group_definitions} => Array&lt;Types::GroupDefinition&gt;
    #   * {Types::GetCostAndUsageWithResourcesResponse#results_by_time #results_by_time} => Array&lt;Types::ResultByTime&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_and_usage_with_resources({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsageWithResources AWS API Documentation
    #
    # @overload get_cost_and_usage_with_resources(params = {})
    # @param [Hash] params ({})
    def get_cost_and_usage_with_resources(params = {}, options = {})
      req = build_request(:get_cost_and_usage_with_resources, params)
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
    #   The filters that you want to use to filter your forecast. Cost
    #   Explorer API supports all of the Cost Explorer filters.
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
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
    #   The start and end dates for retrieving the dimension values. The start
    #   date is inclusive, but the end date is exclusive. For example, if
    #   `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and
    #   usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #
    # @option params [required, String] :dimension
    #   The name of the dimension. Each `Dimension` is available for a
    #   different `Context`. For more information, see `Context`.
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
    #   * DATABASE\_ENGINE - The Amazon Relational Database Service database.
    #     Examples are Aurora or MySQL.
    #
    #   * INSTANCE\_TYPE - The type of Amazon EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * LEGAL\_ENTITY\_NAME - The name of the organization that sells you
    #     AWS services, such as Amazon Web Services.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     AWS ID of the member account.
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
    #   * PURCHASE\_TYPE - The reservation type of the purchase to which this
    #     usage is related. Examples include On-Demand Instances and Standard
    #     Reserved Instances.
    #
    #   * SERVICE - The AWS service such as Amazon DynamoDB.
    #
    #   * USAGE\_TYPE - The type of usage. An example is
    #     DataTransfer-In-Bytes. The response for the `GetDimensionValues`
    #     operation includes a unit attribute. Examples include GB and Hrs.
    #
    #   * USAGE\_TYPE\_GROUP - The grouping of common usage types. An example
    #     is Amazon EC2: CloudWatch – Alarms. The response for this operation
    #     includes a unit attribute.
    #
    #   * REGION - The AWS Region.
    #
    #   * RECORD\_TYPE - The different types of charges such as RI fees, usage
    #     costs, tax refunds, and credits.
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
    #     AWS ID of the member account.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #     Linux.
    #
    #   * REGION - The AWS Region.
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
    #   * PAYMENT\_OPTION - Payment option for the given Savings Plans (for
    #     example, All Upfront)
    #
    #   * REGION - The AWS Region.
    #
    #   * INSTANCE\_TYPE\_FAMILY - The family of instances (For example, `m5`)
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     AWS ID of the member account.
    #
    #   * SAVINGS\_PLAN\_ARN - The unique identifier for your Savings Plan
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
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
    #     dimension: "AZ", # required, accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #     context: "COST_AND_USAGE", # accepts COST_AND_USAGE, RESERVATIONS, SAVINGS_PLANS
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

    # Retrieves the reservation coverage for your account. This enables you
    # to see how much of your Amazon Elastic Compute Cloud, Amazon
    # ElastiCache, Amazon Relational Database Service, or Amazon Redshift
    # usage is covered by a reservation. An organization's master account
    # can see the coverage of the associated member accounts. This supports
    # dimensions, Cost Categories, and nested expressions. For any time
    # period, you can filter data about reservation usage by the following
    # dimensions:
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
    #   The granularity of the AWS cost data for the reservation. Valid values
    #   are `MONTHLY` and `DAILY`.
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
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #     },
    #     metrics: ["MetricName"],
    #     next_page_token: "NextPageToken",
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

    # Gets recommendations for which reservations to purchase. These
    # recommendations could help you reduce your costs. Reservations provide
    # a discounted hourly rate (up to 75%) compared to On-Demand pricing.
    #
    # AWS generates your recommendations by identifying your On-Demand usage
    # during a specific time period and collecting your usage into
    # categories that are eligible for a reservation. After AWS has these
    # categories, it simulates every combination of reservations in each
    # category of usage to identify the best number of each type of RI to
    # purchase to maximize your estimated savings.
    #
    # For example, AWS automatically aggregates your Amazon EC2 Linux,
    # shared tenancy, and c4 family usage in the US West (Oregon) Region and
    # recommends that you buy size-flexible regional reservations to apply
    # to the c4 family usage. AWS recommends the smallest size instance in
    # an instance family. This makes it easier to purchase a size-flexible
    # RI. AWS also shows the equal number of normalized units so that you
    # can purchase any instance size that you want. For this example, your
    # RI recommendation would be for `c4.large` because that is the smallest
    # size instance in the c4 instance family.
    #
    # @option params [String] :account_id
    #   The account ID that is associated with the recommendation.
    #
    # @option params [required, String] :service
    #   The specific service that you want recommendations for.
    #
    # @option params [String] :account_scope
    #   The account scope that you want your recommendations for. Amazon Web
    #   Services calculates recommendations including the master account and
    #   member accounts if the value is set to `PAYER`. If the value is
    #   `LINKED`, recommendations are calculated for individual member
    #   accounts only.
    #
    # @option params [String] :lookback_period_in_days
    #   The number of previous days that you want AWS to consider when it
    #   calculates your recommendations.
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

    # Retrieves the reservation utilization for your account. Master account
    # in an organization have access to member accounts. You can filter data
    # by dimensions in a time period. You can use `GetDimensionValues` to
    # determine the possible dimension values. Currently, you can group only
    # by `SUBSCRIPTION_ID`.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   Sets the start and end dates for retrieving RI utilization. The start
    #   date is inclusive, but the end date is exclusive. For example, if
    #   `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and
    #   usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
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
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #     },
    #     next_page_token: "NextPageToken",
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
    # instances, along with providing savings detail and metrics. For
    # details on calculation and function, see [Optimizing Your Cost with
    # Rightsizing Recommendations][1] in the *AWS Billing and Cost
    # Management User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html
    #
    # @option params [Types::Expression] :filter
    #   Use `Expression` to filter by cost or by usage. There are two
    #   patterns:
    #
    #   * Simple dimension values - You can set the dimension name and values
    #     for the filters that you plan to use. For example, you can filter
    #     for `REGION==us-east-1 OR REGION==us-west-1`. For
    #     `GetRightsizingRecommendation`, the Region is a full name (for
    #     example, `REGION==US East (N. Virginia)`. The `Expression` example
    #     looks like:
    #
    #     `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #     “us-west-1” ] \} \}`
    #
    #     The list of dimension values are OR'd together to retrieve cost or
    #     usage data. You can create `Expression` and `DimensionValues`
    #     objects using either `with*` methods or `set*` methods in multiple
    #     lines.
    #
    #   * Compound dimension values with logical operations - You can use
    #     multiple `Expression` types and the logical operators `AND/OR/NOT`
    #     to create a list of one or more `Expression` objects. This allows
    #     you to filter on more advanced options. For example, you can filter
    #     on `((REGION == us-east-1 OR REGION == us-west-1) OR (TAG.Type ==
    #     Type1)) AND (USAGE_TYPE != DataTransfer)`. The `Expression` for that
    #     looks like this:
    #
    #     `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION", "Values":
    #     [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key": "TagName",
    #     "Values": ["Value1"] \} \} ]\}, \{"Not": \{"Dimensions": \{ "Key":
    #     "USAGE_TYPE", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error.
    #
    #      </note>
    #
    #     ` \{ "And": [ ... ], "DimensionValues": \{ "Dimension":
    #     "USAGE_TYPE", "Values": [ "DataTransfer" ] \} \} `
    #
    #   <note markdown="1"> For `GetRightsizingRecommendation` action, a combination of OR and NOT
    #   is not supported. OR is not supported between different dimensions, or
    #   dimensions and tags. NOT operators aren't supported. Dimensions are
    #   also limited to `LINKED_ACCOUNT`, `REGION`, or `RIGHTSIZING_TYPE`.
    #
    #    </note>
    #
    # @option params [Types::RightsizingRecommendationConfiguration] :configuration
    #   Enables you to customize recommendations across two attributes. You
    #   can choose to view recommendations for instances within the same
    #   instance families or across different instance families. You can also
    #   choose to view your estimated savings associated with recommendations
    #   with consideration of existing Savings Plans or RI benefits, or
    #   neither.
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
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
    #   resp.rightsizing_recommendations[0].current_instance.tags[0].match_options[0] #=> String, one of "EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"
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
    #   resp.rightsizing_recommendations[0].terminate_recommendation_detail.estimated_monthly_savings #=> String
    #   resp.rightsizing_recommendations[0].terminate_recommendation_detail.currency_code #=> String
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
    # organization’s master account can see the coverage of the associated
    # member accounts. This supports dimensions, Cost Categories, and nested
    # expressions. For any time period, you can filter data for Savings
    # Plans usage with the following dimensions:
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #     },
    #     metrics: ["MetricName"],
    #     next_token: "NextPageToken",
    #     max_results: 1,
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

    # Retrieves your request parameters, Savings Plan Recommendations
    # Summary and Details.
    #
    # @option params [required, String] :savings_plans_type
    #   The Savings Plans recommendation type requested.
    #
    # @option params [required, String] :term_in_years
    #   The savings plan recommendation term used to generate these
    #   recommendations.
    #
    # @option params [required, String] :payment_option
    #   The payment option used to generate these recommendations.
    #
    # @option params [String] :account_scope
    #   The account scope that you want your recommendations for. Amazon Web
    #   Services calculates recommendations including the master account and
    #   member accounts if the value is set to `PAYER`. If the value is
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
    #   The lookback period used to generate the recommendation.
    #
    # @option params [Types::Expression] :filter
    #   You can filter your recommendations by Account ID with the
    #   `LINKED_ACCOUNT` dimension. To filter your recommendations by Account
    #   ID, specify `Key` as `LINKED_ACCOUNT` and `Value` as the
    #   comma-separated Acount ID(s) for which you want to see Savings Plans
    #   purchase recommendations.
    #
    #   For GetSavingsPlansPurchaseRecommendation, the `Filter` does not
    #   include `CostCategories` or `Tags`. It only includes `Dimensions`.
    #   With `Dimensions`, `Key` must be `LINKED_ACCOUNT` and `Value` can be a
    #   single Account ID or multiple comma-separated Account IDs for which
    #   you want to see Savings Plans Purchase Recommendations. `AND` and `OR`
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
    #     savings_plans_type: "COMPUTE_SP", # required, accepts COMPUTE_SP, EC2_INSTANCE_SP
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.recommendation_id #=> String
    #   resp.metadata.generation_timestamp #=> String
    #   resp.savings_plans_purchase_recommendation.account_scope #=> String, one of "PAYER", "LINKED"
    #   resp.savings_plans_purchase_recommendation.savings_plans_type #=> String, one of "COMPUTE_SP", "EC2_INSTANCE_SP"
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
    # ranges with daily or monthly granularity. Master account in an
    # organization have access to member accounts. You can use
    # `GetDimensionValues` in `SAVINGS_PLANS` to determine the possible
    # dimension values.
    #
    # <note markdown="1"> You cannot group by any dimension values for
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
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
    # @option params [String] :next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The number of items to be returned in a response. The default is `20`,
    #   with a minimum value of `1`.
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #     },
    #     next_token: "NextPageToken",
    #     max_results: 1,
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
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
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
    #   forecast for. The start date is inclusive, but the end date is
    #   exclusive. For example, if `start` is `2017-01-01` and `end` is
    #   `2017-05-01`, then the cost and usage data is retrieved from
    #   `2017-01-01` up to and including `2017-04-30` but not including
    #   `2017-05-01`. The start date must be equal to or later than the
    #   current date to avoid a validation error.
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
    #   The filters that you want to use to filter your forecast. Cost
    #   Explorer API supports all of the Cost Explorer filters.
    #
    # @option params [Integer] :prediction_interval_level
    #   Cost Explorer always returns the mean forecast as a single point. You
    #   can request a prediction interval around the mean by specifying a
    #   confidence level. The higher the confidence level, the more confident
    #   Cost Explorer is about the actual value falling in the prediction
    #   interval. Higher confidence levels result in wider prediction
    #   intervals.
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
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

    # Returns the name, ARN, `NumberOfRules` and effective dates of all Cost
    # Categories defined in the account. You have the option to use
    # `EffectiveOn` to return a list of Cost Categories that were active on
    # a specific date. If there is no `EffectiveOn` specified, you’ll see
    # Cost Categories that are effective on the current date. If Cost
    # Category is still effective, `EffectiveEnd` is omitted in the
    # response. `ListCostCategoryDefinitions` supports pagination. The
    # request can have a `MaxResults` range up to 100.
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

    # Updates an existing cost anomaly monitor. The changes made are applied
    # going forward, and does not change anomalies detected in the past.
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
    #   The update to the threshold value for receiving notifications.
    #
    # @option params [String] :frequency
    #   The update to the frequency value at which subscribers will receive
    #   notifications.
    #
    # @option params [Array<String>] :monitor_arn_list
    #   A list of cost anomaly subscription ARNs.
    #
    # @option params [Array<Types::Subscriber>] :subscribers
    #   The update to the subscriber list.
    #
    # @option params [String] :subscription_name
    #   The subscription's new name.
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
    #     monitor_arn_list: ["Value"],
    #     subscribers: [
    #       {
    #         address: "SubscriberAddress",
    #         type: "EMAIL", # accepts EMAIL, SNS
    #         status: "CONFIRMED", # accepts CONFIRMED, DECLINED
    #       },
    #     ],
    #     subscription_name: "GenericString",
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

    # Updates an existing Cost Category. Changes made to the Cost Category
    # rules will be used to categorize the current month’s expenses and
    # future expenses. This won’t change categorization for the previous
    # months.
    #
    # @option params [required, String] :cost_category_arn
    #   The unique identifier for your Cost Category.
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
    # @return [Types::UpdateCostCategoryDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCostCategoryDefinitionResponse#cost_category_arn #cost_category_arn} => String
    #   * {Types::UpdateCostCategoryDefinitionResponse#effective_start #effective_start} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cost_category_definition({
    #     cost_category_arn: "Arn", # required
    #     rule_version: "CostCategoryExpression.v1", # required, accepts CostCategoryExpression.v1
    #     rules: [ # required
    #       {
    #         value: "CostCategoryValue", # required
    #         rule: { # required
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS"], # accepts EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
    #           },
    #         },
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
      context[:gem_version] = '1.52.0'
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
