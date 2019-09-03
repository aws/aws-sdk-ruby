# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
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
      include Aws::Structure
    end

    # Contains details about an activity scheduled during an execution.
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the scheduled activity.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The JSON data input to the activity task.
    #   @return [String]
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
      :timeout_in_seconds,
      :heartbeat_in_seconds)
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
      include Aws::Structure
    end

    # Contains details about an activity that successfully terminated during
    # an execution.
    #
    # @!attribute [rw] output
    #   The JSON data output by the activity task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ActivitySucceededEventDetails AWS API Documentation
    #
    class ActivitySucceededEventDetails < Struct.new(
      :output)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateActivityInput
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the activity to create. This name must be unique for
    #   your AWS account and region for 90 days. For more information, see [
    #   Limits Related to State Machine Executions][1] in the *AWS Step
    #   Functions Developer Guide*.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to add to a resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateActivityInput AWS API Documentation
    #
    class CreateActivityInput < Struct.new(
      :name,
      :tags)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStateMachineInput
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         definition: "Definition", # required
    #         role_arn: "Arn", # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the state machine.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
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
    # @!attribute [rw] tags
    #   Tags to be added when creating a state machine.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachineInput AWS API Documentation
    #
    class CreateStateMachineInput < Struct.new(
      :name,
      :definition,
      :role_arn,
      :tags)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachineOutput AWS API Documentation
    #
    class CreateStateMachineOutput < Struct.new(
      :state_machine_arn,
      :creation_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteActivityInput
    #   data as a hash:
    #
    #       {
    #         activity_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) of the activity to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteActivityInput AWS API Documentation
    #
    class DeleteActivityInput < Struct.new(
      :activity_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteActivityOutput AWS API Documentation
    #
    class DeleteActivityOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteStateMachineInput
    #   data as a hash:
    #
    #       {
    #         state_machine_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineInput AWS API Documentation
    #
    class DeleteStateMachineInput < Struct.new(
      :state_machine_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineOutput AWS API Documentation
    #
    class DeleteStateMachineOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeActivityInput
    #   data as a hash:
    #
    #       {
    #         activity_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) of the activity to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeActivityInput AWS API Documentation
    #
    class DescribeActivityInput < Struct.new(
      :activity_arn)
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
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExecutionInput
    #   data as a hash:
    #
    #       {
    #         execution_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) of the execution to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeExecutionInput AWS API Documentation
    #
    class DescribeExecutionInput < Struct.new(
      :execution_arn)
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
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
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
    #   If the execution has already ended, the date the execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] input
    #   The string that contains the JSON input data of the execution.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The JSON output data of the execution.
    #
    #   <note markdown="1"> This field is set only if the execution succeeds. If the execution
    #   fails, this field is null.
    #
    #    </note>
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
      :output)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStateMachineForExecutionInput
    #   data as a hash:
    #
    #       {
    #         execution_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) of the execution you want state
    #   machine information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineForExecutionInput AWS API Documentation
    #
    class DescribeStateMachineForExecutionInput < Struct.new(
      :execution_arn)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineForExecutionOutput AWS API Documentation
    #
    class DescribeStateMachineForExecutionOutput < Struct.new(
      :state_machine_arn,
      :name,
      :definition,
      :role_arn,
      :update_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStateMachineInput
    #   data as a hash:
    #
    #       {
    #         state_machine_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineInput AWS API Documentation
    #
    class DescribeStateMachineInput < Struct.new(
      :state_machine_arn)
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) that identifies the state machine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the state machine.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
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
    #   Step Functions access to AWS resources.)
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the state machine is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineOutput AWS API Documentation
    #
    class DescribeStateMachineOutput < Struct.new(
      :state_machine_arn,
      :name,
      :status,
      :definition,
      :role_arn,
      :creation_date)
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
      include Aws::Structure
    end

    # Contains details about an execution.
    #
    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) that identifies the execution.
    #   @return [String]
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the executed state machine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the execution.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionListItem AWS API Documentation
    #
    class ExecutionListItem < Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :status,
      :start_date,
      :stop_date)
      include Aws::Structure
    end

    # Contains details about the start of the execution.
    #
    # @!attribute [rw] input
    #   The JSON data input to the execution.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used for executing
    #   AWS Lambda tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionStartedEventDetails AWS API Documentation
    #
    class ExecutionStartedEventDetails < Struct.new(
      :input,
      :role_arn)
      include Aws::Structure
    end

    # Contains details about the successful termination of the execution.
    #
    # @!attribute [rw] output
    #   The JSON data output by the execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ExecutionSucceededEventDetails AWS API Documentation
    #
    class ExecutionSucceededEventDetails < Struct.new(
      :output)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetActivityTaskInput
    #   data as a hash:
    #
    #       {
    #         activity_arn: "Arn", # required
    #         worker_name: "Name",
    #       }
    #
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
    #   The string that contains the JSON input data for the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetActivityTaskOutput AWS API Documentation
    #
    class GetActivityTaskOutput < Struct.new(
      :task_token,
      :input)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExecutionHistoryInput
    #   data as a hash:
    #
    #       {
    #         execution_arn: "Arn", # required
    #         max_results: 1,
    #         reverse_order: false,
    #         next_token: "PageToken",
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetExecutionHistoryInput AWS API Documentation
    #
    class GetExecutionHistoryInput < Struct.new(
      :execution_arn,
      :max_results,
      :reverse_order,
      :next_token)
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
    # @!attribute [rw] lambda_function_failed_event_details
    #   Contains details about a lambda function that failed during an
    #   execution.
    #   @return [Types::LambdaFunctionFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_schedule_failed_event_details
    #   Contains details about a failed lambda function schedule event that
    #   occurred during an execution.
    #   @return [Types::LambdaFunctionScheduleFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_scheduled_event_details
    #   Contains details about a lambda function scheduled during an
    #   execution.
    #   @return [Types::LambdaFunctionScheduledEventDetails]
    #
    # @!attribute [rw] lambda_function_start_failed_event_details
    #   Contains details about a lambda function that failed to start during
    #   an execution.
    #   @return [Types::LambdaFunctionStartFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_succeeded_event_details
    #   Contains details about a lambda function that terminated
    #   successfully during an execution.
    #   @return [Types::LambdaFunctionSucceededEventDetails]
    #
    # @!attribute [rw] lambda_function_timed_out_event_details
    #   Contains details about a lambda function timeout that occurred
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
      :lambda_function_failed_event_details,
      :lambda_function_schedule_failed_event_details,
      :lambda_function_scheduled_event_details,
      :lambda_function_start_failed_event_details,
      :lambda_function_succeeded_event_details,
      :lambda_function_timed_out_event_details,
      :state_entered_event_details,
      :state_exited_event_details)
      include Aws::Structure
    end

    # The provided Amazon Resource Name (ARN) is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidArn AWS API Documentation
    #
    class InvalidArn < Struct.new(
      :message)
      include Aws::Structure
    end

    # The provided Amazon States Language definition is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidDefinition AWS API Documentation
    #
    class InvalidDefinition < Struct.new(
      :message)
      include Aws::Structure
    end

    # The provided JSON input data is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidExecutionInput AWS API Documentation
    #
    class InvalidExecutionInput < Struct.new(
      :message)
      include Aws::Structure
    end

    # The provided name is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidName AWS API Documentation
    #
    class InvalidName < Struct.new(
      :message)
      include Aws::Structure
    end

    # The provided JSON output data is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidOutput AWS API Documentation
    #
    class InvalidOutput < Struct.new(
      :message)
      include Aws::Structure
    end

    # The provided token is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/InvalidToken AWS API Documentation
    #
    class InvalidToken < Struct.new(
      :message)
      include Aws::Structure
    end

    # Contains details about a lambda function that failed during an
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
      include Aws::Structure
    end

    # Contains details about a failed lambda function schedule event that
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
      include Aws::Structure
    end

    # Contains details about a lambda function scheduled during an
    # execution.
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the scheduled lambda function.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The JSON data input to the lambda function.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum allowed duration of the lambda function.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LambdaFunctionScheduledEventDetails AWS API Documentation
    #
    class LambdaFunctionScheduledEventDetails < Struct.new(
      :resource,
      :input,
      :timeout_in_seconds)
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
      include Aws::Structure
    end

    # Contains details about a lambda function that successfully terminated
    # during an execution.
    #
    # @!attribute [rw] output
    #   The JSON data output by the lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/LambdaFunctionSucceededEventDetails AWS API Documentation
    #
    class LambdaFunctionSucceededEventDetails < Struct.new(
      :output)
      include Aws::Structure
    end

    # Contains details about a lambda function timeout that occurred during
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListActivitiesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PageToken",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListActivitiesInput AWS API Documentation
    #
    class ListActivitiesInput < Struct.new(
      :max_results,
      :next_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExecutionsInput
    #   data as a hash:
    #
    #       {
    #         state_machine_arn: "Arn", # required
    #         status_filter: "RUNNING", # accepts RUNNING, SUCCEEDED, FAILED, TIMED_OUT, ABORTED
    #         max_results: 1,
    #         next_token: "PageToken",
    #       }
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine whose executions
    #   is listed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListExecutionsInput AWS API Documentation
    #
    class ListExecutionsInput < Struct.new(
      :state_machine_arn,
      :status_filter,
      :max_results,
      :next_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStateMachinesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PageToken",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachinesInput AWS API Documentation
    #
    class ListStateMachinesInput < Struct.new(
      :max_results,
      :next_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine
    #   or activity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
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
      include Aws::Structure
    end

    # Could not fine the referenced resource. Only state machine and
    # activity ARNs are supported.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendTaskFailureInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #         error: "SensitiveError",
    #         cause: "SensitiveCause",
    #       }
    #
    # @!attribute [rw] task_token
    #   The token that represents this task. Task tokens are generated by
    #   the service when the tasks are assigned to a worker (see
    #   GetActivityTask::taskToken).
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskFailureOutput AWS API Documentation
    #
    class SendTaskFailureOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass SendTaskHeartbeatInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #       }
    #
    # @!attribute [rw] task_token
    #   The token that represents this task. Task tokens are generated by
    #   the service when the tasks are assigned to a worker (see
    #   GetActivityTaskOutput$taskToken).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskHeartbeatInput AWS API Documentation
    #
    class SendTaskHeartbeatInput < Struct.new(
      :task_token)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskHeartbeatOutput AWS API Documentation
    #
    class SendTaskHeartbeatOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass SendTaskSuccessInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #         output: "SensitiveData", # required
    #       }
    #
    # @!attribute [rw] task_token
    #   The token that represents this task. Task tokens are generated by
    #   the service when the tasks are assigned to a worker (see
    #   GetActivityTaskOutput$taskToken).
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The JSON output of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskSuccessInput AWS API Documentation
    #
    class SendTaskSuccessInput < Struct.new(
      :task_token,
      :output)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskSuccessOutput AWS API Documentation
    #
    class SendTaskSuccessOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartExecutionInput
    #   data as a hash:
    #
    #       {
    #         state_machine_arn: "Arn", # required
    #         name: "Name",
    #         input: "SensitiveData",
    #       }
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to execute.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the execution. This name must be unique for your AWS
    #   account, region, and state machine for 90 days. For more
    #   information, see [ Limits Related to State Machine Executions][1] in
    #   the *AWS Step Functions Developer Guide*.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartExecutionInput AWS API Documentation
    #
    class StartExecutionInput < Struct.new(
      :state_machine_arn,
      :name,
      :input)
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
      include Aws::Structure
    end

    # Contains details about a state entered during an execution.
    #
    # @!attribute [rw] name
    #   The name of the state.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The string that contains the JSON input data for the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateEnteredEventDetails AWS API Documentation
    #
    class StateEnteredEventDetails < Struct.new(
      :name,
      :input)
      include Aws::Structure
    end

    # Contains details about an exit from a state during an execution.
    #
    # @!attribute [rw] name
    #   The name of the state.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The JSON output data of the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StateExitedEventDetails AWS API Documentation
    #
    class StateExitedEventDetails < Struct.new(
      :name,
      :output)
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
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
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
      :creation_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopExecutionInput
    #   data as a hash:
    #
    #       {
    #         execution_arn: "Arn", # required
    #         error: "SensitiveError",
    #         cause: "SensitiveCause",
    #       }
    #
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
      include Aws::Structure
    end

    # Tags are key-value pairs that can be associated with Step Functions
    # state machines and activities.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine
    #   or activity.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to add to a resource.
    #
    #   Tags may only contain unicode letters, digits, whitespace, or these
    #   symbols: `_ . : / = + - @`.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskDoesNotExist AWS API Documentation
    #
    class TaskDoesNotExist < Struct.new(
      :message)
      include Aws::Structure
    end

    # Contains details about a task failure event.
    #
    # @!attribute [rw] resource_type
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The service name of the resource in a task state.
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
      include Aws::Structure
    end

    # Contains details about a task scheduled during an execution.
    #
    # @!attribute [rw] resource_type
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The region of the scheduled task
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The JSON data passed to the resource referenced in a task state.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum allowed duration of the task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskScheduledEventDetails AWS API Documentation
    #
    class TaskScheduledEventDetails < Struct.new(
      :resource_type,
      :resource,
      :region,
      :parameters,
      :timeout_in_seconds)
      include Aws::Structure
    end

    # Contains details about a task that failed to start during an
    # execution.
    #
    # @!attribute [rw] resource_type
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The service name of the resource in a task state.
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
      include Aws::Structure
    end

    # Contains details about the start of a task during an execution.
    #
    # @!attribute [rw] resource_type
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskStartedEventDetails AWS API Documentation
    #
    class TaskStartedEventDetails < Struct.new(
      :resource_type,
      :resource)
      include Aws::Structure
    end

    # Contains details about a task that failed to submit during an
    # execution.
    #
    # @!attribute [rw] resource_type
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The service name of the resource in a task state.
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
      include Aws::Structure
    end

    # Contains details about a task submitted to a resource .
    #
    # @!attribute [rw] resource_type
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The response from a resource when a task has started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskSubmittedEventDetails AWS API Documentation
    #
    class TaskSubmittedEventDetails < Struct.new(
      :resource_type,
      :resource,
      :output)
      include Aws::Structure
    end

    # Contains details about the successful completion of a task state.
    #
    # @!attribute [rw] resource_type
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The service name of the resource in a task state.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The full JSON response from a resource when a task has succeeded.
    #   This response becomes the output of the related task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskSucceededEventDetails AWS API Documentation
    #
    class TaskSucceededEventDetails < Struct.new(
      :resource_type,
      :resource,
      :output)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TaskTimedOut AWS API Documentation
    #
    class TaskTimedOut < Struct.new(
      :message)
      include Aws::Structure
    end

    # Contains details about a resource timeout that occurred during an
    # execution.
    #
    # @!attribute [rw] resource_type
    #   The action of the resource called by a task state.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The service name of the resource in a task state.
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
      include Aws::Structure
    end

    # You've exceeded the number of tags allowed for a resource. See the [
    # Limits Topic][1] in the AWS Step Functions Developer Guide.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateStateMachineInput
    #   data as a hash:
    #
    #       {
    #         state_machine_arn: "Arn", # required
    #         definition: "Definition",
    #         role_arn: "Arn",
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachineInput AWS API Documentation
    #
    class UpdateStateMachineInput < Struct.new(
      :state_machine_arn,
      :definition,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] update_date
    #   The date and time the state machine was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachineOutput AWS API Documentation
    #
    class UpdateStateMachineOutput < Struct.new(
      :update_date)
      include Aws::Structure
    end

  end
end
