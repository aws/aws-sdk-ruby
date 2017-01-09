# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SFN
  module Types

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    class ActivityFailedEventDetails < Struct.new(
      :error,
      :cause)
      include Aws::Structure
    end

    # @!attribute [rw] activity_arn
    #   The Amazon Resource Name (ARN) that identifies the activity.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the activity.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the activity was created.
    #   @return [Time]
    #
    class ActivityListItem < Struct.new(
      :activity_arn,
      :name,
      :creation_date)
      include Aws::Structure
    end

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    class ActivityScheduleFailedEventDetails < Struct.new(
      :error,
      :cause)
      include Aws::Structure
    end

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
    class ActivityScheduledEventDetails < Struct.new(
      :resource,
      :input,
      :timeout_in_seconds,
      :heartbeat_in_seconds)
      include Aws::Structure
    end

    # @!attribute [rw] worker_name
    #   The name of the worker that the task was assigned to. These names
    #   are provided by the workers when calling GetActivityTask.
    #   @return [String]
    #
    class ActivityStartedEventDetails < Struct.new(
      :worker_name)
      include Aws::Structure
    end

    # @!attribute [rw] output
    #   The JSON data output by the activity task.
    #   @return [String]
    #
    class ActivitySucceededEventDetails < Struct.new(
      :output)
      include Aws::Structure
    end

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the timeout.
    #   @return [String]
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
    #   your AWS account and region.
    #   @return [String]
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
    #   The date the activity was created.
    #   @return [Time]
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
    #   account and region.
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
    #   The date the state machine was created.
    #   @return [Time]
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
    class DeleteActivityInput < Struct.new(
      :activity_arn)
      include Aws::Structure
    end

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
    class DeleteStateMachineInput < Struct.new(
      :state_machine_arn)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the activity was created.
    #   @return [Time]
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
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the execution.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date the execution was started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_date
    #   If the execution has already ended, the date the execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] input
    #   The JSON input data of the execution.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The JSON output data of the execution.
    #   @return [String]
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
    #   The Amazon Resource Name (ARN) of the IAM role used for executing
    #   this state machine.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the state machine was created.
    #   @return [Time]
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

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    class ExecutionAbortedEventDetails < Struct.new(
      :error,
      :cause)
      include Aws::Structure
    end

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    class ExecutionFailedEventDetails < Struct.new(
      :error,
      :cause)
      include Aws::Structure
    end

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
    class ExecutionListItem < Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :status,
      :start_date,
      :stop_date)
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   The JSON data input to the execution.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used for executing
    #   AWS Lambda tasks.
    #   @return [String]
    #
    class ExecutionStartedEventDetails < Struct.new(
      :input,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] output
    #   The JSON data output by the execution.
    #   @return [String]
    #
    class ExecutionSucceededEventDetails < Struct.new(
      :output)
      include Aws::Structure
    end

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the timeout.
    #   @return [String]
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
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] worker_name
    #   An arbitrary name may be provided in order to identify the worker
    #   that the task is assigned to. This name will be used when it is
    #   logged in the execution history.
    #   @return [String]
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
    #   The JSON input data for the task.
    #   @return [String]
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
    #   The maximum number of results that will be returned per call.
    #   `nextToken` can be used to obtain further pages of results. The
    #   default is 100 and the maximum allowed page size is 1000.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   Lists events in descending order of their `timeStamp`.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   If a `nextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
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
    #   If a `nextToken` is returned, there are more results available. To
    #   retrieve the next page of results, make the call again using the
    #   returned token in `nextToken`. Keep all other arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    class GetExecutionHistoryOutput < Struct.new(
      :events,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] timestamp
    #   The date the event occured.
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
    #   @return [Types::ActivityFailedEventDetails]
    #
    # @!attribute [rw] activity_schedule_failed_event_details
    #   @return [Types::ActivityScheduleFailedEventDetails]
    #
    # @!attribute [rw] activity_scheduled_event_details
    #   @return [Types::ActivityScheduledEventDetails]
    #
    # @!attribute [rw] activity_started_event_details
    #   @return [Types::ActivityStartedEventDetails]
    #
    # @!attribute [rw] activity_succeeded_event_details
    #   @return [Types::ActivitySucceededEventDetails]
    #
    # @!attribute [rw] activity_timed_out_event_details
    #   @return [Types::ActivityTimedOutEventDetails]
    #
    # @!attribute [rw] execution_failed_event_details
    #   @return [Types::ExecutionFailedEventDetails]
    #
    # @!attribute [rw] execution_started_event_details
    #   @return [Types::ExecutionStartedEventDetails]
    #
    # @!attribute [rw] execution_succeeded_event_details
    #   @return [Types::ExecutionSucceededEventDetails]
    #
    # @!attribute [rw] execution_aborted_event_details
    #   @return [Types::ExecutionAbortedEventDetails]
    #
    # @!attribute [rw] execution_timed_out_event_details
    #   @return [Types::ExecutionTimedOutEventDetails]
    #
    # @!attribute [rw] lambda_function_failed_event_details
    #   @return [Types::LambdaFunctionFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_schedule_failed_event_details
    #   @return [Types::LambdaFunctionScheduleFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_scheduled_event_details
    #   @return [Types::LambdaFunctionScheduledEventDetails]
    #
    # @!attribute [rw] lambda_function_start_failed_event_details
    #   @return [Types::LambdaFunctionStartFailedEventDetails]
    #
    # @!attribute [rw] lambda_function_succeeded_event_details
    #   @return [Types::LambdaFunctionSucceededEventDetails]
    #
    # @!attribute [rw] lambda_function_timed_out_event_details
    #   @return [Types::LambdaFunctionTimedOutEventDetails]
    #
    # @!attribute [rw] state_entered_event_details
    #   @return [Types::StateEnteredEventDetails]
    #
    # @!attribute [rw] state_exited_event_details
    #   @return [Types::StateExitedEventDetails]
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

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    class LambdaFunctionFailedEventDetails < Struct.new(
      :error,
      :cause)
      include Aws::Structure
    end

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    class LambdaFunctionScheduleFailedEventDetails < Struct.new(
      :error,
      :cause)
      include Aws::Structure
    end

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
    class LambdaFunctionScheduledEventDetails < Struct.new(
      :resource,
      :input,
      :timeout_in_seconds)
      include Aws::Structure
    end

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the failure.
    #   @return [String]
    #
    class LambdaFunctionStartFailedEventDetails < Struct.new(
      :error,
      :cause)
      include Aws::Structure
    end

    # @!attribute [rw] output
    #   The JSON data output by the lambda function.
    #   @return [String]
    #
    class LambdaFunctionSucceededEventDetails < Struct.new(
      :output)
      include Aws::Structure
    end

    # @!attribute [rw] error
    #   The error code of the failure.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A more detailed explanation of the cause of the timeout.
    #   @return [String]
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
    #   The maximum number of results that will be returned per call.
    #   `nextToken` can be used to obtain further pages of results. The
    #   default is 100 and the maximum allowed page size is 1000.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a `nextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
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
    #   If a `nextToken` is returned, there are more results available. To
    #   retrieve the next page of results, make the call again using the
    #   returned token in `nextToken`. Keep all other arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
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
    #   will be listed.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   If specified, only list the executions whose current execution
    #   status matches the given filter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that will be returned per call.
    #   `nextToken` can be used to obtain further pages of results. The
    #   default is 100 and the maximum allowed page size is 1000.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a `nextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
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
    #   If a `nextToken` is returned, there are more results available. To
    #   retrieve the next page of results, make the call again using the
    #   returned token in `nextToken`. Keep all other arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
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
    #   The maximum number of results that will be returned per call.
    #   `nextToken` can be used to obtain further pages of results. The
    #   default is 100 and the maximum allowed page size is 1000.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a `nextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextToken`. Keep all other
    #   arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
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
    #   If a `nextToken` is returned, there are more results available. To
    #   retrieve the next page of results, make the call again using the
    #   returned token in `nextToken`. Keep all other arguments unchanged.
    #
    #   The configured `maxResults` determines how many results can be
    #   returned in a single call.
    #   @return [String]
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
    class SendTaskFailureInput < Struct.new(
      :task_token,
      :error,
      :cause)
      include Aws::Structure
    end

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
    #   GetActivityTask::taskToken).
    #   @return [String]
    #
    class SendTaskHeartbeatInput < Struct.new(
      :task_token)
      include Aws::Structure
    end

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
    #   GetActivityTask::taskToken).
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The JSON output of the task.
    #   @return [String]
    #
    class SendTaskSuccessInput < Struct.new(
      :task_token,
      :output)
      include Aws::Structure
    end

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
    #   account and region.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The JSON input data for the execution.
    #   @return [String]
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
    #   The date the execution was started.
    #   @return [Time]
    #
    class StartExecutionOutput < Struct.new(
      :execution_arn,
      :start_date)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the state.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The JSON input data to the state.
    #   @return [String]
    #
    class StateEnteredEventDetails < Struct.new(
      :name,
      :input)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the state.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The JSON output data of the state.
    #   @return [String]
    #
    class StateExitedEventDetails < Struct.new(
      :name,
      :output)
      include Aws::Structure
    end

    # @!attribute [rw] state_machine_arn
    #   The Amazon Resource Name (ARN) that identifies the state machine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the state machine.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the state machine was created.
    #   @return [Time]
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
    class StopExecutionInput < Struct.new(
      :execution_arn,
      :error,
      :cause)
      include Aws::Structure
    end

    # @!attribute [rw] stop_date
    #   The date the execution was stopped.
    #   @return [Time]
    #
    class StopExecutionOutput < Struct.new(
      :stop_date)
      include Aws::Structure
    end

  end
end
