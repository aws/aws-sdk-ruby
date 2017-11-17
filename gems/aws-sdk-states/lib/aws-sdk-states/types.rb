# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::States
  module Types

    # Contains details about an activity which failed during an execution.
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

    # Contains details about an activity schedule failure which occurred
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

    # Contains details about an activity which successfully terminated
    # during an execution.
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

    # Contains details about an activity timeout which occurred during an
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

    # @note When making an API call, you may pass CreateActivityInput
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
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
    #   [1]: http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateActivityInput AWS API Documentation
    #
    class CreateActivityInput < Struct.new(
      :name)
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
    #       }
    #
    # @!attribute [rw] name
    #   The name of the state machine. This name must be unique for your AWS
    #   account and region for 90 days. For more information, see [ Limits
    #   Related to State Machine Executions][1] in the *AWS Step Functions
    #   Developer Guide*.
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
    #   [1]: http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Amazon States Language definition of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to use for this state
    #   machine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachineInput AWS API Documentation
    #
    class CreateStateMachineInput < Struct.new(
      :name,
      :definition,
      :role_arn)
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
    #   The Amazon States Language definition of the state machine.
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
    #   The Amazon States Language definition of the state machine.
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

    # Contains details about the execution timeout which occurred during the
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
    #   100 and the maximum allowed page size is 100. A value of 0 uses the
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
    #   If a `nextToken` is returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
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
    #   If a `nextToken` is returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
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
    #   The date the event occurred.
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
    #   Contains details about an activity which failed during an execution.
    #   @return [Types::ActivityFailedEventDetails]
    #
    # @!attribute [rw] activity_schedule_failed_event_details
    #   Contains details about an activity schedule event which failed
    #   during an execution.
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
    #   Contains details about an activity which successfully terminated
    #   during an execution.
    #   @return [Types::ActivitySucceededEventDetails]
    #
    # @!attribute [rw] activity_timed_out_event_details
    #   Contains details about an activity timeout which occurred during an
    #   execution.
    #   @return [Types::ActivityTimedOutEventDetails]
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
    #   Contains details about the execution timeout which occurred during
    #   the execution.
    #   @return [Types::ExecutionTimedOutEventDetails]
    #
    # @!attribute [rw] lambda_function_failed_event_details
    #   Contains details about a lambda function which failed during an
    #   execution.
    #   @return [Types::LambdaFunctionFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_schedule_failed_event_details
    #   Contains details about a failed lambda function schedule event which
    #   occurred during an execution.
    #   @return [Types::LambdaFunctionScheduleFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_scheduled_event_details
    #   Contains details about a lambda function scheduled during an
    #   execution.
    #   @return [Types::LambdaFunctionScheduledEventDetails]
    #
    # @!attribute [rw] lambda_function_start_failed_event_details
    #   Contains details about a lambda function which failed to start
    #   during an execution.
    #   @return [Types::LambdaFunctionStartFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_succeeded_event_details
    #   Contains details about a lambda function which terminated
    #   successfully during an execution.
    #   @return [Types::LambdaFunctionSucceededEventDetails]
    #
    # @!attribute [rw] lambda_function_timed_out_event_details
    #   Contains details about a lambda function timeout which occurred
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

    # Contains details about a lambda function which failed during an
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

    # Contains details about a failed lambda function schedule event which
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

    # Contains details about a lambda function which failed to start during
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

    # Contains details about a lambda function which successfully terminated
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

    # Contains details about a lambda function timeout which occurred during
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
    #   100 and the maximum allowed page size is 100. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a `nextToken` is returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
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
    #   If a `nextToken` is returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
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
    #   100 and the maximum allowed page size is 100. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a `nextToken` is returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
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
    #   If a `nextToken` is returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
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
    #   100 and the maximum allowed page size is 100. A value of 0 uses the
    #   default.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a `nextToken` is returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
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
    #   If a `nextToken` is returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachinesOutput AWS API Documentation
    #
    class ListStateMachinesOutput < Struct.new(
      :state_machines,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendTaskFailureInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #         error: "Error",
    #         cause: "Cause",
    #       }
    #
    # @!attribute [rw] task_token
    #   The token that represents this task. Task tokens are generated by
    #   the service when the tasks are assigned to a worker (see
    #   GetActivityTask::taskToken).
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An arbitrary error code that identifies the cause of the failure.
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
    #         output: "Data", # required
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
    #         input: "Data",
    #       }
    #
    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to execute.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the execution. This name must be unique for your AWS
    #   account and region for 90 days. For more information, see [ Limits
    #   Related to State Machine Executions][1] in the *AWS Step Functions
    #   Developer Guide*.
    #
    #   An execution can't use the name of another execution for 90 days.
    #
    #    When you make multiple `StartExecution` calls with the same name,
    #   the new execution doesn't run and the following rules apply:
    #
    #    * When the original execution is open and the execution input from
    #     the new call is *different*, the `ExecutionAlreadyExists` message
    #     is returned.
    #
    #   * When the original execution is open and the execution input from
    #     the new call is *identical*, the `Success` message is returned.
    #
    #   * When the original execution is closed, the
    #     `ExecutionAlreadyExists` message is returned regardless of input.
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
    #   [1]: http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
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
    #         error: "Error",
    #         cause: "Cause",
    #       }
    #
    # @!attribute [rw] execution_arn
    #   The Amazon Resource Name (ARN) of the execution to stop.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An arbitrary error code that identifies the cause of the
    #   termination.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the termination.
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
    #   The Amazon States Language definition of the state machine.
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
