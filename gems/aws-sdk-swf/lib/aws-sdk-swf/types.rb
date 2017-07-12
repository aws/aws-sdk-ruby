# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SWF
  module Types

    # Unit of work sent to an activity worker.
    #
    # @!attribute [rw] task_token
    #   The opaque string used as a handle on the task. This token is used
    #   by workers to communicate progress and response information back to
    #   the system about the task.
    #   @return [String]
    #
    # @!attribute [rw] activity_id
    #   The unique ID of the task.
    #   @return [String]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ActivityTaskStarted` event recorded in the history.
    #   @return [Integer]
    #
    # @!attribute [rw] workflow_execution
    #   The workflow execution that started this activity task.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] activity_type
    #   The type of this activity task.
    #   @return [Types::ActivityType]
    #
    # @!attribute [rw] input
    #   The inputs provided when the activity task was scheduled. The form
    #   of the input is user defined and should be meaningful to the
    #   activity implementation.
    #   @return [String]
    #
    class ActivityTask < Struct.new(
      :task_token,
      :activity_id,
      :started_event_id,
      :workflow_execution,
      :activity_type,
      :input)
      include Aws::Structure
    end

    # Provides the details of the `ActivityTaskCancelRequested` event.
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `RequestCancelActivityTask`
    #   decision for this cancellation request. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] activity_id
    #   The unique ID of the task.
    #   @return [String]
    #
    class ActivityTaskCancelRequestedEventAttributes < Struct.new(
      :decision_task_completed_event_id,
      :activity_id)
      include Aws::Structure
    end

    # Provides the details of the `ActivityTaskCanceled` event.
    #
    # @!attribute [rw] details
    #   Details of the cancellation.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `ActivityTaskScheduled` event that was recorded when
    #   this activity task was scheduled. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ActivityTaskStarted` event recorded when this
    #   activity task was started. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_cancel_requested_event_id
    #   If set, contains the ID of the last `ActivityTaskCancelRequested`
    #   event recorded for this activity task. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class ActivityTaskCanceledEventAttributes < Struct.new(
      :details,
      :scheduled_event_id,
      :started_event_id,
      :latest_cancel_requested_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ActivityTaskCompleted` event.
    #
    # @!attribute [rw] result
    #   The results of the activity task.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `ActivityTaskScheduled` event that was recorded when
    #   this activity task was scheduled. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ActivityTaskStarted` event recorded when this
    #   activity task was started. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class ActivityTaskCompletedEventAttributes < Struct.new(
      :result,
      :scheduled_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ActivityTaskFailed` event.
    #
    # @!attribute [rw] reason
    #   The reason provided for the failure.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details of the failure.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `ActivityTaskScheduled` event that was recorded when
    #   this activity task was scheduled. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ActivityTaskStarted` event recorded when this
    #   activity task was started. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class ActivityTaskFailedEventAttributes < Struct.new(
      :reason,
      :details,
      :scheduled_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ActivityTaskScheduled` event.
    #
    # @!attribute [rw] activity_type
    #   The type of the activity task.
    #   @return [Types::ActivityType]
    #
    # @!attribute [rw] activity_id
    #   The unique ID of the activity task.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input provided to the activity task.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   Data attached to the event that can be used by the decider in
    #   subsequent workflow tasks. This data isn't sent to the activity.
    #   @return [String]
    #
    # @!attribute [rw] schedule_to_start_timeout
    #   The maximum amount of time the activity task can wait to be assigned
    #   to a worker.
    #   @return [String]
    #
    # @!attribute [rw] schedule_to_close_timeout
    #   The maximum amount of time for this activity task.
    #   @return [String]
    #
    # @!attribute [rw] start_to_close_timeout
    #   The maximum amount of time a worker may take to process the activity
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The task list in which the activity task has been scheduled.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   The priority to assign to the scheduled activity task. If set, this
    #   overrides any default priority value that was assigned when the
    #   activity type was registered.
    #
    #   Valid values are integers that range from Java's
    #   `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision that resulted in the scheduling of this activity task. This
    #   information can be useful for diagnosing problems by tracing back
    #   the chain of events leading up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] heartbeat_timeout
    #   The maximum time before which the worker processing this task must
    #   report progress by calling RecordActivityTaskHeartbeat. If the
    #   timeout is exceeded, the activity task is automatically timed out.
    #   If the worker subsequently attempts to record a heartbeat or return
    #   a result, it is ignored.
    #   @return [String]
    #
    class ActivityTaskScheduledEventAttributes < Struct.new(
      :activity_type,
      :activity_id,
      :input,
      :control,
      :schedule_to_start_timeout,
      :schedule_to_close_timeout,
      :start_to_close_timeout,
      :task_list,
      :task_priority,
      :decision_task_completed_event_id,
      :heartbeat_timeout)
      include Aws::Structure
    end

    # Provides the details of the `ActivityTaskStarted` event.
    #
    # @!attribute [rw] identity
    #   Identity of the worker that was assigned this task. This aids
    #   diagnostics when problems arise. The form of this identity is user
    #   defined.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `ActivityTaskScheduled` event that was recorded when
    #   this activity task was scheduled. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class ActivityTaskStartedEventAttributes < Struct.new(
      :identity,
      :scheduled_event_id)
      include Aws::Structure
    end

    # Status information about an activity task.
    #
    # @!attribute [rw] cancel_requested
    #   Set to `true` if cancellation of the task is requested.
    #   @return [Boolean]
    #
    class ActivityTaskStatus < Struct.new(
      :cancel_requested)
      include Aws::Structure
    end

    # Provides the details of the `ActivityTaskTimedOut` event.
    #
    # @!attribute [rw] timeout_type
    #   The type of the timeout that caused this event.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `ActivityTaskScheduled` event that was recorded when
    #   this activity task was scheduled. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ActivityTaskStarted` event recorded when this
    #   activity task was started. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] details
    #   Contains the content of the `details` parameter for the last call
    #   made by the activity to `RecordActivityTaskHeartbeat`.
    #   @return [String]
    #
    class ActivityTaskTimedOutEventAttributes < Struct.new(
      :timeout_type,
      :scheduled_event_id,
      :started_event_id,
      :details)
      include Aws::Structure
    end

    # Represents an activity type.
    #
    # @note When making an API call, you may pass ActivityType
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         version: "Version", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of this activity.
    #
    #   <note markdown="1"> The combination of activity type name and version must be unique
    #   within a domain.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of this activity.
    #
    #   <note markdown="1"> The combination of activity type name and version must be unique
    #   with in a domain.
    #
    #    </note>
    #   @return [String]
    #
    class ActivityType < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # Configuration settings registered with the activity type.
    #
    # @!attribute [rw] default_task_start_to_close_timeout
    #   The default maximum duration for tasks of an activity type specified
    #   when registering the activity type. You can override this default
    #   when scheduling a task through the `ScheduleActivityTask` Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_task_heartbeat_timeout
    #   The default maximum time, in seconds, before which a worker
    #   processing a task must report progress by calling
    #   RecordActivityTaskHeartbeat.
    #
    #   You can specify this value only when *registering* an activity type.
    #   The registered default value can be overridden when you schedule a
    #   task through the `ScheduleActivityTask` Decision. If the activity
    #   worker subsequently attempts to record a heartbeat or returns a
    #   result, the activity worker receives an `UnknownResource` fault. In
    #   this case, Amazon SWF no longer considers the activity task to be
    #   valid; the activity worker should clean up the activity task.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_task_list
    #   The default task list specified for this activity type at
    #   registration. This default is used if a task list isn't provided
    #   when a task is scheduled through the `ScheduleActivityTask`
    #   Decision. You can override the default registered task list when
    #   scheduling a task through the `ScheduleActivityTask` Decision.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] default_task_priority
    #   The default task priority for tasks of this activity type, specified
    #   at registration. If not set, then `0` is used as the default
    #   priority. This default can be overridden when scheduling an activity
    #   task.
    #
    #   Valid values are integers that range from Java's
    #   `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] default_task_schedule_to_start_timeout
    #   The default maximum duration, specified when registering the
    #   activity type, that a task of an activity type can wait before being
    #   assigned to a worker. You can override this default when scheduling
    #   a task through the `ScheduleActivityTask` Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_task_schedule_to_close_timeout
    #   The default maximum duration, specified when registering the
    #   activity type, for tasks of this activity type. You can override
    #   this default when scheduling a task through the
    #   `ScheduleActivityTask` Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    class ActivityTypeConfiguration < Struct.new(
      :default_task_start_to_close_timeout,
      :default_task_heartbeat_timeout,
      :default_task_list,
      :default_task_priority,
      :default_task_schedule_to_start_timeout,
      :default_task_schedule_to_close_timeout)
      include Aws::Structure
    end

    # Detailed information about an activity type.
    #
    # @!attribute [rw] type_info
    #   General information about the activity type.
    #
    #   The status of activity type (returned in the ActivityTypeInfo
    #   structure) can be one of the following.
    #
    #   * `REGISTERED` – The type is registered and available. Workers
    #     supporting this type should be running.
    #
    #   * `DEPRECATED` – The type was deprecated using
    #     DeprecateActivityType, but is still in use. You should keep
    #     workers supporting this type running. You cannot create new tasks
    #     of this type.
    #   @return [Types::ActivityTypeInfo]
    #
    # @!attribute [rw] configuration
    #   The configuration settings registered with the activity type.
    #   @return [Types::ActivityTypeConfiguration]
    #
    class ActivityTypeDetail < Struct.new(
      :type_info,
      :configuration)
      include Aws::Structure
    end

    # Detailed information about an activity type.
    #
    # @!attribute [rw] activity_type
    #   The ActivityType type structure representing the activity type.
    #   @return [Types::ActivityType]
    #
    # @!attribute [rw] status
    #   The current status of the activity type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the activity type provided in
    #   RegisterActivityType.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time this activity type was created through
    #   RegisterActivityType.
    #   @return [Time]
    #
    # @!attribute [rw] deprecation_date
    #   If DEPRECATED, the date and time DeprecateActivityType was called.
    #   @return [Time]
    #
    class ActivityTypeInfo < Struct.new(
      :activity_type,
      :status,
      :description,
      :creation_date,
      :deprecation_date)
      include Aws::Structure
    end

    # Contains a paginated list of activity type information structures.
    #
    # @!attribute [rw] type_infos
    #   List of activity type information.
    #   @return [Array<Types::ActivityTypeInfo>]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    class ActivityTypeInfos < Struct.new(
      :type_infos,
      :next_page_token)
      include Aws::Structure
    end

    # Provides the details of the `CancelTimer` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass CancelTimerDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         timer_id: "TimerId", # required
    #       }
    #
    # @!attribute [rw] timer_id
    #   The unique ID of the timer to cancel.
    #   @return [String]
    #
    class CancelTimerDecisionAttributes < Struct.new(
      :timer_id)
      include Aws::Structure
    end

    # Provides the details of the `CancelTimerFailed` event.
    #
    # @!attribute [rw] timer_id
    #   The timerId provided in the `CancelTimer` decision that failed.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `CancelTimer` decision to cancel
    #   this timer. This information can be useful for diagnosing problems
    #   by tracing back the chain of events leading up to this event.
    #   @return [Integer]
    #
    class CancelTimerFailedEventAttributes < Struct.new(
      :timer_id,
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Provides the details of the `CancelWorkflowExecution` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass CancelWorkflowExecutionDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         details: "Data",
    #       }
    #
    # @!attribute [rw] details
    #   Details of the cancellation.
    #   @return [String]
    #
    class CancelWorkflowExecutionDecisionAttributes < Struct.new(
      :details)
      include Aws::Structure
    end

    # Provides the details of the `CancelWorkflowExecutionFailed` event.
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `CancelWorkflowExecution`
    #   decision for this cancellation request. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class CancelWorkflowExecutionFailedEventAttributes < Struct.new(
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Provide details of the `ChildWorkflowExecutionCanceled` event.
    #
    # @!attribute [rw] workflow_execution
    #   The child workflow execution that was canceled.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] workflow_type
    #   The type of the child workflow execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] details
    #   Details of the cancellation (if provided).
    #   @return [String]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `StartChildWorkflowExecutionInitiated` event
    #   corresponding to the `StartChildWorkflowExecution` Decision to start
    #   this child workflow execution. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ChildWorkflowExecutionStarted` event recorded when
    #   this child workflow execution was started. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class ChildWorkflowExecutionCanceledEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :details,
      :initiated_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ChildWorkflowExecutionCompleted` event.
    #
    # @!attribute [rw] workflow_execution
    #   The child workflow execution that was completed.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] workflow_type
    #   The type of the child workflow execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] result
    #   The result of the child workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `StartChildWorkflowExecutionInitiated` event
    #   corresponding to the `StartChildWorkflowExecution` Decision to start
    #   this child workflow execution. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ChildWorkflowExecutionStarted` event recorded when
    #   this child workflow execution was started. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class ChildWorkflowExecutionCompletedEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :result,
      :initiated_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ChildWorkflowExecutionFailed` event.
    #
    # @!attribute [rw] workflow_execution
    #   The child workflow execution that failed.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] workflow_type
    #   The type of the child workflow execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] reason
    #   The reason for the failure (if provided).
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details of the failure (if provided).
    #   @return [String]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `StartChildWorkflowExecutionInitiated` event
    #   corresponding to the `StartChildWorkflowExecution` Decision to start
    #   this child workflow execution. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ChildWorkflowExecutionStarted` event recorded when
    #   this child workflow execution was started. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class ChildWorkflowExecutionFailedEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :reason,
      :details,
      :initiated_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ChildWorkflowExecutionStarted` event.
    #
    # @!attribute [rw] workflow_execution
    #   The child workflow execution that was started.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] workflow_type
    #   The type of the child workflow execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `StartChildWorkflowExecutionInitiated` event
    #   corresponding to the `StartChildWorkflowExecution` Decision to start
    #   this child workflow execution. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class ChildWorkflowExecutionStartedEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :initiated_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ChildWorkflowExecutionTerminated` event.
    #
    # @!attribute [rw] workflow_execution
    #   The child workflow execution that was terminated.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] workflow_type
    #   The type of the child workflow execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `StartChildWorkflowExecutionInitiated` event
    #   corresponding to the `StartChildWorkflowExecution` Decision to start
    #   this child workflow execution. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ChildWorkflowExecutionStarted` event recorded when
    #   this child workflow execution was started. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class ChildWorkflowExecutionTerminatedEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :initiated_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ChildWorkflowExecutionTimedOut` event.
    #
    # @!attribute [rw] workflow_execution
    #   The child workflow execution that timed out.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] workflow_type
    #   The type of the child workflow execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] timeout_type
    #   The type of the timeout that caused the child workflow execution to
    #   time out.
    #   @return [String]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `StartChildWorkflowExecutionInitiated` event
    #   corresponding to the `StartChildWorkflowExecution` Decision to start
    #   this child workflow execution. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ChildWorkflowExecutionStarted` event recorded when
    #   this child workflow execution was started. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class ChildWorkflowExecutionTimedOutEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :timeout_type,
      :initiated_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # Used to filter the closed workflow executions in visibility APIs by
    # their close status.
    #
    # @note When making an API call, you may pass CloseStatusFilter
    #   data as a hash:
    #
    #       {
    #         status: "COMPLETED", # required, accepts COMPLETED, FAILED, CANCELED, TERMINATED, CONTINUED_AS_NEW, TIMED_OUT
    #       }
    #
    # @!attribute [rw] status
    #   The close status that must match the close status of an execution
    #   for it to meet the criteria of this filter.
    #   @return [String]
    #
    class CloseStatusFilter < Struct.new(
      :status)
      include Aws::Structure
    end

    # Provides the details of the `CompleteWorkflowExecution` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass CompleteWorkflowExecutionDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         result: "Data",
    #       }
    #
    # @!attribute [rw] result
    #   The result of the workflow execution. The form of the result is
    #   implementation defined.
    #   @return [String]
    #
    class CompleteWorkflowExecutionDecisionAttributes < Struct.new(
      :result)
      include Aws::Structure
    end

    # Provides the details of the `CompleteWorkflowExecutionFailed` event.
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `CompleteWorkflowExecution`
    #   decision to complete this execution. This information can be useful
    #   for diagnosing problems by tracing back the chain of events leading
    #   up to this event.
    #   @return [Integer]
    #
    class CompleteWorkflowExecutionFailedEventAttributes < Struct.new(
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ContinueAsNewWorkflowExecution` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * Constrain the following parameters by using a `Condition` element
    #   with the appropriate keys.
    #
    #   * `tag` – A tag used to identify the workflow execution
    #
    #   * `taskList` – String constraint. The key is `swf:taskList.name`.
    #
    #   * `workflowType.version` – String constraint. The key is
    #     `swf:workflowType.version`.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass ContinueAsNewWorkflowExecutionDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         input: "Data",
    #         execution_start_to_close_timeout: "DurationInSecondsOptional",
    #         task_list: {
    #           name: "Name", # required
    #         },
    #         task_priority: "TaskPriority",
    #         task_start_to_close_timeout: "DurationInSecondsOptional",
    #         child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #         tag_list: ["Tag"],
    #         workflow_type_version: "Version",
    #         lambda_role: "Arn",
    #       }
    #
    # @!attribute [rw] input
    #   The input provided to the new workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_to_close_timeout
    #   If set, specifies the total duration for this workflow execution.
    #   This overrides the `defaultExecutionStartToCloseTimeout` specified
    #   when registering the workflow type.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #
    #   <note markdown="1"> An execution start-to-close timeout for this workflow execution must
    #   be specified either as a default for the workflow type or through
    #   this field. If neither this field is set nor a default execution
    #   start-to-close timeout was specified at registration time then a
    #   fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The task list to use for the decisions of the new (continued)
    #   workflow execution.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   The task priority that, if set, specifies the priority for the
    #   decision tasks for this workflow execution. This overrides the
    #   defaultTaskPriority specified when registering the workflow type.
    #   Valid values are integers that range from Java's
    #   `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] task_start_to_close_timeout
    #   Specifies the maximum duration of decision tasks for the new
    #   workflow execution. This parameter overrides the
    #   `defaultTaskStartToCloseTimout` specified when registering the
    #   workflow type using RegisterWorkflowType.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #
    #   <note markdown="1"> A task start-to-close timeout for the new workflow execution must be
    #   specified either as a default for the workflow type or through this
    #   parameter. If neither this parameter is set nor a default task
    #   start-to-close timeout was specified at registration time then a
    #   fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   If set, specifies the policy to use for the child workflow
    #   executions of the new execution if it is terminated by calling the
    #   TerminateWorkflowExecution action explicitly or due to an expired
    #   timeout. This policy overrides the default child policy specified
    #   when registering the workflow type using RegisterWorkflowType.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #
    #   <note markdown="1"> A child policy for this workflow execution must be specified either
    #   as a default for the workflow type or through this parameter. If
    #   neither this parameter is set nor a default child policy was
    #   specified at registration time then a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   The list of tags to associate with the new workflow execution. A
    #   maximum of 5 tags can be specified. You can list workflow executions
    #   with a specific tag by calling ListOpenWorkflowExecutions or
    #   ListClosedWorkflowExecutions and specifying a TagFilter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workflow_type_version
    #   The version of the workflow to start.
    #   @return [String]
    #
    # @!attribute [rw] lambda_role
    #   The IAM role to attach to the new (continued) execution.
    #   @return [String]
    #
    class ContinueAsNewWorkflowExecutionDecisionAttributes < Struct.new(
      :input,
      :execution_start_to_close_timeout,
      :task_list,
      :task_priority,
      :task_start_to_close_timeout,
      :child_policy,
      :tag_list,
      :workflow_type_version,
      :lambda_role)
      include Aws::Structure
    end

    # Provides the details of the `ContinueAsNewWorkflowExecutionFailed`
    # event.
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `ContinueAsNewWorkflowExecution`
    #   decision that started this execution. This information can be useful
    #   for diagnosing problems by tracing back the chain of events leading
    #   up to this event.
    #   @return [Integer]
    #
    class ContinueAsNewWorkflowExecutionFailedEventAttributes < Struct.new(
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CountClosedWorkflowExecutionsInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         start_time_filter: {
    #           oldest_date: Time.now, # required
    #           latest_date: Time.now,
    #         },
    #         close_time_filter: {
    #           oldest_date: Time.now, # required
    #           latest_date: Time.now,
    #         },
    #         execution_filter: {
    #           workflow_id: "WorkflowId", # required
    #         },
    #         type_filter: {
    #           name: "Name", # required
    #           version: "VersionOptional",
    #         },
    #         tag_filter: {
    #           tag: "Tag", # required
    #         },
    #         close_status_filter: {
    #           status: "COMPLETED", # required, accepts COMPLETED, FAILED, CANCELED, TERMINATED, CONTINUED_AS_NEW, TIMED_OUT
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the workflow executions to count.
    #   @return [String]
    #
    # @!attribute [rw] start_time_filter
    #   If specified, only workflow executions that meet the start time
    #   criteria of the filter are counted.
    #
    #   <note markdown="1"> `startTimeFilter` and `closeTimeFilter` are mutually exclusive. You
    #   must specify one of these in a request but not both.
    #
    #    </note>
    #   @return [Types::ExecutionTimeFilter]
    #
    # @!attribute [rw] close_time_filter
    #   If specified, only workflow executions that meet the close time
    #   criteria of the filter are counted.
    #
    #   <note markdown="1"> `startTimeFilter` and `closeTimeFilter` are mutually exclusive. You
    #   must specify one of these in a request but not both.
    #
    #    </note>
    #   @return [Types::ExecutionTimeFilter]
    #
    # @!attribute [rw] execution_filter
    #   If specified, only workflow executions matching the `WorkflowId` in
    #   the filter are counted.
    #
    #   <note markdown="1"> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter`
    #   are mutually exclusive. You can specify at most one of these in a
    #   request.
    #
    #    </note>
    #   @return [Types::WorkflowExecutionFilter]
    #
    # @!attribute [rw] type_filter
    #   If specified, indicates the type of the workflow executions to be
    #   counted.
    #
    #   <note markdown="1"> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter`
    #   are mutually exclusive. You can specify at most one of these in a
    #   request.
    #
    #    </note>
    #   @return [Types::WorkflowTypeFilter]
    #
    # @!attribute [rw] tag_filter
    #   If specified, only executions that have a tag that matches the
    #   filter are counted.
    #
    #   <note markdown="1"> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter`
    #   are mutually exclusive. You can specify at most one of these in a
    #   request.
    #
    #    </note>
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] close_status_filter
    #   If specified, only workflow executions that match this close status
    #   are counted. This filter has an affect only if `executionStatus` is
    #   specified as `CLOSED`.
    #
    #   <note markdown="1"> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter`
    #   are mutually exclusive. You can specify at most one of these in a
    #   request.
    #
    #    </note>
    #   @return [Types::CloseStatusFilter]
    #
    class CountClosedWorkflowExecutionsInput < Struct.new(
      :domain,
      :start_time_filter,
      :close_time_filter,
      :execution_filter,
      :type_filter,
      :tag_filter,
      :close_status_filter)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CountOpenWorkflowExecutionsInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         start_time_filter: { # required
    #           oldest_date: Time.now, # required
    #           latest_date: Time.now,
    #         },
    #         type_filter: {
    #           name: "Name", # required
    #           version: "VersionOptional",
    #         },
    #         tag_filter: {
    #           tag: "Tag", # required
    #         },
    #         execution_filter: {
    #           workflow_id: "WorkflowId", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the workflow executions to count.
    #   @return [String]
    #
    # @!attribute [rw] start_time_filter
    #   Specifies the start time criteria that workflow executions must meet
    #   in order to be counted.
    #   @return [Types::ExecutionTimeFilter]
    #
    # @!attribute [rw] type_filter
    #   Specifies the type of the workflow executions to be counted.
    #
    #   <note markdown="1"> `executionFilter`, `typeFilter` and `tagFilter` are mutually
    #   exclusive. You can specify at most one of these in a request.
    #
    #    </note>
    #   @return [Types::WorkflowTypeFilter]
    #
    # @!attribute [rw] tag_filter
    #   If specified, only executions that have a tag that matches the
    #   filter are counted.
    #
    #   <note markdown="1"> `executionFilter`, `typeFilter` and `tagFilter` are mutually
    #   exclusive. You can specify at most one of these in a request.
    #
    #    </note>
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] execution_filter
    #   If specified, only workflow executions matching the `WorkflowId` in
    #   the filter are counted.
    #
    #   <note markdown="1"> `executionFilter`, `typeFilter` and `tagFilter` are mutually
    #   exclusive. You can specify at most one of these in a request.
    #
    #    </note>
    #   @return [Types::WorkflowExecutionFilter]
    #
    class CountOpenWorkflowExecutionsInput < Struct.new(
      :domain,
      :start_time_filter,
      :type_filter,
      :tag_filter,
      :execution_filter)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CountPendingActivityTasksInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         task_list: { # required
    #           name: "Name", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the task list.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The name of the task list.
    #   @return [Types::TaskList]
    #
    class CountPendingActivityTasksInput < Struct.new(
      :domain,
      :task_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CountPendingDecisionTasksInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         task_list: { # required
    #           name: "Name", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the task list.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The name of the task list.
    #   @return [Types::TaskList]
    #
    class CountPendingDecisionTasksInput < Struct.new(
      :domain,
      :task_list)
      include Aws::Structure
    end

    # Specifies a decision made by the decider. A decision can be one of
    # these types:
    #
    # * `CancelTimer` – Cancels a previously started timer and records a
    #   `TimerCanceled` event in the history.
    #
    # * `CancelWorkflowExecution` – Closes the workflow execution and
    #   records a `WorkflowExecutionCanceled` event in the history.
    #
    # * `CompleteWorkflowExecution` – Closes the workflow execution and
    #   records a `WorkflowExecutionCompleted` event in the history .
    #
    # * `ContinueAsNewWorkflowExecution` – Closes the workflow execution and
    #   starts a new workflow execution of the same type using the same
    #   workflow ID and a unique run Id. A `WorkflowExecutionContinuedAsNew`
    #   event is recorded in the history.
    #
    # * `FailWorkflowExecution` – Closes the workflow execution and records
    #   a `WorkflowExecutionFailed` event in the history.
    #
    # * `RecordMarker` – Records a `MarkerRecorded` event in the history.
    #   Markers can be used for adding custom information in the history for
    #   instance to let deciders know that they don't need to look at the
    #   history beyond the marker event.
    #
    # * `RequestCancelActivityTask` – Attempts to cancel a previously
    #   scheduled activity task. If the activity task was scheduled but has
    #   not been assigned to a worker, then it is canceled. If the activity
    #   task was already assigned to a worker, then the worker is informed
    #   that cancellation has been requested in the response to
    #   RecordActivityTaskHeartbeat.
    #
    # * `RequestCancelExternalWorkflowExecution` – Requests that a request
    #   be made to cancel the specified external workflow execution and
    #   records a `RequestCancelExternalWorkflowExecutionInitiated` event in
    #   the history.
    #
    # * `ScheduleActivityTask` – Schedules an activity task.
    #
    # * `SignalExternalWorkflowExecution` – Requests a signal to be
    #   delivered to the specified external workflow execution and records a
    #   `SignalExternalWorkflowExecutionInitiated` event in the history.
    #
    # * `StartChildWorkflowExecution` – Requests that a child workflow
    #   execution be started and records a
    #   `StartChildWorkflowExecutionInitiated` event in the history. The
    #   child workflow execution is a separate workflow execution with its
    #   own history.
    #
    # * `StartTimer` – Starts a timer for this workflow execution and
    #   records a `TimerStarted` event in the history. This timer fires
    #   after the specified delay and record a `TimerFired` event.
    #
    # **Access Control**
    #
    # If you grant permission to use `RespondDecisionTaskCompleted`, you can
    # use IAM policies to express permissions for the list of decisions
    # returned by this action as if they were members of the API. Treating
    # decisions as a pseudo API maintains a uniform conceptual model and
    # helps keep policies readable. For details and example IAM policies,
    # see [Using IAM to Manage Access to Amazon SWF Workflows][1] in the
    # *Amazon SWF Developer Guide*.
    #
    # **Decision Failure**
    #
    # Decisions can fail for several reasons
    #
    # * The ordering of decisions should follow a logical flow. Some
    #   decisions might not make sense in the current context of the
    #   workflow execution and therefore fails.
    #
    # * A limit on your account was reached.
    #
    # * The decision lacks sufficient permissions.
    #
    # One of the following events might be added to the history to indicate
    # an error. The event attribute's `cause` parameter indicates the
    # cause. If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision
    # failed because it lacked sufficient permissions. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    # * `ScheduleActivityTaskFailed` – A `ScheduleActivityTask` decision
    #   failed. This could happen if the activity type specified in the
    #   decision isn't registered, is in a deprecated state, or the
    #   decision isn't properly configured.
    #
    # * `RequestCancelActivityTaskFailed` – A `RequestCancelActivityTask`
    #   decision failed. This could happen if there is no open activity task
    #   with the specified activityId.
    #
    # * `StartTimerFailed` – A `StartTimer` decision failed. This could
    #   happen if there is another open timer with the same timerId.
    #
    # * `CancelTimerFailed` – A `CancelTimer` decision failed. This could
    #   happen if there is no open timer with the specified timerId.
    #
    # * `StartChildWorkflowExecutionFailed` – A
    #   `StartChildWorkflowExecution` decision failed. This could happen if
    #   the workflow type specified isn't registered, is deprecated, or the
    #   decision isn't properly configured.
    #
    # * `SignalExternalWorkflowExecutionFailed` – A
    #   `SignalExternalWorkflowExecution` decision failed. This could happen
    #   if the `workflowID` specified in the decision was incorrect.
    #
    # * `RequestCancelExternalWorkflowExecutionFailed` – A
    #   `RequestCancelExternalWorkflowExecution` decision failed. This could
    #   happen if the `workflowID` specified in the decision was incorrect.
    #
    # * `CancelWorkflowExecutionFailed` – A `CancelWorkflowExecution`
    #   decision failed. This could happen if there is an unhandled decision
    #   task pending in the workflow execution.
    #
    # * `CompleteWorkflowExecutionFailed` – A `CompleteWorkflowExecution`
    #   decision failed. This could happen if there is an unhandled decision
    #   task pending in the workflow execution.
    #
    # * `ContinueAsNewWorkflowExecutionFailed` – A
    #   `ContinueAsNewWorkflowExecution` decision failed. This could happen
    #   if there is an unhandled decision task pending in the workflow
    #   execution or the ContinueAsNewWorkflowExecution decision was not
    #   configured correctly.
    #
    # * `FailWorkflowExecutionFailed` – A `FailWorkflowExecution` decision
    #   failed. This could happen if there is an unhandled decision task
    #   pending in the workflow execution.
    #
    # The preceding error events might occur due to an error in the decider
    # logic, which might put the workflow execution in an unstable state The
    # cause field in the event structure for the error event indicates the
    # cause of the error.
    #
    # <note markdown="1"> A workflow execution may be closed by the decider by returning one of
    # the following decisions when completing a decision task:
    # `CompleteWorkflowExecution`, `FailWorkflowExecution`,
    # `CancelWorkflowExecution` and `ContinueAsNewWorkflowExecution`. An
    # `UnhandledDecision` fault is returned if a workflow closing decision
    # is specified and a signal or activity event had been added to the
    # history while the decision task was being performed by the decider.
    # Unlike the above situations which are logic issues, this fault is
    # always possible because of race conditions in a distributed system.
    # The right action here is to call RespondDecisionTaskCompleted without
    # any decisions. This would result in another decision task with these
    # new events included in the history. The decider should handle the new
    # events and may decide to close the workflow execution.
    #
    #  </note>
    #
    # **How to Code a Decision**
    #
    # You code a decision by first setting the decision type field to one of
    # the above decision values, and then set the corresponding attributes
    # field shown below:
    #
    # * ` ScheduleActivityTaskDecisionAttributes `
    #
    # * ` RequestCancelActivityTaskDecisionAttributes `
    #
    # * ` CompleteWorkflowExecutionDecisionAttributes `
    #
    # * ` FailWorkflowExecutionDecisionAttributes `
    #
    # * ` CancelWorkflowExecutionDecisionAttributes `
    #
    # * ` ContinueAsNewWorkflowExecutionDecisionAttributes `
    #
    # * ` RecordMarkerDecisionAttributes `
    #
    # * ` StartTimerDecisionAttributes `
    #
    # * ` CancelTimerDecisionAttributes `
    #
    # * ` SignalExternalWorkflowExecutionDecisionAttributes `
    #
    # * ` RequestCancelExternalWorkflowExecutionDecisionAttributes `
    #
    # * ` StartChildWorkflowExecutionDecisionAttributes `
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass Decision
    #   data as a hash:
    #
    #       {
    #         decision_type: "ScheduleActivityTask", # required, accepts ScheduleActivityTask, RequestCancelActivityTask, CompleteWorkflowExecution, FailWorkflowExecution, CancelWorkflowExecution, ContinueAsNewWorkflowExecution, RecordMarker, StartTimer, CancelTimer, SignalExternalWorkflowExecution, RequestCancelExternalWorkflowExecution, StartChildWorkflowExecution, ScheduleLambdaFunction
    #         schedule_activity_task_decision_attributes: {
    #           activity_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           activity_id: "ActivityId", # required
    #           control: "Data",
    #           input: "Data",
    #           schedule_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: {
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           schedule_to_start_timeout: "DurationInSecondsOptional",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #           heartbeat_timeout: "DurationInSecondsOptional",
    #         },
    #         request_cancel_activity_task_decision_attributes: {
    #           activity_id: "ActivityId", # required
    #         },
    #         complete_workflow_execution_decision_attributes: {
    #           result: "Data",
    #         },
    #         fail_workflow_execution_decision_attributes: {
    #           reason: "FailureReason",
    #           details: "Data",
    #         },
    #         cancel_workflow_execution_decision_attributes: {
    #           details: "Data",
    #         },
    #         continue_as_new_workflow_execution_decision_attributes: {
    #           input: "Data",
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: {
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #           tag_list: ["Tag"],
    #           workflow_type_version: "Version",
    #           lambda_role: "Arn",
    #         },
    #         record_marker_decision_attributes: {
    #           marker_name: "MarkerName", # required
    #           details: "Data",
    #         },
    #         start_timer_decision_attributes: {
    #           timer_id: "TimerId", # required
    #           control: "Data",
    #           start_to_fire_timeout: "DurationInSeconds", # required
    #         },
    #         cancel_timer_decision_attributes: {
    #           timer_id: "TimerId", # required
    #         },
    #         signal_external_workflow_execution_decision_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           signal_name: "SignalName", # required
    #           input: "Data",
    #           control: "Data",
    #         },
    #         request_cancel_external_workflow_execution_decision_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           control: "Data",
    #         },
    #         start_child_workflow_execution_decision_attributes: {
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           workflow_id: "WorkflowId", # required
    #           control: "Data",
    #           input: "Data",
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: {
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #           tag_list: ["Tag"],
    #           lambda_role: "Arn",
    #         },
    #         schedule_lambda_function_decision_attributes: {
    #           id: "FunctionId", # required
    #           name: "FunctionName", # required
    #           control: "Data",
    #           input: "FunctionInput",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #         },
    #       }
    #
    # @!attribute [rw] decision_type
    #   Specifies the type of the decision.
    #   @return [String]
    #
    # @!attribute [rw] schedule_activity_task_decision_attributes
    #   Provides the details of the `ScheduleActivityTask` decision. It
    #   isn't set for other decision types.
    #   @return [Types::ScheduleActivityTaskDecisionAttributes]
    #
    # @!attribute [rw] request_cancel_activity_task_decision_attributes
    #   Provides the details of the `RequestCancelActivityTask` decision. It
    #   isn't set for other decision types.
    #   @return [Types::RequestCancelActivityTaskDecisionAttributes]
    #
    # @!attribute [rw] complete_workflow_execution_decision_attributes
    #   Provides the details of the `CompleteWorkflowExecution` decision. It
    #   isn't set for other decision types.
    #   @return [Types::CompleteWorkflowExecutionDecisionAttributes]
    #
    # @!attribute [rw] fail_workflow_execution_decision_attributes
    #   Provides the details of the `FailWorkflowExecution` decision. It
    #   isn't set for other decision types.
    #   @return [Types::FailWorkflowExecutionDecisionAttributes]
    #
    # @!attribute [rw] cancel_workflow_execution_decision_attributes
    #   Provides the details of the `CancelWorkflowExecution` decision. It
    #   isn't set for other decision types.
    #   @return [Types::CancelWorkflowExecutionDecisionAttributes]
    #
    # @!attribute [rw] continue_as_new_workflow_execution_decision_attributes
    #   Provides the details of the `ContinueAsNewWorkflowExecution`
    #   decision. It isn't set for other decision types.
    #   @return [Types::ContinueAsNewWorkflowExecutionDecisionAttributes]
    #
    # @!attribute [rw] record_marker_decision_attributes
    #   Provides the details of the `RecordMarker` decision. It isn't set
    #   for other decision types.
    #   @return [Types::RecordMarkerDecisionAttributes]
    #
    # @!attribute [rw] start_timer_decision_attributes
    #   Provides the details of the `StartTimer` decision. It isn't set for
    #   other decision types.
    #   @return [Types::StartTimerDecisionAttributes]
    #
    # @!attribute [rw] cancel_timer_decision_attributes
    #   Provides the details of the `CancelTimer` decision. It isn't set
    #   for other decision types.
    #   @return [Types::CancelTimerDecisionAttributes]
    #
    # @!attribute [rw] signal_external_workflow_execution_decision_attributes
    #   Provides the details of the `SignalExternalWorkflowExecution`
    #   decision. It isn't set for other decision types.
    #   @return [Types::SignalExternalWorkflowExecutionDecisionAttributes]
    #
    # @!attribute [rw] request_cancel_external_workflow_execution_decision_attributes
    #   Provides the details of the `RequestCancelExternalWorkflowExecution`
    #   decision. It isn't set for other decision types.
    #   @return [Types::RequestCancelExternalWorkflowExecutionDecisionAttributes]
    #
    # @!attribute [rw] start_child_workflow_execution_decision_attributes
    #   Provides the details of the `StartChildWorkflowExecution` decision.
    #   It isn't set for other decision types.
    #   @return [Types::StartChildWorkflowExecutionDecisionAttributes]
    #
    # @!attribute [rw] schedule_lambda_function_decision_attributes
    #   Provides the details of the `ScheduleLambdaFunction` decision. It
    #   isn't set for other decision types.
    #   @return [Types::ScheduleLambdaFunctionDecisionAttributes]
    #
    class Decision < Struct.new(
      :decision_type,
      :schedule_activity_task_decision_attributes,
      :request_cancel_activity_task_decision_attributes,
      :complete_workflow_execution_decision_attributes,
      :fail_workflow_execution_decision_attributes,
      :cancel_workflow_execution_decision_attributes,
      :continue_as_new_workflow_execution_decision_attributes,
      :record_marker_decision_attributes,
      :start_timer_decision_attributes,
      :cancel_timer_decision_attributes,
      :signal_external_workflow_execution_decision_attributes,
      :request_cancel_external_workflow_execution_decision_attributes,
      :start_child_workflow_execution_decision_attributes,
      :schedule_lambda_function_decision_attributes)
      include Aws::Structure
    end

    # A structure that represents a decision task. Decision tasks are sent
    # to deciders in order for them to make decisions.
    #
    # @!attribute [rw] task_token
    #   The opaque string used as a handle on the task. This token is used
    #   by workers to communicate progress and response information back to
    #   the system about the task.
    #   @return [String]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `DecisionTaskStarted` event recorded in the history.
    #   @return [Integer]
    #
    # @!attribute [rw] workflow_execution
    #   The workflow execution for which this decision task was created.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] workflow_type
    #   The type of the workflow execution for which this decision task was
    #   created.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] events
    #   A paginated list of history events of the workflow execution. The
    #   decider uses this during the processing of the decision task.
    #   @return [Array<Types::HistoryEvent>]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    # @!attribute [rw] previous_started_event_id
    #   The ID of the DecisionTaskStarted event of the previous decision
    #   task of this workflow execution that was processed by the decider.
    #   This can be used to determine the events in the history new since
    #   the last decision task received by the decider.
    #   @return [Integer]
    #
    class DecisionTask < Struct.new(
      :task_token,
      :started_event_id,
      :workflow_execution,
      :workflow_type,
      :events,
      :next_page_token,
      :previous_started_event_id)
      include Aws::Structure
    end

    # Provides the details of the `DecisionTaskCompleted` event.
    #
    # @!attribute [rw] execution_context
    #   User defined context for the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `DecisionTaskScheduled` event that was recorded when
    #   this decision task was scheduled. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `DecisionTaskStarted` event recorded when this
    #   decision task was started. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class DecisionTaskCompletedEventAttributes < Struct.new(
      :execution_context,
      :scheduled_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # Provides details about the `DecisionTaskScheduled` event.
    #
    # @!attribute [rw] task_list
    #   The name of the task list in which the decision task was scheduled.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   A task priority that, if set, specifies the priority for this
    #   decision task. Valid values are integers that range from Java's
    #   `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] start_to_close_timeout
    #   The maximum duration for this decision task. The task is considered
    #   timed out if it doesn't completed within this duration.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    class DecisionTaskScheduledEventAttributes < Struct.new(
      :task_list,
      :task_priority,
      :start_to_close_timeout)
      include Aws::Structure
    end

    # Provides the details of the `DecisionTaskStarted` event.
    #
    # @!attribute [rw] identity
    #   Identity of the decider making the request. This enables diagnostic
    #   tracing when problems arise. The form of this identity is user
    #   defined.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `DecisionTaskScheduled` event that was recorded when
    #   this decision task was scheduled. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class DecisionTaskStartedEventAttributes < Struct.new(
      :identity,
      :scheduled_event_id)
      include Aws::Structure
    end

    # Provides the details of the `DecisionTaskTimedOut` event.
    #
    # @!attribute [rw] timeout_type
    #   The type of timeout that expired before the decision task could be
    #   completed.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `DecisionTaskScheduled` event that was recorded when
    #   this decision task was scheduled. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `DecisionTaskStarted` event recorded when this
    #   decision task was started. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class DecisionTaskTimedOutEventAttributes < Struct.new(
      :timeout_type,
      :scheduled_event_id,
      :started_event_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeprecateActivityTypeInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         activity_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which the activity type is registered.
    #   @return [String]
    #
    # @!attribute [rw] activity_type
    #   The activity type to deprecate.
    #   @return [Types::ActivityType]
    #
    class DeprecateActivityTypeInput < Struct.new(
      :domain,
      :activity_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeprecateDomainInput
    #   data as a hash:
    #
    #       {
    #         name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the domain to deprecate.
    #   @return [String]
    #
    class DeprecateDomainInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeprecateWorkflowTypeInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         workflow_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which the workflow type is registered.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The workflow type to deprecate.
    #   @return [Types::WorkflowType]
    #
    class DeprecateWorkflowTypeInput < Struct.new(
      :domain,
      :workflow_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeActivityTypeInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         activity_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which the activity type is registered.
    #   @return [String]
    #
    # @!attribute [rw] activity_type
    #   The activity type to get information about. Activity types are
    #   identified by the `name` and `version` that were supplied when the
    #   activity was registered.
    #   @return [Types::ActivityType]
    #
    class DescribeActivityTypeInput < Struct.new(
      :domain,
      :activity_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDomainInput
    #   data as a hash:
    #
    #       {
    #         name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the domain to describe.
    #   @return [String]
    #
    class DescribeDomainInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkflowExecutionInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         execution: { # required
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunId", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution
    #   The workflow execution to describe.
    #   @return [Types::WorkflowExecution]
    #
    class DescribeWorkflowExecutionInput < Struct.new(
      :domain,
      :execution)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkflowTypeInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         workflow_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which this workflow type is registered.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The workflow type to describe.
    #   @return [Types::WorkflowType]
    #
    class DescribeWorkflowTypeInput < Struct.new(
      :domain,
      :workflow_type)
      include Aws::Structure
    end

    # Contains the configuration settings of a domain.
    #
    # @!attribute [rw] workflow_execution_retention_period_in_days
    #   The retention period for workflow executions in this domain.
    #   @return [String]
    #
    class DomainConfiguration < Struct.new(
      :workflow_execution_retention_period_in_days)
      include Aws::Structure
    end

    # Contains details of a domain.
    #
    # @!attribute [rw] domain_info
    #   The basic information about a domain, such as its name, status, and
    #   description.
    #   @return [Types::DomainInfo]
    #
    # @!attribute [rw] configuration
    #   The domain configuration. Currently, this includes only the
    #   domain's retention period.
    #   @return [Types::DomainConfiguration]
    #
    class DomainDetail < Struct.new(
      :domain_info,
      :configuration)
      include Aws::Structure
    end

    # Contains general information about a domain.
    #
    # @!attribute [rw] name
    #   The name of the domain. This name is unique within the account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the domain:
    #
    #   * `REGISTERED` – The domain is properly registered and available.
    #     You can use this domain for registering types and creating new
    #     workflow executions.
    #
    #   * `DEPRECATED` – The domain was deprecated using DeprecateDomain,
    #     but is still in use. You should not create new workflow executions
    #     in this domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the domain provided through RegisterDomain.
    #   @return [String]
    #
    class DomainInfo < Struct.new(
      :name,
      :status,
      :description)
      include Aws::Structure
    end

    # Contains a paginated collection of DomainInfo structures.
    #
    # @!attribute [rw] domain_infos
    #   A list of DomainInfo structures.
    #   @return [Array<Types::DomainInfo>]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    class DomainInfos < Struct.new(
      :domain_infos,
      :next_page_token)
      include Aws::Structure
    end

    # Used to filter the workflow executions in visibility APIs by various
    # time-based rules. Each parameter, if specified, defines a rule that
    # must be satisfied by each returned query result. The parameter values
    # are in the [Unix Time format][1]. For example: `"oldestDate":
    # 1325376070.`
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/Unix_time
    #
    # @note When making an API call, you may pass ExecutionTimeFilter
    #   data as a hash:
    #
    #       {
    #         oldest_date: Time.now, # required
    #         latest_date: Time.now,
    #       }
    #
    # @!attribute [rw] oldest_date
    #   Specifies the oldest start or close date and time to return.
    #   @return [Time]
    #
    # @!attribute [rw] latest_date
    #   Specifies the latest start or close date and time to return.
    #   @return [Time]
    #
    class ExecutionTimeFilter < Struct.new(
      :oldest_date,
      :latest_date)
      include Aws::Structure
    end

    # Provides the details of the `ExternalWorkflowExecutionCancelRequested`
    # event.
    #
    # @!attribute [rw] workflow_execution
    #   The external workflow execution to which the cancellation request
    #   was delivered.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `RequestCancelExternalWorkflowExecutionInitiated`
    #   event corresponding to the `RequestCancelExternalWorkflowExecution`
    #   decision to cancel this external workflow execution. This
    #   information can be useful for diagnosing problems by tracing back
    #   the chain of events leading up to this event.
    #   @return [Integer]
    #
    class ExternalWorkflowExecutionCancelRequestedEventAttributes < Struct.new(
      :workflow_execution,
      :initiated_event_id)
      include Aws::Structure
    end

    # Provides the details of the `ExternalWorkflowExecutionSignaled` event.
    #
    # @!attribute [rw] workflow_execution
    #   The external workflow execution that the signal was delivered to.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `SignalExternalWorkflowExecutionInitiated` event
    #   corresponding to the `SignalExternalWorkflowExecution` decision to
    #   request this signal. This information can be useful for diagnosing
    #   problems by tracing back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    class ExternalWorkflowExecutionSignaledEventAttributes < Struct.new(
      :workflow_execution,
      :initiated_event_id)
      include Aws::Structure
    end

    # Provides the details of the `FailWorkflowExecution` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass FailWorkflowExecutionDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         reason: "FailureReason",
    #         details: "Data",
    #       }
    #
    # @!attribute [rw] reason
    #   A descriptive reason for the failure that may help in diagnostics.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Details of the failure.
    #   @return [String]
    #
    class FailWorkflowExecutionDecisionAttributes < Struct.new(
      :reason,
      :details)
      include Aws::Structure
    end

    # Provides the details of the `FailWorkflowExecutionFailed` event.
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `FailWorkflowExecution` decision
    #   to fail this execution. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class FailWorkflowExecutionFailedEventAttributes < Struct.new(
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorkflowExecutionHistoryInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         execution: { # required
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunId", # required
    #         },
    #         next_page_token: "PageToken",
    #         maximum_page_size: 1,
    #         reverse_order: false,
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution
    #   Specifies the workflow execution for which to return the history.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    # @!attribute [rw] maximum_page_size
    #   The maximum number of results that are returned per call.
    #   `nextPageToken` can be used to obtain futher pages of results. The
    #   default is 1000, which is the maximum allowed page size. You can,
    #   however, specify a page size *smaller* than the maximum.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   When set to `true`, returns the events in reverse order. By default
    #   the results are returned in ascending order of the `eventTimeStamp`
    #   of the events.
    #   @return [Boolean]
    #
    class GetWorkflowExecutionHistoryInput < Struct.new(
      :domain,
      :execution,
      :next_page_token,
      :maximum_page_size,
      :reverse_order)
      include Aws::Structure
    end

    # Paginated representation of a workflow history for a workflow
    # execution. This is the up to date, complete and authoritative record
    # of the events related to all tasks and events in the life of the
    # workflow execution.
    #
    # @!attribute [rw] events
    #   The list of history events.
    #   @return [Array<Types::HistoryEvent>]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    class History < Struct.new(
      :events,
      :next_page_token)
      include Aws::Structure
    end

    # Event within a workflow execution. A history event can be one of these
    # types:
    #
    # * `ActivityTaskCancelRequested` – A `RequestCancelActivityTask`
    #   decision was received by the system.
    #
    # * `ActivityTaskCanceled` – The activity task was successfully
    #   canceled.
    #
    # * `ActivityTaskCompleted` – An activity worker successfully completed
    #   an activity task by calling RespondActivityTaskCompleted.
    #
    # * `ActivityTaskFailed` – An activity worker failed an activity task by
    #   calling RespondActivityTaskFailed.
    #
    # * `ActivityTaskScheduled` – An activity task was scheduled for
    #   execution.
    #
    # * `ActivityTaskStarted` – The scheduled activity task was dispatched
    #   to a worker.
    #
    # * `ActivityTaskTimedOut` – The activity task timed out.
    #
    # * `CancelTimerFailed` – Failed to process CancelTimer decision. This
    #   happens when the decision isn't configured properly, for example no
    #   timer exists with the specified timer Id.
    #
    # * `CancelWorkflowExecutionFailed` – A request to cancel a workflow
    #   execution failed.
    #
    # * `ChildWorkflowExecutionCanceled` – A child workflow execution,
    #   started by this workflow execution, was canceled and closed.
    #
    # * `ChildWorkflowExecutionCompleted` – A child workflow execution,
    #   started by this workflow execution, completed successfully and was
    #   closed.
    #
    # * `ChildWorkflowExecutionFailed` – A child workflow execution, started
    #   by this workflow execution, failed to complete successfully and was
    #   closed.
    #
    # * `ChildWorkflowExecutionStarted` – A child workflow execution was
    #   successfully started.
    #
    # * `ChildWorkflowExecutionTerminated` – A child workflow execution,
    #   started by this workflow execution, was terminated.
    #
    # * `ChildWorkflowExecutionTimedOut` – A child workflow execution,
    #   started by this workflow execution, timed out and was closed.
    #
    # * `CompleteWorkflowExecutionFailed` – The workflow execution failed to
    #   complete.
    #
    # * `ContinueAsNewWorkflowExecutionFailed` – The workflow execution
    #   failed to complete after being continued as a new workflow
    #   execution.
    #
    # * `DecisionTaskCompleted` – The decider successfully completed a
    #   decision task by calling RespondDecisionTaskCompleted.
    #
    # * `DecisionTaskScheduled` – A decision task was scheduled for the
    #   workflow execution.
    #
    # * `DecisionTaskStarted` – The decision task was dispatched to a
    #   decider.
    #
    # * `DecisionTaskTimedOut` – The decision task timed out.
    #
    # * `ExternalWorkflowExecutionCancelRequested` – Request to cancel an
    #   external workflow execution was successfully delivered to the target
    #   execution.
    #
    # * `ExternalWorkflowExecutionSignaled` – A signal, requested by this
    #   workflow execution, was successfully delivered to the target
    #   external workflow execution.
    #
    # * `FailWorkflowExecutionFailed` – A request to mark a workflow
    #   execution as failed, itself failed.
    #
    # * `MarkerRecorded` – A marker was recorded in the workflow history as
    #   the result of a `RecordMarker` decision.
    #
    # * `RecordMarkerFailed` – A `RecordMarker` decision was returned as
    #   failed.
    #
    # * `RequestCancelActivityTaskFailed` – Failed to process
    #   RequestCancelActivityTask decision. This happens when the decision
    #   isn't configured properly.
    #
    # * `RequestCancelExternalWorkflowExecutionFailed` – Request to cancel
    #   an external workflow execution failed.
    #
    # * `RequestCancelExternalWorkflowExecutionInitiated` – A request was
    #   made to request the cancellation of an external workflow execution.
    #
    # * `ScheduleActivityTaskFailed` – Failed to process
    #   ScheduleActivityTask decision. This happens when the decision isn't
    #   configured properly, for example the activity type specified isn't
    #   registered.
    #
    # * `SignalExternalWorkflowExecutionFailed` – The request to signal an
    #   external workflow execution failed.
    #
    # * `SignalExternalWorkflowExecutionInitiated` – A request to signal an
    #   external workflow was made.
    #
    # * `StartActivityTaskFailed` – A scheduled activity task failed to
    #   start.
    #
    # * `StartChildWorkflowExecutionFailed` – Failed to process
    #   StartChildWorkflowExecution decision. This happens when the decision
    #   isn't configured properly, for example the workflow type specified
    #   isn't registered.
    #
    # * `StartChildWorkflowExecutionInitiated` – A request was made to start
    #   a child workflow execution.
    #
    # * `StartTimerFailed` – Failed to process StartTimer decision. This
    #   happens when the decision isn't configured properly, for example a
    #   timer already exists with the specified timer Id.
    #
    # * `TimerCanceled` – A timer, previously started for this workflow
    #   execution, was successfully canceled.
    #
    # * `TimerFired` – A timer, previously started for this workflow
    #   execution, fired.
    #
    # * `TimerStarted` – A timer was started for the workflow execution due
    #   to a `StartTimer` decision.
    #
    # * `WorkflowExecutionCancelRequested` – A request to cancel this
    #   workflow execution was made.
    #
    # * `WorkflowExecutionCanceled` – The workflow execution was
    #   successfully canceled and closed.
    #
    # * `WorkflowExecutionCompleted` – The workflow execution was closed due
    #   to successful completion.
    #
    # * `WorkflowExecutionContinuedAsNew` – The workflow execution was
    #   closed and a new execution of the same type was created with the
    #   same workflowId.
    #
    # * `WorkflowExecutionFailed` – The workflow execution closed due to a
    #   failure.
    #
    # * `WorkflowExecutionSignaled` – An external signal was received for
    #   the workflow execution.
    #
    # * `WorkflowExecutionStarted` – The workflow execution was started.
    #
    # * `WorkflowExecutionTerminated` – The workflow execution was
    #   terminated.
    #
    # * `WorkflowExecutionTimedOut` – The workflow execution was closed
    #   because a time out was exceeded.
    #
    # @!attribute [rw] event_timestamp
    #   The date and time when the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] event_type
    #   The type of the history event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The system generated ID of the event. This ID uniquely identifies
    #   the event with in the workflow execution history.
    #   @return [Integer]
    #
    # @!attribute [rw] workflow_execution_started_event_attributes
    #   If the event is of type `WorkflowExecutionStarted` then this member
    #   is set and provides detailed information about the event. It isn't
    #   set for other event types.
    #   @return [Types::WorkflowExecutionStartedEventAttributes]
    #
    # @!attribute [rw] workflow_execution_completed_event_attributes
    #   If the event is of type `WorkflowExecutionCompleted` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::WorkflowExecutionCompletedEventAttributes]
    #
    # @!attribute [rw] complete_workflow_execution_failed_event_attributes
    #   If the event is of type `CompleteWorkflowExecutionFailed` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::CompleteWorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] workflow_execution_failed_event_attributes
    #   If the event is of type `WorkflowExecutionFailed` then this member
    #   is set and provides detailed information about the event. It isn't
    #   set for other event types.
    #   @return [Types::WorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] fail_workflow_execution_failed_event_attributes
    #   If the event is of type `FailWorkflowExecutionFailed` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::FailWorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] workflow_execution_timed_out_event_attributes
    #   If the event is of type `WorkflowExecutionTimedOut` then this member
    #   is set and provides detailed information about the event. It isn't
    #   set for other event types.
    #   @return [Types::WorkflowExecutionTimedOutEventAttributes]
    #
    # @!attribute [rw] workflow_execution_canceled_event_attributes
    #   If the event is of type `WorkflowExecutionCanceled` then this member
    #   is set and provides detailed information about the event. It isn't
    #   set for other event types.
    #   @return [Types::WorkflowExecutionCanceledEventAttributes]
    #
    # @!attribute [rw] cancel_workflow_execution_failed_event_attributes
    #   If the event is of type `CancelWorkflowExecutionFailed` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::CancelWorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] workflow_execution_continued_as_new_event_attributes
    #   If the event is of type `WorkflowExecutionContinuedAsNew` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::WorkflowExecutionContinuedAsNewEventAttributes]
    #
    # @!attribute [rw] continue_as_new_workflow_execution_failed_event_attributes
    #   If the event is of type `ContinueAsNewWorkflowExecutionFailed` then
    #   this member is set and provides detailed information about the
    #   event. It isn't set for other event types.
    #   @return [Types::ContinueAsNewWorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] workflow_execution_terminated_event_attributes
    #   If the event is of type `WorkflowExecutionTerminated` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::WorkflowExecutionTerminatedEventAttributes]
    #
    # @!attribute [rw] workflow_execution_cancel_requested_event_attributes
    #   If the event is of type `WorkflowExecutionCancelRequested` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::WorkflowExecutionCancelRequestedEventAttributes]
    #
    # @!attribute [rw] decision_task_scheduled_event_attributes
    #   If the event is of type `DecisionTaskScheduled` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::DecisionTaskScheduledEventAttributes]
    #
    # @!attribute [rw] decision_task_started_event_attributes
    #   If the event is of type `DecisionTaskStarted` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::DecisionTaskStartedEventAttributes]
    #
    # @!attribute [rw] decision_task_completed_event_attributes
    #   If the event is of type `DecisionTaskCompleted` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::DecisionTaskCompletedEventAttributes]
    #
    # @!attribute [rw] decision_task_timed_out_event_attributes
    #   If the event is of type `DecisionTaskTimedOut` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::DecisionTaskTimedOutEventAttributes]
    #
    # @!attribute [rw] activity_task_scheduled_event_attributes
    #   If the event is of type `ActivityTaskScheduled` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::ActivityTaskScheduledEventAttributes]
    #
    # @!attribute [rw] activity_task_started_event_attributes
    #   If the event is of type `ActivityTaskStarted` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::ActivityTaskStartedEventAttributes]
    #
    # @!attribute [rw] activity_task_completed_event_attributes
    #   If the event is of type `ActivityTaskCompleted` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::ActivityTaskCompletedEventAttributes]
    #
    # @!attribute [rw] activity_task_failed_event_attributes
    #   If the event is of type `ActivityTaskFailed` then this member is set
    #   and provides detailed information about the event. It isn't set for
    #   other event types.
    #   @return [Types::ActivityTaskFailedEventAttributes]
    #
    # @!attribute [rw] activity_task_timed_out_event_attributes
    #   If the event is of type `ActivityTaskTimedOut` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::ActivityTaskTimedOutEventAttributes]
    #
    # @!attribute [rw] activity_task_canceled_event_attributes
    #   If the event is of type `ActivityTaskCanceled` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::ActivityTaskCanceledEventAttributes]
    #
    # @!attribute [rw] activity_task_cancel_requested_event_attributes
    #   If the event is of type `ActivityTaskcancelRequested` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::ActivityTaskCancelRequestedEventAttributes]
    #
    # @!attribute [rw] workflow_execution_signaled_event_attributes
    #   If the event is of type `WorkflowExecutionSignaled` then this member
    #   is set and provides detailed information about the event. It isn't
    #   set for other event types.
    #   @return [Types::WorkflowExecutionSignaledEventAttributes]
    #
    # @!attribute [rw] marker_recorded_event_attributes
    #   If the event is of type `MarkerRecorded` then this member is set and
    #   provides detailed information about the event. It isn't set for
    #   other event types.
    #   @return [Types::MarkerRecordedEventAttributes]
    #
    # @!attribute [rw] record_marker_failed_event_attributes
    #   If the event is of type `DecisionTaskFailed` then this member is set
    #   and provides detailed information about the event. It isn't set for
    #   other event types.
    #   @return [Types::RecordMarkerFailedEventAttributes]
    #
    # @!attribute [rw] timer_started_event_attributes
    #   If the event is of type `TimerStarted` then this member is set and
    #   provides detailed information about the event. It isn't set for
    #   other event types.
    #   @return [Types::TimerStartedEventAttributes]
    #
    # @!attribute [rw] timer_fired_event_attributes
    #   If the event is of type `TimerFired` then this member is set and
    #   provides detailed information about the event. It isn't set for
    #   other event types.
    #   @return [Types::TimerFiredEventAttributes]
    #
    # @!attribute [rw] timer_canceled_event_attributes
    #   If the event is of type `TimerCanceled` then this member is set and
    #   provides detailed information about the event. It isn't set for
    #   other event types.
    #   @return [Types::TimerCanceledEventAttributes]
    #
    # @!attribute [rw] start_child_workflow_execution_initiated_event_attributes
    #   If the event is of type `StartChildWorkflowExecutionInitiated` then
    #   this member is set and provides detailed information about the
    #   event. It isn't set for other event types.
    #   @return [Types::StartChildWorkflowExecutionInitiatedEventAttributes]
    #
    # @!attribute [rw] child_workflow_execution_started_event_attributes
    #   If the event is of type `ChildWorkflowExecutionStarted` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::ChildWorkflowExecutionStartedEventAttributes]
    #
    # @!attribute [rw] child_workflow_execution_completed_event_attributes
    #   If the event is of type `ChildWorkflowExecutionCompleted` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::ChildWorkflowExecutionCompletedEventAttributes]
    #
    # @!attribute [rw] child_workflow_execution_failed_event_attributes
    #   If the event is of type `ChildWorkflowExecutionFailed` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::ChildWorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] child_workflow_execution_timed_out_event_attributes
    #   If the event is of type `ChildWorkflowExecutionTimedOut` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::ChildWorkflowExecutionTimedOutEventAttributes]
    #
    # @!attribute [rw] child_workflow_execution_canceled_event_attributes
    #   If the event is of type `ChildWorkflowExecutionCanceled` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::ChildWorkflowExecutionCanceledEventAttributes]
    #
    # @!attribute [rw] child_workflow_execution_terminated_event_attributes
    #   If the event is of type `ChildWorkflowExecutionTerminated` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::ChildWorkflowExecutionTerminatedEventAttributes]
    #
    # @!attribute [rw] signal_external_workflow_execution_initiated_event_attributes
    #   If the event is of type `SignalExternalWorkflowExecutionInitiated`
    #   then this member is set and provides detailed information about the
    #   event. It isn't set for other event types.
    #   @return [Types::SignalExternalWorkflowExecutionInitiatedEventAttributes]
    #
    # @!attribute [rw] external_workflow_execution_signaled_event_attributes
    #   If the event is of type `ExternalWorkflowExecutionSignaled` then
    #   this member is set and provides detailed information about the
    #   event. It isn't set for other event types.
    #   @return [Types::ExternalWorkflowExecutionSignaledEventAttributes]
    #
    # @!attribute [rw] signal_external_workflow_execution_failed_event_attributes
    #   If the event is of type `SignalExternalWorkflowExecutionFailed` then
    #   this member is set and provides detailed information about the
    #   event. It isn't set for other event types.
    #   @return [Types::SignalExternalWorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] external_workflow_execution_cancel_requested_event_attributes
    #   If the event is of type `ExternalWorkflowExecutionCancelRequested`
    #   then this member is set and provides detailed information about the
    #   event. It isn't set for other event types.
    #   @return [Types::ExternalWorkflowExecutionCancelRequestedEventAttributes]
    #
    # @!attribute [rw] request_cancel_external_workflow_execution_initiated_event_attributes
    #   If the event is of type
    #   `RequestCancelExternalWorkflowExecutionInitiated` then this member
    #   is set and provides detailed information about the event. It isn't
    #   set for other event types.
    #   @return [Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes]
    #
    # @!attribute [rw] request_cancel_external_workflow_execution_failed_event_attributes
    #   If the event is of type
    #   `RequestCancelExternalWorkflowExecutionFailed` then this member is
    #   set and provides detailed information about the event. It isn't set
    #   for other event types.
    #   @return [Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] schedule_activity_task_failed_event_attributes
    #   If the event is of type `ScheduleActivityTaskFailed` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::ScheduleActivityTaskFailedEventAttributes]
    #
    # @!attribute [rw] request_cancel_activity_task_failed_event_attributes
    #   If the event is of type `RequestCancelActivityTaskFailed` then this
    #   member is set and provides detailed information about the event. It
    #   isn't set for other event types.
    #   @return [Types::RequestCancelActivityTaskFailedEventAttributes]
    #
    # @!attribute [rw] start_timer_failed_event_attributes
    #   If the event is of type `StartTimerFailed` then this member is set
    #   and provides detailed information about the event. It isn't set for
    #   other event types.
    #   @return [Types::StartTimerFailedEventAttributes]
    #
    # @!attribute [rw] cancel_timer_failed_event_attributes
    #   If the event is of type `CancelTimerFailed` then this member is set
    #   and provides detailed information about the event. It isn't set for
    #   other event types.
    #   @return [Types::CancelTimerFailedEventAttributes]
    #
    # @!attribute [rw] start_child_workflow_execution_failed_event_attributes
    #   If the event is of type `StartChildWorkflowExecutionFailed` then
    #   this member is set and provides detailed information about the
    #   event. It isn't set for other event types.
    #   @return [Types::StartChildWorkflowExecutionFailedEventAttributes]
    #
    # @!attribute [rw] lambda_function_scheduled_event_attributes
    #   Provides the details of the `LambdaFunctionScheduled` event. It
    #   isn't set for other event types.
    #   @return [Types::LambdaFunctionScheduledEventAttributes]
    #
    # @!attribute [rw] lambda_function_started_event_attributes
    #   Provides the details of the `LambdaFunctionStarted` event. It isn't
    #   set for other event types.
    #   @return [Types::LambdaFunctionStartedEventAttributes]
    #
    # @!attribute [rw] lambda_function_completed_event_attributes
    #   Provides the details of the `LambdaFunctionCompleted` event. It
    #   isn't set for other event types.
    #   @return [Types::LambdaFunctionCompletedEventAttributes]
    #
    # @!attribute [rw] lambda_function_failed_event_attributes
    #   Provides the details of the `LambdaFunctionFailed` event. It isn't
    #   set for other event types.
    #   @return [Types::LambdaFunctionFailedEventAttributes]
    #
    # @!attribute [rw] lambda_function_timed_out_event_attributes
    #   Provides the details of the `LambdaFunctionTimedOut` event. It
    #   isn't set for other event types.
    #   @return [Types::LambdaFunctionTimedOutEventAttributes]
    #
    # @!attribute [rw] schedule_lambda_function_failed_event_attributes
    #   Provides the details of the `ScheduleLambdaFunctionFailed` event. It
    #   isn't set for other event types.
    #   @return [Types::ScheduleLambdaFunctionFailedEventAttributes]
    #
    # @!attribute [rw] start_lambda_function_failed_event_attributes
    #   Provides the details of the `StartLambdaFunctionFailed` event. It
    #   isn't set for other event types.
    #   @return [Types::StartLambdaFunctionFailedEventAttributes]
    #
    class HistoryEvent < Struct.new(
      :event_timestamp,
      :event_type,
      :event_id,
      :workflow_execution_started_event_attributes,
      :workflow_execution_completed_event_attributes,
      :complete_workflow_execution_failed_event_attributes,
      :workflow_execution_failed_event_attributes,
      :fail_workflow_execution_failed_event_attributes,
      :workflow_execution_timed_out_event_attributes,
      :workflow_execution_canceled_event_attributes,
      :cancel_workflow_execution_failed_event_attributes,
      :workflow_execution_continued_as_new_event_attributes,
      :continue_as_new_workflow_execution_failed_event_attributes,
      :workflow_execution_terminated_event_attributes,
      :workflow_execution_cancel_requested_event_attributes,
      :decision_task_scheduled_event_attributes,
      :decision_task_started_event_attributes,
      :decision_task_completed_event_attributes,
      :decision_task_timed_out_event_attributes,
      :activity_task_scheduled_event_attributes,
      :activity_task_started_event_attributes,
      :activity_task_completed_event_attributes,
      :activity_task_failed_event_attributes,
      :activity_task_timed_out_event_attributes,
      :activity_task_canceled_event_attributes,
      :activity_task_cancel_requested_event_attributes,
      :workflow_execution_signaled_event_attributes,
      :marker_recorded_event_attributes,
      :record_marker_failed_event_attributes,
      :timer_started_event_attributes,
      :timer_fired_event_attributes,
      :timer_canceled_event_attributes,
      :start_child_workflow_execution_initiated_event_attributes,
      :child_workflow_execution_started_event_attributes,
      :child_workflow_execution_completed_event_attributes,
      :child_workflow_execution_failed_event_attributes,
      :child_workflow_execution_timed_out_event_attributes,
      :child_workflow_execution_canceled_event_attributes,
      :child_workflow_execution_terminated_event_attributes,
      :signal_external_workflow_execution_initiated_event_attributes,
      :external_workflow_execution_signaled_event_attributes,
      :signal_external_workflow_execution_failed_event_attributes,
      :external_workflow_execution_cancel_requested_event_attributes,
      :request_cancel_external_workflow_execution_initiated_event_attributes,
      :request_cancel_external_workflow_execution_failed_event_attributes,
      :schedule_activity_task_failed_event_attributes,
      :request_cancel_activity_task_failed_event_attributes,
      :start_timer_failed_event_attributes,
      :cancel_timer_failed_event_attributes,
      :start_child_workflow_execution_failed_event_attributes,
      :lambda_function_scheduled_event_attributes,
      :lambda_function_started_event_attributes,
      :lambda_function_completed_event_attributes,
      :lambda_function_failed_event_attributes,
      :lambda_function_timed_out_event_attributes,
      :schedule_lambda_function_failed_event_attributes,
      :start_lambda_function_failed_event_attributes)
      include Aws::Structure
    end

    # Provides the details of the `LambdaFunctionCompleted` event. It isn't
    # set for other event types.
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `LambdaFunctionScheduled` event that was recorded when
    #   this Lambda task was scheduled. To help diagnose issues, use this
    #   information to trace back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `LambdaFunctionStarted` event recorded when this
    #   activity task started. To help diagnose issues, use this information
    #   to trace back the chain of events leading up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] result
    #   The results of the Lambda task.
    #   @return [String]
    #
    class LambdaFunctionCompletedEventAttributes < Struct.new(
      :scheduled_event_id,
      :started_event_id,
      :result)
      include Aws::Structure
    end

    # Provides the details of the `LambdaFunctionFailed` event. It isn't
    # set for other event types.
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `LambdaFunctionScheduled` event that was recorded when
    #   this activity task was scheduled. To help diagnose issues, use this
    #   information to trace back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `LambdaFunctionStarted` event recorded when this
    #   activity task started. To help diagnose issues, use this information
    #   to trace back the chain of events leading up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   The reason provided for the failure.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details of the failure.
    #   @return [String]
    #
    class LambdaFunctionFailedEventAttributes < Struct.new(
      :scheduled_event_id,
      :started_event_id,
      :reason,
      :details)
      include Aws::Structure
    end

    # Provides the details of the `LambdaFunctionScheduled` event. It isn't
    # set for other event types.
    #
    # @!attribute [rw] id
    #   The unique ID of the Lambda task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   Data attached to the event that the decider can use in subsequent
    #   workflow tasks. This data isn't sent to the Lambda task.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input provided to the Lambda task.
    #   @return [String]
    #
    # @!attribute [rw] start_to_close_timeout
    #   The maximum amount of time a worker can take to process the Lambda
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `LambdaFunctionCompleted` event corresponding to the
    #   decision that resulted in scheduling this activity task. To help
    #   diagnose issues, use this information to trace back the chain of
    #   events leading up to this event.
    #   @return [Integer]
    #
    class LambdaFunctionScheduledEventAttributes < Struct.new(
      :id,
      :name,
      :control,
      :input,
      :start_to_close_timeout,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Provides the details of the `LambdaFunctionStarted` event. It isn't
    # set for other event types.
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `LambdaFunctionScheduled` event that was recorded when
    #   this activity task was scheduled. To help diagnose issues, use this
    #   information to trace back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    class LambdaFunctionStartedEventAttributes < Struct.new(
      :scheduled_event_id)
      include Aws::Structure
    end

    # Provides details of the `LambdaFunctionTimedOut` event.
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `LambdaFunctionScheduled` event that was recorded when
    #   this activity task was scheduled. To help diagnose issues, use this
    #   information to trace back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `ActivityTaskStarted` event that was recorded when
    #   this activity task started. To help diagnose issues, use this
    #   information to trace back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_type
    #   The type of the timeout that caused this event.
    #   @return [String]
    #
    class LambdaFunctionTimedOutEventAttributes < Struct.new(
      :scheduled_event_id,
      :started_event_id,
      :timeout_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListActivityTypesInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         name: "Name",
    #         registration_status: "REGISTERED", # required, accepts REGISTERED, DEPRECATED
    #         next_page_token: "PageToken",
    #         maximum_page_size: 1,
    #         reverse_order: false,
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which the activity types have been
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   If specified, only lists the activity types that have this name.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   Specifies the registration status of the activity types to list.
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    # @!attribute [rw] maximum_page_size
    #   The maximum number of results that are returned per call.
    #   `nextPageToken` can be used to obtain futher pages of results. The
    #   default is 1000, which is the maximum allowed page size. You can,
    #   however, specify a page size *smaller* than the maximum.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   When set to `true`, returns the results in reverse order. By
    #   default, the results are returned in ascending alphabetical order by
    #   `name` of the activity types.
    #   @return [Boolean]
    #
    class ListActivityTypesInput < Struct.new(
      :domain,
      :name,
      :registration_status,
      :next_page_token,
      :maximum_page_size,
      :reverse_order)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListClosedWorkflowExecutionsInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         start_time_filter: {
    #           oldest_date: Time.now, # required
    #           latest_date: Time.now,
    #         },
    #         close_time_filter: {
    #           oldest_date: Time.now, # required
    #           latest_date: Time.now,
    #         },
    #         execution_filter: {
    #           workflow_id: "WorkflowId", # required
    #         },
    #         close_status_filter: {
    #           status: "COMPLETED", # required, accepts COMPLETED, FAILED, CANCELED, TERMINATED, CONTINUED_AS_NEW, TIMED_OUT
    #         },
    #         type_filter: {
    #           name: "Name", # required
    #           version: "VersionOptional",
    #         },
    #         tag_filter: {
    #           tag: "Tag", # required
    #         },
    #         next_page_token: "PageToken",
    #         maximum_page_size: 1,
    #         reverse_order: false,
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the workflow executions to
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] start_time_filter
    #   If specified, the workflow executions are included in the returned
    #   results based on whether their start times are within the range
    #   specified by this filter. Also, if this parameter is specified, the
    #   returned results are ordered by their start times.
    #
    #   <note markdown="1"> `startTimeFilter` and `closeTimeFilter` are mutually exclusive. You
    #   must specify one of these in a request but not both.
    #
    #    </note>
    #   @return [Types::ExecutionTimeFilter]
    #
    # @!attribute [rw] close_time_filter
    #   If specified, the workflow executions are included in the returned
    #   results based on whether their close times are within the range
    #   specified by this filter. Also, if this parameter is specified, the
    #   returned results are ordered by their close times.
    #
    #   <note markdown="1"> `startTimeFilter` and `closeTimeFilter` are mutually exclusive. You
    #   must specify one of these in a request but not both.
    #
    #    </note>
    #   @return [Types::ExecutionTimeFilter]
    #
    # @!attribute [rw] execution_filter
    #   If specified, only workflow executions matching the workflow ID
    #   specified in the filter are returned.
    #
    #   <note markdown="1"> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter`
    #   are mutually exclusive. You can specify at most one of these in a
    #   request.
    #
    #    </note>
    #   @return [Types::WorkflowExecutionFilter]
    #
    # @!attribute [rw] close_status_filter
    #   If specified, only workflow executions that match this *close
    #   status* are listed. For example, if TERMINATED is specified, then
    #   only TERMINATED workflow executions are listed.
    #
    #   <note markdown="1"> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter`
    #   are mutually exclusive. You can specify at most one of these in a
    #   request.
    #
    #    </note>
    #   @return [Types::CloseStatusFilter]
    #
    # @!attribute [rw] type_filter
    #   If specified, only executions of the type specified in the filter
    #   are returned.
    #
    #   <note markdown="1"> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter`
    #   are mutually exclusive. You can specify at most one of these in a
    #   request.
    #
    #    </note>
    #   @return [Types::WorkflowTypeFilter]
    #
    # @!attribute [rw] tag_filter
    #   If specified, only executions that have the matching tag are listed.
    #
    #   <note markdown="1"> `closeStatusFilter`, `executionFilter`, `typeFilter` and `tagFilter`
    #   are mutually exclusive. You can specify at most one of these in a
    #   request.
    #
    #    </note>
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    # @!attribute [rw] maximum_page_size
    #   The maximum number of results that are returned per call.
    #   `nextPageToken` can be used to obtain futher pages of results. The
    #   default is 1000, which is the maximum allowed page size. You can,
    #   however, specify a page size *smaller* than the maximum.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   When set to `true`, returns the results in reverse order. By default
    #   the results are returned in descending order of the start or the
    #   close time of the executions.
    #   @return [Boolean]
    #
    class ListClosedWorkflowExecutionsInput < Struct.new(
      :domain,
      :start_time_filter,
      :close_time_filter,
      :execution_filter,
      :close_status_filter,
      :type_filter,
      :tag_filter,
      :next_page_token,
      :maximum_page_size,
      :reverse_order)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDomainsInput
    #   data as a hash:
    #
    #       {
    #         next_page_token: "PageToken",
    #         registration_status: "REGISTERED", # required, accepts REGISTERED, DEPRECATED
    #         maximum_page_size: 1,
    #         reverse_order: false,
    #       }
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   Specifies the registration status of the domains to list.
    #   @return [String]
    #
    # @!attribute [rw] maximum_page_size
    #   The maximum number of results that are returned per call.
    #   `nextPageToken` can be used to obtain futher pages of results. The
    #   default is 1000, which is the maximum allowed page size. You can,
    #   however, specify a page size *smaller* than the maximum.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   When set to `true`, returns the results in reverse order. By
    #   default, the results are returned in ascending alphabetical order by
    #   `name` of the domains.
    #   @return [Boolean]
    #
    class ListDomainsInput < Struct.new(
      :next_page_token,
      :registration_status,
      :maximum_page_size,
      :reverse_order)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOpenWorkflowExecutionsInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         start_time_filter: { # required
    #           oldest_date: Time.now, # required
    #           latest_date: Time.now,
    #         },
    #         type_filter: {
    #           name: "Name", # required
    #           version: "VersionOptional",
    #         },
    #         tag_filter: {
    #           tag: "Tag", # required
    #         },
    #         next_page_token: "PageToken",
    #         maximum_page_size: 1,
    #         reverse_order: false,
    #         execution_filter: {
    #           workflow_id: "WorkflowId", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the workflow executions to
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] start_time_filter
    #   Workflow executions are included in the returned results based on
    #   whether their start times are within the range specified by this
    #   filter.
    #   @return [Types::ExecutionTimeFilter]
    #
    # @!attribute [rw] type_filter
    #   If specified, only executions of the type specified in the filter
    #   are returned.
    #
    #   <note markdown="1"> `executionFilter`, `typeFilter` and `tagFilter` are mutually
    #   exclusive. You can specify at most one of these in a request.
    #
    #    </note>
    #   @return [Types::WorkflowTypeFilter]
    #
    # @!attribute [rw] tag_filter
    #   If specified, only executions that have the matching tag are listed.
    #
    #   <note markdown="1"> `executionFilter`, `typeFilter` and `tagFilter` are mutually
    #   exclusive. You can specify at most one of these in a request.
    #
    #    </note>
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    # @!attribute [rw] maximum_page_size
    #   The maximum number of results that are returned per call.
    #   `nextPageToken` can be used to obtain futher pages of results. The
    #   default is 1000, which is the maximum allowed page size. You can,
    #   however, specify a page size *smaller* than the maximum.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   When set to `true`, returns the results in reverse order. By default
    #   the results are returned in descending order of the start time of
    #   the executions.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_filter
    #   If specified, only workflow executions matching the workflow ID
    #   specified in the filter are returned.
    #
    #   <note markdown="1"> `executionFilter`, `typeFilter` and `tagFilter` are mutually
    #   exclusive. You can specify at most one of these in a request.
    #
    #    </note>
    #   @return [Types::WorkflowExecutionFilter]
    #
    class ListOpenWorkflowExecutionsInput < Struct.new(
      :domain,
      :start_time_filter,
      :type_filter,
      :tag_filter,
      :next_page_token,
      :maximum_page_size,
      :reverse_order,
      :execution_filter)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorkflowTypesInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         name: "Name",
    #         registration_status: "REGISTERED", # required, accepts REGISTERED, DEPRECATED
    #         next_page_token: "PageToken",
    #         maximum_page_size: 1,
    #         reverse_order: false,
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which the workflow types have been
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   If specified, lists the workflow type with this name.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   Specifies the registration status of the workflow types to list.
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    # @!attribute [rw] maximum_page_size
    #   The maximum number of results that are returned per call.
    #   `nextPageToken` can be used to obtain futher pages of results. The
    #   default is 1000, which is the maximum allowed page size. You can,
    #   however, specify a page size *smaller* than the maximum.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   When set to `true`, returns the results in reverse order. By default
    #   the results are returned in ascending alphabetical order of the
    #   `name` of the workflow types.
    #   @return [Boolean]
    #
    class ListWorkflowTypesInput < Struct.new(
      :domain,
      :name,
      :registration_status,
      :next_page_token,
      :maximum_page_size,
      :reverse_order)
      include Aws::Structure
    end

    # Provides the details of the `MarkerRecorded` event.
    #
    # @!attribute [rw] marker_name
    #   The name of the marker.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details of the marker.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `RecordMarker` decision that
    #   requested this marker. This information can be useful for diagnosing
    #   problems by tracing back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    class MarkerRecordedEventAttributes < Struct.new(
      :marker_name,
      :details,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Contains the count of tasks in a task list.
    #
    # @!attribute [rw] count
    #   The number of tasks in the task list.
    #   @return [Integer]
    #
    # @!attribute [rw] truncated
    #   If set to true, indicates that the actual count was more than the
    #   maximum supported by this API and the count returned is the
    #   truncated value.
    #   @return [Boolean]
    #
    class PendingTaskCount < Struct.new(
      :count,
      :truncated)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PollForActivityTaskInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         task_list: { # required
    #           name: "Name", # required
    #         },
    #         identity: "Identity",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the task lists being polled.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   Specifies the task list to poll for activity tasks.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] identity
    #   Identity of the worker making the request, recorded in the
    #   `ActivityTaskStarted` event in the workflow history. This enables
    #   diagnostic tracing when problems arise. The form of this identity is
    #   user defined.
    #   @return [String]
    #
    class PollForActivityTaskInput < Struct.new(
      :domain,
      :task_list,
      :identity)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PollForDecisionTaskInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         task_list: { # required
    #           name: "Name", # required
    #         },
    #         identity: "Identity",
    #         next_page_token: "PageToken",
    #         maximum_page_size: 1,
    #         reverse_order: false,
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the task lists to poll.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   Specifies the task list to poll for decision tasks.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] identity
    #   Identity of the decider making the request, which is recorded in the
    #   DecisionTaskStarted event in the workflow history. This enables
    #   diagnostic tracing when problems arise. The form of this identity is
    #   user defined.
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #
    #   <note markdown="1"> The `nextPageToken` returned by this action cannot be used with
    #   GetWorkflowExecutionHistory to get the next page. You must call
    #   PollForDecisionTask again (with the `nextPageToken`) to retrieve the
    #   next page of history records. Calling PollForDecisionTask with a
    #   `nextPageToken` doesn't return a new decision task.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] maximum_page_size
    #   The maximum number of results that are returned per call.
    #   `nextPageToken` can be used to obtain futher pages of results. The
    #   default is 1000, which is the maximum allowed page size. You can,
    #   however, specify a page size *smaller* than the maximum.
    #
    #   This is an upper limit only; the actual number of results returned
    #   per call may be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] reverse_order
    #   When set to `true`, returns the events in reverse order. By default
    #   the results are returned in ascending order of the `eventTimestamp`
    #   of the events.
    #   @return [Boolean]
    #
    class PollForDecisionTaskInput < Struct.new(
      :domain,
      :task_list,
      :identity,
      :next_page_token,
      :maximum_page_size,
      :reverse_order)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RecordActivityTaskHeartbeatInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #         details: "LimitedData",
    #       }
    #
    # @!attribute [rw] task_token
    #   The `taskToken` of the ActivityTask.
    #
    #   `taskToken` is generated by the service and should be treated as an
    #   opaque value. If the task is passed to another process, its
    #   `taskToken` must also be passed. This enables it to provide its
    #   progress and respond with results.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   If specified, contains details about the progress of the task.
    #   @return [String]
    #
    class RecordActivityTaskHeartbeatInput < Struct.new(
      :task_token,
      :details)
      include Aws::Structure
    end

    # Provides the details of the `RecordMarker` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass RecordMarkerDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         marker_name: "MarkerName", # required
    #         details: "Data",
    #       }
    #
    # @!attribute [rw] marker_name
    #   The name of the marker.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details of the marker.
    #   @return [String]
    #
    class RecordMarkerDecisionAttributes < Struct.new(
      :marker_name,
      :details)
      include Aws::Structure
    end

    # Provides the details of the `RecordMarkerFailed` event.
    #
    # @!attribute [rw] marker_name
    #   The marker's name.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `RecordMarkerFailed` decision for
    #   this cancellation request. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class RecordMarkerFailedEventAttributes < Struct.new(
      :marker_name,
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterActivityTypeInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         name: "Name", # required
    #         version: "Version", # required
    #         description: "Description",
    #         default_task_start_to_close_timeout: "DurationInSecondsOptional",
    #         default_task_heartbeat_timeout: "DurationInSecondsOptional",
    #         default_task_list: {
    #           name: "Name", # required
    #         },
    #         default_task_priority: "TaskPriority",
    #         default_task_schedule_to_start_timeout: "DurationInSecondsOptional",
    #         default_task_schedule_to_close_timeout: "DurationInSecondsOptional",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which this activity is to be registered.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the activity type within the domain.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the activity type.
    #
    #   <note markdown="1"> The activity type consists of the name and version, the combination
    #   of which must be unique within the domain.
    #
    #    </note>
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A textual description of the activity type.
    #   @return [String]
    #
    # @!attribute [rw] default_task_start_to_close_timeout
    #   If set, specifies the default maximum duration that a worker can
    #   take to process tasks of this activity type. This default can be
    #   overridden when scheduling an activity task using the
    #   `ScheduleActivityTask` Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_task_heartbeat_timeout
    #   If set, specifies the default maximum time before which a worker
    #   processing a task of this type must report progress by calling
    #   RecordActivityTaskHeartbeat. If the timeout is exceeded, the
    #   activity task is automatically timed out. This default can be
    #   overridden when scheduling an activity task using the
    #   `ScheduleActivityTask` Decision. If the activity worker subsequently
    #   attempts to record a heartbeat or returns a result, the activity
    #   worker receives an `UnknownResource` fault. In this case, Amazon SWF
    #   no longer considers the activity task to be valid; the activity
    #   worker should clean up the activity task.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_task_list
    #   If set, specifies the default task list to use for scheduling tasks
    #   of this activity type. This default task list is used if a task list
    #   isn't provided when a task is scheduled through the
    #   `ScheduleActivityTask` Decision.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] default_task_priority
    #   The default task priority to assign to the activity type. If not
    #   assigned, then `0` is used. Valid values are integers that range
    #   from Java's `Integer.MIN_VALUE` (-2147483648) to
    #   `Integer.MAX_VALUE` (2147483647). Higher numbers indicate higher
    #   priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *in the *Amazon SWF Developer Guide*.*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] default_task_schedule_to_start_timeout
    #   If set, specifies the default maximum duration that a task of this
    #   activity type can wait before being assigned to a worker. This
    #   default can be overridden when scheduling an activity task using the
    #   `ScheduleActivityTask` Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_task_schedule_to_close_timeout
    #   If set, specifies the default maximum duration for a task of this
    #   activity type. This default can be overridden when scheduling an
    #   activity task using the `ScheduleActivityTask` Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    class RegisterActivityTypeInput < Struct.new(
      :domain,
      :name,
      :version,
      :description,
      :default_task_start_to_close_timeout,
      :default_task_heartbeat_timeout,
      :default_task_list,
      :default_task_priority,
      :default_task_schedule_to_start_timeout,
      :default_task_schedule_to_close_timeout)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterDomainInput
    #   data as a hash:
    #
    #       {
    #         name: "DomainName", # required
    #         description: "Description",
    #         workflow_execution_retention_period_in_days: "DurationInDays", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the domain to register. The name must be unique in the
    #   region that the domain is registered in.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A text description of the domain.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_retention_period_in_days
    #   The duration (in days) that records and histories of workflow
    #   executions on the domain should be kept by the service. After the
    #   retention period, the workflow execution isn't available in the
    #   results of visibility calls.
    #
    #   If you pass the value `NONE` or `0` (zero), then the workflow
    #   execution history isn't retained. As soon as the workflow execution
    #   completes, the execution record and its history are deleted.
    #
    #   The maximum workflow execution retention period is 90 days. For more
    #   information about Amazon SWF service limits, see: [Amazon SWF
    #   Service Limits][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html
    #   @return [String]
    #
    class RegisterDomainInput < Struct.new(
      :name,
      :description,
      :workflow_execution_retention_period_in_days)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterWorkflowTypeInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         name: "Name", # required
    #         version: "Version", # required
    #         description: "Description",
    #         default_task_start_to_close_timeout: "DurationInSecondsOptional",
    #         default_execution_start_to_close_timeout: "DurationInSecondsOptional",
    #         default_task_list: {
    #           name: "Name", # required
    #         },
    #         default_task_priority: "TaskPriority",
    #         default_child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #         default_lambda_role: "Arn",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which to register the workflow type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workflow type.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the workflow type.
    #
    #   <note markdown="1"> The workflow type consists of the name and version, the combination
    #   of which must be unique within the domain. To get a list of all
    #   currently registered workflow types, use the ListWorkflowTypes
    #   action.
    #
    #    </note>
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Textual description of the workflow type.
    #   @return [String]
    #
    # @!attribute [rw] default_task_start_to_close_timeout
    #   If set, specifies the default maximum duration of decision tasks for
    #   this workflow type. This default can be overridden when starting a
    #   workflow execution using the StartWorkflowExecution action or the
    #   `StartChildWorkflowExecution` Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_execution_start_to_close_timeout
    #   If set, specifies the default maximum duration for executions of
    #   this workflow type. You can override this default when starting an
    #   execution through the StartWorkflowExecution Action or
    #   `StartChildWorkflowExecution` Decision.
    #
    #   The duration is specified in seconds; an integer greater than or
    #   equal to 0. Unlike some of the other timeout parameters in Amazon
    #   SWF, you cannot specify a value of "NONE" for
    #   `defaultExecutionStartToCloseTimeout`; there is a one-year max limit
    #   on the time that a workflow execution can run. Exceeding this limit
    #   always causes the workflow execution to time out.
    #   @return [String]
    #
    # @!attribute [rw] default_task_list
    #   If set, specifies the default task list to use for scheduling
    #   decision tasks for executions of this workflow type. This default is
    #   used only if a task list isn't provided when starting the execution
    #   through the StartWorkflowExecution Action or
    #   `StartChildWorkflowExecution` Decision.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] default_task_priority
    #   The default task priority to assign to the workflow type. If not
    #   assigned, then `0` is used. Valid values are integers that range
    #   from Java's `Integer.MIN_VALUE` (-2147483648) to
    #   `Integer.MAX_VALUE` (2147483647). Higher numbers indicate higher
    #   priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] default_child_policy
    #   If set, specifies the default policy to use for the child workflow
    #   executions when a workflow execution of this type is terminated, by
    #   calling the TerminateWorkflowExecution action explicitly or due to
    #   an expired timeout. This default can be overridden when starting a
    #   workflow execution using the StartWorkflowExecution action or the
    #   `StartChildWorkflowExecution` Decision.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #   @return [String]
    #
    # @!attribute [rw] default_lambda_role
    #   The default IAM role attached to this workflow type.
    #
    #   <note markdown="1"> Executions of this workflow type need IAM roles to invoke Lambda
    #   functions. If you don't specify an IAM role when you start this
    #   workflow type, the default Lambda role is attached to the execution.
    #   For more information, see
    #   [http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html][1]
    #   in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html
    #   @return [String]
    #
    class RegisterWorkflowTypeInput < Struct.new(
      :domain,
      :name,
      :version,
      :description,
      :default_task_start_to_close_timeout,
      :default_execution_start_to_close_timeout,
      :default_task_list,
      :default_task_priority,
      :default_child_policy,
      :default_lambda_role)
      include Aws::Structure
    end

    # Provides the details of the `RequestCancelActivityTask` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass RequestCancelActivityTaskDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         activity_id: "ActivityId", # required
    #       }
    #
    # @!attribute [rw] activity_id
    #   The `activityId` of the activity task to be canceled.
    #   @return [String]
    #
    class RequestCancelActivityTaskDecisionAttributes < Struct.new(
      :activity_id)
      include Aws::Structure
    end

    # Provides the details of the `RequestCancelActivityTaskFailed` event.
    #
    # @!attribute [rw] activity_id
    #   The activityId provided in the `RequestCancelActivityTask` decision
    #   that failed.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `RequestCancelActivityTask`
    #   decision for this cancellation request. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class RequestCancelActivityTaskFailedEventAttributes < Struct.new(
      :activity_id,
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Provides the details of the `RequestCancelExternalWorkflowExecution`
    # decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass RequestCancelExternalWorkflowExecutionDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         workflow_id: "WorkflowId", # required
    #         run_id: "WorkflowRunIdOptional",
    #         control: "Data",
    #       }
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the external workflow execution to cancel.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The `runId` of the external workflow execution to cancel.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   The data attached to the event that can be used by the decider in
    #   subsequent workflow tasks.
    #   @return [String]
    #
    class RequestCancelExternalWorkflowExecutionDecisionAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :control)
      include Aws::Structure
    end

    # Provides the details of the
    # `RequestCancelExternalWorkflowExecutionFailed` event.
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the external workflow to which the cancel
    #   request was to be delivered.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The `runId` of the external workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `RequestCancelExternalWorkflowExecutionInitiated`
    #   event corresponding to the `RequestCancelExternalWorkflowExecution`
    #   decision to cancel this external workflow execution. This
    #   information can be useful for diagnosing problems by tracing back
    #   the chain of events leading up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the
    #   `RequestCancelExternalWorkflowExecution` decision for this
    #   cancellation request. This information can be useful for diagnosing
    #   problems by tracing back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    # @!attribute [rw] control
    #   The data attached to the event that the decider can use in
    #   subsequent workflow tasks. This data isn't sent to the workflow
    #   execution.
    #   @return [String]
    #
    class RequestCancelExternalWorkflowExecutionFailedEventAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :cause,
      :initiated_event_id,
      :decision_task_completed_event_id,
      :control)
      include Aws::Structure
    end

    # Provides the details of the
    # `RequestCancelExternalWorkflowExecutionInitiated` event.
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the external workflow execution to be canceled.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The `runId` of the external workflow execution to be canceled.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the
    #   `RequestCancelExternalWorkflowExecution` decision for this
    #   cancellation request. This information can be useful for diagnosing
    #   problems by tracing back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    # @!attribute [rw] control
    #   Data attached to the event that can be used by the decider in
    #   subsequent workflow tasks.
    #   @return [String]
    #
    class RequestCancelExternalWorkflowExecutionInitiatedEventAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :decision_task_completed_event_id,
      :control)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RequestCancelWorkflowExecutionInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         workflow_id: "WorkflowId", # required
    #         run_id: "WorkflowRunIdOptional",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the workflow execution to cancel.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The workflowId of the workflow execution to cancel.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The runId of the workflow execution to cancel.
    #   @return [String]
    #
    class RequestCancelWorkflowExecutionInput < Struct.new(
      :domain,
      :workflow_id,
      :run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RespondActivityTaskCanceledInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #         details: "Data",
    #       }
    #
    # @!attribute [rw] task_token
    #   The `taskToken` of the ActivityTask.
    #
    #   `taskToken` is generated by the service and should be treated as an
    #   opaque value. If the task is passed to another process, its
    #   `taskToken` must also be passed. This enables it to provide its
    #   progress and respond with results.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Information about the cancellation.
    #   @return [String]
    #
    class RespondActivityTaskCanceledInput < Struct.new(
      :task_token,
      :details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RespondActivityTaskCompletedInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #         result: "Data",
    #       }
    #
    # @!attribute [rw] task_token
    #   The `taskToken` of the ActivityTask.
    #
    #   `taskToken` is generated by the service and should be treated as an
    #   opaque value. If the task is passed to another process, its
    #   `taskToken` must also be passed. This enables it to provide its
    #   progress and respond with results.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   The result of the activity task. It is a free form string that is
    #   implementation specific.
    #   @return [String]
    #
    class RespondActivityTaskCompletedInput < Struct.new(
      :task_token,
      :result)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RespondActivityTaskFailedInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #         reason: "FailureReason",
    #         details: "Data",
    #       }
    #
    # @!attribute [rw] task_token
    #   The `taskToken` of the ActivityTask.
    #
    #   `taskToken` is generated by the service and should be treated as an
    #   opaque value. If the task is passed to another process, its
    #   `taskToken` must also be passed. This enables it to provide its
    #   progress and respond with results.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Description of the error that may assist in diagnostics.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Detailed information about the failure.
    #   @return [String]
    #
    class RespondActivityTaskFailedInput < Struct.new(
      :task_token,
      :reason,
      :details)
      include Aws::Structure
    end

    # Input data for a TaskCompleted response to a decision task.
    #
    # @note When making an API call, you may pass RespondDecisionTaskCompletedInput
    #   data as a hash:
    #
    #       {
    #         task_token: "TaskToken", # required
    #         decisions: [
    #           {
    #             decision_type: "ScheduleActivityTask", # required, accepts ScheduleActivityTask, RequestCancelActivityTask, CompleteWorkflowExecution, FailWorkflowExecution, CancelWorkflowExecution, ContinueAsNewWorkflowExecution, RecordMarker, StartTimer, CancelTimer, SignalExternalWorkflowExecution, RequestCancelExternalWorkflowExecution, StartChildWorkflowExecution, ScheduleLambdaFunction
    #             schedule_activity_task_decision_attributes: {
    #               activity_type: { # required
    #                 name: "Name", # required
    #                 version: "Version", # required
    #               },
    #               activity_id: "ActivityId", # required
    #               control: "Data",
    #               input: "Data",
    #               schedule_to_close_timeout: "DurationInSecondsOptional",
    #               task_list: {
    #                 name: "Name", # required
    #               },
    #               task_priority: "TaskPriority",
    #               schedule_to_start_timeout: "DurationInSecondsOptional",
    #               start_to_close_timeout: "DurationInSecondsOptional",
    #               heartbeat_timeout: "DurationInSecondsOptional",
    #             },
    #             request_cancel_activity_task_decision_attributes: {
    #               activity_id: "ActivityId", # required
    #             },
    #             complete_workflow_execution_decision_attributes: {
    #               result: "Data",
    #             },
    #             fail_workflow_execution_decision_attributes: {
    #               reason: "FailureReason",
    #               details: "Data",
    #             },
    #             cancel_workflow_execution_decision_attributes: {
    #               details: "Data",
    #             },
    #             continue_as_new_workflow_execution_decision_attributes: {
    #               input: "Data",
    #               execution_start_to_close_timeout: "DurationInSecondsOptional",
    #               task_list: {
    #                 name: "Name", # required
    #               },
    #               task_priority: "TaskPriority",
    #               task_start_to_close_timeout: "DurationInSecondsOptional",
    #               child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #               tag_list: ["Tag"],
    #               workflow_type_version: "Version",
    #               lambda_role: "Arn",
    #             },
    #             record_marker_decision_attributes: {
    #               marker_name: "MarkerName", # required
    #               details: "Data",
    #             },
    #             start_timer_decision_attributes: {
    #               timer_id: "TimerId", # required
    #               control: "Data",
    #               start_to_fire_timeout: "DurationInSeconds", # required
    #             },
    #             cancel_timer_decision_attributes: {
    #               timer_id: "TimerId", # required
    #             },
    #             signal_external_workflow_execution_decision_attributes: {
    #               workflow_id: "WorkflowId", # required
    #               run_id: "WorkflowRunIdOptional",
    #               signal_name: "SignalName", # required
    #               input: "Data",
    #               control: "Data",
    #             },
    #             request_cancel_external_workflow_execution_decision_attributes: {
    #               workflow_id: "WorkflowId", # required
    #               run_id: "WorkflowRunIdOptional",
    #               control: "Data",
    #             },
    #             start_child_workflow_execution_decision_attributes: {
    #               workflow_type: { # required
    #                 name: "Name", # required
    #                 version: "Version", # required
    #               },
    #               workflow_id: "WorkflowId", # required
    #               control: "Data",
    #               input: "Data",
    #               execution_start_to_close_timeout: "DurationInSecondsOptional",
    #               task_list: {
    #                 name: "Name", # required
    #               },
    #               task_priority: "TaskPriority",
    #               task_start_to_close_timeout: "DurationInSecondsOptional",
    #               child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #               tag_list: ["Tag"],
    #               lambda_role: "Arn",
    #             },
    #             schedule_lambda_function_decision_attributes: {
    #               id: "FunctionId", # required
    #               name: "FunctionName", # required
    #               control: "Data",
    #               input: "FunctionInput",
    #               start_to_close_timeout: "DurationInSecondsOptional",
    #             },
    #           },
    #         ],
    #         execution_context: "Data",
    #       }
    #
    # @!attribute [rw] task_token
    #   The `taskToken` from the DecisionTask.
    #
    #   `taskToken` is generated by the service and should be treated as an
    #   opaque value. If the task is passed to another process, its
    #   `taskToken` must also be passed. This enables it to provide its
    #   progress and respond with results.
    #   @return [String]
    #
    # @!attribute [rw] decisions
    #   The list of decisions (possibly empty) made by the decider while
    #   processing this decision task. See the docs for the Decision
    #   structure for details.
    #   @return [Array<Types::Decision>]
    #
    # @!attribute [rw] execution_context
    #   User defined context to add to workflow execution.
    #   @return [String]
    #
    class RespondDecisionTaskCompletedInput < Struct.new(
      :task_token,
      :decisions,
      :execution_context)
      include Aws::Structure
    end

    # Specifies the `runId` of a workflow execution.
    #
    # @!attribute [rw] run_id
    #   The `runId` of a workflow execution. This ID is generated by the
    #   service and can be used to uniquely identify the workflow execution
    #   within a domain.
    #   @return [String]
    #
    class Run < Struct.new(
      :run_id)
      include Aws::Structure
    end

    # Provides the details of the `ScheduleActivityTask` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * Constrain the following parameters by using a `Condition` element
    #   with the appropriate keys.
    #
    #   * `activityType.name` – String constraint. The key is
    #     `swf:activityType.name`.
    #
    #   * `activityType.version` – String constraint. The key is
    #     `swf:activityType.version`.
    #
    #   * `taskList` – String constraint. The key is `swf:taskList.name`.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass ScheduleActivityTaskDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         activity_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #         activity_id: "ActivityId", # required
    #         control: "Data",
    #         input: "Data",
    #         schedule_to_close_timeout: "DurationInSecondsOptional",
    #         task_list: {
    #           name: "Name", # required
    #         },
    #         task_priority: "TaskPriority",
    #         schedule_to_start_timeout: "DurationInSecondsOptional",
    #         start_to_close_timeout: "DurationInSecondsOptional",
    #         heartbeat_timeout: "DurationInSecondsOptional",
    #       }
    #
    # @!attribute [rw] activity_type
    #   The type of the activity task to schedule.
    #   @return [Types::ActivityType]
    #
    # @!attribute [rw] activity_id
    #   The `activityId` of the activity task.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   Data attached to the event that can be used by the decider in
    #   subsequent workflow tasks. This data isn't sent to the activity.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input provided to the activity task.
    #   @return [String]
    #
    # @!attribute [rw] schedule_to_close_timeout
    #   The maximum duration for this activity task.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #
    #   <note markdown="1"> A schedule-to-close timeout for this activity task must be specified
    #   either as a default for the activity type or through this field. If
    #   neither this field is set nor a default schedule-to-close timeout
    #   was specified at registration time then a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   If set, specifies the name of the task list in which to schedule the
    #   activity task. If not specified, the `defaultTaskList` registered
    #   with the activity type is used.
    #
    #   <note markdown="1"> A task list for this activity task must be specified either as a
    #   default for the activity type or through this field. If neither this
    #   field is set nor a default task list was specified at registration
    #   time then a fault is returned.
    #
    #    </note>
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   If set, specifies the priority with which the activity task is to be
    #   assigned to a worker. This overrides the defaultTaskPriority
    #   specified when registering the activity type using
    #   RegisterActivityType. Valid values are integers that range from
    #   Java's `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] schedule_to_start_timeout
    #   If set, specifies the maximum duration the activity task can wait to
    #   be assigned to a worker. This overrides the default
    #   schedule-to-start timeout specified when registering the activity
    #   type using RegisterActivityType.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #
    #   <note markdown="1"> A schedule-to-start timeout for this activity task must be specified
    #   either as a default for the activity type or through this field. If
    #   neither this field is set nor a default schedule-to-start timeout
    #   was specified at registration time then a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] start_to_close_timeout
    #   If set, specifies the maximum duration a worker may take to process
    #   this activity task. This overrides the default start-to-close
    #   timeout specified when registering the activity type using
    #   RegisterActivityType.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #
    #   <note markdown="1"> A start-to-close timeout for this activity task must be specified
    #   either as a default for the activity type or through this field. If
    #   neither this field is set nor a default start-to-close timeout was
    #   specified at registration time then a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] heartbeat_timeout
    #   If set, specifies the maximum time before which a worker processing
    #   a task of this type must report progress by calling
    #   RecordActivityTaskHeartbeat. If the timeout is exceeded, the
    #   activity task is automatically timed out. If the worker subsequently
    #   attempts to record a heartbeat or returns a result, it is ignored.
    #   This overrides the default heartbeat timeout specified when
    #   registering the activity type using RegisterActivityType.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    class ScheduleActivityTaskDecisionAttributes < Struct.new(
      :activity_type,
      :activity_id,
      :control,
      :input,
      :schedule_to_close_timeout,
      :task_list,
      :task_priority,
      :schedule_to_start_timeout,
      :start_to_close_timeout,
      :heartbeat_timeout)
      include Aws::Structure
    end

    # Provides the details of the `ScheduleActivityTaskFailed` event.
    #
    # @!attribute [rw] activity_type
    #   The activity type provided in the `ScheduleActivityTask` decision
    #   that failed.
    #   @return [Types::ActivityType]
    #
    # @!attribute [rw] activity_id
    #   The activityId provided in the `ScheduleActivityTask` decision that
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision that resulted in the scheduling of this activity task. This
    #   information can be useful for diagnosing problems by tracing back
    #   the chain of events leading up to this event.
    #   @return [Integer]
    #
    class ScheduleActivityTaskFailedEventAttributes < Struct.new(
      :activity_type,
      :activity_id,
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Decision attributes specified in
    # `scheduleLambdaFunctionDecisionAttributes` within the list of
    # decisions `decisions` passed to RespondDecisionTaskCompleted.
    #
    # @note When making an API call, you may pass ScheduleLambdaFunctionDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         id: "FunctionId", # required
    #         name: "FunctionName", # required
    #         control: "Data",
    #         input: "FunctionInput",
    #         start_to_close_timeout: "DurationInSecondsOptional",
    #       }
    #
    # @!attribute [rw] id
    #   A string that identifies the Lambda function execution in the event
    #   history.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name, or ARN, of the Lambda function to schedule.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   The data attached to the event that the decider can use in
    #   subsequent workflow tasks. This data isn't sent to the Lambda task.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The optional input data to be supplied to the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] start_to_close_timeout
    #   The timeout value, in seconds, after which the Lambda function is
    #   considered to be failed once it has started. This can be any integer
    #   from 1-300 (1s-5m). If no value is supplied, than a default value of
    #   300s is assumed.
    #   @return [String]
    #
    class ScheduleLambdaFunctionDecisionAttributes < Struct.new(
      :id,
      :name,
      :control,
      :input,
      :start_to_close_timeout)
      include Aws::Structure
    end

    # Provides the details of the `ScheduleLambdaFunctionFailed` event. It
    # isn't set for other event types.
    #
    # @!attribute [rw] id
    #   The ID provided in the `ScheduleLambdaFunction` decision that
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. To help diagnose issues, use this
    #   information to trace back the chain of events leading up to this
    #   event.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `LambdaFunctionCompleted` event corresponding to the
    #   decision that resulted in scheduling this Lambda task. To help
    #   diagnose issues, use this information to trace back the chain of
    #   events leading up to this event.
    #   @return [Integer]
    #
    class ScheduleLambdaFunctionFailedEventAttributes < Struct.new(
      :id,
      :name,
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Provides the details of the `SignalExternalWorkflowExecution`
    # decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass SignalExternalWorkflowExecutionDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         workflow_id: "WorkflowId", # required
    #         run_id: "WorkflowRunIdOptional",
    #         signal_name: "SignalName", # required
    #         input: "Data",
    #         control: "Data",
    #       }
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the workflow execution to be signaled.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The `runId` of the workflow execution to be signaled.
    #   @return [String]
    #
    # @!attribute [rw] signal_name
    #   The name of the signal.The target workflow execution uses the signal
    #   name and input to process the signal.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input data to be provided with the signal. The target workflow
    #   execution uses the signal name and input data to process the signal.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   The data attached to the event that can be used by the decider in
    #   subsequent decision tasks.
    #   @return [String]
    #
    class SignalExternalWorkflowExecutionDecisionAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :signal_name,
      :input,
      :control)
      include Aws::Structure
    end

    # Provides the details of the `SignalExternalWorkflowExecutionFailed`
    # event.
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the external workflow execution that the signal
    #   was being delivered to.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The `runId` of the external workflow execution that the signal was
    #   being delivered to.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] initiated_event_id
    #   The ID of the `SignalExternalWorkflowExecutionInitiated` event
    #   corresponding to the `SignalExternalWorkflowExecution` decision to
    #   request this signal. This information can be useful for diagnosing
    #   problems by tracing back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `SignalExternalWorkflowExecution`
    #   decision for this signal. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] control
    #   The data attached to the event that the decider can use in
    #   subsequent workflow tasks. This data isn't sent to the workflow
    #   execution.
    #   @return [String]
    #
    class SignalExternalWorkflowExecutionFailedEventAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :cause,
      :initiated_event_id,
      :decision_task_completed_event_id,
      :control)
      include Aws::Structure
    end

    # Provides the details of the `SignalExternalWorkflowExecutionInitiated`
    # event.
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the external workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The `runId` of the external workflow execution to send the signal
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] signal_name
    #   The name of the signal.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input provided to the signal.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `SignalExternalWorkflowExecution`
    #   decision for this signal. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] control
    #   Data attached to the event that can be used by the decider in
    #   subsequent decision tasks.
    #   @return [String]
    #
    class SignalExternalWorkflowExecutionInitiatedEventAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :signal_name,
      :input,
      :decision_task_completed_event_id,
      :control)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SignalWorkflowExecutionInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         workflow_id: "WorkflowId", # required
    #         run_id: "WorkflowRunIdOptional",
    #         signal_name: "SignalName", # required
    #         input: "Data",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the workflow execution to signal.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The workflowId of the workflow execution to signal.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The runId of the workflow execution to signal.
    #   @return [String]
    #
    # @!attribute [rw] signal_name
    #   The name of the signal. This name must be meaningful to the target
    #   workflow.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Data to attach to the `WorkflowExecutionSignaled` event in the
    #   target workflow execution's history.
    #   @return [String]
    #
    class SignalWorkflowExecutionInput < Struct.new(
      :domain,
      :workflow_id,
      :run_id,
      :signal_name,
      :input)
      include Aws::Structure
    end

    # Provides the details of the `StartChildWorkflowExecution` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * Constrain the following parameters by using a `Condition` element
    #   with the appropriate keys.
    #
    #   * `tagList.member.N` – The key is "swf:tagList.N" where N is the
    #     tag number from 0 to 4, inclusive.
    #
    #   * `taskList` – String constraint. The key is `swf:taskList.name`.
    #
    #   * `workflowType.name` – String constraint. The key is
    #     `swf:workflowType.name`.
    #
    #   * `workflowType.version` – String constraint. The key is
    #     `swf:workflowType.version`.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass StartChildWorkflowExecutionDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         workflow_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #         workflow_id: "WorkflowId", # required
    #         control: "Data",
    #         input: "Data",
    #         execution_start_to_close_timeout: "DurationInSecondsOptional",
    #         task_list: {
    #           name: "Name", # required
    #         },
    #         task_priority: "TaskPriority",
    #         task_start_to_close_timeout: "DurationInSecondsOptional",
    #         child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #         tag_list: ["Tag"],
    #         lambda_role: "Arn",
    #       }
    #
    # @!attribute [rw] workflow_type
    #   The type of the workflow execution to be started.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the workflow execution.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   The data attached to the event that can be used by the decider in
    #   subsequent workflow tasks. This data isn't sent to the child
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input to be provided to the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_to_close_timeout
    #   The total duration for this workflow execution. This overrides the
    #   defaultExecutionStartToCloseTimeout specified when registering the
    #   workflow type.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #
    #   <note markdown="1"> An execution start-to-close timeout for this workflow execution must
    #   be specified either as a default for the workflow type or through
    #   this parameter. If neither this parameter is set nor a default
    #   execution start-to-close timeout was specified at registration time
    #   then a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The name of the task list to be used for decision tasks of the child
    #   workflow execution.
    #
    #   <note markdown="1"> A task list for this workflow execution must be specified either as
    #   a default for the workflow type or through this parameter. If
    #   neither this parameter is set nor a default task list was specified
    #   at registration time then a fault is returned.
    #
    #    </note>
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   A task priority that, if set, specifies the priority for a decision
    #   task of this workflow execution. This overrides the
    #   defaultTaskPriority specified when registering the workflow type.
    #   Valid values are integers that range from Java's
    #   `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] task_start_to_close_timeout
    #   Specifies the maximum duration of decision tasks for this workflow
    #   execution. This parameter overrides the
    #   `defaultTaskStartToCloseTimout` specified when registering the
    #   workflow type using RegisterWorkflowType.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #
    #   <note markdown="1"> A task start-to-close timeout for this workflow execution must be
    #   specified either as a default for the workflow type or through this
    #   parameter. If neither this parameter is set nor a default task
    #   start-to-close timeout was specified at registration time then a
    #   fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   If set, specifies the policy to use for the child workflow
    #   executions if the workflow execution being started is terminated by
    #   calling the TerminateWorkflowExecution action explicitly or due to
    #   an expired timeout. This policy overrides the default child policy
    #   specified when registering the workflow type using
    #   RegisterWorkflowType.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #
    #   <note markdown="1"> A child policy for this workflow execution must be specified either
    #   as a default for the workflow type or through this parameter. If
    #   neither this parameter is set nor a default child policy was
    #   specified at registration time then a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   The list of tags to associate with the child workflow execution. A
    #   maximum of 5 tags can be specified. You can list workflow executions
    #   with a specific tag by calling ListOpenWorkflowExecutions or
    #   ListClosedWorkflowExecutions and specifying a TagFilter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] lambda_role
    #   The IAM role attached to the child workflow execution.
    #   @return [String]
    #
    class StartChildWorkflowExecutionDecisionAttributes < Struct.new(
      :workflow_type,
      :workflow_id,
      :control,
      :input,
      :execution_start_to_close_timeout,
      :task_list,
      :task_priority,
      :task_start_to_close_timeout,
      :child_policy,
      :tag_list,
      :lambda_role)
      include Aws::Structure
    end

    # Provides the details of the `StartChildWorkflowExecutionFailed` event.
    #
    # @!attribute [rw] workflow_type
    #   The workflow type provided in the `StartChildWorkflowExecution`
    #   Decision that failed.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> When `cause` is set to `OPERATION_NOT_PERMITTED`, the decision fails
    #   because it lacks sufficient permissions. For details and example IAM
    #   policies, see [ Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the child workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] initiated_event_id
    #   When the `cause` is `WORKFLOW_ALREADY_RUNNING`, `initiatedEventId`
    #   is the ID of the `StartChildWorkflowExecutionInitiated` event that
    #   corresponds to the `StartChildWorkflowExecution` Decision to start
    #   the workflow execution. You can use this information to diagnose
    #   problems by tracing back the chain of events leading up to this
    #   event.
    #
    #   When the `cause` isn't `WORKFLOW_ALREADY_RUNNING`,
    #   `initiatedEventId` is set to `0` because the
    #   `StartChildWorkflowExecutionInitiated` event doesn't exist.
    #   @return [Integer]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `StartChildWorkflowExecution`
    #   Decision to request this child workflow execution. This information
    #   can be useful for diagnosing problems by tracing back the chain of
    #   events.
    #   @return [Integer]
    #
    # @!attribute [rw] control
    #   The data attached to the event that the decider can use in
    #   subsequent workflow tasks. This data isn't sent to the child
    #   workflow execution.
    #   @return [String]
    #
    class StartChildWorkflowExecutionFailedEventAttributes < Struct.new(
      :workflow_type,
      :cause,
      :workflow_id,
      :initiated_event_id,
      :decision_task_completed_event_id,
      :control)
      include Aws::Structure
    end

    # Provides the details of the `StartChildWorkflowExecutionInitiated`
    # event.
    #
    # @!attribute [rw] workflow_id
    #   The `workflowId` of the child workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The type of the child workflow execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] control
    #   Data attached to the event that can be used by the decider in
    #   subsequent decision tasks. This data isn't sent to the activity.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The inputs provided to the child workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_to_close_timeout
    #   The maximum duration for the child workflow execution. If the
    #   workflow execution isn't closed within this duration, it is timed
    #   out and force-terminated.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The name of the task list used for the decision tasks of the child
    #   workflow execution.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   The priority assigned for the decision tasks for this workflow
    #   execution. Valid values are integers that range from Java's
    #   `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `StartChildWorkflowExecution`
    #   Decision to request this child workflow execution. This information
    #   can be useful for diagnosing problems by tracing back the cause of
    #   events.
    #   @return [Integer]
    #
    # @!attribute [rw] child_policy
    #   The policy to use for the child workflow executions if this
    #   execution gets terminated by explicitly calling the
    #   TerminateWorkflowExecution action or due to an expired timeout.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #   @return [String]
    #
    # @!attribute [rw] task_start_to_close_timeout
    #   The maximum duration allowed for the decision tasks for this
    #   workflow execution.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   The list of tags to associated with the child workflow execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] lambda_role
    #   The IAM role to attach to the child workflow execution.
    #   @return [String]
    #
    class StartChildWorkflowExecutionInitiatedEventAttributes < Struct.new(
      :workflow_id,
      :workflow_type,
      :control,
      :input,
      :execution_start_to_close_timeout,
      :task_list,
      :task_priority,
      :decision_task_completed_event_id,
      :child_policy,
      :task_start_to_close_timeout,
      :tag_list,
      :lambda_role)
      include Aws::Structure
    end

    # Provides the details of the `StartLambdaFunctionFailed` event. It
    # isn't set for other event types.
    #
    # @!attribute [rw] scheduled_event_id
    #   The ID of the `ActivityTaskScheduled` event that was recorded when
    #   this activity task was scheduled. To help diagnose issues, use this
    #   information to trace back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. To help diagnose issues, use this
    #   information to trace back the chain of events leading up to this
    #   event.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because the IAM role attached to the execution lacked sufficient
    #   permissions. For details and example IAM policies, see [Lambda
    #   Tasks][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description that can help diagnose the cause of the fault.
    #   @return [String]
    #
    class StartLambdaFunctionFailedEventAttributes < Struct.new(
      :scheduled_event_id,
      :cause,
      :message)
      include Aws::Structure
    end

    # Provides the details of the `StartTimer` decision.
    #
    # **Access Control**
    #
    # You can use IAM policies to control this decision's access to Amazon
    # SWF resources as follows:
    #
    # * Use a `Resource` element with the domain name to limit the action to
    #   only specified domains.
    #
    # * Use an `Action` element to allow or deny permission to call this
    #   action.
    #
    # * You cannot use an IAM policy to constrain this action's parameters.
    #
    # If the caller doesn't have sufficient permissions to invoke the
    # action, or the parameter values fall outside the specified
    # constraints, the action fails. The associated event attribute's
    # `cause` parameter is set to `OPERATION_NOT_PERMITTED`. For details and
    # example IAM policies, see [Using IAM to Manage Access to Amazon SWF
    # Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #
    # @note When making an API call, you may pass StartTimerDecisionAttributes
    #   data as a hash:
    #
    #       {
    #         timer_id: "TimerId", # required
    #         control: "Data",
    #         start_to_fire_timeout: "DurationInSeconds", # required
    #       }
    #
    # @!attribute [rw] timer_id
    #   The unique ID of the timer.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   The data attached to the event that can be used by the decider in
    #   subsequent workflow tasks.
    #   @return [String]
    #
    # @!attribute [rw] start_to_fire_timeout
    #   The duration to wait before firing the timer.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`.
    #   @return [String]
    #
    class StartTimerDecisionAttributes < Struct.new(
      :timer_id,
      :control,
      :start_to_fire_timeout)
      include Aws::Structure
    end

    # Provides the details of the `StartTimerFailed` event.
    #
    # @!attribute [rw] timer_id
    #   The timerId provided in the `StartTimer` decision that failed.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The cause of the failure. This information is generated by the
    #   system and can be useful for diagnostic purposes.
    #
    #   <note markdown="1"> If `cause` is set to `OPERATION_NOT_PERMITTED`, the decision failed
    #   because it lacked sufficient permissions. For details and example
    #   IAM policies, see [Using IAM to Manage Access to Amazon SWF
    #   Workflows][1] in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `StartTimer` decision for this
    #   activity task. This information can be useful for diagnosing
    #   problems by tracing back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    class StartTimerFailedEventAttributes < Struct.new(
      :timer_id,
      :cause,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartWorkflowExecutionInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         workflow_id: "WorkflowId", # required
    #         workflow_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #         task_list: {
    #           name: "Name", # required
    #         },
    #         task_priority: "TaskPriority",
    #         input: "Data",
    #         execution_start_to_close_timeout: "DurationInSecondsOptional",
    #         tag_list: ["Tag"],
    #         task_start_to_close_timeout: "DurationInSecondsOptional",
    #         child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #         lambda_role: "Arn",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain in which the workflow execution is created.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The user defined identifier associated with the workflow execution.
    #   You can use this to associate a custom identifier with the workflow
    #   execution. You may specify the same identifier if a workflow
    #   execution is logically a *restart* of a previous execution. You
    #   cannot have two open workflow executions with the same `workflowId`
    #   at the same time.
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The type of the workflow to start.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] task_list
    #   The task list to use for the decision tasks generated for this
    #   workflow execution. This overrides the `defaultTaskList` specified
    #   when registering the workflow type.
    #
    #   <note markdown="1"> A task list for this workflow execution must be specified either as
    #   a default for the workflow type or through this parameter. If
    #   neither this parameter is set nor a default task list was specified
    #   at registration time then a fault is returned.
    #
    #    </note>
    #
    #   The specified string must not start or end with whitespace. It must
    #   not contain a `:` (colon), `/` (slash), `|` (vertical bar), or any
    #   control characters (`\u0000-\u001f` \| `\u007f-\u009f`). Also, it
    #   must not contain the literal string `arn`.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   The task priority to use for this workflow execution. This overrides
    #   any default priority that was assigned when the workflow type was
    #   registered. If not set, then the default task priority for the
    #   workflow type is used. Valid values are integers that range from
    #   Java's `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The input for the workflow execution. This is a free form string
    #   which should be meaningful to the workflow you are starting. This
    #   `input` is made available to the new workflow execution in the
    #   `WorkflowExecutionStarted` history event.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_to_close_timeout
    #   The total duration for this workflow execution. This overrides the
    #   defaultExecutionStartToCloseTimeout specified when registering the
    #   workflow type.
    #
    #   The duration is specified in seconds; an integer greater than or
    #   equal to `0`. Exceeding this limit causes the workflow execution to
    #   time out. Unlike some of the other timeout parameters in Amazon SWF,
    #   you cannot specify a value of "NONE" for this timeout; there is a
    #   one-year max limit on the time that a workflow execution can run.
    #
    #   <note markdown="1"> An execution start-to-close timeout must be specified either through
    #   this parameter or as a default when the workflow type is registered.
    #   If neither this parameter nor a default execution start-to-close
    #   timeout is specified, a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   The list of tags to associate with the workflow execution. You can
    #   specify a maximum of 5 tags. You can list workflow executions with a
    #   specific tag by calling ListOpenWorkflowExecutions or
    #   ListClosedWorkflowExecutions and specifying a TagFilter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_start_to_close_timeout
    #   Specifies the maximum duration of decision tasks for this workflow
    #   execution. This parameter overrides the
    #   `defaultTaskStartToCloseTimout` specified when registering the
    #   workflow type using RegisterWorkflowType.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #
    #   <note markdown="1"> A task start-to-close timeout for this workflow execution must be
    #   specified either as a default for the workflow type or through this
    #   parameter. If neither this parameter is set nor a default task
    #   start-to-close timeout was specified at registration time then a
    #   fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   If set, specifies the policy to use for the child workflow
    #   executions of this workflow execution if it is terminated, by
    #   calling the TerminateWorkflowExecution action explicitly or due to
    #   an expired timeout. This policy overrides the default child policy
    #   specified when registering the workflow type using
    #   RegisterWorkflowType.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #
    #   <note markdown="1"> A child policy for this workflow execution must be specified either
    #   as a default for the workflow type or through this parameter. If
    #   neither this parameter is set nor a default child policy was
    #   specified at registration time then a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] lambda_role
    #   The IAM role to attach to this workflow execution.
    #
    #   <note markdown="1"> Executions of this workflow type need IAM roles to invoke Lambda
    #   functions. If you don't attach an IAM role, any attempt to schedule
    #   a Lambda task fails. This results in a
    #   `ScheduleLambdaFunctionFailed` history event. For more information,
    #   see
    #   [http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html][1]
    #   in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html
    #   @return [String]
    #
    class StartWorkflowExecutionInput < Struct.new(
      :domain,
      :workflow_id,
      :workflow_type,
      :task_list,
      :task_priority,
      :input,
      :execution_start_to_close_timeout,
      :tag_list,
      :task_start_to_close_timeout,
      :child_policy,
      :lambda_role)
      include Aws::Structure
    end

    # Used to filter the workflow executions in visibility APIs based on a
    # tag.
    #
    # @note When making an API call, you may pass TagFilter
    #   data as a hash:
    #
    #       {
    #         tag: "Tag", # required
    #       }
    #
    # @!attribute [rw] tag
    #   Specifies the tag that must be associated with the execution for it
    #   to meet the filter criteria.
    #   @return [String]
    #
    class TagFilter < Struct.new(
      :tag)
      include Aws::Structure
    end

    # Represents a task list.
    #
    # @note When making an API call, you may pass TaskList
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the task list.
    #   @return [String]
    #
    class TaskList < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TerminateWorkflowExecutionInput
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         workflow_id: "WorkflowId", # required
    #         run_id: "WorkflowRunIdOptional",
    #         reason: "TerminateReason",
    #         details: "Data",
    #         child_policy: "TERMINATE", # accepts TERMINATE, REQUEST_CANCEL, ABANDON
    #       }
    #
    # @!attribute [rw] domain
    #   The domain of the workflow execution to terminate.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   The workflowId of the workflow execution to terminate.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The runId of the workflow execution to terminate.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A descriptive reason for terminating the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Details for terminating the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   If set, specifies the policy to use for the child workflow
    #   executions of the workflow execution being terminated. This policy
    #   overrides the child policy specified for the workflow execution at
    #   registration time or when starting the execution.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #
    #   <note markdown="1"> A child policy for this workflow execution must be specified either
    #   as a default for the workflow type or through this parameter. If
    #   neither this parameter is set nor a default child policy was
    #   specified at registration time then a fault is returned.
    #
    #    </note>
    #   @return [String]
    #
    class TerminateWorkflowExecutionInput < Struct.new(
      :domain,
      :workflow_id,
      :run_id,
      :reason,
      :details,
      :child_policy)
      include Aws::Structure
    end

    # Provides the details of the `TimerCanceled` event.
    #
    # @!attribute [rw] timer_id
    #   The unique ID of the timer that was canceled.
    #   @return [String]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `TimerStarted` event that was recorded when this timer
    #   was started. This information can be useful for diagnosing problems
    #   by tracing back the chain of events leading up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `CancelTimer` decision to cancel
    #   this timer. This information can be useful for diagnosing problems
    #   by tracing back the chain of events leading up to this event.
    #   @return [Integer]
    #
    class TimerCanceledEventAttributes < Struct.new(
      :timer_id,
      :started_event_id,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Provides the details of the `TimerFired` event.
    #
    # @!attribute [rw] timer_id
    #   The unique ID of the timer that fired.
    #   @return [String]
    #
    # @!attribute [rw] started_event_id
    #   The ID of the `TimerStarted` event that was recorded when this timer
    #   was started. This information can be useful for diagnosing problems
    #   by tracing back the chain of events leading up to this event.
    #   @return [Integer]
    #
    class TimerFiredEventAttributes < Struct.new(
      :timer_id,
      :started_event_id)
      include Aws::Structure
    end

    # Provides the details of the `TimerStarted` event.
    #
    # @!attribute [rw] timer_id
    #   The unique ID of the timer that was started.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   Data attached to the event that can be used by the decider in
    #   subsequent workflow tasks.
    #   @return [String]
    #
    # @!attribute [rw] start_to_fire_timeout
    #   The duration of time after which the timer fires.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `StartTimer` decision for this
    #   activity task. This information can be useful for diagnosing
    #   problems by tracing back the chain of events leading up to this
    #   event.
    #   @return [Integer]
    #
    class TimerStartedEventAttributes < Struct.new(
      :timer_id,
      :control,
      :start_to_fire_timeout,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Represents a workflow execution.
    #
    # @note When making an API call, you may pass WorkflowExecution
    #   data as a hash:
    #
    #       {
    #         workflow_id: "WorkflowId", # required
    #         run_id: "WorkflowRunId", # required
    #       }
    #
    # @!attribute [rw] workflow_id
    #   The user defined identifier associated with the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   A system-generated unique identifier for the workflow execution.
    #   @return [String]
    #
    class WorkflowExecution < Struct.new(
      :workflow_id,
      :run_id)
      include Aws::Structure
    end

    # Provides the details of the `WorkflowExecutionCancelRequested` event.
    #
    # @!attribute [rw] external_workflow_execution
    #   The external workflow execution for which the cancellation was
    #   requested.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] external_initiated_event_id
    #   The ID of the `RequestCancelExternalWorkflowExecutionInitiated`
    #   event corresponding to the `RequestCancelExternalWorkflowExecution`
    #   decision to cancel this workflow execution.The source event with
    #   this ID can be found in the history of the source workflow
    #   execution. This information can be useful for diagnosing problems by
    #   tracing back the chain of events leading up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] cause
    #   If set, indicates that the request to cancel the workflow execution
    #   was automatically generated, and specifies the cause. This happens
    #   if the parent workflow execution times out or is terminated, and the
    #   child policy is set to cancel child executions.
    #   @return [String]
    #
    class WorkflowExecutionCancelRequestedEventAttributes < Struct.new(
      :external_workflow_execution,
      :external_initiated_event_id,
      :cause)
      include Aws::Structure
    end

    # Provides the details of the `WorkflowExecutionCanceled` event.
    #
    # @!attribute [rw] details
    #   The details of the cancellation.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `CancelWorkflowExecution`
    #   decision for this cancellation request. This information can be
    #   useful for diagnosing problems by tracing back the chain of events
    #   leading up to this event.
    #   @return [Integer]
    #
    class WorkflowExecutionCanceledEventAttributes < Struct.new(
      :details,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Provides the details of the `WorkflowExecutionCompleted` event.
    #
    # @!attribute [rw] result
    #   The result produced by the workflow execution upon successful
    #   completion.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `CompleteWorkflowExecution`
    #   decision to complete this execution. This information can be useful
    #   for diagnosing problems by tracing back the chain of events leading
    #   up to this event.
    #   @return [Integer]
    #
    class WorkflowExecutionCompletedEventAttributes < Struct.new(
      :result,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # The configuration settings for a workflow execution including timeout
    # values, tasklist etc. These configuration settings are determined from
    # the defaults specified when registering the workflow type and those
    # specified when starting the workflow execution.
    #
    # @!attribute [rw] task_start_to_close_timeout
    #   The maximum duration allowed for decision tasks for this workflow
    #   execution.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_to_close_timeout
    #   The total duration for this workflow execution.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The task list used for the decision tasks generated for this
    #   workflow execution.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   The priority assigned to decision tasks for this workflow execution.
    #   Valid values are integers that range from Java's
    #   `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   The policy to use for the child workflow executions if this workflow
    #   execution is terminated, by calling the TerminateWorkflowExecution
    #   action explicitly or due to an expired timeout.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #   @return [String]
    #
    # @!attribute [rw] lambda_role
    #   The IAM role attached to the child workflow execution.
    #   @return [String]
    #
    class WorkflowExecutionConfiguration < Struct.new(
      :task_start_to_close_timeout,
      :execution_start_to_close_timeout,
      :task_list,
      :task_priority,
      :child_policy,
      :lambda_role)
      include Aws::Structure
    end

    # Provides the details of the `WorkflowExecutionContinuedAsNew` event.
    #
    # @!attribute [rw] input
    #   The input provided to the new workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `ContinueAsNewWorkflowExecution`
    #   decision that started this execution. This information can be useful
    #   for diagnosing problems by tracing back the chain of events leading
    #   up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] new_execution_run_id
    #   The `runId` of the new workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_to_close_timeout
    #   The total duration allowed for the new workflow execution.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The task list to use for the decisions of the new (continued)
    #   workflow execution.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   The priority of the task to use for the decisions of the new
    #   (continued) workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] task_start_to_close_timeout
    #   The maximum duration of decision tasks for the new workflow
    #   execution.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   The policy to use for the child workflow executions of the new
    #   execution if it is terminated by calling the
    #   TerminateWorkflowExecution action explicitly or due to an expired
    #   timeout.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   The list of tags associated with the new workflow execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workflow_type
    #   The workflow type of this execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] lambda_role
    #   The IAM role to attach to the new (continued) workflow execution.
    #   @return [String]
    #
    class WorkflowExecutionContinuedAsNewEventAttributes < Struct.new(
      :input,
      :decision_task_completed_event_id,
      :new_execution_run_id,
      :execution_start_to_close_timeout,
      :task_list,
      :task_priority,
      :task_start_to_close_timeout,
      :child_policy,
      :tag_list,
      :workflow_type,
      :lambda_role)
      include Aws::Structure
    end

    # Contains the count of workflow executions returned from
    # CountOpenWorkflowExecutions or CountClosedWorkflowExecutions
    #
    # @!attribute [rw] count
    #   The number of workflow executions.
    #   @return [Integer]
    #
    # @!attribute [rw] truncated
    #   If set to true, indicates that the actual count was more than the
    #   maximum supported by this API and the count returned is the
    #   truncated value.
    #   @return [Boolean]
    #
    class WorkflowExecutionCount < Struct.new(
      :count,
      :truncated)
      include Aws::Structure
    end

    # Contains details about a workflow execution.
    #
    # @!attribute [rw] execution_info
    #   Information about the workflow execution.
    #   @return [Types::WorkflowExecutionInfo]
    #
    # @!attribute [rw] execution_configuration
    #   The configuration settings for this workflow execution including
    #   timeout values, tasklist etc.
    #   @return [Types::WorkflowExecutionConfiguration]
    #
    # @!attribute [rw] open_counts
    #   The number of tasks for this workflow execution. This includes open
    #   and closed tasks of all types.
    #   @return [Types::WorkflowExecutionOpenCounts]
    #
    # @!attribute [rw] latest_activity_task_timestamp
    #   The time when the last activity task was scheduled for this workflow
    #   execution. You can use this information to determine if the workflow
    #   has not made progress for an unusually long period of time and might
    #   require a corrective action.
    #   @return [Time]
    #
    # @!attribute [rw] latest_execution_context
    #   The latest executionContext provided by the decider for this
    #   workflow execution. A decider can provide an executionContext (a
    #   free-form string) when closing a decision task using
    #   RespondDecisionTaskCompleted.
    #   @return [String]
    #
    class WorkflowExecutionDetail < Struct.new(
      :execution_info,
      :execution_configuration,
      :open_counts,
      :latest_activity_task_timestamp,
      :latest_execution_context)
      include Aws::Structure
    end

    # Provides the details of the `WorkflowExecutionFailed` event.
    #
    # @!attribute [rw] reason
    #   The descriptive reason provided for the failure.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details of the failure.
    #   @return [String]
    #
    # @!attribute [rw] decision_task_completed_event_id
    #   The ID of the `DecisionTaskCompleted` event corresponding to the
    #   decision task that resulted in the `FailWorkflowExecution` decision
    #   to fail this execution. This information can be useful for
    #   diagnosing problems by tracing back the chain of events leading up
    #   to this event.
    #   @return [Integer]
    #
    class WorkflowExecutionFailedEventAttributes < Struct.new(
      :reason,
      :details,
      :decision_task_completed_event_id)
      include Aws::Structure
    end

    # Used to filter the workflow executions in visibility APIs by their
    # `workflowId`.
    #
    # @note When making an API call, you may pass WorkflowExecutionFilter
    #   data as a hash:
    #
    #       {
    #         workflow_id: "WorkflowId", # required
    #       }
    #
    # @!attribute [rw] workflow_id
    #   The workflowId to pass of match the criteria of this filter.
    #   @return [String]
    #
    class WorkflowExecutionFilter < Struct.new(
      :workflow_id)
      include Aws::Structure
    end

    # Contains information about a workflow execution.
    #
    # @!attribute [rw] execution
    #   The workflow execution this information is about.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] workflow_type
    #   The type of the workflow execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] start_timestamp
    #   The time when the execution was started.
    #   @return [Time]
    #
    # @!attribute [rw] close_timestamp
    #   The time when the workflow execution was closed. Set only if the
    #   execution status is CLOSED.
    #   @return [Time]
    #
    # @!attribute [rw] execution_status
    #   The current status of the execution.
    #   @return [String]
    #
    # @!attribute [rw] close_status
    #   If the execution status is closed then this specifies how the
    #   execution was closed:
    #
    #   * `COMPLETED` – the execution was successfully completed.
    #
    #   * `CANCELED` – the execution was canceled.Cancellation allows the
    #     implementation to gracefully clean up before the execution is
    #     closed.
    #
    #   * `TERMINATED` – the execution was force terminated.
    #
    #   * `FAILED` – the execution failed to complete.
    #
    #   * `TIMED_OUT` – the execution did not complete in the alloted time
    #     and was automatically timed out.
    #
    #   * `CONTINUED_AS_NEW` – the execution is logically continued. This
    #     means the current execution was completed and a new execution was
    #     started to carry on the workflow.
    #   @return [String]
    #
    # @!attribute [rw] parent
    #   If this workflow execution is a child of another execution then
    #   contains the workflow execution that started this execution.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] tag_list
    #   The list of tags associated with the workflow execution. Tags can be
    #   used to identify and list workflow executions of interest through
    #   the visibility APIs. A workflow execution can have a maximum of 5
    #   tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cancel_requested
    #   Set to true if a cancellation is requested for this workflow
    #   execution.
    #   @return [Boolean]
    #
    class WorkflowExecutionInfo < Struct.new(
      :execution,
      :workflow_type,
      :start_timestamp,
      :close_timestamp,
      :execution_status,
      :close_status,
      :parent,
      :tag_list,
      :cancel_requested)
      include Aws::Structure
    end

    # Contains a paginated list of information about workflow executions.
    #
    # @!attribute [rw] execution_infos
    #   The list of workflow information structures.
    #   @return [Array<Types::WorkflowExecutionInfo>]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    class WorkflowExecutionInfos < Struct.new(
      :execution_infos,
      :next_page_token)
      include Aws::Structure
    end

    # Contains the counts of open tasks, child workflow executions and
    # timers for a workflow execution.
    #
    # @!attribute [rw] open_activity_tasks
    #   The count of activity tasks whose status is `OPEN`.
    #   @return [Integer]
    #
    # @!attribute [rw] open_decision_tasks
    #   The count of decision tasks whose status is OPEN. A workflow
    #   execution can have at most one open decision task.
    #   @return [Integer]
    #
    # @!attribute [rw] open_timers
    #   The count of timers started by this workflow execution that have not
    #   fired yet.
    #   @return [Integer]
    #
    # @!attribute [rw] open_child_workflow_executions
    #   The count of child workflow executions whose status is `OPEN`.
    #   @return [Integer]
    #
    # @!attribute [rw] open_lambda_functions
    #   The count of Lambda tasks whose status is `OPEN`.
    #   @return [Integer]
    #
    class WorkflowExecutionOpenCounts < Struct.new(
      :open_activity_tasks,
      :open_decision_tasks,
      :open_timers,
      :open_child_workflow_executions,
      :open_lambda_functions)
      include Aws::Structure
    end

    # Provides the details of the `WorkflowExecutionSignaled` event.
    #
    # @!attribute [rw] signal_name
    #   The name of the signal received. The decider can use the signal name
    #   and inputs to determine how to the process the signal.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The inputs provided with the signal. The decider can use the signal
    #   name and inputs to determine how to process the signal.
    #   @return [String]
    #
    # @!attribute [rw] external_workflow_execution
    #   The workflow execution that sent the signal. This is set only of the
    #   signal was sent by another workflow execution.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] external_initiated_event_id
    #   The ID of the `SignalExternalWorkflowExecutionInitiated` event
    #   corresponding to the `SignalExternalWorkflow` decision to signal
    #   this workflow execution.The source event with this ID can be found
    #   in the history of the source workflow execution. This information
    #   can be useful for diagnosing problems by tracing back the chain of
    #   events leading up to this event. This field is set only if the
    #   signal was initiated by another workflow execution.
    #   @return [Integer]
    #
    class WorkflowExecutionSignaledEventAttributes < Struct.new(
      :signal_name,
      :input,
      :external_workflow_execution,
      :external_initiated_event_id)
      include Aws::Structure
    end

    # Provides details of `WorkflowExecutionStarted` event.
    #
    # @!attribute [rw] input
    #   The input provided to the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_to_close_timeout
    #   The maximum duration for this workflow execution.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] task_start_to_close_timeout
    #   The maximum duration of decision tasks for this workflow type.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   The policy to use for the child workflow executions if this workflow
    #   execution is terminated, by calling the TerminateWorkflowExecution
    #   action explicitly or due to an expired timeout.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #   @return [String]
    #
    # @!attribute [rw] task_list
    #   The name of the task list for scheduling the decision tasks for this
    #   workflow execution.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] task_priority
    #   The priority of the decision tasks in the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The workflow type of this execution.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] tag_list
    #   The list of tags associated with this workflow execution. An
    #   execution can have up to 5 tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] continued_execution_run_id
    #   If this workflow execution was started due to a
    #   `ContinueAsNewWorkflowExecution` decision, then it contains the
    #   `runId` of the previous workflow execution that was closed and
    #   continued as this execution.
    #   @return [String]
    #
    # @!attribute [rw] parent_workflow_execution
    #   The source workflow execution that started this workflow execution.
    #   The member isn't set if the workflow execution was not started by a
    #   workflow.
    #   @return [Types::WorkflowExecution]
    #
    # @!attribute [rw] parent_initiated_event_id
    #   The ID of the `StartChildWorkflowExecutionInitiated` event
    #   corresponding to the `StartChildWorkflowExecution` Decision to start
    #   this workflow execution. The source event with this ID can be found
    #   in the history of the source workflow execution. This information
    #   can be useful for diagnosing problems by tracing back the chain of
    #   events leading up to this event.
    #   @return [Integer]
    #
    # @!attribute [rw] lambda_role
    #   The IAM role attached to the workflow execution.
    #   @return [String]
    #
    class WorkflowExecutionStartedEventAttributes < Struct.new(
      :input,
      :execution_start_to_close_timeout,
      :task_start_to_close_timeout,
      :child_policy,
      :task_list,
      :task_priority,
      :workflow_type,
      :tag_list,
      :continued_execution_run_id,
      :parent_workflow_execution,
      :parent_initiated_event_id,
      :lambda_role)
      include Aws::Structure
    end

    # Provides the details of the `WorkflowExecutionTerminated` event.
    #
    # @!attribute [rw] reason
    #   The reason provided for the termination.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details provided for the termination.
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   The policy used for the child workflow executions of this workflow
    #   execution.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   If set, indicates that the workflow execution was automatically
    #   terminated, and specifies the cause. This happens if the parent
    #   workflow execution times out or is terminated and the child policy
    #   is set to terminate child executions.
    #   @return [String]
    #
    class WorkflowExecutionTerminatedEventAttributes < Struct.new(
      :reason,
      :details,
      :child_policy,
      :cause)
      include Aws::Structure
    end

    # Provides the details of the `WorkflowExecutionTimedOut` event.
    #
    # @!attribute [rw] timeout_type
    #   The type of timeout that caused this event.
    #   @return [String]
    #
    # @!attribute [rw] child_policy
    #   The policy used for the child workflow executions of this workflow
    #   execution.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #   @return [String]
    #
    class WorkflowExecutionTimedOutEventAttributes < Struct.new(
      :timeout_type,
      :child_policy)
      include Aws::Structure
    end

    # Represents a workflow type.
    #
    # @note When making an API call, you may pass WorkflowType
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         version: "Version", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the workflow type.
    #
    #   <note markdown="1"> The combination of workflow type name and version must be unique
    #   with in a domain.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the workflow type.
    #
    #   <note markdown="1"> The combination of workflow type name and version must be unique
    #   with in a domain.
    #
    #    </note>
    #   @return [String]
    #
    class WorkflowType < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # The configuration settings of a workflow type.
    #
    # @!attribute [rw] default_task_start_to_close_timeout
    #   The default maximum duration, specified when registering the
    #   workflow type, that a decision task for executions of this workflow
    #   type might take before returning completion or failure. If the task
    #   doesn'tdo close in the specified time then the task is
    #   automatically timed out and rescheduled. If the decider eventually
    #   reports a completion or failure, it is ignored. This default can be
    #   overridden when starting a workflow execution using the
    #   StartWorkflowExecution action or the `StartChildWorkflowExecution`
    #   Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_execution_start_to_close_timeout
    #   The default maximum duration, specified when registering the
    #   workflow type, for executions of this workflow type. This default
    #   can be overridden when starting a workflow execution using the
    #   StartWorkflowExecution action or the `StartChildWorkflowExecution`
    #   Decision.
    #
    #   The duration is specified in seconds, an integer greater than or
    #   equal to `0`. You can use `NONE` to specify unlimited duration.
    #   @return [String]
    #
    # @!attribute [rw] default_task_list
    #   The default task list, specified when registering the workflow type,
    #   for decisions tasks scheduled for workflow executions of this type.
    #   This default can be overridden when starting a workflow execution
    #   using the StartWorkflowExecution action or the
    #   `StartChildWorkflowExecution` Decision.
    #   @return [Types::TaskList]
    #
    # @!attribute [rw] default_task_priority
    #   The default task priority, specified when registering the workflow
    #   type, for all decision tasks of this workflow type. This default can
    #   be overridden when starting a workflow execution using the
    #   StartWorkflowExecution action or the `StartChildWorkflowExecution`
    #   decision.
    #
    #   Valid values are integers that range from Java's
    #   `Integer.MIN_VALUE` (-2147483648) to `Integer.MAX_VALUE`
    #   (2147483647). Higher numbers indicate higher priority.
    #
    #   For more information about setting task priority, see [Setting Task
    #   Priority][1] in the *Amazon SWF Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html
    #   @return [String]
    #
    # @!attribute [rw] default_child_policy
    #   The default policy to use for the child workflow executions when a
    #   workflow execution of this type is terminated, by calling the
    #   TerminateWorkflowExecution action explicitly or due to an expired
    #   timeout. This default can be overridden when starting a workflow
    #   execution using the StartWorkflowExecution action or the
    #   `StartChildWorkflowExecution` Decision.
    #
    #   The supported child policies are:
    #
    #   * `TERMINATE` – The child executions are terminated.
    #
    #   * `REQUEST_CANCEL` – A request to cancel is attempted for each child
    #     execution by recording a `WorkflowExecutionCancelRequested` event
    #     in its history. It is up to the decider to take appropriate
    #     actions when it receives an execution history with this event.
    #
    #   * `ABANDON` – No action is taken. The child executions continue to
    #     run.
    #   @return [String]
    #
    # @!attribute [rw] default_lambda_role
    #   The default IAM role attached to this workflow type.
    #
    #   <note markdown="1"> Executions of this workflow type need IAM roles to invoke Lambda
    #   functions. If you don't specify an IAM role when starting this
    #   workflow type, the default Lambda role is attached to the execution.
    #   For more information, see
    #   [http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html][1]
    #   in the *Amazon SWF Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html
    #   @return [String]
    #
    class WorkflowTypeConfiguration < Struct.new(
      :default_task_start_to_close_timeout,
      :default_execution_start_to_close_timeout,
      :default_task_list,
      :default_task_priority,
      :default_child_policy,
      :default_lambda_role)
      include Aws::Structure
    end

    # Contains details about a workflow type.
    #
    # @!attribute [rw] type_info
    #   General information about the workflow type.
    #
    #   The status of the workflow type (returned in the WorkflowTypeInfo
    #   structure) can be one of the following.
    #
    #   * `REGISTERED` – The type is registered and available. Workers
    #     supporting this type should be running.
    #
    #   * `DEPRECATED` – The type was deprecated using
    #     DeprecateWorkflowType, but is still in use. You should keep
    #     workers supporting this type running. You cannot create new
    #     workflow executions of this type.
    #   @return [Types::WorkflowTypeInfo]
    #
    # @!attribute [rw] configuration
    #   Configuration settings of the workflow type registered through
    #   RegisterWorkflowType
    #   @return [Types::WorkflowTypeConfiguration]
    #
    class WorkflowTypeDetail < Struct.new(
      :type_info,
      :configuration)
      include Aws::Structure
    end

    # Used to filter workflow execution query results by type. Each
    # parameter, if specified, defines a rule that must be satisfied by each
    # returned result.
    #
    # @note When making an API call, you may pass WorkflowTypeFilter
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         version: "VersionOptional",
    #       }
    #
    # @!attribute [rw] name
    #   Name of the workflow type.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the workflow type.
    #   @return [String]
    #
    class WorkflowTypeFilter < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # Contains information about a workflow type.
    #
    # @!attribute [rw] workflow_type
    #   The workflow type this information is about.
    #   @return [Types::WorkflowType]
    #
    # @!attribute [rw] status
    #   The current status of the workflow type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the type registered through RegisterWorkflowType.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when this type was registered.
    #   @return [Time]
    #
    # @!attribute [rw] deprecation_date
    #   If the type is in deprecated state, then it is set to the date when
    #   the type was deprecated.
    #   @return [Time]
    #
    class WorkflowTypeInfo < Struct.new(
      :workflow_type,
      :status,
      :description,
      :creation_date,
      :deprecation_date)
      include Aws::Structure
    end

    # Contains a paginated list of information structures about workflow
    # types.
    #
    # @!attribute [rw] type_infos
    #   The list of workflow type information.
    #   @return [Array<Types::WorkflowTypeInfo>]
    #
    # @!attribute [rw] next_page_token
    #   If a `NextPageToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `nextPageToken`. Keep all
    #   other arguments unchanged.
    #
    #   The configured `maximumPageSize` determines how many results can be
    #   returned in a single call.
    #   @return [String]
    #
    class WorkflowTypeInfos < Struct.new(
      :type_infos,
      :next_page_token)
      include Aws::Structure
    end

  end
end
