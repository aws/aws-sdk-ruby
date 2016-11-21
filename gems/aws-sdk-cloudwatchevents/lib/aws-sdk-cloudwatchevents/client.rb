# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchevents)

module Aws
  module CloudWatchEvents
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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Deletes a rule. You must remove all targets from a rule using
      # RemoveTargets before you can delete the rule.
      #
      # **Note:** When you delete a rule, incoming events might still continue
      # to match to the deleted rule. Please allow a short period of time for
      # changes to take effect.
      # @option params [required, String] :name
      #   The name of the rule to be deleted.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_rule({
      #     name: "RuleName", # required
      #   })
      # @overload delete_rule(params = {})
      # @param [Hash] params ({})
      def delete_rule(params = {}, options = {})
        req = build_request(:delete_rule, params)
        req.send_request(options)
      end

      # Describes the details of the specified rule.
      # @option params [required, String] :name
      #   The name of the rule you want to describe details for.
      # @return [Types::DescribeRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeRuleResponse#name #Name} => String
      #   * {Types::DescribeRuleResponse#arn #Arn} => String
      #   * {Types::DescribeRuleResponse#event_pattern #EventPattern} => String
      #   * {Types::DescribeRuleResponse#schedule_expression #ScheduleExpression} => String
      #   * {Types::DescribeRuleResponse#state #State} => String
      #   * {Types::DescribeRuleResponse#description #Description} => String
      #   * {Types::DescribeRuleResponse#role_arn #RoleArn} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_rule({
      #     name: "RuleName", # required
      #   })
      #
      # @example Response structure
      #   resp.name #=> String
      #   resp.arn #=> String
      #   resp.event_pattern #=> String
      #   resp.schedule_expression #=> String
      #   resp.state #=> String, one of "ENABLED", "DISABLED"
      #   resp.description #=> String
      #   resp.role_arn #=> String
      # @overload describe_rule(params = {})
      # @param [Hash] params ({})
      def describe_rule(params = {}, options = {})
        req = build_request(:describe_rule, params)
        req.send_request(options)
      end

      # Disables a rule. A disabled rule won't match any events, and won't
      # self-trigger if it has a schedule expression.
      #
      # **Note:** When you disable a rule, incoming events might still
      # continue to match to the disabled rule. Please allow a short period of
      # time for changes to take effect.
      # @option params [required, String] :name
      #   The name of the rule you want to disable.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_rule({
      #     name: "RuleName", # required
      #   })
      # @overload disable_rule(params = {})
      # @param [Hash] params ({})
      def disable_rule(params = {}, options = {})
        req = build_request(:disable_rule, params)
        req.send_request(options)
      end

      # Enables a rule. If the rule does not exist, the operation fails.
      #
      # **Note:** When you enable a rule, incoming events might not
      # immediately start matching to a newly enabled rule. Please allow a
      # short period of time for changes to take effect.
      # @option params [required, String] :name
      #   The name of the rule that you want to enable.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_rule({
      #     name: "RuleName", # required
      #   })
      # @overload enable_rule(params = {})
      # @param [Hash] params ({})
      def enable_rule(params = {}, options = {})
        req = build_request(:enable_rule, params)
        req.send_request(options)
      end

      # Lists the names of the rules that the given target is put to. You can
      # see which of the rules in Amazon CloudWatch Events can invoke a
      # specific target in your account. If you have more rules in your
      # account than the given limit, the results will be paginated. In that
      # case, use the next token returned in the response and repeat
      # ListRulesByTarget until the NextToken in the response is returned as
      # null.
      # @option params [required, String] :target_arn
      #   The Amazon Resource Name (ARN) of the target resource that you want to
      #   list the rules for.
      # @option params [String] :next_token
      #   The token returned by a previous call to indicate that there is more
      #   data available.
      # @option params [Integer] :limit
      #   The maximum number of results to return.
      # @return [Types::ListRuleNamesByTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListRuleNamesByTargetResponse#rule_names #RuleNames} => Array&lt;String&gt;
      #   * {Types::ListRuleNamesByTargetResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_rule_names_by_target({
      #     target_arn: "TargetArn", # required
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.rule_names #=> Array
      #   resp.rule_names[0] #=> String
      #   resp.next_token #=> String
      # @overload list_rule_names_by_target(params = {})
      # @param [Hash] params ({})
      def list_rule_names_by_target(params = {}, options = {})
        req = build_request(:list_rule_names_by_target, params)
        req.send_request(options)
      end

      # Lists the Amazon CloudWatch Events rules in your account. You can
      # either list all the rules or you can provide a prefix to match to the
      # rule names. If you have more rules in your account than the given
      # limit, the results will be paginated. In that case, use the next token
      # returned in the response and repeat ListRules until the NextToken in
      # the response is returned as null.
      # @option params [String] :name_prefix
      #   The prefix matching the rule name.
      # @option params [String] :next_token
      #   The token returned by a previous call to indicate that there is more
      #   data available.
      # @option params [Integer] :limit
      #   The maximum number of results to return.
      # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListRulesResponse#rules #Rules} => Array&lt;Types::Rule&gt;
      #   * {Types::ListRulesResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_rules({
      #     name_prefix: "RuleName",
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.rules #=> Array
      #   resp.rules[0].name #=> String
      #   resp.rules[0].arn #=> String
      #   resp.rules[0].event_pattern #=> String
      #   resp.rules[0].state #=> String, one of "ENABLED", "DISABLED"
      #   resp.rules[0].description #=> String
      #   resp.rules[0].schedule_expression #=> String
      #   resp.rules[0].role_arn #=> String
      #   resp.next_token #=> String
      # @overload list_rules(params = {})
      # @param [Hash] params ({})
      def list_rules(params = {}, options = {})
        req = build_request(:list_rules, params)
        req.send_request(options)
      end

      # Lists of targets assigned to the rule.
      # @option params [required, String] :rule
      #   The name of the rule whose targets you want to list.
      # @option params [String] :next_token
      #   The token returned by a previous call to indicate that there is more
      #   data available.
      # @option params [Integer] :limit
      #   The maximum number of results to return.
      # @return [Types::ListTargetsByRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTargetsByRuleResponse#targets #Targets} => Array&lt;Types::Target&gt;
      #   * {Types::ListTargetsByRuleResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_targets_by_rule({
      #     rule: "RuleName", # required
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.targets #=> Array
      #   resp.targets[0].id #=> String
      #   resp.targets[0].arn #=> String
      #   resp.targets[0].input #=> String
      #   resp.targets[0].input_path #=> String
      #   resp.next_token #=> String
      # @overload list_targets_by_rule(params = {})
      # @param [Hash] params ({})
      def list_targets_by_rule(params = {}, options = {})
        req = build_request(:list_targets_by_rule, params)
        req.send_request(options)
      end

      # Sends custom events to Amazon CloudWatch Events so that they can be
      # matched to rules.
      # @option params [required, Array<Types::PutEventsRequestEntry>] :entries
      #   The entry that defines an event in your system. You can specify
      #   several parameters for the entry such as the source and type of the
      #   event, resources associated with the event, and so on.
      # @return [Types::PutEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutEventsResponse#failed_entry_count #FailedEntryCount} => Integer
      #   * {Types::PutEventsResponse#entries #Entries} => Array&lt;Types::PutEventsResultEntry&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.failed_entry_count #=> Integer
      #   resp.entries #=> Array
      #   resp.entries[0].event_id #=> String
      #   resp.entries[0].error_code #=> String
      #   resp.entries[0].error_message #=> String
      # @overload put_events(params = {})
      # @param [Hash] params ({})
      def put_events(params = {}, options = {})
        req = build_request(:put_events, params)
        req.send_request(options)
      end

      # Creates or updates a rule. Rules are enabled by default, or based on
      # value of the State parameter. You can disable a rule using
      # DisableRule.
      #
      # **Note:** When you create or update a rule, incoming events might not
      # immediately start matching to new or updated rules. Please allow a
      # short period of time for changes to take effect.
      #
      # A rule must contain at least an EventPattern or ScheduleExpression.
      # Rules with EventPatterns are triggered when a matching event is
      # observed. Rules with ScheduleExpressions self-trigger based on the
      # given schedule. A rule can have both an EventPattern and a
      # ScheduleExpression, in which case the rule will trigger on matching
      # events as well as on a schedule.
      #
      # **Note:** Most services in AWS treat : or / as the same character in
      # Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact
      # match in event patterns and rules. Be sure to use the correct ARN
      # characters when creating event patterns so that they match the ARN
      # syntax in the event you want to match.
      # @option params [required, String] :name
      #   The name of the rule that you are creating or updating.
      # @option params [String] :schedule_expression
      #   The scheduling expression. For example, "cron(0 20 \* \* ? \*)",
      #   "rate(5 minutes)".
      # @option params [String] :event_pattern
      #   The event pattern.
      # @option params [String] :state
      #   Indicates whether the rule is enabled or disabled.
      # @option params [String] :description
      #   A description of the rule.
      # @option params [String] :role_arn
      #   The Amazon Resource Name (ARN) of the IAM role associated with the
      #   rule.
      # @return [Types::PutRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutRuleResponse#rule_arn #RuleArn} => String
      #
      # @example Request syntax with placeholder values
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
      #   resp.rule_arn #=> String
      # @overload put_rule(params = {})
      # @param [Hash] params ({})
      def put_rule(params = {}, options = {})
        req = build_request(:put_rule, params)
        req.send_request(options)
      end

      # Adds target(s) to a rule. Targets are the resources that can be
      # invoked when a rule is triggered. For example, AWS Lambda functions,
      # Amazon Kinesis streams, and built-in targets. Updates the target(s) if
      # they are already associated with the role. In other words, if there is
      # already a target with the given target ID, then the target associated
      # with that ID is updated.
      #
      # In order to be able to make API calls against the resources you own,
      # Amazon CloudWatch Events needs the appropriate permissions. For AWS
      # Lambda and Amazon SNS resources, CloudWatch Events relies on
      # resource-based policies. For Amazon Kinesis streams, CloudWatch Events
      # relies on IAM roles. For more information, see [Permissions for
      # Sending Events to Targets][1] in the ***Amazon CloudWatch Developer
      # Guide***.
      #
      # **Input** and **InputPath** are mutually-exclusive and optional
      # parameters of a target. When a rule is triggered due to a matched
      # event, if for a target:
      #
      # * Neither **Input** nor **InputPath** is specified, then the entire
      #   event is passed to the target in JSON form.
      # * **InputPath** is specified in the form of JSONPath (e.g.
      #   **$.detail**), then only the part of the event specified in the path
      #   is passed to the target (e.g. only the detail part of the event is
      #   passed).
      # * **Input** is specified in the form of a valid JSON, then the matched
      #   event is overridden with this constant.
      #
      # **Note:** When you add targets to a rule, when the associated rule
      # triggers, new or updated targets might not be immediately invoked.
      # Please allow a short period of time for changes to take effect.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/EventsTargetPermissions.html
      # @option params [required, String] :rule
      #   The name of the rule you want to add targets to.
      # @option params [required, Array<Types::Target>] :targets
      #   List of targets you want to update or add to the rule.
      # @return [Types::PutTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutTargetsResponse#failed_entry_count #FailedEntryCount} => Integer
      #   * {Types::PutTargetsResponse#failed_entries #FailedEntries} => Array&lt;Types::PutTargetsResultEntry&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_targets({
      #     rule: "RuleName", # required
      #     targets: [ # required
      #       {
      #         id: "TargetId", # required
      #         arn: "TargetArn", # required
      #         input: "TargetInput",
      #         input_path: "TargetInputPath",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.failed_entry_count #=> Integer
      #   resp.failed_entries #=> Array
      #   resp.failed_entries[0].target_id #=> String
      #   resp.failed_entries[0].error_code #=> String
      #   resp.failed_entries[0].error_message #=> String
      # @overload put_targets(params = {})
      # @param [Hash] params ({})
      def put_targets(params = {}, options = {})
        req = build_request(:put_targets, params)
        req.send_request(options)
      end

      # Removes target(s) from a rule so that when the rule is triggered,
      # those targets will no longer be invoked.
      #
      # **Note:** When you remove a target, when the associated rule triggers,
      # removed targets might still continue to be invoked. Please allow a
      # short period of time for changes to take effect.
      # @option params [required, String] :rule
      #   The name of the rule you want to remove targets from.
      # @option params [required, Array<String>] :ids
      #   The list of target IDs to remove from the rule.
      # @return [Types::RemoveTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RemoveTargetsResponse#failed_entry_count #FailedEntryCount} => Integer
      #   * {Types::RemoveTargetsResponse#failed_entries #FailedEntries} => Array&lt;Types::RemoveTargetsResultEntry&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_targets({
      #     rule: "RuleName", # required
      #     ids: ["TargetId"], # required
      #   })
      #
      # @example Response structure
      #   resp.failed_entry_count #=> Integer
      #   resp.failed_entries #=> Array
      #   resp.failed_entries[0].target_id #=> String
      #   resp.failed_entries[0].error_code #=> String
      #   resp.failed_entries[0].error_message #=> String
      # @overload remove_targets(params = {})
      # @param [Hash] params ({})
      def remove_targets(params = {}, options = {})
        req = build_request(:remove_targets, params)
        req.send_request(options)
      end

      # Tests whether an event pattern matches the provided event.
      #
      # **Note:** Most services in AWS treat : or / as the same character in
      # Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact
      # match in event patterns and rules. Be sure to use the correct ARN
      # characters when creating event patterns so that they match the ARN
      # syntax in the event you want to match.
      # @option params [required, String] :event_pattern
      #   The event pattern you want to test.
      # @option params [required, String] :event
      #   The event in the JSON format to test against the event pattern.
      # @return [Types::TestEventPatternResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TestEventPatternResponse#result #Result} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.test_event_pattern({
      #     event_pattern: "EventPattern", # required
      #     event: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.result #=> Boolean
      # @overload test_event_pattern(params = {})
      # @param [Hash] params ({})
      def test_event_pattern(params = {}, options = {})
        req = build_request(:test_event_pattern, params)
        req.send_request(options)
      end

      # @!endgroup

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
end
