# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Budgets
  # An API client for Aws::Budgets.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSBudgetServiceGateway

    add_plugin(::Aws::Budgets::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Budgets::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates a budget and, if included, notifications and subscribers. </p>
    #          <important>
    #             <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in
    #             the syntax at one time. Use the syntax that matches your use case. The Request Syntax
    #             section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>,
    #             see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples">Examples</a> section.</p>
    #             <p>Similarly, only one set of filter and metric selections can be present in the syntax
    #             at one time. Either <code>FilterExpression</code> and <code>Metrics</code> or
    #                <code>CostFilters</code> and <code>CostTypes</code>, not both or a different
    #             combination. We recommend using <code>FilterExpression</code> and <code>Metrics</code>
    #             as they provide more flexible and powerful filtering capabilities. The Request Syntax
    #             section shows the <code>FilterExpression</code>/<code>Metrics</code> syntax.</p>
    #          </important>
    # @param [Hash, Types::CreateBudgetRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget.</p>
    # @option params [Types::Budget] :budget
    #   <p>The budget object that you want to create.</p>
    # @option params [Array<Types::NotificationWithSubscribers>] :notifications_with_subscribers
    #   <p>A notification that you want to associate with a budget. A budget can have up to five notifications, and each notification can have one SNS subscriber and up to 10 email subscribers. If you include notifications and subscribers in your <code>CreateBudget</code> call, Amazon Web Services creates the notifications and subscribers for you.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified budget. Each tag consists of a
    #            key and a value, and each key must be unique for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget: { # required
    #       budget_name: "BudgetName", # required
    #       budget_limit: {
    #         amount: "NumericValue", # required
    #         unit: "UnitValue", # required
    #       },
    #       planned_budget_limits: {
    #         "GenericString" => {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         }
    #       },
    #       cost_filters: {
    #         "GenericString" => ["DimensionValue"]
    #       },
    #       cost_types: {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false
    #       },
    #       time_unit: "DAILY" # One of: ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY", "CUSTOM"], # required
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now
    #       },
    #       calculated_spend: {
    #         actual_spend: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         forecasted_spend: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         }
    #       },
    #       budget_type: "USAGE" # One of: ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"], # required
    #       last_updated_time: Time.now,
    #       auto_adjust_data: {
    #         auto_adjust_type: "HISTORICAL" # One of: ["HISTORICAL", "FORECAST"], # required
    #         historical_options: {
    #           budget_adjustment_period: 1, # required
    #           look_back_available_periods: 1
    #         },
    #         last_auto_adjust_time: Time.now
    #       },
    #       filter_expression: {
    #         or: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "INVOICING_ENTITY", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "RESERVATION_MODIFIED", "TAG_KEY", "COST_CATEGORY_NAME"], # required
    #           values: ["Value"], # required
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         }
    #       },
    #       metrics: ["BlendedCost" # One of: ["BlendedCost", "UnblendedCost", "AmortizedCost", "NetUnblendedCost", "NetAmortizedCost", "UsageQuantity", "NormalizedUsageAmount", "Hours"]],
    #       billing_view_arn: "BillingViewArn",
    #       health_status: {
    #         status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #         status_reason: "BILLING_VIEW_NO_ACCESS" # One of: ["BILLING_VIEW_NO_ACCESS", "BILLING_VIEW_UNHEALTHY", "FILTER_INVALID", "MULTI_YEAR_HISTORICAL_DATA_DISABLED"],
    #         last_updated_time: Time.now
    #       }
    #     },
    #     notifications_with_subscribers: [
    #       {
    #         notification: { # required
    #           notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #           comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #           notification_state: "OK" # One of: ["OK", "ALARM"]
    #         },
    #         subscribers: [ # required
    #           {
    #             subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #             address: "SubscriberAddress", # required
    #           }
    #         ]
    #       }
    #     ],
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateBudgetResponse]
    def create_budget(params = {}, options = {})
      request = build_request(:create_budget, params)
      request.send_request(options)
    end

    # <p>
    #          Creates a budget action.
    #       </p>
    # @param [Hash, Types::CreateBudgetActionRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters, and the
    #   			"/action/" substring, aren't allowed.</p>
    # @option params [String] :notification_type
    #   <p> The type of a notification. It must be ACTUAL or FORECASTED.</p>
    # @option params [String] :action_type
    #   <p>
    #            The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition.
    #         </p>
    # @option params [Types::ActionThreshold] :action_threshold
    #   <p>The trigger threshold of the action. </p>
    # @option params [Types::Definition] :definition
    #   <p>Specifies all of the type-specific parameters. </p>
    # @option params [String] :execution_role_arn
    #   <p>
    #            The role passed for action execution and reversion. Roles and actions must be in the same account.
    #         </p>
    # @option params [String] :approval_model
    #   <p>
    #            This specifies if the action needs manual or automatic approval.
    #         </p>
    # @option params [Array<Types::Subscriber>] :subscribers
    #   <p> A list of subscribers.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified budget action. Each tag consists of a
    #            key and a value, and each key must be unique for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #     action_type: "APPLY_IAM_POLICY" # One of: ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"], # required
    #     action_threshold: { # required
    #       action_threshold_value: 1.0, # required
    #       action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #     },
    #     definition: { # required
    #       iam_action_definition: {
    #         policy_arn: "PolicyArn", # required
    #         roles: ["Role"],
    #         groups: ["Group"],
    #         users: ["User"]
    #       },
    #       scp_action_definition: {
    #         policy_id: "PolicyId", # required
    #         target_ids: ["TargetId"], # required
    #       },
    #       ssm_action_definition: {
    #         action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #         region: "Region", # required
    #         instance_ids: ["InstanceId"], # required
    #       }
    #     },
    #     execution_role_arn: "RoleArn", # required
    #     approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"], # required
    #     subscribers: [ # required
    #       {
    #         subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #         address: "SubscriberAddress", # required
    #       }
    #     ],
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_budget_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #   }
    # @return [Types::CreateBudgetActionResponse]
    def create_budget_action(params = {}, options = {})
      request = build_request(:create_budget_action, params)
      request.send_request(options)
    end

    # <p>Creates a notification. You must create the budget before you create the associated notification.</p>
    # @param [Hash, Types::CreateNotificationRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want to create a notification for.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget that you want Amazon Web Services to notify you about. Budget names must be unique within an account.</p>
    # @option params [Types::Notification] :notification
    #   <p>The notification that you want to create.</p>
    # @option params [Array<Types::Subscriber>] :subscribers
    #   <p>A list of subscribers that you want to associate with the notification. Each notification can have one SNS subscriber and up to 10 email subscribers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #       notification_state: "OK" # One of: ["OK", "ALARM"]
    #     },
    #     subscribers: [ # required
    #       {
    #         subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #         address: "SubscriberAddress", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateNotificationResponse]
    def create_notification(params = {}, options = {})
      request = build_request(:create_notification, params)
      request.send_request(options)
    end

    # <p>Creates a subscriber. You must create the associated budget and notification before you create the subscriber.</p>
    # @param [Hash, Types::CreateSubscriberRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want to create a subscriber for.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget that you want to subscribe to. Budget names must be unique within an account.</p>
    # @option params [Types::Notification] :notification
    #   <p>The notification that you want to create a subscriber for.</p>
    # @option params [Types::Subscriber] :subscriber
    #   <p>The subscriber that you want to associate with a budget notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #       notification_state: "OK" # One of: ["OK", "ALARM"]
    #     },
    #     subscriber: { # required
    #       subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #       address: "SubscriberAddress", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateSubscriberResponse]
    def create_subscriber(params = {}, options = {})
      request = build_request(:create_subscriber, params)
      request.send_request(options)
    end

    # <p>Deletes a budget. You can delete your budget at any time.</p>
    #          <important>
    #             <p>Deleting a budget also deletes the notifications and subscribers that are associated with that budget.</p>
    #          </important>
    # @param [Hash, Types::DeleteBudgetRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want to delete.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #   }
    #   options = {}
    #   response = client.delete_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBudgetResponse]
    def delete_budget(params = {}, options = {})
      request = build_request(:delete_budget, params)
      request.send_request(options)
    end

    # <p>
    #          Deletes a budget action.
    #       </p>
    # @param [Hash, Types::DeleteBudgetActionRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters, and the
    #   			"/action/" substring, aren't allowed.</p>
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #   }
    #   options = {}
    #   response = client.delete_budget_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action: { # required
    #       action_id: "ActionId", # required
    #       budget_name: "BudgetName", # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       action_type: "APPLY_IAM_POLICY" # One of: ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"], # required
    #       action_threshold: { # required
    #         action_threshold_value: 1.0, # required
    #         action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #       },
    #       definition: { # required
    #         iam_action_definition: {
    #           policy_arn: "PolicyArn", # required
    #           roles: ["Role"],
    #           groups: ["Group"],
    #           users: ["User"]
    #         },
    #         scp_action_definition: {
    #           policy_id: "PolicyId", # required
    #           target_ids: ["TargetId"], # required
    #         },
    #         ssm_action_definition: {
    #           action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #           region: "Region", # required
    #           instance_ids: ["InstanceId"], # required
    #         }
    #       },
    #       execution_role_arn: "RoleArn", # required
    #       approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"], # required
    #       status: "STANDBY" # One of: ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"], # required
    #       subscribers: [ # required
    #         {
    #           subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #           address: "SubscriberAddress", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteBudgetActionResponse]
    def delete_budget_action(params = {}, options = {})
      request = build_request(:delete_budget_action, params)
      request.send_request(options)
    end

    # <p>Deletes a notification.</p>
    #          <important>
    #             <p>Deleting a notification also deletes the subscribers that are associated with the notification.</p>
    #          </important>
    # @param [Hash, Types::DeleteNotificationRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose notification you want to delete.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget whose notification you want to delete.</p>
    # @option params [Types::Notification] :notification
    #   <p>The notification that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #       notification_state: "OK" # One of: ["OK", "ALARM"]
    #     }
    #   }
    #   options = {}
    #   response = client.delete_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNotificationResponse]
    def delete_notification(params = {}, options = {})
      request = build_request(:delete_notification, params)
      request.send_request(options)
    end

    # <p>Deletes a subscriber.</p>
    #          <important>
    #             <p>Deleting the last subscriber to a notification also deletes the notification.</p>
    #          </important>
    # @param [Hash, Types::DeleteSubscriberRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose subscriber you want to delete.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget whose subscriber you want to delete.</p>
    # @option params [Types::Notification] :notification
    #   <p>The notification whose subscriber you want to delete.</p>
    # @option params [Types::Subscriber] :subscriber
    #   <p>The subscriber that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #       notification_state: "OK" # One of: ["OK", "ALARM"]
    #     },
    #     subscriber: { # required
    #       subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #       address: "SubscriberAddress", # required
    #     }
    #   }
    #   options = {}
    #   response = client.delete_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSubscriberResponse]
    def delete_subscriber(params = {}, options = {})
      request = build_request(:delete_subscriber, params)
      request.send_request(options)
    end

    # <p>Describes a budget.</p>
    #          <important>
    #             <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For
    #                <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples">Examples</a> section.</p>
    #          </important>
    # @param [Hash, Types::DescribeBudgetRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want a description of.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget that you want a description of.</p>
    # @option params [Boolean] :show_filter_expression
    #   <p>Specifies whether the response includes the filter expression associated with the
    #            budget. By showing the filter expression, you can see detailed filtering logic applied to
    #            the budget, such as Amazon Web Services services or tags that are being tracked.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     show_filter_expression: false
    #   }
    #   options = {}
    #   response = client.describe_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     budget: {
    #       budget_name: "BudgetName", # required
    #       budget_limit: {
    #         amount: "NumericValue", # required
    #         unit: "UnitValue", # required
    #       },
    #       planned_budget_limits: {
    #         "GenericString" => {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         }
    #       },
    #       cost_filters: {
    #         "GenericString" => ["DimensionValue"]
    #       },
    #       cost_types: {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false
    #       },
    #       time_unit: "DAILY" # One of: ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY", "CUSTOM"], # required
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now
    #       },
    #       calculated_spend: {
    #         actual_spend: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         forecasted_spend: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         }
    #       },
    #       budget_type: "USAGE" # One of: ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"], # required
    #       last_updated_time: Time.now,
    #       auto_adjust_data: {
    #         auto_adjust_type: "HISTORICAL" # One of: ["HISTORICAL", "FORECAST"], # required
    #         historical_options: {
    #           budget_adjustment_period: 1, # required
    #           look_back_available_periods: 1
    #         },
    #         last_auto_adjust_time: Time.now
    #       },
    #       filter_expression: {
    #         or: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "INVOICING_ENTITY", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "RESERVATION_MODIFIED", "TAG_KEY", "COST_CATEGORY_NAME"], # required
    #           values: ["Value"], # required
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         }
    #       },
    #       metrics: ["BlendedCost" # One of: ["BlendedCost", "UnblendedCost", "AmortizedCost", "NetUnblendedCost", "NetAmortizedCost", "UsageQuantity", "NormalizedUsageAmount", "Hours"]],
    #       billing_view_arn: "BillingViewArn",
    #       health_status: {
    #         status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #         status_reason: "BILLING_VIEW_NO_ACCESS" # One of: ["BILLING_VIEW_NO_ACCESS", "BILLING_VIEW_UNHEALTHY", "FILTER_INVALID", "MULTI_YEAR_HISTORICAL_DATA_DISABLED"],
    #         last_updated_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::DescribeBudgetResponse]
    def describe_budget(params = {}, options = {})
      request = build_request(:describe_budget, params)
      request.send_request(options)
    end

    # <p>
    #          Describes a budget action detail.
    #       </p>
    # @param [Hash, Types::DescribeBudgetActionRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters, and the
    #   			"/action/" substring, aren't allowed.</p>
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #   }
    #   options = {}
    #   response = client.describe_budget_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action: { # required
    #       action_id: "ActionId", # required
    #       budget_name: "BudgetName", # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       action_type: "APPLY_IAM_POLICY" # One of: ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"], # required
    #       action_threshold: { # required
    #         action_threshold_value: 1.0, # required
    #         action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #       },
    #       definition: { # required
    #         iam_action_definition: {
    #           policy_arn: "PolicyArn", # required
    #           roles: ["Role"],
    #           groups: ["Group"],
    #           users: ["User"]
    #         },
    #         scp_action_definition: {
    #           policy_id: "PolicyId", # required
    #           target_ids: ["TargetId"], # required
    #         },
    #         ssm_action_definition: {
    #           action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #           region: "Region", # required
    #           instance_ids: ["InstanceId"], # required
    #         }
    #       },
    #       execution_role_arn: "RoleArn", # required
    #       approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"], # required
    #       status: "STANDBY" # One of: ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"], # required
    #       subscribers: [ # required
    #         {
    #           subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #           address: "SubscriberAddress", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeBudgetActionResponse]
    def describe_budget_action(params = {}, options = {})
      request = build_request(:describe_budget_action, params)
      request.send_request(options)
    end

    # <p>
    #          Describes a budget action history detail.
    #       </p>
    # @param [Hash, Types::DescribeBudgetActionHistoriesRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters, and the
    #   			"/action/" substring, aren't allowed.</p>
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    # @option params [Types::TimePeriod] :time_period
    #   <p>The period of time that's covered by a budget. The period has a start date and an end
    #   			date. The start date must come before the end date. There are no restrictions on the end
    #   			date. </p>
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many entries a paginated response contains. The
    #   			maximum is 100.</p>
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #     time_period: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.describe_budget_action_histories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_histories: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         status: "STANDBY" # One of: ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"], # required
    #         event_type: "SYSTEM" # One of: ["SYSTEM", "CREATE_ACTION", "DELETE_ACTION", "UPDATE_ACTION", "EXECUTE_ACTION"], # required
    #         action_history_details: { # required
    #           message: "GenericString", # required
    #           action: { # required
    #             action_id: "ActionId", # required
    #             budget_name: "BudgetName", # required
    #             notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #             action_type: "APPLY_IAM_POLICY" # One of: ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"], # required
    #             action_threshold: { # required
    #               action_threshold_value: 1.0, # required
    #               action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #             },
    #             definition: { # required
    #               iam_action_definition: {
    #                 policy_arn: "PolicyArn", # required
    #                 roles: ["Role"],
    #                 groups: ["Group"],
    #                 users: ["User"]
    #               },
    #               scp_action_definition: {
    #                 policy_id: "PolicyId", # required
    #                 target_ids: ["TargetId"], # required
    #               },
    #               ssm_action_definition: {
    #                 action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #                 region: "Region", # required
    #                 instance_ids: ["InstanceId"], # required
    #               }
    #             },
    #             execution_role_arn: "RoleArn", # required
    #             approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"], # required
    #             status: "STANDBY" # One of: ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"], # required
    #             subscribers: [ # required
    #               {
    #                 subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #                 address: "SubscriberAddress", # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeBudgetActionHistoriesResponse]
    def describe_budget_action_histories(params = {}, options = {})
      request = build_request(:describe_budget_action_histories, params)
      request.send_request(options)
    end

    # <p>
    #          Describes all of the budget actions for an account.
    #       </p>
    # @param [Hash, Types::DescribeBudgetActionsForAccountRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many entries a paginated response contains. The
    #   			maximum is 100.</p>
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.describe_budget_actions_for_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions: [ # required
    #       {
    #         action_id: "ActionId", # required
    #         budget_name: "BudgetName", # required
    #         notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #         action_type: "APPLY_IAM_POLICY" # One of: ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"], # required
    #         action_threshold: { # required
    #           action_threshold_value: 1.0, # required
    #           action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #         },
    #         definition: { # required
    #           iam_action_definition: {
    #             policy_arn: "PolicyArn", # required
    #             roles: ["Role"],
    #             groups: ["Group"],
    #             users: ["User"]
    #           },
    #           scp_action_definition: {
    #             policy_id: "PolicyId", # required
    #             target_ids: ["TargetId"], # required
    #           },
    #           ssm_action_definition: {
    #             action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #             region: "Region", # required
    #             instance_ids: ["InstanceId"], # required
    #           }
    #         },
    #         execution_role_arn: "RoleArn", # required
    #         approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"], # required
    #         status: "STANDBY" # One of: ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"], # required
    #         subscribers: [ # required
    #           {
    #             subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #             address: "SubscriberAddress", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeBudgetActionsForAccountResponse]
    def describe_budget_actions_for_account(params = {}, options = {})
      request = build_request(:describe_budget_actions_for_account, params)
      request.send_request(options)
    end

    # <p>
    #          Describes all of the budget actions for a budget.
    #       </p>
    # @param [Hash, Types::DescribeBudgetActionsForBudgetRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters, and the
    #   			"/action/" substring, aren't allowed.</p>
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many entries a paginated response contains. The
    #   			maximum is 100.</p>
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.describe_budget_actions_for_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions: [ # required
    #       {
    #         action_id: "ActionId", # required
    #         budget_name: "BudgetName", # required
    #         notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #         action_type: "APPLY_IAM_POLICY" # One of: ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"], # required
    #         action_threshold: { # required
    #           action_threshold_value: 1.0, # required
    #           action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #         },
    #         definition: { # required
    #           iam_action_definition: {
    #             policy_arn: "PolicyArn", # required
    #             roles: ["Role"],
    #             groups: ["Group"],
    #             users: ["User"]
    #           },
    #           scp_action_definition: {
    #             policy_id: "PolicyId", # required
    #             target_ids: ["TargetId"], # required
    #           },
    #           ssm_action_definition: {
    #             action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #             region: "Region", # required
    #             instance_ids: ["InstanceId"], # required
    #           }
    #         },
    #         execution_role_arn: "RoleArn", # required
    #         approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"], # required
    #         status: "STANDBY" # One of: ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"], # required
    #         subscribers: [ # required
    #           {
    #             subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #             address: "SubscriberAddress", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeBudgetActionsForBudgetResponse]
    def describe_budget_actions_for_budget(params = {}, options = {})
      request = build_request(:describe_budget_actions_for_budget, params)
      request.send_request(options)
    end

    # <p> Lists the budget names and notifications that are associated with an account. </p>
    # @param [Hash, Types::DescribeBudgetNotificationsForAccountRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many budgets a paginated response contains. The
    #   			default is 50. </p>
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.describe_budget_notifications_for_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     budget_notifications_for_account: [
    #       {
    #         notifications: [
    #           {
    #             notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #             comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #             threshold: 1.0, # required
    #             threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #             notification_state: "OK" # One of: ["OK", "ALARM"]
    #           }
    #         ],
    #         budget_name: "BudgetName"
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeBudgetNotificationsForAccountResponse]
    def describe_budget_notifications_for_account(params = {}, options = {})
      request = build_request(:describe_budget_notifications_for_account, params)
      request.send_request(options)
    end

    # <p>Describes the history for <code>DAILY</code>, <code>MONTHLY</code>, and <code>QUARTERLY</code> budgets. Budget history isn't available for <code>ANNUAL</code> budgets.</p>
    # @param [Hash, Types::DescribeBudgetPerformanceHistoryRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters, and the
    #   			"/action/" substring, aren't allowed.</p>
    # @option params [Types::TimePeriod] :time_period
    #   <p>Retrieves how often the budget went into an <code>ALARM</code> state for the specified time period.</p>
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many entries a paginated response contains. The
    #   			maximum is 100.</p>
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     time_period: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.describe_budget_performance_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     budget_performance_history: {
    #       budget_name: "BudgetName",
    #       budget_type: "USAGE" # One of: ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"],
    #       cost_filters: {
    #         "GenericString" => ["DimensionValue"]
    #       },
    #       cost_types: {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false
    #       },
    #       time_unit: "DAILY" # One of: ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY", "CUSTOM"],
    #       billing_view_arn: "BillingViewArn",
    #       budgeted_and_actual_amounts_list: [
    #         {
    #           budgeted_amount: {
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #           actual_amount: {
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #           time_period: {
    #             start: Time.now,
    #             end: Time.now
    #           }
    #         }
    #       ]
    #     },
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeBudgetPerformanceHistoryResponse]
    def describe_budget_performance_history(params = {}, options = {})
      request = build_request(:describe_budget_performance_history, params)
      request.send_request(options)
    end

    # <p>Lists the budgets that are associated with an account.</p>
    #          <important>
    #             <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For
    #                <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples">Examples</a> section.</p>
    #          </important>
    # @param [Hash, Types::DescribeBudgetsRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budgets that you want to
    #            describe.</p>
    # @option params [Integer] :max_results
    #   <p>An integer that represents how many budgets a paginated response contains. The default is
    #            100.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>
    # @option params [Boolean] :show_filter_expression
    #   <p>Specifies whether the response includes the filter expression associated with the
    #            budgets. By showing the filter expression, you can see detailed filtering logic applied to
    #            the budgets, such as Amazon Web Services services or tags that are being tracked.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #     show_filter_expression: false
    #   }
    #   options = {}
    #   response = client.describe_budgets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     budgets: [
    #       {
    #         budget_name: "BudgetName", # required
    #         budget_limit: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         planned_budget_limits: {
    #           "GenericString" => {
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           }
    #         },
    #         cost_filters: {
    #           "GenericString" => ["DimensionValue"]
    #         },
    #         cost_types: {
    #           include_tax: false,
    #           include_subscription: false,
    #           use_blended: false,
    #           include_refund: false,
    #           include_credit: false,
    #           include_upfront: false,
    #           include_recurring: false,
    #           include_other_subscription: false,
    #           include_support: false,
    #           include_discount: false,
    #           use_amortized: false
    #         },
    #         time_unit: "DAILY" # One of: ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY", "CUSTOM"], # required
    #         time_period: {
    #           start: Time.now,
    #           end: Time.now
    #         },
    #         calculated_spend: {
    #           actual_spend: { # required
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           },
    #           forecasted_spend: {
    #             amount: "NumericValue", # required
    #             unit: "UnitValue", # required
    #           }
    #         },
    #         budget_type: "USAGE" # One of: ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"], # required
    #         last_updated_time: Time.now,
    #         auto_adjust_data: {
    #           auto_adjust_type: "HISTORICAL" # One of: ["HISTORICAL", "FORECAST"], # required
    #           historical_options: {
    #             budget_adjustment_period: 1, # required
    #             look_back_available_periods: 1
    #           },
    #           last_auto_adjust_time: Time.now
    #         },
    #         filter_expression: {
    #           or: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "INVOICING_ENTITY", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "RESERVATION_MODIFIED", "TAG_KEY", "COST_CATEGORY_NAME"], # required
    #             values: ["Value"], # required
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #           }
    #         },
    #         metrics: ["BlendedCost" # One of: ["BlendedCost", "UnblendedCost", "AmortizedCost", "NetUnblendedCost", "NetAmortizedCost", "UsageQuantity", "NormalizedUsageAmount", "Hours"]],
    #         billing_view_arn: "BillingViewArn",
    #         health_status: {
    #           status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #           status_reason: "BILLING_VIEW_NO_ACCESS" # One of: ["BILLING_VIEW_NO_ACCESS", "BILLING_VIEW_UNHEALTHY", "FILTER_INVALID", "MULTI_YEAR_HISTORICAL_DATA_DISABLED"],
    #           last_updated_time: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeBudgetsResponse]
    def describe_budgets(params = {}, options = {})
      request = build_request(:describe_budgets, params)
      request.send_request(options)
    end

    # <p>Lists the notifications that are associated with a budget.</p>
    # @param [Hash, Types::DescribeNotificationsForBudgetRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose notifications you want
    #            descriptions of.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget whose notifications you want descriptions of.</p>
    # @option params [Integer] :max_results
    #   <p>An optional integer that represents how many entries a paginated response contains.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.describe_notifications_for_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notifications: [
    #       {
    #         notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #         comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #         threshold: 1.0, # required
    #         threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #         notification_state: "OK" # One of: ["OK", "ALARM"]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeNotificationsForBudgetResponse]
    def describe_notifications_for_budget(params = {}, options = {})
      request = build_request(:describe_notifications_for_budget, params)
      request.send_request(options)
    end

    # <p>Lists the subscribers that are associated with a notification.</p>
    # @param [Hash, Types::DescribeSubscribersForNotificationRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose subscribers you want descriptions of.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget whose subscribers you want descriptions of.</p>
    # @option params [Types::Notification] :notification
    #   <p>The notification whose subscribers you want to list.</p>
    # @option params [Integer] :max_results
    #   <p>An optional integer that represents how many entries a paginated response contains.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #       notification_state: "OK" # One of: ["OK", "ALARM"]
    #     },
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.describe_subscribers_for_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscribers: [
    #       {
    #         subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #         address: "SubscriberAddress", # required
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeSubscribersForNotificationResponse]
    def describe_subscribers_for_notification(params = {}, options = {})
      request = build_request(:describe_subscribers_for_notification, params)
      request.send_request(options)
    end

    # <p>
    #          Executes a budget action.
    #       </p>
    # @param [Hash, Types::ExecuteBudgetActionRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters, and the
    #   			"/action/" substring, aren't allowed.</p>
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    # @option params [String] :execution_type
    #   <p>
    #            The type of execution.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #     execution_type: "APPROVE_BUDGET_ACTION" # One of: ["APPROVE_BUDGET_ACTION", "RETRY_BUDGET_ACTION", "REVERSE_BUDGET_ACTION", "RESET_BUDGET_ACTION"], # required
    #   }
    #   options = {}
    #   response = client.execute_budget_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #     execution_type: "APPROVE_BUDGET_ACTION" # One of: ["APPROVE_BUDGET_ACTION", "RETRY_BUDGET_ACTION", "REVERSE_BUDGET_ACTION", "RESET_BUDGET_ACTION"], # required
    #   }
    # @return [Types::ExecuteBudgetActionResponse]
    def execute_budget_action(params = {}, options = {})
      request = build_request(:execute_budget_action, params)
      request.send_request(options)
    end

    # <p>Lists tags associated with a budget or budget action resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates tags for a budget or budget action resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>The tags associated with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes tags associated with a budget or budget action resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @option params [Array<String>] :resource_tag_keys
    #   <p>The key that's associated with the tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     resource_tag_keys: ["ResourceTagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a budget. You can change every part of a budget except for the <code>budgetName</code> and the <code>calculatedSpend</code>. When you modify a budget, the <code>calculatedSpend</code> drops to zero until Amazon Web Services has new usage data to use for forecasting.</p>
    #          <important>
    #             <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in
    #             the syntax at one time. Use the syntax that matches your case. The Request Syntax
    #             section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>,
    #             see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples">Examples</a> section.</p>
    #             <p>Similarly, only one set of filter and metric selections can be present in the syntax
    #             at one time. Either <code>FilterExpression</code> and <code>Metrics</code> or
    #                <code>CostFilters</code> and <code>CostTypes</code>, not both or a different
    #             combination. We recommend using <code>FilterExpression</code> and <code>Metrics</code>
    #             as they provide more flexible and powerful filtering capabilities. The Request Syntax
    #             section shows the <code>FilterExpression</code>/<code>Metrics</code> syntax.</p>
    #          </important>
    # @param [Hash, Types::UpdateBudgetRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want to update.</p>
    # @option params [Types::Budget] :new_budget
    #   <p>The budget that you want to update your budget to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     new_budget: { # required
    #       budget_name: "BudgetName", # required
    #       budget_limit: {
    #         amount: "NumericValue", # required
    #         unit: "UnitValue", # required
    #       },
    #       planned_budget_limits: {
    #         "GenericString" => {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         }
    #       },
    #       cost_filters: {
    #         "GenericString" => ["DimensionValue"]
    #       },
    #       cost_types: {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false
    #       },
    #       time_unit: "DAILY" # One of: ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY", "CUSTOM"], # required
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now
    #       },
    #       calculated_spend: {
    #         actual_spend: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         forecasted_spend: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         }
    #       },
    #       budget_type: "USAGE" # One of: ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"], # required
    #       last_updated_time: Time.now,
    #       auto_adjust_data: {
    #         auto_adjust_type: "HISTORICAL" # One of: ["HISTORICAL", "FORECAST"], # required
    #         historical_options: {
    #           budget_adjustment_period: 1, # required
    #           look_back_available_periods: 1
    #         },
    #         last_auto_adjust_time: Time.now
    #       },
    #       filter_expression: {
    #         or: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "INVOICING_ENTITY", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "RESERVATION_MODIFIED", "TAG_KEY", "COST_CATEGORY_NAME"], # required
    #           values: ["Value"], # required
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #         }
    #       },
    #       metrics: ["BlendedCost" # One of: ["BlendedCost", "UnblendedCost", "AmortizedCost", "NetUnblendedCost", "NetAmortizedCost", "UsageQuantity", "NormalizedUsageAmount", "Hours"]],
    #       billing_view_arn: "BillingViewArn",
    #       health_status: {
    #         status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #         status_reason: "BILLING_VIEW_NO_ACCESS" # One of: ["BILLING_VIEW_NO_ACCESS", "BILLING_VIEW_UNHEALTHY", "FILTER_INVALID", "MULTI_YEAR_HISTORICAL_DATA_DISABLED"],
    #         last_updated_time: Time.now
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateBudgetResponse]
    def update_budget(params = {}, options = {})
      request = build_request(:update_budget, params)
      request.send_request(options)
    end

    # <p>
    #          Updates a budget action.
    #       </p>
    # @param [Hash, Types::UpdateBudgetActionRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters, and the
    #   			"/action/" substring, aren't allowed.</p>
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    # @option params [String] :notification_type
    #   <p> The type of a notification. It must be ACTUAL or FORECASTED.</p>
    # @option params [Types::ActionThreshold] :action_threshold
    #   <p>The trigger threshold of the action. </p>
    # @option params [Types::Definition] :definition
    #   <p>Specifies all of the type-specific parameters. </p>
    # @option params [String] :execution_role_arn
    #   <p>
    #            The role passed for action execution and reversion. Roles and actions must be in the same account.
    #         </p>
    # @option params [String] :approval_model
    #   <p>
    #            This specifies if the action needs manual or automatic approval.
    #         </p>
    # @option params [Array<Types::Subscriber>] :subscribers
    #   <p> A list of subscribers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #     notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"],
    #     action_threshold: {
    #       action_threshold_value: 1.0, # required
    #       action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #     },
    #     definition: {
    #       iam_action_definition: {
    #         policy_arn: "PolicyArn", # required
    #         roles: ["Role"],
    #         groups: ["Group"],
    #         users: ["User"]
    #       },
    #       scp_action_definition: {
    #         policy_id: "PolicyId", # required
    #         target_ids: ["TargetId"], # required
    #       },
    #       ssm_action_definition: {
    #         action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #         region: "Region", # required
    #         instance_ids: ["InstanceId"], # required
    #       }
    #     },
    #     execution_role_arn: "RoleArn",
    #     approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #     subscribers: [
    #       {
    #         subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #         address: "SubscriberAddress", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_budget_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     old_action: { # required
    #       action_id: "ActionId", # required
    #       budget_name: "BudgetName", # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       action_type: "APPLY_IAM_POLICY" # One of: ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"], # required
    #       action_threshold: { # required
    #         action_threshold_value: 1.0, # required
    #         action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #       },
    #       definition: { # required
    #         iam_action_definition: {
    #           policy_arn: "PolicyArn", # required
    #           roles: ["Role"],
    #           groups: ["Group"],
    #           users: ["User"]
    #         },
    #         scp_action_definition: {
    #           policy_id: "PolicyId", # required
    #           target_ids: ["TargetId"], # required
    #         },
    #         ssm_action_definition: {
    #           action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #           region: "Region", # required
    #           instance_ids: ["InstanceId"], # required
    #         }
    #       },
    #       execution_role_arn: "RoleArn", # required
    #       approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"], # required
    #       status: "STANDBY" # One of: ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"], # required
    #       subscribers: [ # required
    #         {
    #           subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #           address: "SubscriberAddress", # required
    #         }
    #       ]
    #     },
    #     new_action: { # required
    #       action_id: "ActionId", # required
    #       budget_name: "BudgetName", # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       action_type: "APPLY_IAM_POLICY" # One of: ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"], # required
    #       action_threshold: { # required
    #         action_threshold_value: 1.0, # required
    #         action_threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"], # required
    #       },
    #       definition: { # required
    #         iam_action_definition: {
    #           policy_arn: "PolicyArn", # required
    #           roles: ["Role"],
    #           groups: ["Group"],
    #           users: ["User"]
    #         },
    #         scp_action_definition: {
    #           policy_id: "PolicyId", # required
    #           target_ids: ["TargetId"], # required
    #         },
    #         ssm_action_definition: {
    #           action_sub_type: "STOP_EC2_INSTANCES" # One of: ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"], # required
    #           region: "Region", # required
    #           instance_ids: ["InstanceId"], # required
    #         }
    #       },
    #       execution_role_arn: "RoleArn", # required
    #       approval_model: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"], # required
    #       status: "STANDBY" # One of: ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"], # required
    #       subscribers: [ # required
    #         {
    #           subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #           address: "SubscriberAddress", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateBudgetActionResponse]
    def update_budget_action(params = {}, options = {})
      request = build_request(:update_budget_action, params)
      request.send_request(options)
    end

    # <p>Updates a notification.</p>
    # @param [Hash, Types::UpdateNotificationRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose notification you want to update.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget whose notification you want to update.</p>
    # @option params [Types::Notification] :old_notification
    #   <p>The previous notification that is associated with a budget.</p>
    # @option params [Types::Notification] :new_notification
    #   <p>The updated notification to be associated with a budget.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     old_notification: { # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #       notification_state: "OK" # One of: ["OK", "ALARM"]
    #     },
    #     new_notification: { # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #       notification_state: "OK" # One of: ["OK", "ALARM"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNotificationResponse]
    def update_notification(params = {}, options = {})
      request = build_request(:update_notification, params)
      request.send_request(options)
    end

    # <p>Updates a subscriber.</p>
    # @param [Hash, Types::UpdateSubscriberRequest] params
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose subscriber you want to update.</p>
    # @option params [String] :budget_name
    #   <p>The name of the budget whose subscriber you want to update.</p>
    # @option params [Types::Notification] :notification
    #   <p>The notification whose subscriber you want to update.</p>
    # @option params [Types::Subscriber] :old_subscriber
    #   <p>The previous subscriber that is associated with a budget notification.</p>
    # @option params [Types::Subscriber] :new_subscriber
    #   <p>The updated subscriber that is associated with a budget notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL" # One of: ["ACTUAL", "FORECASTED"], # required
    #       comparison_operator: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], # required
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE" # One of: ["PERCENTAGE", "ABSOLUTE_VALUE"],
    #       notification_state: "OK" # One of: ["OK", "ALARM"]
    #     },
    #     old_subscriber: { # required
    #       subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #       address: "SubscriberAddress", # required
    #     },
    #     new_subscriber: { # required
    #       subscription_type: "SNS" # One of: ["SNS", "EMAIL"], # required
    #       address: "SubscriberAddress", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSubscriberResponse]
    def update_subscriber(params = {}, options = {})
      request = build_request(:update_subscriber, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-budgets'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
