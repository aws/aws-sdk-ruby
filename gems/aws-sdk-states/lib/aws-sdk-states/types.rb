# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::States
  module Types

    # The specified activity does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityDoesNotExist AWS API Documentation
    #
    class ActivityDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an activity that failed during an execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityFailedEventDetails AWS API Documentation
    #
    class ActivityFailedEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # The maximum number of activities has been reached. Existing activities
    # must be deleted before a new activity can be created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityLimitExceeded AWS API Documentation
    #
    class ActivityLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an activity.
    #
    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) that identifies the activity.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the activity.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the activity is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityListItem AWS API Documentation
    #
    class ActivityListItem < Struct.new(
      :activity_arn,
      :name,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an activity schedule failure that occurred
    # during an execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityScheduleFailedEventDetails AWS API Documentation
    #
    class ActivityScheduleFailedEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # Contains details about an activity scheduled during an execution.
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the scheduled activity.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The JSON data input to the activity task. Length constraints apply
    #   to the payload size, and are expressed as bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] input_details
    #   Contains details about the input for an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum allowed duration of the activity task.
    #   @return [Integer]
    #
    # @!attribute [rw] heartbeat_in_seconds
    #   The maximum allowed duration between two heartbeats for the activity
    #   task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityScheduledEventDetails AWS API Documentation
    #
    class ActivityScheduledEventDetails < Struct.new(
      :resource,
      :input,
      :input_details,
      :timeout_in_seconds,
      :heartbeat_in_seconds)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # Contains details about the start of an activity during an execution.
    #
    # @!attribute [rw] worker_name
    #   The name of the worker that the task is assigned to. These names are
    #   provided by the workers when calling GetActivityTask.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityStartedEventDetails AWS API Documentation
    #
    class ActivityStartedEventDetails < Struct.new(
      :worker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an activity that successfully terminated during
    # an execution.
    #
    # @!attribute [rw] output
    #   The JSON data output by the activity task. Length constraints apply
    #   to the payload size, and are expressed as bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] output_details
    #   Contains details about the output of an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivitySucceededEventDetails AWS API Documentation
    #
    class ActivitySucceededEventDetails < Struct.new(
      :output,
      :output_details)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # Contains details about an activity timeout that occurred during an
    # execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the timeout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityTimedOutEventDetails AWS API Documentation
    #
    class ActivityTimedOutEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # The maximum number of workers concurrently polling for activity tasks
    # has been reached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivityWorkerLimitExceeded AWS API Documentation
    #
    class ActivityWorkerLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes workflow billing details.
    #
    # @!attribute [rw] billed_memory_used_in_mb
    #   Billed memory consumption of your workflow, in MB.
    #   @return [Integer]
    #
    # @!attribute [rw] billed_duration_in_milliseconds
    #   Billed duration of your workflow, in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/BillingDetails AWS API Documentation
    #
    class BillingDetails < Struct.new(
      :billed_memory_used_in_mb,
      :billed_duration_in_milliseconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about execution input or output.
    #
    # @!attribute [rw] included
    #   Indicates whether input or output was included in the response.
    #   Always `true` for API calls.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CloudWatchEventsExecutionDataDetails AWS API Documentation
    #
    class CloudWatchEventsExecutionDataDetails < Struct.new(
      :included)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_arn
    #   The ARN of the the CloudWatch log group to which you want your logs
    #   emitted to. The ARN must end with `:*`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CloudWatchLogsLogGroup AWS API Documentation
    #
    class CloudWatchLogsLogGroup < Struct.new(
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state. This
    # error occurs when there're concurrent requests for
    # DeleteStateMachineVersion, PublishStateMachineVersion, or
    # UpdateStateMachine with the `publish` parameter set to `true`.
    #
    # HTTP Status Code: 409
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the activity to create. This name must be unique for
    #   your Amazon Web Services account and region for 90 days. For more
    #   information, see [ Limits Related to State Machine Executions][1] in
    #   the *Step Functions Developer Guide*.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to add to a resource.
    #
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *Amazon Web Services Billing and Cost
    #   Management User Guide*, and [Controlling Access Using IAM Tags][2].
    #
    #   Tags may only contain Unicode letters, digits, white space, or these
    #   symbols: `_ . : / = + - @`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateActivityInput AWS API Documentation
    #
    class CreateActivityInput < Struct.new(
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) that identifies the created activity.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the activity is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateActivityOutput AWS API Documentation
    #
    class CreateActivityOutput < Struct.new(
      :activity_arn,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description for the state machine alias.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the state machine alias.
    #
    #   To avoid conflict with version ARNs, don't use an integer in the
    #   name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   The routing configuration of a state machine alias. The routing
    #   configuration shifts execution traffic between two state machine
    #   versions. `routingConfiguration` contains an array of
    #   `RoutingConfig` objects that specify up to two state machine
    #   versions. Step Functions then randomly choses which version to run
    #   an execution with based on the weight assigned to each
    #   `RoutingConfig`.
    #   @return [Array<Types::RoutingConfigurationListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachineAliasInput AWS API Documentation
    #
    class CreateStateMachineAliasInput < Struct.new(
      :description,
      :name,
      :routing_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) that identifies the created state
    #   machine alias.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the state machine alias was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachineAliasOutput AWS API Documentation
    #
    class CreateStateMachineAliasOutput < Struct.new(
      :state_machine_alias_arn,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the state machine.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Amazon States Language definition of the state machine. See
    #   [Amazon States Language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to use for this state
    #   machine.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Determines whether a Standard or Express state machine is created.
    #   The default is `STANDARD`. You cannot update the `type` of a state
    #   machine once it has been created.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Defines what execution history events are logged and where they are
    #   logged.
    #
    #   <note markdown="1"> By default, the `level` is set to `OFF`. For more information see
    #   [Log Levels][1] in the Step Functions User Guide.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags to be added when creating a state machine.
    #
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *Amazon Web Services Billing and Cost
    #   Management User Guide*, and [Controlling Access Using IAM Tags][2].
    #
    #   Tags may only contain Unicode letters, digits, white space, or these
    #   symbols: `_ . : / = + - @`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] tracing_configuration
    #   Selects whether X-Ray tracing is enabled.
    #   @return [Types::TracingConfiguration]
    #
    # @!attribute [rw] publish
    #   Set to `true` to publish the first version of the state machine
    #   during creation. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] version_description
    #   Sets description about the state machine version. You can only set
    #   the description if the `publish` parameter is set to `true`.
    #   Otherwise, if you set `versionDescription`, but `publish` to
    #   `false`, this API action throws `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachineInput AWS API Documentation
    #
    class CreateStateMachineInput < Struct.new(
      :name,
      :definition,
      :role_arn,
      :type,
      :logging_configuration,
      :tags,
      :tracing_configuration,
      :publish,
      :version_description)
      SENSITIVE = [:definition, :version_description]
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) that identifies the created state
    #   machine.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the state machine is created.
    #   @return [Time]
    #
    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) that identifies the created state
    #   machine version. If you do not set the `publish` parameter to
    #   `true`, this field returns null value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachineOutput AWS API Documentation
    #
    class CreateStateMachineOutput < Struct.new(
      :state_machine_arn,
      :creation_date,
      :state_machine_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) of the activity to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteActivityInput AWS API Documentation
    #
    class DeleteActivityInput < Struct.new(
      :activity_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteActivityOutput AWS API Documentation
    #
    class DeleteActivityOutput < Aws::EmptyStructure; end

    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineAliasInput AWS API Documentation
    #
    class DeleteStateMachineAliasInput < Struct.new(
      :state_machine_alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineAliasOutput AWS API Documentation
    #
    class DeleteStateMachineAliasOutput < Aws::EmptyStructure; end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineInput AWS API Documentation
    #
    class DeleteStateMachineInput < Struct.new(
      :state_machine_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineOutput AWS API Documentation
    #
    class DeleteStateMachineOutput < Aws::EmptyStructure; end

    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) of the state machine version to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineVersionInput AWS API Documentation
    #
    class DeleteStateMachineVersionInput < Struct.new(
      :state_machine_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineVersionOutput AWS API Documentation
    #
    class DeleteStateMachineVersionOutput < Aws::EmptyStructure; end

    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) of the activity to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeActivityInput AWS API Documentation
    #
    class DescribeActivityInput < Struct.new(
      :activity_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) that identifies the activity.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the activity.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the activity is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeActivityOutput AWS API Documentation
    #
    class DescribeActivityOutput < Struct.new(
      :activity_arn,
      :name,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) of the execution to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeExecutionInput AWS API Documentation
    #
    class DescribeExecutionInput < Struct.new(
      :execution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that identifies the execution.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the executed stated machine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the execution.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the execution.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date the execution is started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_date
    #   If the execution ended, the date the execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] input
    #   The string that contains the JSON input data of the execution.
    #   Length constraints apply to the payload size, and are expressed as
    #   bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] input_details
    #   Provides details about execution input or output.
    #   @return [Types::CloudWatchEventsExecutionDataDetails]
    #
    # @!attribute [rw] output
    #   The JSON output data of the execution. Length constraints apply to
    #   the payload size, and are expressed as bytes in UTF-8 encoding.
    #
    #   <note markdown="1"> This field is set only if the execution succeeds. If the execution
    #   fails, this field is null.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] output_details
    #   Provides details about execution input or output.
    #   @return [Types::CloudWatchEventsExecutionDataDetails]
    #
    # @!attribute [rw] trace_header
    #   The X-Ray trace header that was passed to the execution.
    #   @return [String]
    #
    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) that identifies a Map Run, which
    #   dispatched this execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error string if the state machine execution failed.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause string if the state machine execution failed.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) of the state machine version
    #   associated with the execution. The version ARN is a combination of
    #   state machine ARN and the version number separated by a colon (:).
    #   For example, `stateMachineARN:1`.
    #
    #   If you start an execution from a `StartExecution` request without
    #   specifying a state machine version or alias ARN, Step Functions
    #   returns a null value.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias associated
    #   with the execution. The alias ARN is a combination of state machine
    #   ARN and the alias name separated by a colon (:). For example,
    #   `stateMachineARN:PROD`.
    #
    #   If you start an execution from a `StartExecution` request with a
    #   state machine version ARN, this field will be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeExecutionOutput AWS API Documentation
    #
    class DescribeExecutionOutput < Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :status,
      :start_date,
      :stop_date,
      :input,
      :input_details,
      :output,
      :output_details,
      :trace_header,
      :map_run_arn,
      :error,
      :cause,
      :state_machine_version_arn,
      :state_machine_alias_arn)
      SENSITIVE = [:input, :output, :error, :cause]
      include Aws::Structure
    end

    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) that identifies a Map Run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeMapRunInput AWS API Documentation
    #
    class DescribeMapRunInput < Struct.new(
      :map_run_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) that identifies a Map Run.
    #   @return [String]
    #
    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that identifies the execution in
    #   which the Map Run was started.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the Map Run.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date when the Map Run was started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_date
    #   The date when the Map Run was stopped.
    #   @return [Time]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of child workflow executions configured to run in
    #   parallel for the Map Run at the same time.
    #   @return [Integer]
    #
    # @!attribute [rw] tolerated_failure_percentage
    #   The maximum percentage of failed child workflow executions before
    #   the Map Run fails.
    #   @return [Float]
    #
    # @!attribute [rw] tolerated_failure_count
    #   The maximum number of failed child workflow executions before the
    #   Map Run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] item_counts
    #   A JSON object that contains information about the total number of
    #   items, and the item count for each processing status, such as
    #   `pending` and `failed`.
    #   @return [Types::MapRunItemCounts]
    #
    # @!attribute [rw] execution_counts
    #   A JSON object that contains information about the total number of
    #   child workflow executions for the Map Run, and the count of child
    #   workflow executions for each status, such as `failed` and
    #   `succeeded`.
    #   @return [Types::MapRunExecutionCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeMapRunOutput AWS API Documentation
    #
    class DescribeMapRunOutput < Struct.new(
      :map_run_arn,
      :execution_arn,
      :status,
      :start_date,
      :stop_date,
      :max_concurrency,
      :tolerated_failure_percentage,
      :tolerated_failure_count,
      :item_counts,
      :execution_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineAliasInput AWS API Documentation
    #
    class DescribeStateMachineAliasInput < Struct.new(
      :state_machine_alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the state machine alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   The routing configuration of the alias.
    #   @return [Array<Types::RoutingConfigurationListItem>]
    #
    # @!attribute [rw] creation_date
    #   The date the state machine alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The date the state machine alias was last updated.
    #
    #   For a newly created state machine, this is the same as the creation
    #   date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineAliasOutput AWS API Documentation
    #
    class DescribeStateMachineAliasOutput < Struct.new(
      :state_machine_alias_arn,
      :name,
      :description,
      :routing_configuration,
      :creation_date,
      :update_date)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) of the execution you want state
    #   machine information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineForExecutionInput AWS API Documentation
    #
    class DescribeStateMachineForExecutionInput < Struct.new(
      :execution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine associated with
    #   the execution.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the state machine associated with the execution.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Amazon States Language definition of the state machine. See
    #   [Amazon States Language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role of the State Machine
    #   for the execution.
    #   @return [String]
    #
    # @!attribute [rw] update_date
    #   The date and time the state machine associated with an execution was
    #   updated. For a newly created state machine, this is the creation
    #   date.
    #   @return [Time]
    #
    # @!attribute [rw] logging_configuration
    #   The `LoggingConfiguration` data type is used to set CloudWatch Logs
    #   options.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] tracing_configuration
    #   Selects whether X-Ray tracing is enabled.
    #   @return [Types::TracingConfiguration]
    #
    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) of the Map Run that started the child
    #   workflow execution. This field is returned only if the
    #   `executionArn` is a child workflow execution that was started by a
    #   Distributed Map state.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A user-defined or an auto-generated string that identifies a `Map`
    #   state. This ﬁeld is returned only if the `executionArn` is a child
    #   workflow execution that was started by a Distributed Map state.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision identifier for the state machine. The first revision ID
    #   when you create the state machine is null.
    #
    #   Use the state machine `revisionId` parameter to compare the revision
    #   of a state machine with the configuration of the state machine used
    #   for executions without performing a diff of the properties, such as
    #   `definition` and `roleArn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineForExecutionOutput AWS API Documentation
    #
    class DescribeStateMachineForExecutionOutput < Struct.new(
      :state_machine_arn,
      :name,
      :definition,
      :role_arn,
      :update_date,
      :logging_configuration,
      :tracing_configuration,
      :map_run_arn,
      :label,
      :revision_id)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine for which you
    #   want the information.
    #
    #   If you specify a state machine version ARN, this API returns details
    #   about that version. The version ARN is a combination of state
    #   machine ARN and the version number separated by a colon (:). For
    #   example, `stateMachineARN:1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineInput AWS API Documentation
    #
    class DescribeStateMachineInput < Struct.new(
      :state_machine_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) that identifies the state machine.
    #
    #   If you specified a state machine version ARN in your request, the
    #   API returns the version ARN. The version ARN is a combination of
    #   state machine ARN and the version number separated by a colon (:).
    #   For example, `stateMachineARN:1`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the state machine.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Amazon States Language definition of the state machine. See
    #   [Amazon States Language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used when creating
    #   this state machine. (The IAM role maintains security by granting
    #   Step Functions access to Amazon Web Services resources.)
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The `type` of the state machine (`STANDARD` or `EXPRESS`).
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the state machine is created.
    #
    #   For a state machine version, `creationDate` is the date the version
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] logging_configuration
    #   The `LoggingConfiguration` data type is used to set CloudWatch Logs
    #   options.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] tracing_configuration
    #   Selects whether X-Ray tracing is enabled.
    #   @return [Types::TracingConfiguration]
    #
    # @!attribute [rw] label
    #   A user-defined or an auto-generated string that identifies a `Map`
    #   state. This parameter is present only if the `stateMachineArn`
    #   specified in input is a qualified state machine ARN.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision identifier for the state machine.
    #
    #   Use the `revisionId` parameter to compare between versions of a
    #   state machine configuration used for executions without performing a
    #   diff of the properties, such as `definition` and `roleArn`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the state machine version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineOutput AWS API Documentation
    #
    class DescribeStateMachineOutput < Struct.new(
      :state_machine_arn,
      :name,
      :status,
      :definition,
      :role_arn,
      :type,
      :creation_date,
      :logging_configuration,
      :tracing_configuration,
      :label,
      :revision_id,
      :description)
      SENSITIVE = [:definition, :description]
      include Aws::Structure
    end

    # Contains details about an abort of an execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionAbortedEventDetails AWS API Documentation
    #
    class ExecutionAbortedEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # The execution has the same `name` as another execution (but a
    # different `input`).
    #
    # <note markdown="1"> Executions with the same `name` and `input` are considered idempotent.
    #
    #  </note>
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionAlreadyExists AWS API Documentation
    #
    class ExecutionAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified execution does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionDoesNotExist AWS API Documentation
    #
    class ExecutionDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an execution failure event.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionFailedEventDetails AWS API Documentation
    #
    class ExecutionFailedEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # The maximum number of running executions has been reached. Running
    # executions must end or be stopped before a new execution can be
    # started.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionLimitExceeded AWS API Documentation
    #
    class ExecutionLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an execution.
    #
    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that identifies the execution.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine that ran the
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the execution.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the execution.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date the execution started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_date
    #   If the execution already ended, the date the execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) of a Map Run. This field is returned
    #   only if `mapRunArn` was specified in the `ListExecutions` API
    #   action. If `stateMachineArn` was specified in `ListExecutions`, the
    #   `mapRunArn` isn't returned.
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   The total number of items processed in a child workflow execution.
    #   This field is returned only if `mapRunArn` was specified in the
    #   `ListExecutions` API action. If `stateMachineArn` was specified in
    #   `ListExecutions`, the `itemCount` field isn't returned.
    #   @return [Integer]
    #
    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) of the state machine version
    #   associated with the execution.
    #
    #   If the state machine execution was started with an unqualified ARN,
    #   it returns null.
    #
    #   If the execution was started using a `stateMachineAliasArn`, both
    #   the `stateMachineAliasArn` and `stateMachineVersionArn` parameters
    #   contain the respective values.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias used to
    #   start an execution.
    #
    #   If the state machine execution was started with an unqualified ARN
    #   or a version ARN, it returns null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionListItem AWS API Documentation
    #
    class ExecutionListItem < Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :status,
      :start_date,
      :stop_date,
      :map_run_arn,
      :item_count,
      :state_machine_version_arn,
      :state_machine_alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the start of the execution.
    #
    # @!attribute [rw] input
    #   The JSON data input to the execution. Length constraints apply to
    #   the payload size, and are expressed as bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] input_details
    #   Contains details about the input for an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used for executing
    #   Lambda tasks.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) that identifies a state machine alias
    #   used for starting the state machine execution.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) that identifies a state machine
    #   version used for starting the state machine execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionStartedEventDetails AWS API Documentation
    #
    class ExecutionStartedEventDetails < Struct.new(
      :input,
      :input_details,
      :role_arn,
      :state_machine_alias_arn,
      :state_machine_version_arn)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # Contains details about the successful termination of the execution.
    #
    # @!attribute [rw] output
    #   The JSON data output by the execution. Length constraints apply to
    #   the payload size, and are expressed as bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] output_details
    #   Contains details about the output of an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionSucceededEventDetails AWS API Documentation
    #
    class ExecutionSucceededEventDetails < Struct.new(
      :output,
      :output_details)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # Contains details about the execution timeout that occurred during the
    # execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the timeout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionTimedOutEventDetails AWS API Documentation
    #
    class ExecutionTimedOutEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) of the activity to retrieve tasks
    #   from (assigned when you create the task using CreateActivity.)
    #   @return [String]
    #
    # @!attribute [rw] worker_name
    #   You can provide an arbitrary name in order to identify the worker
    #   that the task is assigned to. This name is used when it is logged in
    #   the execution history.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetActivityTaskInput AWS API Documentation
    #
    class GetActivityTaskInput < Struct.new(
      :activity_arn,
      :worker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_token
    #   A token that identifies the scheduled task. This token must be
    #   copied and included in subsequent calls to SendTaskHeartbeat,
    #   SendTaskSuccess or SendTaskFailure in order to report the progress
    #   or completion of the task.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The string that contains the JSON input data for the task. Length
    #   constraints apply to the payload size, and are expressed as bytes in
    #   UTF-8 encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetActivityTaskOutput AWS API Documentation
    #
    class GetActivityTaskOutput < Struct.new(
      :task_token,
      :input)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) of the execution.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   100 and the maximum allowed page size is 1000. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   Lists events in descending order of their `timeStamp`.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @!attribute [rw] include_execution_data
    #   You can select whether execution data (input or output of a history
    #   event) is returned. The default is `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetExecutionHistoryInput AWS API Documentation
    #
    class GetExecutionHistoryInput < Struct.new(
      :execution_arn,
      :max_results,
      :reverse_order,
      :next_token,
      :include_execution_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The list of events that occurred in the execution.
    #   @return [Array<Types::HistoryEvent>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetExecutionHistoryOutput AWS API Documentation
    #
    class GetExecutionHistoryOutput < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the events of an execution.
    #
    # @!attribute [rw] timestamp
    #   The date and time the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of the event.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The id of the event. Events are numbered sequentially, starting at
    #   one.
    #   @return [Integer]
    #
    # @!attribute [rw] previous_event_id
    #   The id of the previous event.
    #   @return [Integer]
    #
    # @!attribute [rw] activity_failed_event_details
    #   Contains details about an activity that failed during an execution.
    #   @return [Types::ActivityFailedEventDetails]
    #
    # @!attribute [rw] activity_schedule_failed_event_details
    #   Contains details about an activity schedule event that failed during
    #   an execution.
    #   @return [Types::ActivityScheduleFailedEventDetails]
    #
    # @!attribute [rw] activity_scheduled_event_details
    #   Contains details about an activity scheduled during an execution.
    #   @return [Types::ActivityScheduledEventDetails]
    #
    # @!attribute [rw] activity_started_event_details
    #   Contains details about the start of an activity during an execution.
    #   @return [Types::ActivityStartedEventDetails]
    #
    # @!attribute [rw] activity_succeeded_event_details
    #   Contains details about an activity that successfully terminated
    #   during an execution.
    #   @return [Types::ActivitySucceededEventDetails]
    #
    # @!attribute [rw] activity_timed_out_event_details
    #   Contains details about an activity timeout that occurred during an
    #   execution.
    #   @return [Types::ActivityTimedOutEventDetails]
    #
    # @!attribute [rw] task_failed_event_details
    #   Contains details about the failure of a task.
    #   @return [Types::TaskFailedEventDetails]
    #
    # @!attribute [rw] task_scheduled_event_details
    #   Contains details about a task that was scheduled.
    #   @return [Types::TaskScheduledEventDetails]
    #
    # @!attribute [rw] task_start_failed_event_details
    #   Contains details about a task that failed to start.
    #   @return [Types::TaskStartFailedEventDetails]
    #
    # @!attribute [rw] task_started_event_details
    #   Contains details about a task that was started.
    #   @return [Types::TaskStartedEventDetails]
    #
    # @!attribute [rw] task_submit_failed_event_details
    #   Contains details about a task that where the submit failed.
    #   @return [Types::TaskSubmitFailedEventDetails]
    #
    # @!attribute [rw] task_submitted_event_details
    #   Contains details about a submitted task.
    #   @return [Types::TaskSubmittedEventDetails]
    #
    # @!attribute [rw] task_succeeded_event_details
    #   Contains details about a task that succeeded.
    #   @return [Types::TaskSucceededEventDetails]
    #
    # @!attribute [rw] task_timed_out_event_details
    #   Contains details about a task that timed out.
    #   @return [Types::TaskTimedOutEventDetails]
    #
    # @!attribute [rw] execution_failed_event_details
    #   Contains details about an execution failure event.
    #   @return [Types::ExecutionFailedEventDetails]
    #
    # @!attribute [rw] execution_started_event_details
    #   Contains details about the start of the execution.
    #   @return [Types::ExecutionStartedEventDetails]
    #
    # @!attribute [rw] execution_succeeded_event_details
    #   Contains details about the successful termination of the execution.
    #   @return [Types::ExecutionSucceededEventDetails]
    #
    # @!attribute [rw] execution_aborted_event_details
    #   Contains details about an abort of an execution.
    #   @return [Types::ExecutionAbortedEventDetails]
    #
    # @!attribute [rw] execution_timed_out_event_details
    #   Contains details about the execution timeout that occurred during
    #   the execution.
    #   @return [Types::ExecutionTimedOutEventDetails]
    #
    # @!attribute [rw] map_state_started_event_details
    #   Contains details about Map state that was started.
    #   @return [Types::MapStateStartedEventDetails]
    #
    # @!attribute [rw] map_iteration_started_event_details
    #   Contains details about an iteration of a Map state that was started.
    #   @return [Types::MapIterationEventDetails]
    #
    # @!attribute [rw] map_iteration_succeeded_event_details
    #   Contains details about an iteration of a Map state that succeeded.
    #   @return [Types::MapIterationEventDetails]
    #
    # @!attribute [rw] map_iteration_failed_event_details
    #   Contains details about an iteration of a Map state that failed.
    #   @return [Types::MapIterationEventDetails]
    #
    # @!attribute [rw] map_iteration_aborted_event_details
    #   Contains details about an iteration of a Map state that was aborted.
    #   @return [Types::MapIterationEventDetails]
    #
    # @!attribute [rw] lambda_function_failed_event_details
    #   Contains details about a Lambda function that failed during an
    #   execution.
    #   @return [Types::LambdaFunctionFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_schedule_failed_event_details
    #   Contains details about a failed Lambda function schedule event that
    #   occurred during an execution.
    #   @return [Types::LambdaFunctionScheduleFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_scheduled_event_details
    #   Contains details about a Lambda function scheduled during an
    #   execution.
    #   @return [Types::LambdaFunctionScheduledEventDetails]
    #
    # @!attribute [rw] lambda_function_start_failed_event_details
    #   Contains details about a lambda function that failed to start during
    #   an execution.
    #   @return [Types::LambdaFunctionStartFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_succeeded_event_details
    #   Contains details about a Lambda function that terminated
    #   successfully during an execution.
    #   @return [Types::LambdaFunctionSucceededEventDetails]
    #
    # @!attribute [rw] lambda_function_timed_out_event_details
    #   Contains details about a Lambda function timeout that occurred
    #   during an execution.
    #   @return [Types::LambdaFunctionTimedOutEventDetails]
    #
    # @!attribute [rw] state_entered_event_details
    #   Contains details about a state entered during an execution.
    #   @return [Types::StateEnteredEventDetails]
    #
    # @!attribute [rw] state_exited_event_details
    #   Contains details about an exit from a state during an execution.
    #   @return [Types::StateExitedEventDetails]
    #
    # @!attribute [rw] map_run_started_event_details
    #   Contains details, such as `mapRunArn`, and the start date and time
    #   of a Map Run. `mapRunArn` is the Amazon Resource Name (ARN) of the
    #   Map Run that was started.
    #   @return [Types::MapRunStartedEventDetails]
    #
    # @!attribute [rw] map_run_failed_event_details
    #   Contains error and cause details about a Map Run that failed.
    #   @return [Types::MapRunFailedEventDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/HistoryEvent AWS API Documentation
    #
    class HistoryEvent < Struct.new(
      :timestamp,
      :type,
      :id,
      :previous_event_id,
      :activity_failed_event_details,
      :activity_schedule_failed_event_details,
      :activity_scheduled_event_details,
      :activity_started_event_details,
      :activity_succeeded_event_details,
      :activity_timed_out_event_details,
      :task_failed_event_details,
      :task_scheduled_event_details,
      :task_start_failed_event_details,
      :task_started_event_details,
      :task_submit_failed_event_details,
      :task_submitted_event_details,
      :task_succeeded_event_details,
      :task_timed_out_event_details,
      :execution_failed_event_details,
      :execution_started_event_details,
      :execution_succeeded_event_details,
      :execution_aborted_event_details,
      :execution_timed_out_event_details,
      :map_state_started_event_details,
      :map_iteration_started_event_details,
      :map_iteration_succeeded_event_details,
      :map_iteration_failed_event_details,
      :map_iteration_aborted_event_details,
      :lambda_function_failed_event_details,
      :lambda_function_schedule_failed_event_details,
      :lambda_function_scheduled_event_details,
      :lambda_function_start_failed_event_details,
      :lambda_function_succeeded_event_details,
      :lambda_function_timed_out_event_details,
      :state_entered_event_details,
      :state_exited_event_details,
      :map_run_started_event_details,
      :map_run_failed_event_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about input or output in an execution history event.
    #
    # @!attribute [rw] truncated
    #   Indicates whether input or output was truncated in the response.
    #   Always `false` for API calls.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/HistoryEventExecutionDataDetails AWS API Documentation
    #
    class HistoryEventExecutionDataDetails < Struct.new(
      :truncated)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided Amazon Resource Name (ARN) is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidArn AWS API Documentation
    #
    class InvalidArn < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided Amazon States Language definition is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidDefinition AWS API Documentation
    #
    class InvalidDefinition < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided JSON input data is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidExecutionInput AWS API Documentation
    #
    class InvalidExecutionInput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidLoggingConfiguration AWS API Documentation
    #
    class InvalidLoggingConfiguration < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided name is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidName AWS API Documentation
    #
    class InvalidName < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided JSON output data is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidOutput AWS API Documentation
    #
    class InvalidOutput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided token is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidToken AWS API Documentation
    #
    class InvalidToken < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your `tracingConfiguration` key does not match, or `enabled` has not
    # been set to `true` or `false`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidTracingConfiguration AWS API Documentation
    #
    class InvalidTracingConfiguration < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a Lambda function that failed during an
    # execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LambdaFunctionFailedEventDetails AWS API Documentation
    #
    class LambdaFunctionFailedEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # Contains details about a failed Lambda function schedule event that
    # occurred during an execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LambdaFunctionScheduleFailedEventDetails AWS API Documentation
    #
    class LambdaFunctionScheduleFailedEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # Contains details about a Lambda function scheduled during an
    # execution.
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the scheduled Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The JSON data input to the Lambda function. Length constraints apply
    #   to the payload size, and are expressed as bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] input_details
    #   Contains details about input for an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum allowed duration of the Lambda function.
    #   @return [Integer]
    #
    # @!attribute [rw] task_credentials
    #   The credentials that Step Functions uses for the task.
    #   @return [Types::TaskCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LambdaFunctionScheduledEventDetails AWS API Documentation
    #
    class LambdaFunctionScheduledEventDetails < Struct.new(
      :resource,
      :input,
      :input_details,
      :timeout_in_seconds,
      :task_credentials)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # Contains details about a lambda function that failed to start during
    # an execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LambdaFunctionStartFailedEventDetails AWS API Documentation
    #
    class LambdaFunctionStartFailedEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # Contains details about a Lambda function that successfully terminated
    # during an execution.
    #
    # @!attribute [rw] output
    #   The JSON data output by the Lambda function. Length constraints
    #   apply to the payload size, and are expressed as bytes in UTF-8
    #   encoding.
    #   @return [String]
    #
    # @!attribute [rw] output_details
    #   Contains details about the output of an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LambdaFunctionSucceededEventDetails AWS API Documentation
    #
    class LambdaFunctionSucceededEventDetails < Struct.new(
      :output,
      :output_details)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # Contains details about a Lambda function timeout that occurred during
    # an execution.
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the timeout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LambdaFunctionTimedOutEventDetails AWS API Documentation
    #
    class LambdaFunctionTimedOutEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   100 and the maximum allowed page size is 1000. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListActivitiesInput AWS API Documentation
    #
    class ListActivitiesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activities
    #   The list of activities.
    #   @return [Array<Types::ActivityListItem>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListActivitiesOutput AWS API Documentation
    #
    class ListActivitiesOutput < Struct.new(
      :activities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine whose executions
    #   is listed.
    #
    #   You can specify either a `mapRunArn` or a `stateMachineArn`, but not
    #   both.
    #
    #   You can also return a list of executions associated with a specific
    #   [alias][1] or [version][2], by specifying an alias ARN or a version
    #   ARN in the `stateMachineArn` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    #   [2]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   If specified, only list the executions whose current execution
    #   status matches the given filter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   100 and the maximum allowed page size is 1000. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) of the Map Run that started the child
    #   workflow executions. If the `mapRunArn` field is specified, a list
    #   of all of the child workflow executions started by a Map Run is
    #   returned. For more information, see [Examining Map Run][1] in the
    #   *Step Functions Developer Guide*.
    #
    #   You can specify either a `mapRunArn` or a `stateMachineArn`, but not
    #   both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListExecutionsInput AWS API Documentation
    #
    class ListExecutionsInput < Struct.new(
      :state_machine_arn,
      :status_filter,
      :max_results,
      :next_token,
      :map_run_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] executions
    #   The list of matching executions.
    #   @return [Array<Types::ExecutionListItem>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListExecutionsOutput AWS API Documentation
    #
    class ListExecutionsOutput < Struct.new(
      :executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) of the execution for which the Map
    #   Runs must be listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   100 and the maximum allowed page size is 1000. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListMapRunsInput AWS API Documentation
    #
    class ListMapRunsInput < Struct.new(
      :execution_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] map_runs
    #   An array that lists information related to a Map Run, such as the
    #   Amazon Resource Name (ARN) of the Map Run and the ARN of the state
    #   machine that started the Map Run.
    #   @return [Array<Types::MapRunListItem>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListMapRunsOutput AWS API Documentation
    #
    class ListMapRunsOutput < Struct.new(
      :map_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine for which you
    #   want to list aliases.
    #
    #   If you specify a state machine version ARN, this API returns a list
    #   of aliases for that version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   100 and the maximum allowed page size is 1000. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachineAliasesInput AWS API Documentation
    #
    class ListStateMachineAliasesInput < Struct.new(
      :state_machine_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_aliases
    #   Aliases for the state machine.
    #   @return [Array<Types::StateMachineAliasListItem>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachineAliasesOutput AWS API Documentation
    #
    class ListStateMachineAliasesOutput < Struct.new(
      :state_machine_aliases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   100 and the maximum allowed page size is 1000. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachineVersionsInput AWS API Documentation
    #
    class ListStateMachineVersionsInput < Struct.new(
      :state_machine_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_versions
    #   Versions for the state machine.
    #   @return [Array<Types::StateMachineVersionListItem>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachineVersionsOutput AWS API Documentation
    #
    class ListStateMachineVersionsOutput < Struct.new(
      :state_machine_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   100 and the maximum allowed page size is 1000. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachinesInput AWS API Documentation
    #
    class ListStateMachinesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machines
    #   @return [Array<Types::StateMachineListItem>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachinesOutput AWS API Documentation
    #
    class ListStateMachinesOutput < Struct.new(
      :state_machines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine
    #   or activity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_watch_logs_log_group
    #   An object describing a CloudWatch log group. For more information,
    #   see [AWS::Logs::LogGroup][1] in the CloudFormation User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html
    #   @return [Types::CloudWatchLogsLogGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LogDestination AWS API Documentation
    #
    class LogDestination < Struct.new(
      :cloud_watch_logs_log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `LoggingConfiguration` data type is used to set CloudWatch Logs
    # options.
    #
    # @!attribute [rw] level
    #   Defines which category of execution history events are logged.
    #   @return [String]
    #
    # @!attribute [rw] include_execution_data
    #   Determines whether execution data is included in your log. When set
    #   to `false`, data is excluded.
    #   @return [Boolean]
    #
    # @!attribute [rw] destinations
    #   An array of objects that describes where your execution history
    #   events will be logged. Limited to size 1. Required, if your log
    #   level is not set to `OFF`.
    #   @return [Array<Types::LogDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :level,
      :include_execution_data,
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an iteration of a Map state.
    #
    # @!attribute [rw] name
    #   The name of the iteration’s parent Map state.
    #   @return [String]
    #
    # @!attribute [rw] index
    #   The index of the array belonging to the Map state iteration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/MapIterationEventDetails AWS API Documentation
    #
    class MapIterationEventDetails < Struct.new(
      :name,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about all of the child workflow executions started by
    # a Map Run.
    #
    # @!attribute [rw] pending
    #   The total number of child workflow executions that were started by a
    #   Map Run, but haven't started executing yet.
    #   @return [Integer]
    #
    # @!attribute [rw] running
    #   The total number of child workflow executions that were started by a
    #   Map Run and are currently in-progress.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded
    #   The total number of child workflow executions that were started by a
    #   Map Run and have completed successfully.
    #   @return [Integer]
    #
    # @!attribute [rw] failed
    #   The total number of child workflow executions that were started by a
    #   Map Run, but have failed.
    #   @return [Integer]
    #
    # @!attribute [rw] timed_out
    #   The total number of child workflow executions that were started by a
    #   Map Run and have timed out.
    #   @return [Integer]
    #
    # @!attribute [rw] aborted
    #   The total number of child workflow executions that were started by a
    #   Map Run and were running, but were either stopped by the user or by
    #   Step Functions because the Map Run failed.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The total number of child workflow executions that were started by a
    #   Map Run.
    #   @return [Integer]
    #
    # @!attribute [rw] results_written
    #   Returns the count of child workflow executions whose results were
    #   written by `ResultWriter`. For more information, see
    #   [ResultWriter][1] in the *Step Functions Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/input-output-resultwriter.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/MapRunExecutionCounts AWS API Documentation
    #
    class MapRunExecutionCounts < Struct.new(
      :pending,
      :running,
      :succeeded,
      :failed,
      :timed_out,
      :aborted,
      :total,
      :results_written)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a Map Run failure event that occurred during a
    # state machine execution.
    #
    # @!attribute [rw] error
    #   The error code of the Map Run failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/MapRunFailedEventDetails AWS API Documentation
    #
    class MapRunFailedEventDetails < Struct.new(
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # Contains details about items that were processed in all of the child
    # workflow executions that were started by a Map Run.
    #
    # @!attribute [rw] pending
    #   The total number of items to process in child workflow executions
    #   that haven't started running yet.
    #   @return [Integer]
    #
    # @!attribute [rw] running
    #   The total number of items being processed in child workflow
    #   executions that are currently in-progress.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded
    #   The total number of items processed in child workflow executions
    #   that have completed successfully.
    #   @return [Integer]
    #
    # @!attribute [rw] failed
    #   The total number of items processed in child workflow executions
    #   that have failed.
    #   @return [Integer]
    #
    # @!attribute [rw] timed_out
    #   The total number of items processed in child workflow executions
    #   that have timed out.
    #   @return [Integer]
    #
    # @!attribute [rw] aborted
    #   The total number of items processed in child workflow executions
    #   that were either stopped by the user or by Step Functions, because
    #   the Map Run failed.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The total number of items processed in all the child workflow
    #   executions started by a Map Run.
    #   @return [Integer]
    #
    # @!attribute [rw] results_written
    #   Returns the count of items whose results were written by
    #   `ResultWriter`. For more information, see [ResultWriter][1] in the
    #   *Step Functions Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/input-output-resultwriter.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/MapRunItemCounts AWS API Documentation
    #
    class MapRunItemCounts < Struct.new(
      :pending,
      :running,
      :succeeded,
      :failed,
      :timed_out,
      :aborted,
      :total,
      :results_written)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a specific Map Run.
    #
    # @!attribute [rw] execution_arn
    #   The `executionArn` of the execution from which the Map Run was
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) of the Map Run.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the executed state machine.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date on which the Map Run started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_date
    #   The date on which the Map Run stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/MapRunListItem AWS API Documentation
    #
    class MapRunListItem < Struct.new(
      :execution_arn,
      :map_run_arn,
      :state_machine_arn,
      :start_date,
      :stop_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a Map Run that was started during a state
    # machine execution.
    #
    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) of a Map Run that was started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/MapRunStartedEventDetails AWS API Documentation
    #
    class MapRunStartedEventDetails < Struct.new(
      :map_run_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a Map state that was started.
    #
    # @!attribute [rw] length
    #   The size of the array for Map state iterations.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/MapStateStartedEventDetails AWS API Documentation
    #
    class MapStateStartedEventDetails < Struct.new(
      :length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request is missing a required parameter. This error occurs if both
    # `definition` and `roleArn` are not specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/MissingRequiredParameter AWS API Documentation
    #
    class MissingRequiredParameter < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only publish the state machine version if the current state
    #   machine's revision ID matches the specified ID.
    #
    #   Use this option to avoid publishing a version if the state machine
    #   changed since you last updated it. If the specified revision ID
    #   doesn't match the state machine's current revision ID, the API
    #   returns `ConflictException`.
    #
    #   <note markdown="1"> To specify an initial revision ID for a state machine with no
    #   revision ID assigned, specify the string `INITIAL` for the
    #   `revisionId` parameter. For example, you can specify a `revisionID`
    #   of `INITIAL` when you create a state machine using the
    #   CreateStateMachine API action.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the state machine version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/PublishStateMachineVersionInput AWS API Documentation
    #
    class PublishStateMachineVersionInput < Struct.new(
      :state_machine_arn,
      :revision_id,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] creation_date
    #   The date the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) (ARN) that identifies the state
    #   machine version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/PublishStateMachineVersionOutput AWS API Documentation
    #
    class PublishStateMachineVersionOutput < Struct.new(
      :creation_date,
      :state_machine_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Could not find the referenced resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ResourceNotFound AWS API Documentation
    #
    class ResourceNotFound < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the routing configuration of a state machine
    # alias. In a routing configuration, you define an array of objects that
    # specify up to two state machine versions. You also specify the
    # percentage of traffic to be routed to each version.
    #
    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) that identifies one or two state
    #   machine versions defined in the routing configuration.
    #
    #   If you specify the ARN of a second version, it must belong to the
    #   same state machine as the first version.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The percentage of traffic you want to route to the second state
    #   machine version. The sum of the weights in the routing configuration
    #   must be equal to 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/RoutingConfigurationListItem AWS API Documentation
    #
    class RoutingConfigurationListItem < Struct.new(
      :state_machine_version_arn,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_token
    #   The token that represents this task. Task tokens are generated by
    #   Step Functions when tasks are assigned to a worker, or in the
    #   [context object][1] when a workflow enters a task state. See
    #   GetActivityTaskOutput$taskToken.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskFailureInput AWS API Documentation
    #
    class SendTaskFailureInput < Struct.new(
      :task_token,
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskFailureOutput AWS API Documentation
    #
    class SendTaskFailureOutput < Aws::EmptyStructure; end

    # @!attribute [rw] task_token
    #   The token that represents this task. Task tokens are generated by
    #   Step Functions when tasks are assigned to a worker, or in the
    #   [context object][1] when a workflow enters a task state. See
    #   GetActivityTaskOutput$taskToken.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskHeartbeatInput AWS API Documentation
    #
    class SendTaskHeartbeatInput < Struct.new(
      :task_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskHeartbeatOutput AWS API Documentation
    #
    class SendTaskHeartbeatOutput < Aws::EmptyStructure; end

    # @!attribute [rw] task_token
    #   The token that represents this task. Task tokens are generated by
    #   Step Functions when tasks are assigned to a worker, or in the
    #   [context object][1] when a workflow enters a task state. See
    #   GetActivityTaskOutput$taskToken.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The JSON output of the task. Length constraints apply to the payload
    #   size, and are expressed as bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskSuccessInput AWS API Documentation
    #
    class SendTaskSuccessInput < Struct.new(
      :task_token,
      :output)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskSuccessOutput AWS API Documentation
    #
    class SendTaskSuccessOutput < Aws::EmptyStructure; end

    # The request would cause a service quota to be exceeded.
    #
    # HTTP Status Code: 402
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to execute.
    #
    #   The `stateMachineArn` parameter accepts one of the following inputs:
    #
    #   * **An unqualified state machine ARN** – Refers to a state machine
    #     ARN that isn't qualified with a version or alias ARN. The
    #     following is an example of an unqualified state machine ARN.
    #
    #     `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>`
    #
    #     Step Functions doesn't associate state machine executions that
    #     you start with an unqualified ARN with a version. This is true
    #     even if that version uses the same revision that the execution
    #     used.
    #
    #   * **A state machine version ARN** – Refers to a version ARN, which
    #     is a combination of state machine ARN and the version number
    #     separated by a colon (:). The following is an example of the ARN
    #     for version 10.
    #
    #     `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>:10`
    #
    #     Step Functions doesn't associate executions that you start with a
    #     version ARN with any aliases that point to that version.
    #
    #   * **A state machine alias ARN** – Refers to an alias ARN, which is a
    #     combination of state machine ARN and the alias name separated by a
    #     colon (:). The following is an example of the ARN for an alias
    #     named `PROD`.
    #
    #     `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD>`
    #
    #     Step Functions associates executions that you start with an alias
    #     ARN with that alias and the state machine version used for that
    #     execution.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Optional name of the execution. This name must be unique for your
    #   Amazon Web Services account, Region, and state machine for 90 days.
    #   For more information, see [ Limits Related to State Machine
    #   Executions][1] in the *Step Functions Developer Guide*.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The string that contains the JSON input data for the execution, for
    #   example:
    #
    #   `"input": "\{"first_name" : "test"\}"`
    #
    #   <note markdown="1"> If you don't include any JSON input data, you still must include
    #   the two braces, for example: `"input": "\{\}"`
    #
    #    </note>
    #
    #   Length constraints apply to the payload size, and are expressed as
    #   bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] trace_header
    #   Passes the X-Ray trace header. The trace header can also be passed
    #   in the request payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartExecutionInput AWS API Documentation
    #
    class StartExecutionInput < Struct.new(
      :state_machine_arn,
      :name,
      :input,
      :trace_header)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that identifies the execution.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date the execution is started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartExecutionOutput AWS API Documentation
    #
    class StartExecutionOutput < Struct.new(
      :execution_arn,
      :start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to execute.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the execution.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The string that contains the JSON input data for the execution, for
    #   example:
    #
    #   `"input": "\{"first_name" : "test"\}"`
    #
    #   <note markdown="1"> If you don't include any JSON input data, you still must include
    #   the two braces, for example: `"input": "\{\}"`
    #
    #    </note>
    #
    #   Length constraints apply to the payload size, and are expressed as
    #   bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] trace_header
    #   Passes the X-Ray trace header. The trace header can also be passed
    #   in the request payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartSyncExecutionInput AWS API Documentation
    #
    class StartSyncExecutionInput < Struct.new(
      :state_machine_arn,
      :name,
      :input,
      :trace_header)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that identifies the execution.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) that identifies the state machine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the execution.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date the execution is started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_date
    #   If the execution has already ended, the date the execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The string that contains the JSON input data of the execution.
    #   Length constraints apply to the payload size, and are expressed as
    #   bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] input_details
    #   Provides details about execution input or output.
    #   @return [Types::CloudWatchEventsExecutionDataDetails]
    #
    # @!attribute [rw] output
    #   The JSON output data of the execution. Length constraints apply to
    #   the payload size, and are expressed as bytes in UTF-8 encoding.
    #
    #   <note markdown="1"> This field is set only if the execution succeeds. If the execution
    #   fails, this field is null.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] output_details
    #   Provides details about execution input or output.
    #   @return [Types::CloudWatchEventsExecutionDataDetails]
    #
    # @!attribute [rw] trace_header
    #   The X-Ray trace header that was passed to the execution.
    #   @return [String]
    #
    # @!attribute [rw] billing_details
    #   An object that describes workflow billing details, including billed
    #   duration and memory use.
    #   @return [Types::BillingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartSyncExecutionOutput AWS API Documentation
    #
    class StartSyncExecutionOutput < Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :start_date,
      :stop_date,
      :status,
      :error,
      :cause,
      :input,
      :input_details,
      :output,
      :output_details,
      :trace_header,
      :billing_details)
      SENSITIVE = [:error, :cause, :input, :output]
      include Aws::Structure
    end

    # Contains details about a state entered during an execution.
    #
    # @!attribute [rw] name
    #   The name of the state.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The string that contains the JSON input data for the state. Length
    #   constraints apply to the payload size, and are expressed as bytes in
    #   UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] input_details
    #   Contains details about the input for an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateEnteredEventDetails AWS API Documentation
    #
    class StateEnteredEventDetails < Struct.new(
      :name,
      :input,
      :input_details)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # Contains details about an exit from a state during an execution.
    #
    # @!attribute [rw] name
    #   The name of the state.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The JSON output data of the state. Length constraints apply to the
    #   payload size, and are expressed as bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] output_details
    #   Contains details about the output of an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateExitedEventDetails AWS API Documentation
    #
    class StateExitedEventDetails < Struct.new(
      :name,
      :output,
      :output_details)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # Contains details about a specific state machine alias.
    #
    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) that identifies a state machine
    #   alias. The alias ARN is a combination of state machine ARN and the
    #   alias name separated by a colon (:). For example,
    #   `stateMachineARN:PROD`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date of a state machine alias.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateMachineAliasListItem AWS API Documentation
    #
    class StateMachineAliasListItem < Struct.new(
      :state_machine_alias_arn,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A state machine with the same name but a different definition or role
    # ARN already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateMachineAlreadyExists AWS API Documentation
    #
    class StateMachineAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified state machine is being deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateMachineDeleting AWS API Documentation
    #
    class StateMachineDeleting < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified state machine does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateMachineDoesNotExist AWS API Documentation
    #
    class StateMachineDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of state machines has been reached. Existing state
    # machines must be deleted before a new state machine can be created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateMachineLimitExceeded AWS API Documentation
    #
    class StateMachineLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the state machine.
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) that identifies the state machine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the state machine.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the state machine is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateMachineListItem AWS API Documentation
    #
    class StateMachineListItem < Struct.new(
      :state_machine_arn,
      :name,
      :type,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateMachineTypeNotSupported AWS API Documentation
    #
    class StateMachineTypeNotSupported < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a specific state machine version.
    #
    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) that identifies a state machine
    #   version. The version ARN is a combination of state machine ARN and
    #   the version number separated by a colon (:). For example,
    #   `stateMachineARN:1`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date of a state machine version.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateMachineVersionListItem AWS API Documentation
    #
    class StateMachineVersionListItem < Struct.new(
      :state_machine_version_arn,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) of the execution to stop.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StopExecutionInput AWS API Documentation
    #
    class StopExecutionInput < Struct.new(
      :execution_arn,
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # @!attribute [rw] stop_date
    #   The date the execution is stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StopExecutionOutput AWS API Documentation
    #
    class StopExecutionOutput < Struct.new(
      :stop_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tags are key-value pairs that can be associated with Step Functions
    # state machines and activities.
    #
    # An array of key-value pairs. For more information, see [Using Cost
    # Allocation Tags][1] in the *Amazon Web Services Billing and Cost
    # Management User Guide*, and [Controlling Access Using IAM Tags][2].
    #
    # Tags may only contain Unicode letters, digits, white space, or these
    # symbols: `_ . : / = + - @`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #
    # @!attribute [rw] key
    #   The key of a tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine
    #   or activity.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to add to a resource.
    #
    #   Tags may only contain Unicode letters, digits, white space, or these
    #   symbols: `_ . : / = + - @`.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # Contains details about the credentials that Step Functions uses for a
    # task.
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that Step Functions assumes for the task. The
    #   role can allow cross-account access to resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskCredentials AWS API Documentation
    #
    class TaskCredentials < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskDoesNotExist AWS API Documentation
    #
    class TaskDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a task failure event.
    #
    # @!attribute [rw] resource_type
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskFailedEventDetails AWS API Documentation
    #
    class TaskFailedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # Contains details about a task scheduled during an execution.
    #
    # @!attribute [rw] resource_type
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The region of the scheduled task
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The JSON data passed to the resource referenced in a task state.
    #   Length constraints apply to the payload size, and are expressed as
    #   bytes in UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum allowed duration of the task.
    #   @return [Integer]
    #
    # @!attribute [rw] heartbeat_in_seconds
    #   The maximum allowed duration between two heartbeats for the task.
    #   @return [Integer]
    #
    # @!attribute [rw] task_credentials
    #   The credentials that Step Functions uses for the task.
    #   @return [Types::TaskCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskScheduledEventDetails AWS API Documentation
    #
    class TaskScheduledEventDetails < Struct.new(
      :resource_type,
      :resource,
      :region,
      :parameters,
      :timeout_in_seconds,
      :heartbeat_in_seconds,
      :task_credentials)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # Contains details about a task that failed to start during an
    # execution.
    #
    # @!attribute [rw] resource_type
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskStartFailedEventDetails AWS API Documentation
    #
    class TaskStartFailedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # Contains details about the start of a task during an execution.
    #
    # @!attribute [rw] resource_type
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskStartedEventDetails AWS API Documentation
    #
    class TaskStartedEventDetails < Struct.new(
      :resource_type,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a task that failed to submit during an
    # execution.
    #
    # @!attribute [rw] resource_type
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskSubmitFailedEventDetails AWS API Documentation
    #
    class TaskSubmitFailedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # Contains details about a task submitted to a resource .
    #
    # @!attribute [rw] resource_type
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The response from a resource when a task has started. Length
    #   constraints apply to the payload size, and are expressed as bytes in
    #   UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] output_details
    #   Contains details about the output of an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskSubmittedEventDetails AWS API Documentation
    #
    class TaskSubmittedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :output,
      :output_details)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # Contains details about the successful completion of a task state.
    #
    # @!attribute [rw] resource_type
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The full JSON response from a resource when a task has succeeded.
    #   This response becomes the output of the related task. Length
    #   constraints apply to the payload size, and are expressed as bytes in
    #   UTF-8 encoding.
    #   @return [String]
    #
    # @!attribute [rw] output_details
    #   Contains details about the output of an execution history event.
    #   @return [Types::HistoryEventExecutionDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskSucceededEventDetails AWS API Documentation
    #
    class TaskSucceededEventDetails < Struct.new(
      :resource_type,
      :resource,
      :output,
      :output_details)
      SENSITIVE = [:output]
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskTimedOut AWS API Documentation
    #
    class TaskTimedOut < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a resource timeout that occurred during an
    # execution.
    #
    # @!attribute [rw] resource_type
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskTimedOutEventDetails AWS API Documentation
    #
    class TaskTimedOutEventDetails < Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause)
      SENSITIVE = [:error, :cause]
      include Aws::Structure
    end

    # You've exceeded the number of tags allowed for a resource. See the [
    # Limits Topic][1] in the Step Functions Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TooManyTags AWS API Documentation
    #
    class TooManyTags < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Selects whether or not the state machine's X-Ray tracing is enabled.
    # Default is `false`
    #
    # @!attribute [rw] enabled
    #   When set to `true`, X-Ray tracing is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TracingConfiguration AWS API Documentation
    #
    class TracingConfiguration < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine
    #   or activity.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] map_run_arn
    #   The Amazon Resource Name (ARN) of a Map Run.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of child workflow executions that can be
    #   specified to run in parallel for the Map Run at the same time.
    #   @return [Integer]
    #
    # @!attribute [rw] tolerated_failure_percentage
    #   The maximum percentage of failed items before the Map Run fails.
    #   @return [Float]
    #
    # @!attribute [rw] tolerated_failure_count
    #   The maximum number of failed items before the Map Run fails.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateMapRunInput AWS API Documentation
    #
    class UpdateMapRunInput < Struct.new(
      :map_run_arn,
      :max_concurrency,
      :tolerated_failure_percentage,
      :tolerated_failure_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateMapRunOutput AWS API Documentation
    #
    class UpdateMapRunOutput < Aws::EmptyStructure; end

    # @!attribute [rw] state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the state machine alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   The routing configuration of the state machine alias.
    #
    #   An array of `RoutingConfig` objects that specifies up to two state
    #   machine versions that the alias starts executions for.
    #   @return [Array<Types::RoutingConfigurationListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachineAliasInput AWS API Documentation
    #
    class UpdateStateMachineAliasInput < Struct.new(
      :state_machine_alias_arn,
      :description,
      :routing_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] update_date
    #   The date and time the state machine alias was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachineAliasOutput AWS API Documentation
    #
    class UpdateStateMachineAliasOutput < Struct.new(
      :update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Amazon States Language definition of the state machine. See
    #   [Amazon States Language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Use the `LoggingConfiguration` data type to set CloudWatch Logs
    #   options.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] tracing_configuration
    #   Selects whether X-Ray tracing is enabled.
    #   @return [Types::TracingConfiguration]
    #
    # @!attribute [rw] publish
    #   Specifies whether the state machine version is published. The
    #   default is `false`. To publish a version after updating the state
    #   machine, set `publish` to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] version_description
    #   An optional description of the state machine version to publish.
    #
    #   You can only specify the `versionDescription` parameter if you've
    #   set `publish` to `true`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachineInput AWS API Documentation
    #
    class UpdateStateMachineInput < Struct.new(
      :state_machine_arn,
      :definition,
      :role_arn,
      :logging_configuration,
      :tracing_configuration,
      :publish,
      :version_description)
      SENSITIVE = [:definition, :version_description]
      include Aws::Structure
    end

    # @!attribute [rw] update_date
    #   The date and time the state machine was updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   The revision identifier for the updated state machine.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_version_arn
    #   The Amazon Resource Name (ARN) of the published state machine
    #   version.
    #
    #   If the `publish` parameter isn't set to `true`, this field returns
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachineOutput AWS API Documentation
    #
    class UpdateStateMachineOutput < Struct.new(
      :update_date,
      :revision_id,
      :state_machine_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input does not satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The input does not satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
