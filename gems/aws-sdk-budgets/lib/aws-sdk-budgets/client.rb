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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:budgets)

module Aws::Budgets
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :budgets

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a budget and, if included, notifications and subscribers.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget.
    #
    # @option params [required, Types::Budget] :budget
    #   The budget object that you want to create.
    #
    # @option params [Array<Types::NotificationWithSubscribers>] :notifications_with_subscribers
    #   A notification that you want to associate with a budget. A budget can
    #   have up to five notifications, and each notification can have one SNS
    #   subscriber and up to ten email subscribers. If you include
    #   notifications and subscribers in your `CreateBudget` call, AWS creates
    #   the notifications and subscribers for you.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_budget({
    #     account_id: "AccountId", # required
    #     budget: { # required
    #       budget_name: "BudgetName", # required
    #       budget_limit: {
    #         amount: "NumericValue", # required
    #         unit: "UnitValue", # required
    #       },
    #       cost_filters: {
    #         "GenericString" => ["GenericString"],
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
    #         use_amortized: false,
    #       },
    #       time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now,
    #       },
    #       calculated_spend: {
    #         actual_spend: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         forecasted_spend: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #       },
    #       budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION, RI_COVERAGE
    #     },
    #     notifications_with_subscribers: [
    #       {
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #         },
    #         subscribers: [ # required
    #           {
    #             subscription_type: "SNS", # required, accepts SNS, EMAIL
    #             address: "SubscriberAddress", # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @overload create_budget(params = {})
    # @param [Hash] params ({})
    def create_budget(params = {}, options = {})
      req = build_request(:create_budget, params)
      req.send_request(options)
    end

    # Creates a notification. You must create the budget before you create
    # the associated notification.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want to
    #   create a notification for.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget that you want AWS to notified you about. Budget
    #   names must be unique within an account.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification that you want to create.
    #
    # @option params [required, Array<Types::Subscriber>] :subscribers
    #   A list of subscribers that you want to associate with the
    #   notification. Each notification can have one SNS subscriber and up to
    #   ten email subscribers.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #     subscribers: [ # required
    #       {
    #         subscription_type: "SNS", # required, accepts SNS, EMAIL
    #         address: "SubscriberAddress", # required
    #       },
    #     ],
    #   })
    #
    # @overload create_notification(params = {})
    # @param [Hash] params ({})
    def create_notification(params = {}, options = {})
      req = build_request(:create_notification, params)
      req.send_request(options)
    end

    # Creates a subscriber. You must create the associated budget and
    # notification before you create the subscriber.
    #
    # @option params [required, String] :account_id
    #   The `accountId` associated with the budget that you want to create a
    #   subscriber for.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget that you want to subscribe to. Budget names
    #   must be unique within an account.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification that you want to create a subscriber for.
    #
    # @option params [required, Types::Subscriber] :subscriber
    #   The subscriber that you want to associate with a budget notification.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscriber({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #     subscriber: { # required
    #       subscription_type: "SNS", # required, accepts SNS, EMAIL
    #       address: "SubscriberAddress", # required
    #     },
    #   })
    #
    # @overload create_subscriber(params = {})
    # @param [Hash] params ({})
    def create_subscriber(params = {}, options = {})
      req = build_request(:create_subscriber, params)
      req.send_request(options)
    end

    # Deletes a budget. You can delete your budget at any time.
    #
    # **Deleting a budget also deletes the notifications and subscribers
    # associated with that budget.**
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want to
    #   delete.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_budget({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #   })
    #
    # @overload delete_budget(params = {})
    # @param [Hash] params ({})
    def delete_budget(params = {}, options = {})
      req = build_request(:delete_budget, params)
      req.send_request(options)
    end

    # Deletes a notification.
    #
    # **Deleting a notification also deletes the subscribers associated with
    # the notification.**
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose notification
    #   you want to delete.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose notification you want to delete.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #   })
    #
    # @overload delete_notification(params = {})
    # @param [Hash] params ({})
    def delete_notification(params = {}, options = {})
      req = build_request(:delete_notification, params)
      req.send_request(options)
    end

    # Deletes a subscriber.
    #
    # **Deleting the last subscriber to a notification also deletes the
    # notification.**
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose subscriber
    #   you want to delete.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose subscriber you want to delete.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification whose subscriber you want to delete.
    #
    # @option params [required, Types::Subscriber] :subscriber
    #   The subscriber that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscriber({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #     subscriber: { # required
    #       subscription_type: "SNS", # required, accepts SNS, EMAIL
    #       address: "SubscriberAddress", # required
    #     },
    #   })
    #
    # @overload delete_subscriber(params = {})
    # @param [Hash] params ({})
    def delete_subscriber(params = {}, options = {})
      req = build_request(:delete_subscriber, params)
      req.send_request(options)
    end

    # Describes a budget.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want a
    #   description of.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget that you want a description of.
    #
    # @return [Types::DescribeBudgetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetResponse#budget #budget} => Types::Budget
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.budget.budget_name #=> String
    #   resp.budget.budget_limit.amount #=> String
    #   resp.budget.budget_limit.unit #=> String
    #   resp.budget.cost_filters #=> Hash
    #   resp.budget.cost_filters["GenericString"] #=> Array
    #   resp.budget.cost_filters["GenericString"][0] #=> String
    #   resp.budget.cost_types.include_tax #=> Boolean
    #   resp.budget.cost_types.include_subscription #=> Boolean
    #   resp.budget.cost_types.use_blended #=> Boolean
    #   resp.budget.cost_types.include_refund #=> Boolean
    #   resp.budget.cost_types.include_credit #=> Boolean
    #   resp.budget.cost_types.include_upfront #=> Boolean
    #   resp.budget.cost_types.include_recurring #=> Boolean
    #   resp.budget.cost_types.include_other_subscription #=> Boolean
    #   resp.budget.cost_types.include_support #=> Boolean
    #   resp.budget.cost_types.include_discount #=> Boolean
    #   resp.budget.cost_types.use_amortized #=> Boolean
    #   resp.budget.time_unit #=> String, one of "DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"
    #   resp.budget.time_period.start #=> Time
    #   resp.budget.time_period.end #=> Time
    #   resp.budget.calculated_spend.actual_spend.amount #=> String
    #   resp.budget.calculated_spend.actual_spend.unit #=> String
    #   resp.budget.calculated_spend.forecasted_spend.amount #=> String
    #   resp.budget.calculated_spend.forecasted_spend.unit #=> String
    #   resp.budget.budget_type #=> String, one of "USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE"
    #
    # @overload describe_budget(params = {})
    # @param [Hash] params ({})
    def describe_budget(params = {}, options = {})
      req = build_request(:describe_budget, params)
      req.send_request(options)
    end

    # Lists the budgets associated with an account.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budgets that you want
    #   descriptions of.
    #
    # @option params [Integer] :max_results
    #   Optional integer. Specifies the maximum number of results to return in
    #   response.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::DescribeBudgetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetsResponse#budgets #budgets} => Array&lt;Types::Budget&gt;
    #   * {Types::DescribeBudgetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budgets({
    #     account_id: "AccountId", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.budgets #=> Array
    #   resp.budgets[0].budget_name #=> String
    #   resp.budgets[0].budget_limit.amount #=> String
    #   resp.budgets[0].budget_limit.unit #=> String
    #   resp.budgets[0].cost_filters #=> Hash
    #   resp.budgets[0].cost_filters["GenericString"] #=> Array
    #   resp.budgets[0].cost_filters["GenericString"][0] #=> String
    #   resp.budgets[0].cost_types.include_tax #=> Boolean
    #   resp.budgets[0].cost_types.include_subscription #=> Boolean
    #   resp.budgets[0].cost_types.use_blended #=> Boolean
    #   resp.budgets[0].cost_types.include_refund #=> Boolean
    #   resp.budgets[0].cost_types.include_credit #=> Boolean
    #   resp.budgets[0].cost_types.include_upfront #=> Boolean
    #   resp.budgets[0].cost_types.include_recurring #=> Boolean
    #   resp.budgets[0].cost_types.include_other_subscription #=> Boolean
    #   resp.budgets[0].cost_types.include_support #=> Boolean
    #   resp.budgets[0].cost_types.include_discount #=> Boolean
    #   resp.budgets[0].cost_types.use_amortized #=> Boolean
    #   resp.budgets[0].time_unit #=> String, one of "DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"
    #   resp.budgets[0].time_period.start #=> Time
    #   resp.budgets[0].time_period.end #=> Time
    #   resp.budgets[0].calculated_spend.actual_spend.amount #=> String
    #   resp.budgets[0].calculated_spend.actual_spend.unit #=> String
    #   resp.budgets[0].calculated_spend.forecasted_spend.amount #=> String
    #   resp.budgets[0].calculated_spend.forecasted_spend.unit #=> String
    #   resp.budgets[0].budget_type #=> String, one of "USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE"
    #   resp.next_token #=> String
    #
    # @overload describe_budgets(params = {})
    # @param [Hash] params ({})
    def describe_budgets(params = {}, options = {})
      req = build_request(:describe_budgets, params)
      req.send_request(options)
    end

    # Lists the notifications associated with a budget.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose notifications
    #   you want descriptions of.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose notifications you want descriptions of.
    #
    # @option params [Integer] :max_results
    #   Optional integer. Specifies the maximum number of results to return in
    #   response.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::DescribeNotificationsForBudgetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotificationsForBudgetResponse#notifications #notifications} => Array&lt;Types::Notification&gt;
    #   * {Types::DescribeNotificationsForBudgetResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notifications_for_budget({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.notifications #=> Array
    #   resp.notifications[0].notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.notifications[0].comparison_operator #=> String, one of "GREATER_THAN", "LESS_THAN", "EQUAL_TO"
    #   resp.notifications[0].threshold #=> Float
    #   resp.notifications[0].threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.next_token #=> String
    #
    # @overload describe_notifications_for_budget(params = {})
    # @param [Hash] params ({})
    def describe_notifications_for_budget(params = {}, options = {})
      req = build_request(:describe_notifications_for_budget, params)
      req.send_request(options)
    end

    # Lists the subscribers associated with a notification.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose subscribers
    #   you want descriptions of.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose subscribers you want descriptions of.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification whose subscribers you want to list.
    #
    # @option params [Integer] :max_results
    #   Optional integer. Specifies the maximum number of results to return in
    #   response.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::DescribeSubscribersForNotificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubscribersForNotificationResponse#subscribers #subscribers} => Array&lt;Types::Subscriber&gt;
    #   * {Types::DescribeSubscribersForNotificationResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscribers_for_notification({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscribers #=> Array
    #   resp.subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.subscribers[0].address #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_subscribers_for_notification(params = {})
    # @param [Hash] params ({})
    def describe_subscribers_for_notification(params = {}, options = {})
      req = build_request(:describe_subscribers_for_notification, params)
      req.send_request(options)
    end

    # Updates a budget. You can change every part of a budget except for the
    # `budgetName` and the `calculatedSpend`. When a budget is modified, the
    # `calculatedSpend` drops to zero until AWS has new usage data to use
    # for forecasting.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want to
    #   update.
    #
    # @option params [required, Types::Budget] :new_budget
    #   The budget that you want to update your budget to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_budget({
    #     account_id: "AccountId", # required
    #     new_budget: { # required
    #       budget_name: "BudgetName", # required
    #       budget_limit: {
    #         amount: "NumericValue", # required
    #         unit: "UnitValue", # required
    #       },
    #       cost_filters: {
    #         "GenericString" => ["GenericString"],
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
    #         use_amortized: false,
    #       },
    #       time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now,
    #       },
    #       calculated_spend: {
    #         actual_spend: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         forecasted_spend: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #       },
    #       budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION, RI_COVERAGE
    #     },
    #   })
    #
    # @overload update_budget(params = {})
    # @param [Hash] params ({})
    def update_budget(params = {}, options = {})
      req = build_request(:update_budget, params)
      req.send_request(options)
    end

    # Updates a notification.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose notification
    #   you want to update.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose notification you want to update.
    #
    # @option params [required, Types::Notification] :old_notification
    #   The previous notification associated with a budget.
    #
    # @option params [required, Types::Notification] :new_notification
    #   The updated notification to be associated with a budget.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     old_notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #     new_notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #   })
    #
    # @overload update_notification(params = {})
    # @param [Hash] params ({})
    def update_notification(params = {}, options = {})
      req = build_request(:update_notification, params)
      req.send_request(options)
    end

    # Updates a subscriber.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose subscriber
    #   you want to update.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose subscriber you want to update.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification whose subscriber you want to update.
    #
    # @option params [required, Types::Subscriber] :old_subscriber
    #   The previous subscriber associated with a budget notification.
    #
    # @option params [required, Types::Subscriber] :new_subscriber
    #   The updated subscriber associated with a budget notification.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscriber({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #     old_subscriber: { # required
    #       subscription_type: "SNS", # required, accepts SNS, EMAIL
    #       address: "SubscriberAddress", # required
    #     },
    #     new_subscriber: { # required
    #       subscription_type: "SNS", # required, accepts SNS, EMAIL
    #       address: "SubscriberAddress", # required
    #     },
    #   })
    #
    # @overload update_subscriber(params = {})
    # @param [Hash] params ({})
    def update_subscriber(params = {}, options = {})
      req = build_request(:update_subscriber, params)
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
      context[:gem_name] = 'aws-sdk-budgets'
      context[:gem_version] = '1.10.0'
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
