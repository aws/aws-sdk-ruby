# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchEvents
  module Types

    # Container for the parameters to the DeleteRule operation.
    #
    # @note When making an API call, you may pass DeleteRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeRule operation.
    #
    # @note When making an API call, you may pass DescribeRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule you want to describe details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRuleRequest AWS API Documentation
    #
    class DescribeRuleRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # The result of the DescribeRule operation.
    #
    # @!attribute [rw] name
    #   The rule's name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The rule's description.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRuleResponse AWS API Documentation
    #
    class DescribeRuleResponse < Struct.new(
      :name,
      :arn,
      :event_pattern,
      :schedule_expression,
      :state,
      :description,
      :role_arn)
      include Aws::Structure
    end

    # Container for the parameters to the DisableRule operation.
    #
    # @note When making an API call, you may pass DisableRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule you want to disable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DisableRuleRequest AWS API Documentation
    #
    class DisableRuleRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Container for the parameters to the EnableRule operation.
    #
    # @note When making an API call, you may pass EnableRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule that you want to enable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EnableRuleRequest AWS API Documentation
    #
    class EnableRuleRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Container for the parameters to the ListRuleNamesByTarget operation.
    #
    # @note When making an API call, you may pass ListRuleNamesByTargetRequest
    #   data as a hash:
    #
    #       {
    #         target_arn: "TargetArn", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target resource that you want
    #   to list the rules for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTargetRequest AWS API Documentation
    #
    class ListRuleNamesByTargetRequest < Struct.new(
      :target_arn,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # The result of the ListRuleNamesByTarget operation.
    #
    # @!attribute [rw] rule_names
    #   List of rules names that can invoke the given target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Indicates that there are additional results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTargetResponse AWS API Documentation
    #
    class ListRuleNamesByTargetResponse < Struct.new(
      :rule_names,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the ListRules operation.
    #
    # @note When making an API call, you may pass ListRulesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "RuleName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   The prefix matching the rule name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :name_prefix,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # The result of the ListRules operation.
    #
    # @!attribute [rw] rules
    #   List of rules matching the specified criteria.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] next_token
    #   Indicates that there are additional results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :rules,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the ListTargetsByRule operation.
    #
    # @note When making an API call, you may pass ListTargetsByRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule whose targets you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRuleRequest AWS API Documentation
    #
    class ListTargetsByRuleRequest < Struct.new(
      :rule,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # The result of the ListTargetsByRule operation.
    #
    # @!attribute [rw] targets
    #   Lists the targets assigned to the rule.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] next_token
    #   Indicates that there are additional results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRuleResponse AWS API Documentation
    #
    class ListTargetsByRuleResponse < Struct.new(
      :targets,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the PutEvents operation.
    #
    # @note When making an API call, you may pass PutEventsRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             time: Time.now,
    #             source: "String",
    #             resources: ["EventResource"],
    #             detail_type: "String",
    #             detail: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entries
    #   The entry that defines an event in your system. You can specify
    #   several parameters for the entry such as the source and type of the
    #   event, resources associated with the event, and so on.
    #   @return [Array<Types::PutEventsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :entries)
      include Aws::Structure
    end

    # Contains information about the event to be used in PutEvents.
    #
    # @note When making an API call, you may pass PutEventsRequestEntry
    #   data as a hash:
    #
    #       {
    #         time: Time.now,
    #         source: "String",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #       }
    #
    # @!attribute [rw] time
    #   Timestamp of event, per [RFC3339][1]. If no timestamp is provided,
    #   the timestamp of the PutEvents call will be used.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339.txt
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The source of the event.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   AWS resources, identified by Amazon Resource Name (ARN), which the
    #   event primarily concerns. Any number, including zero, may be
    #   present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detail_type
    #   Free-form string used to decide what fields to expect in the event
    #   detail.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   In the JSON sense, an object containing fields, which may also
    #   contain nested sub-objects. No constraints are imposed on its
    #   contents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsRequestEntry AWS API Documentation
    #
    class PutEventsRequestEntry < Struct.new(
      :time,
      :source,
      :resources,
      :detail_type,
      :detail)
      include Aws::Structure
    end

    # The result of the PutEvents operation.
    #
    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] entries
    #   A list of successfully and unsuccessfully ingested events results.
    #   If the ingestion was successful, the entry will have the event ID in
    #   it. If not, then the ErrorCode and ErrorMessage can be used to
    #   identify the problem with the entry.
    #   @return [Array<Types::PutEventsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsResponse AWS API Documentation
    #
    class PutEventsResponse < Struct.new(
      :failed_entry_count,
      :entries)
      include Aws::Structure
    end

    # A PutEventsResult contains a list of PutEventsResultEntry.
    #
    # @!attribute [rw] event_id
    #   The ID of the event submitted to Amazon CloudWatch Events.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code representing why the event submission failed on this
    #   entry.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message explaining why the event submission failed on this
    #   entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsResultEntry AWS API Documentation
    #
    class PutEventsResultEntry < Struct.new(
      :event_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Container for the parameters to the PutRule operation.
    #
    # @note When making an API call, you may pass PutRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         schedule_expression: "ScheduleExpression",
    #         event_pattern: "EventPattern",
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         description: "RuleDescription",
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule that you are creating or updating.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Indicates whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRuleRequest AWS API Documentation
    #
    class PutRuleRequest < Struct.new(
      :name,
      :schedule_expression,
      :event_pattern,
      :state,
      :description,
      :role_arn)
      include Aws::Structure
    end

    # The result of the PutRule operation.
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) that identifies the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRuleResponse AWS API Documentation
    #
    class PutRuleResponse < Struct.new(
      :rule_arn)
      include Aws::Structure
    end

    # Container for the parameters to the PutTargets operation.
    #
    # @note When making an API call, you may pass PutTargetsRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         targets: [ # required
    #           {
    #             id: "TargetId", # required
    #             arn: "TargetArn", # required
    #             input: "TargetInput",
    #             input_path: "TargetInputPath",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule you want to add targets to.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   List of targets you want to update or add to the rule.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsRequest AWS API Documentation
    #
    class PutTargetsRequest < Struct.new(
      :rule,
      :targets)
      include Aws::Structure
    end

    # The result of the PutTargets operation.
    #
    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   An array of failed target entries.
    #   @return [Array<Types::PutTargetsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsResponse AWS API Documentation
    #
    class PutTargetsResponse < Struct.new(
      :failed_entry_count,
      :failed_entries)
      include Aws::Structure
    end

    # A PutTargetsResult contains a list of PutTargetsResultEntry.
    #
    # @!attribute [rw] target_id
    #   The ID of the target submitted to Amazon CloudWatch Events.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code representing why the target submission failed on this
    #   entry.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message explaining why the target submission failed on
    #   this entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsResultEntry AWS API Documentation
    #
    class PutTargetsResultEntry < Struct.new(
      :target_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Container for the parameters to the RemoveTargets operation.
    #
    # @note When making an API call, you may pass RemoveTargetsRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         ids: ["TargetId"], # required
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule you want to remove targets from.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   The list of target IDs to remove from the rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsRequest AWS API Documentation
    #
    class RemoveTargetsRequest < Struct.new(
      :rule,
      :ids)
      include Aws::Structure
    end

    # The result of the RemoveTargets operation.
    #
    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   An array of failed target entries.
    #   @return [Array<Types::RemoveTargetsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsResponse AWS API Documentation
    #
    class RemoveTargetsResponse < Struct.new(
      :failed_entry_count,
      :failed_entries)
      include Aws::Structure
    end

    # The ID of the target requested to be removed from the rule by Amazon
    # CloudWatch Events.
    #
    # @!attribute [rw] target_id
    #   The ID of the target requested to be removed by Amazon CloudWatch
    #   Events.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code representing why the target removal failed on this
    #   entry.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message explaining why the target removal failed on this
    #   entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsResultEntry AWS API Documentation
    #
    class RemoveTargetsResultEntry < Struct.new(
      :target_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Contains information about a rule in Amazon CloudWatch Events. A
    # ListRulesResult contains a list of Rules.
    #
    # @!attribute [rw] name
    #   The rule's name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern of the rule.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The rule's state.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) associated with the role that is used
    #   for target invocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :name,
      :arn,
      :event_pattern,
      :state,
      :description,
      :schedule_expression,
      :role_arn)
      include Aws::Structure
    end

    # Targets are the resources that can be invoked when a rule is
    # triggered. For example, AWS Lambda functions, Amazon Kinesis streams,
    # and built-in targets.
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
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         id: "TargetId", # required
    #         arn: "TargetArn", # required
    #         input: "TargetInput",
    #         input_path: "TargetInputPath",
    #       }
    #
    # @!attribute [rw] id
    #   The unique target assignment ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated of the target.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Valid JSON text passed to the target. For more information about
    #   JSON text, see [The JavaScript Object Notation (JSON) Data
    #   Interchange Format][1].
    #
    #
    #
    #   [1]: http://www.rfc-editor.org/rfc/rfc7159.txt
    #   @return [String]
    #
    # @!attribute [rw] input_path
    #   The value of the JSONPath that is used for extracting part of the
    #   matched event when passing it to the target. For more information
    #   about JSON paths, see [JSONPath][1].
    #
    #
    #
    #   [1]: http://goessner.net/articles/JsonPath/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Target AWS API Documentation
    #
    class Target < Struct.new(
      :id,
      :arn,
      :input,
      :input_path)
      include Aws::Structure
    end

    # Container for the parameters to the TestEventPattern operation.
    #
    # @note When making an API call, you may pass TestEventPatternRequest
    #   data as a hash:
    #
    #       {
    #         event_pattern: "EventPattern", # required
    #         event: "String", # required
    #       }
    #
    # @!attribute [rw] event_pattern
    #   The event pattern you want to test.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The event in the JSON format to test against the event pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPatternRequest AWS API Documentation
    #
    class TestEventPatternRequest < Struct.new(
      :event_pattern,
      :event)
      include Aws::Structure
    end

    # The result of the TestEventPattern operation.
    #
    # @!attribute [rw] result
    #   Indicates whether the event matches the event pattern.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPatternResponse AWS API Documentation
    #
    class TestEventPatternResponse < Struct.new(
      :result)
      include Aws::Structure
    end

  end
end
