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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchevents)

module Aws::CloudWatchEvents
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cloudwatchevents

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

    # Deletes the specified rule.
    #
    # Before you can delete the rule, you must remove all targets, using
    # RemoveTargets.
    #
    # When you delete a rule, incoming events might continue to match to the
    # deleted rule. Allow a short period of time for changes to take effect.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     name: "RuleName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Displays the external AWS accounts that are permitted to write events
    # to your account using your account's event bus, and the associated
    # policy. To enable your account to receive events from other accounts,
    # use PutPermission.
    #
    # @return [Types::DescribeEventBusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventBusResponse#name #name} => String
    #   * {Types::DescribeEventBusResponse#arn #arn} => String
    #   * {Types::DescribeEventBusResponse#policy #policy} => String
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventBus AWS API Documentation
    #
    # @overload describe_event_bus(params = {})
    # @param [Hash] params ({})
    def describe_event_bus(params = {}, options = {})
      req = build_request(:describe_event_bus, params)
      req.send_request(options)
    end

    # Describes the specified rule.
    #
    # DescribeRule does not list the targets of a rule. To see the targets
    # associated with a rule, use ListTargetsByRule.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @return [Types::DescribeRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuleResponse#name #name} => String
    #   * {Types::DescribeRuleResponse#arn #arn} => String
    #   * {Types::DescribeRuleResponse#event_pattern #event_pattern} => String
    #   * {Types::DescribeRuleResponse#schedule_expression #schedule_expression} => String
    #   * {Types::DescribeRuleResponse#state #state} => String
    #   * {Types::DescribeRuleResponse#description #description} => String
    #   * {Types::DescribeRuleResponse#role_arn #role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule({
    #     name: "RuleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.event_pattern #=> String
    #   resp.schedule_expression #=> String
    #   resp.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRule AWS API Documentation
    #
    # @overload describe_rule(params = {})
    # @param [Hash] params ({})
    def describe_rule(params = {}, options = {})
      req = build_request(:describe_rule, params)
      req.send_request(options)
    end

    # Disables the specified rule. A disabled rule won't match any events,
    # and won't self-trigger if it has a schedule expression.
    #
    # When you disable a rule, incoming events might continue to match to
    # the disabled rule. Allow a short period of time for changes to take
    # effect.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_rule({
    #     name: "RuleName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DisableRule AWS API Documentation
    #
    # @overload disable_rule(params = {})
    # @param [Hash] params ({})
    def disable_rule(params = {}, options = {})
      req = build_request(:disable_rule, params)
      req.send_request(options)
    end

    # Enables the specified rule. If the rule does not exist, the operation
    # fails.
    #
    # When you enable a rule, incoming events might not immediately start
    # matching to a newly enabled rule. Allow a short period of time for
    # changes to take effect.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_rule({
    #     name: "RuleName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EnableRule AWS API Documentation
    #
    # @overload enable_rule(params = {})
    # @param [Hash] params ({})
    def enable_rule(params = {}, options = {})
      req = build_request(:enable_rule, params)
      req.send_request(options)
    end

    # Lists the rules for the specified target. You can see which of the
    # rules in Amazon CloudWatch Events can invoke a specific target in your
    # account.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) of the target resource.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return.
    #
    # @return [Types::ListRuleNamesByTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleNamesByTargetResponse#rule_names #rule_names} => Array&lt;String&gt;
    #   * {Types::ListRuleNamesByTargetResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_names_by_target({
    #     target_arn: "TargetArn", # required
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_names #=> Array
    #   resp.rule_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTarget AWS API Documentation
    #
    # @overload list_rule_names_by_target(params = {})
    # @param [Hash] params ({})
    def list_rule_names_by_target(params = {}, options = {})
      req = build_request(:list_rule_names_by_target, params)
      req.send_request(options)
    end

    # Lists your Amazon CloudWatch Events rules. You can either list all the
    # rules or you can provide a prefix to match to the rule names.
    #
    # ListRules does not list the targets of a rule. To see the targets
    # associated with a rule, use ListTargetsByRule.
    #
    # @option params [String] :name_prefix
    #   The prefix matching the rule name.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return.
    #
    # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesResponse#rules #rules} => Array&lt;Types::Rule&gt;
    #   * {Types::ListRulesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     name_prefix: "RuleName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].name #=> String
    #   resp.rules[0].arn #=> String
    #   resp.rules[0].event_pattern #=> String
    #   resp.rules[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.rules[0].description #=> String
    #   resp.rules[0].schedule_expression #=> String
    #   resp.rules[0].role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # Lists the targets assigned to the specified rule.
    #
    # @option params [required, String] :rule
    #   The name of the rule.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return.
    #
    # @return [Types::ListTargetsByRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsByRuleResponse#targets #targets} => Array&lt;Types::Target&gt;
    #   * {Types::ListTargetsByRuleResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_by_rule({
    #     rule: "RuleName", # required
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0].id #=> String
    #   resp.targets[0].arn #=> String
    #   resp.targets[0].role_arn #=> String
    #   resp.targets[0].input #=> String
    #   resp.targets[0].input_path #=> String
    #   resp.targets[0].input_transformer.input_paths_map #=> Hash
    #   resp.targets[0].input_transformer.input_paths_map["InputTransformerPathKey"] #=> String
    #   resp.targets[0].input_transformer.input_template #=> String
    #   resp.targets[0].kinesis_parameters.partition_key_path #=> String
    #   resp.targets[0].run_command_parameters.run_command_targets #=> Array
    #   resp.targets[0].run_command_parameters.run_command_targets[0].key #=> String
    #   resp.targets[0].run_command_parameters.run_command_targets[0].values #=> Array
    #   resp.targets[0].run_command_parameters.run_command_targets[0].values[0] #=> String
    #   resp.targets[0].ecs_parameters.task_definition_arn #=> String
    #   resp.targets[0].ecs_parameters.task_count #=> Integer
    #   resp.targets[0].ecs_parameters.launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.targets[0].ecs_parameters.platform_version #=> String
    #   resp.targets[0].ecs_parameters.group #=> String
    #   resp.targets[0].batch_parameters.job_definition #=> String
    #   resp.targets[0].batch_parameters.job_name #=> String
    #   resp.targets[0].batch_parameters.array_properties.size #=> Integer
    #   resp.targets[0].batch_parameters.retry_strategy.attempts #=> Integer
    #   resp.targets[0].sqs_parameters.message_group_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRule AWS API Documentation
    #
    # @overload list_targets_by_rule(params = {})
    # @param [Hash] params ({})
    def list_targets_by_rule(params = {}, options = {})
      req = build_request(:list_targets_by_rule, params)
      req.send_request(options)
    end

    # Sends custom events to Amazon CloudWatch Events so that they can be
    # matched to rules.
    #
    # @option params [required, Array<Types::PutEventsRequestEntry>] :entries
    #   The entry that defines an event in your system. You can specify
    #   several parameters for the entry such as the source and type of the
    #   event, resources associated with the event, and so on.
    #
    # @return [Types::PutEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::PutEventsResponse#entries #entries} => Array&lt;Types::PutEventsResultEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events({
    #     entries: [ # required
    #       {
    #         time: Time.now,
    #         source: "String",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.entries #=> Array
    #   resp.entries[0].event_id #=> String
    #   resp.entries[0].error_code #=> String
    #   resp.entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEvents AWS API Documentation
    #
    # @overload put_events(params = {})
    # @param [Hash] params ({})
    def put_events(params = {}, options = {})
      req = build_request(:put_events, params)
      req.send_request(options)
    end

    # Running `PutPermission` permits the specified AWS account to put
    # events to your account's default *event bus*. CloudWatch Events rules
    # in your account are triggered by these events arriving to your default
    # event bus.
    #
    # For another account to send events to your account, that external
    # account must have a CloudWatch Events rule with your account's
    # default event bus as a target.
    #
    # To enable multiple AWS accounts to put events to your default event
    # bus, run `PutPermission` once for each of these accounts.
    #
    # The permission policy on the default event bus cannot exceed 10 KB in
    # size.
    #
    # @option params [required, String] :action
    #   The action that you are enabling the other account to perform.
    #   Currently, this must be `events:PutEvents`.
    #
    # @option params [required, String] :principal
    #   The 12-digit AWS account ID that you are permitting to put events to
    #   your default event bus. Specify "*" to permit any account to put
    #   events to your default event bus.
    #
    #   If you specify "*", avoid creating rules that may match undesirable
    #   events. To create more secure rules, make sure that the event pattern
    #   for each rule contains an `account` field with a specific account ID
    #   from which to receive events. Rules with an account field do not match
    #   any events sent from other accounts.
    #
    # @option params [required, String] :statement_id
    #   An identifier string for the external account that you are granting
    #   permissions to. If you later want to revoke the permission for this
    #   external account, specify this `StatementId` when you run
    #   RemovePermission.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_permission({
    #     action: "Action", # required
    #     principal: "Principal", # required
    #     statement_id: "StatementId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPermission AWS API Documentation
    #
    # @overload put_permission(params = {})
    # @param [Hash] params ({})
    def put_permission(params = {}, options = {})
      req = build_request(:put_permission, params)
      req.send_request(options)
    end

    # Creates or updates the specified rule. Rules are enabled by default,
    # or based on value of the state. You can disable a rule using
    # DisableRule.
    #
    # If you are updating an existing rule, the rule is replaced with what
    # you specify in this `PutRule` command. If you omit arguments in
    # `PutRule`, the old values for those arguments are not kept. Instead,
    # they are replaced with null values.
    #
    # When you create or update a rule, incoming events might not
    # immediately start matching to new or updated rules. Allow a short
    # period of time for changes to take effect.
    #
    # A rule must contain at least an EventPattern or ScheduleExpression.
    # Rules with EventPatterns are triggered when a matching event is
    # observed. Rules with ScheduleExpressions self-trigger based on the
    # given schedule. A rule can have both an EventPattern and a
    # ScheduleExpression, in which case the rule triggers on matching events
    # as well as on a schedule.
    #
    # Most services in AWS treat : or / as the same character in Amazon
    # Resource Names (ARNs). However, CloudWatch Events uses an exact match
    # in event patterns and rules. Be sure to use the correct ARN characters
    # when creating event patterns so that they match the ARN syntax in the
    # event you want to match.
    #
    # @option params [required, String] :name
    #   The name of the rule that you are creating or updating.
    #
    # @option params [String] :schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)" or
    #   "rate(5 minutes)".
    #
    # @option params [String] :event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html
    #
    # @option params [String] :state
    #   Indicates whether the rule is enabled or disabled.
    #
    # @option params [String] :description
    #   A description of the rule.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #
    # @return [Types::PutRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRuleResponse#rule_arn #rule_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rule({
    #     name: "RuleName", # required
    #     schedule_expression: "ScheduleExpression",
    #     event_pattern: "EventPattern",
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     description: "RuleDescription",
    #     role_arn: "RoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRule AWS API Documentation
    #
    # @overload put_rule(params = {})
    # @param [Hash] params ({})
    def put_rule(params = {}, options = {})
      req = build_request(:put_rule, params)
      req.send_request(options)
    end

    # Adds the specified targets to the specified rule, or updates the
    # targets if they are already associated with the rule.
    #
    # Targets are the resources that are invoked when a rule is triggered.
    #
    # You can configure the following as targets for CloudWatch Events:
    #
    # * EC2 instances
    #
    # * SSM Run Command
    #
    # * SSM Automation
    #
    # * AWS Lambda functions
    #
    # * Data streams in Amazon Kinesis Data Streams
    #
    # * Data delivery streams in Amazon Kinesis Data Firehose
    #
    # * Amazon ECS tasks
    #
    # * AWS Step Functions state machines
    #
    # * AWS Batch jobs
    #
    # * AWS CodeBuild projects
    #
    # * Pipelines in AWS CodePipeline
    #
    # * Amazon Inspector assessment templates
    #
    # * Amazon SNS topics
    #
    # * Amazon SQS queues, including FIFO queues
    #
    # * The default event bus of another AWS account
    #
    # Creating rules with built-in targets is supported only in the AWS
    # Management Console. The built-in targets are `EC2 CreateSnapshot API
    # call`, `EC2 RebootInstances API call`, `EC2 StopInstances API call`,
    # and `EC2 TerminateInstances API call`.
    #
    # For some target types, `PutTargets` provides target-specific
    # parameters. If the target is a Kinesis data stream, you can optionally
    # specify which shard the event goes to by using the `KinesisParameters`
    # argument. To invoke a command on multiple EC2 instances with one rule,
    # you can use the `RunCommandParameters` field.
    #
    # To be able to make API calls against the resources that you own,
    # Amazon CloudWatch Events needs the appropriate permissions. For AWS
    # Lambda and Amazon SNS resources, CloudWatch Events relies on
    # resource-based policies. For EC2 instances, Kinesis data streams, and
    # AWS Step Functions state machines, CloudWatch Events relies on IAM
    # roles that you specify in the `RoleARN` argument in `PutTargets`. For
    # more information, see [Authentication and Access Control][1] in the
    # *Amazon CloudWatch Events User Guide*.
    #
    # If another AWS account is in the same region and has granted you
    # permission (using `PutPermission`), you can send events to that
    # account. Set that account's event bus as a target of the rules in
    # your account. To send the matched events to the other account, specify
    # that account's event bus as the `Arn` value when you run
    # `PutTargets`. If your account sends events to another account, your
    # account is charged for each sent event. Each event sent to another
    # account is charged as a custom event. The account receiving the event
    # is not charged. For more information, see [Amazon CloudWatch
    # Pricing][2].
    #
    # For more information about enabling cross-account events, see
    # PutPermission.
    #
    # **Input**, **InputPath**, and **InputTransformer** are mutually
    # exclusive and optional parameters of a target. When a rule is
    # triggered due to a matched event:
    #
    # * If none of the following arguments are specified for a target, then
    #   the entire event is passed to the target in JSON format (unless the
    #   target is Amazon EC2 Run Command or Amazon ECS task, in which case
    #   nothing from the event is passed to the target).
    #
    # * If **Input** is specified in the form of valid JSON, then the
    #   matched event is overridden with this constant.
    #
    # * If **InputPath** is specified in the form of JSONPath (for example,
    #   `$.detail`), then only the part of the event specified in the path
    #   is passed to the target (for example, only the detail part of the
    #   event is passed).
    #
    # * If **InputTransformer** is specified, then one or more specified
    #   JSONPaths are extracted from the event and used as values in a
    #   template that you specify as the input to the target.
    #
    # When you specify `InputPath` or `InputTransformer`, you must use JSON
    # dot notation, not bracket notation.
    #
    # When you add targets to a rule and the associated rule triggers soon
    # after, new or updated targets might not be immediately invoked. Allow
    # a short period of time for changes to take effect.
    #
    # This action can partially fail if too many requests are made at the
    # same time. If that happens, `FailedEntryCount` is non-zero in the
    # response and each entry in `FailedEntries` provides the ID of the
    # failed target and the error code.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/auth-and-access-control-cwe.html
    # [2]: https://aws.amazon.com/cloudwatch/pricing/
    #
    # @option params [required, String] :rule
    #   The name of the rule.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets to update or add to the rule.
    #
    # @return [Types::PutTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutTargetsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::PutTargetsResponse#failed_entries #failed_entries} => Array&lt;Types::PutTargetsResultEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_targets({
    #     rule: "RuleName", # required
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         arn: "TargetArn", # required
    #         role_arn: "RoleArn",
    #         input: "TargetInput",
    #         input_path: "TargetInputPath",
    #         input_transformer: {
    #           input_paths_map: {
    #             "InputTransformerPathKey" => "TargetInputPath",
    #           },
    #           input_template: "TransformerInput", # required
    #         },
    #         kinesis_parameters: {
    #           partition_key_path: "TargetPartitionKeyPath", # required
    #         },
    #         run_command_parameters: {
    #           run_command_targets: [ # required
    #             {
    #               key: "RunCommandTargetKey", # required
    #               values: ["RunCommandTargetValue"], # required
    #             },
    #           ],
    #         },
    #         ecs_parameters: {
    #           task_definition_arn: "Arn", # required
    #           task_count: 1,
    #           launch_type: "EC2", # accepts EC2, FARGATE
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #           },
    #           platform_version: "String",
    #           group: "String",
    #         },
    #         batch_parameters: {
    #           job_definition: "String", # required
    #           job_name: "String", # required
    #           array_properties: {
    #             size: 1,
    #           },
    #           retry_strategy: {
    #             attempts: 1,
    #           },
    #         },
    #         sqs_parameters: {
    #           message_group_id: "MessageGroupId",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.failed_entries #=> Array
    #   resp.failed_entries[0].target_id #=> String
    #   resp.failed_entries[0].error_code #=> String
    #   resp.failed_entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargets AWS API Documentation
    #
    # @overload put_targets(params = {})
    # @param [Hash] params ({})
    def put_targets(params = {}, options = {})
      req = build_request(:put_targets, params)
      req.send_request(options)
    end

    # Revokes the permission of another AWS account to be able to put events
    # to your default event bus. Specify the account to revoke by the
    # `StatementId` value that you associated with the account when you
    # granted it permission with `PutPermission`. You can find the
    # `StatementId` by using DescribeEventBus.
    #
    # @option params [required, String] :statement_id
    #   The statement ID corresponding to the account that is no longer
    #   allowed to put events to the default event bus.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission({
    #     statement_id: "StatementId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemovePermission AWS API Documentation
    #
    # @overload remove_permission(params = {})
    # @param [Hash] params ({})
    def remove_permission(params = {}, options = {})
      req = build_request(:remove_permission, params)
      req.send_request(options)
    end

    # Removes the specified targets from the specified rule. When the rule
    # is triggered, those targets are no longer be invoked.
    #
    # When you remove a target, when the associated rule triggers, removed
    # targets might continue to be invoked. Allow a short period of time for
    # changes to take effect.
    #
    # This action can partially fail if too many requests are made at the
    # same time. If that happens, `FailedEntryCount` is non-zero in the
    # response and each entry in `FailedEntries` provides the ID of the
    # failed target and the error code.
    #
    # @option params [required, String] :rule
    #   The name of the rule.
    #
    # @option params [required, Array<String>] :ids
    #   The IDs of the targets to remove from the rule.
    #
    # @return [Types::RemoveTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveTargetsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::RemoveTargetsResponse#failed_entries #failed_entries} => Array&lt;Types::RemoveTargetsResultEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_targets({
    #     rule: "RuleName", # required
    #     ids: ["TargetId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.failed_entries #=> Array
    #   resp.failed_entries[0].target_id #=> String
    #   resp.failed_entries[0].error_code #=> String
    #   resp.failed_entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargets AWS API Documentation
    #
    # @overload remove_targets(params = {})
    # @param [Hash] params ({})
    def remove_targets(params = {}, options = {})
      req = build_request(:remove_targets, params)
      req.send_request(options)
    end

    # Tests whether the specified event pattern matches the provided event.
    #
    # Most services in AWS treat : or / as the same character in Amazon
    # Resource Names (ARNs). However, CloudWatch Events uses an exact match
    # in event patterns and rules. Be sure to use the correct ARN characters
    # when creating event patterns so that they match the ARN syntax in the
    # event you want to match.
    #
    # @option params [required, String] :event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html
    #
    # @option params [required, String] :event
    #   The event, in JSON format, to test against the event pattern.
    #
    # @return [Types::TestEventPatternResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestEventPatternResponse#result #result} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_event_pattern({
    #     event_pattern: "EventPattern", # required
    #     event: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPattern AWS API Documentation
    #
    # @overload test_event_pattern(params = {})
    # @param [Hash] params ({})
    def test_event_pattern(params = {}, options = {})
      req = build_request(:test_event_pattern, params)
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
      context[:gem_name] = 'aws-sdk-cloudwatchevents'
      context[:gem_version] = '1.7.0'
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
