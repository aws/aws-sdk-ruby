# frozen_string_literal: true

# This is generated code!

module Aws::SWF
  # This module contains the types returned by client operations.
  module Types

    # <p>Provides the details of the <code>ActivityTaskCancelRequested</code> event.</p>
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute activity_id
    #   <p>The unique ID of the task.</p>
    #   @return [String]
    class ActivityTaskCancelRequestedEventAttributes < Struct.new(
      :decision_task_completed_event_id,
      :activity_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ActivityTaskCanceled</code> event.</p>
    # @!attribute details
    #   <p>Details of the cancellation.</p>
    #   @return [String]
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This
    #         information can be useful for diagnosing problems by tracing back the chain of events leading up to this
    #         event.</p>
    #   @return [Integer]
    # @!attribute latest_cancel_requested_event_id
    #   <p>If set, contains the ID of the last <code>ActivityTaskCancelRequested</code> event recorded for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    class ActivityTaskCanceledEventAttributes < Struct.new(
      :details,
      :scheduled_event_id,
      :started_event_id,
      :latest_cancel_requested_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        options[:latest_cancel_requested_event_id] = 0 unless options.key?(:latest_cancel_requested_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ActivityTaskCompleted</code> event.</p>
    # @!attribute result
    #   <p>The results of the activity task.</p>
    #   @return [String]
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This
    #         information can be useful for diagnosing problems by tracing back the chain of events leading up to this
    #         event.</p>
    #   @return [Integer]
    class ActivityTaskCompletedEventAttributes < Struct.new(
      :result,
      :scheduled_event_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ActivityTaskFailed</code> event.</p>
    # @!attribute reason
    #   <p>The reason provided for the failure.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the failure.</p>
    #   @return [String]
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This
    #         information can be useful for diagnosing problems by tracing back the chain of events leading up to this
    #         event.</p>
    #   @return [Integer]
    class ActivityTaskFailedEventAttributes < Struct.new(
      :reason,
      :details,
      :scheduled_event_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ActivityTaskScheduled</code> event.</p>
    # @!attribute activity_type
    #   <p>The type of the activity task.</p>
    #   @return [Types::ActivityType]
    # @!attribute activity_id
    #   <p>The unique ID of the activity task.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input provided to the activity task.</p>
    #   @return [String]
    # @!attribute control
    #   <p>Data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the activity.</p>
    #   @return [String]
    # @!attribute schedule_to_start_timeout
    #   <p>The maximum amount of time the activity task can wait to be assigned to a worker.</p>
    #   @return [String]
    # @!attribute schedule_to_close_timeout
    #   <p>The maximum amount of time for this activity task.</p>
    #   @return [String]
    # @!attribute start_to_close_timeout
    #   <p>The maximum amount of time a worker may take to process the activity task.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>The task list in which the activity task has been scheduled.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>
    #            The priority to assign to the scheduled activity task. If set, this overrides any default
    #         priority value that was assigned when the activity type was registered.</p>
    #            <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute heartbeat_timeout
    #   <p>The maximum time before which the worker processing this task must report progress by calling
    #         <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. If
    #         the worker subsequently attempts to record a heartbeat or return a result, it is ignored.</p>
    #   @return [String]
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
      :heartbeat_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ActivityTaskStarted</code> event.</p>
    # @!attribute identity
    #   <p>Identity of the worker that was assigned this task. This aids diagnostics when problems arise. The form of this identity is user defined.</p>
    #   @return [String]
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    class ActivityTaskStartedEventAttributes < Struct.new(
      :identity,
      :scheduled_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ActivityTaskTimedOut</code> event.</p>
    # @!attribute timeout_type
    #   <p>The type of the timeout that caused this event.</p>
    #   @return [String]
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This
    #         information can be useful for diagnosing problems by tracing back the chain of events leading up to this
    #         event.</p>
    #   @return [Integer]
    # @!attribute details
    #   <p>Contains the content of the <code>details</code> parameter for the last call made by the activity to
    #         <code>RecordActivityTaskHeartbeat</code>.</p>
    #   @return [String]
    class ActivityTaskTimedOutEventAttributes < Struct.new(
      :timeout_type,
      :scheduled_event_id,
      :started_event_id,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Represents an activity type.</p>
    # @!attribute name
    #   <p>The name of this activity.</p>
    #            <note>
    #               <p>The combination of activity type name and version must be unique within a domain.</p>
    #            </note>
    #   @return [String]
    # @!attribute version
    #   <p>The version of this activity.</p>
    #            <note>
    #               <p>The combination of activity type name and version must be unique with in a domain.</p>
    #            </note>
    #   @return [String]
    class ActivityType < Struct.new(
      :name,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings registered with the activity type.</p>
    # @!attribute default_task_start_to_close_timeout
    #   <p>
    #            The default maximum duration for tasks of an activity type specified when registering the activity
    #         type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_task_heartbeat_timeout
    #   <p>
    #            The default maximum time, in seconds, before which a worker processing a task must report
    #         progress by calling <a>RecordActivityTaskHeartbeat</a>.</p>
    #            <p>You can specify this value only when <i>registering</i> an activity type. The registered default value can be
    #         overridden when you schedule a task through the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>. If the activity
    #         worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an
    #         <code>UnknownResource</code> fault. In this case, Amazon SWF no longer considers the activity task to be valid;
    #         the activity worker should clean up the activity task.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_task_list
    #   <p>
    #            The default task list specified for this activity type at registration. This default is used if
    #         a task list isn't provided when a task is scheduled through the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>. You can override the default registered task list when scheduling a task through the
    #         <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #   @return [Types::TaskList]
    # @!attribute default_task_priority
    #   <p>
    #            The default task priority for tasks of this activity type, specified at registration. If not
    #         set, then <code>0</code> is used as the default priority. This default can be overridden when scheduling an activity
    #         task.</p>
    #            <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute default_task_schedule_to_start_timeout
    #   <p>
    #            The default maximum duration, specified when registering the activity type, that a task of an
    #         activity type can wait before being assigned to a worker. You can override this default when scheduling a task
    #         through the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_task_schedule_to_close_timeout
    #   <p>
    #            The default maximum duration, specified when registering the activity type, for tasks of this activity
    #         type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    class ActivityTypeConfiguration < Struct.new(
      :default_task_start_to_close_timeout,
      :default_task_heartbeat_timeout,
      :default_task_list,
      :default_task_priority,
      :default_task_schedule_to_start_timeout,
      :default_task_schedule_to_close_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about an activity type.</p>
    # @!attribute activity_type
    #   <p>The <a>ActivityType</a> type structure representing the activity type.</p>
    #   @return [Types::ActivityType]
    # @!attribute status
    #   <p>The current status of the activity type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the activity type provided in <a>RegisterActivityType</a>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time this activity type was created through <a>RegisterActivityType</a>.</p>
    #   @return [Time]
    # @!attribute deprecation_date
    #   <p>If DEPRECATED, the date and time <a>DeprecateActivityType</a> was called.</p>
    #   @return [Time]
    class ActivityTypeInfo < Struct.new(
      :activity_type,
      :status,
      :description,
      :creation_date,
      :deprecation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>CancelTimer</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute timer_id
    #   <p>
    #            The unique ID of the timer to cancel.</p>
    #   @return [String]
    class CancelTimerDecisionAttributes < Struct.new(
      :timer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>CancelTimerFailed</code> event.</p>
    # @!attribute timer_id
    #   <p>The timerId provided in the <code>CancelTimer</code> decision that failed.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #           because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    class CancelTimerFailedEventAttributes < Struct.new(
      :timer_id,
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>CancelWorkflowExecution</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute details
    #   <p>
    #            Details of the cancellation.</p>
    #   @return [String]
    class CancelWorkflowExecutionDecisionAttributes < Struct.new(
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>CancelWorkflowExecutionFailed</code> event.</p>
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #           because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    class CancelWorkflowExecutionFailedEventAttributes < Struct.new(
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provide details of the <code>ChildWorkflowExecutionCanceled</code> event.</p>
    # @!attribute workflow_execution
    #   <p>The child workflow execution that was canceled.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute workflow_type
    #   <p>The type of the child workflow execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute details
    #   <p>Details of the cancellation (if provided).</p>
    #   @return [String]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to start this child workflow execution.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
    #         started. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ChildWorkflowExecutionCanceledEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :details,
      :initiated_event_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>
    # @!attribute workflow_execution
    #   <p>The child workflow execution that was completed.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute workflow_type
    #   <p>The type of the child workflow execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute result
    #   <p>The result of the child workflow execution.</p>
    #   @return [String]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
    #         started. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ChildWorkflowExecutionCompletedEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :result,
      :initiated_event_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ChildWorkflowExecutionFailed</code> event.</p>
    # @!attribute workflow_execution
    #   <p>The child workflow execution that failed.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute workflow_type
    #   <p>The type of the child workflow execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute reason
    #   <p>The reason for the failure (if provided).</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the failure (if provided).</p>
    #   @return [String]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to start this child workflow execution.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
    #         started. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ChildWorkflowExecutionFailedEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :reason,
      :details,
      :initiated_event_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ChildWorkflowExecutionStarted</code> event.</p>
    # @!attribute workflow_execution
    #   <p>The child workflow execution that was started.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute workflow_type
    #   <p>The type of the child workflow execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to start this child workflow execution.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ChildWorkflowExecutionStartedEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :initiated_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>
    # @!attribute workflow_execution
    #   <p>The child workflow execution that was terminated.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute workflow_type
    #   <p>The type of the child workflow execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to start this child workflow execution.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
    #         started. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ChildWorkflowExecutionTerminatedEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :initiated_event_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>
    # @!attribute workflow_execution
    #   <p>The child workflow execution that timed out.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute workflow_type
    #   <p>The type of the child workflow execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute timeout_type
    #   <p>The type of the timeout that caused the child workflow execution to time out.</p>
    #   @return [String]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was
    #         started. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ChildWorkflowExecutionTimedOutEventAttributes < Struct.new(
      :workflow_execution,
      :workflow_type,
      :timeout_type,
      :initiated_event_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Used to filter the closed workflow executions in visibility APIs by their close status.</p>
    # @!attribute status
    #   <p>
    #            The close status that must match the close status of an execution for it to meet the criteria of
    #         this filter.</p>
    #   @return [String]
    class CloseStatusFilter < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>CompleteWorkflowExecution</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute result
    #   <p>The result of the workflow execution. The form of the result is implementation defined.</p>
    #   @return [String]
    class CompleteWorkflowExecutionDecisionAttributes < Struct.new(
      :result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #           because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class CompleteWorkflowExecutionFailedEventAttributes < Struct.new(
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with the
    #               appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tag</code> – A tag used to identify the workflow execution</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute input
    #   <p>The input provided to the new workflow execution.</p>
    #   @return [String]
    # @!attribute execution_start_to_close_timeout
    #   <p>If set, specifies the total duration for this workflow execution. This overrides the
    #         <code>defaultExecutionStartToCloseTimeout</code> specified when registering the workflow type.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this field. If neither this field is set nor a default execution start-to-close timeout was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute task_list
    #   <p>The task list to use for the decisions of the new (continued) workflow
    #         execution.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>
    #            The task priority that, if set, specifies the priority for the decision tasks for this workflow
    #         execution. This overrides the defaultTaskPriority specified when registering the workflow type.
    #         Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a>  in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute task_start_to_close_timeout
    #   <p>Specifies the maximum duration of decision tasks for the new workflow execution. This parameter overrides the
    #         <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using
    #         <a>RegisterWorkflowType</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>A task start-to-close timeout for the new workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute child_policy
    #   <p>If set, specifies the policy to use for the child workflow executions of the new execution if it is terminated
    #         by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy
    #         overrides the default child policy specified when registering the workflow type using
    #         <a>RegisterWorkflowType</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute tag_list
    #   <p>The list of tags to associate with the new workflow execution. A maximum of 5 tags can be specified. You can
    #         list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or
    #         <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>
    #   @return [Array<String>]
    # @!attribute workflow_type_version
    #   <p>The version of the workflow to start.</p>
    #   @return [String]
    # @!attribute lambda_role
    #   <p>The IAM role to attach to the new (continued) execution.</p>
    #   @return [String]
    class ContinueAsNewWorkflowExecutionDecisionAttributes < Struct.new(
      :input,
      :execution_start_to_close_timeout,
      :task_list,
      :task_priority,
      :task_start_to_close_timeout,
      :child_policy,
      :tag_list,
      :workflow_type_version,
      :lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #           because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ContinueAsNewWorkflowExecutionFailedEventAttributes < Struct.new(
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain containing the workflow executions to count.</p>
    #   @return [String]
    # @!attribute start_time_filter
    #   <p>If specified, only workflow executions that meet the start time criteria of the filter
    #         are counted.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    #   @return [Types::ExecutionTimeFilter]
    # @!attribute close_time_filter
    #   <p>If specified, only workflow executions that meet the close time criteria of the filter
    #         are counted.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    #   @return [Types::ExecutionTimeFilter]
    # @!attribute execution_filter
    #   <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the
    #         filter are counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #   @return [Types::WorkflowExecutionFilter]
    # @!attribute type_filter
    #   <p>If specified, indicates the type of the workflow executions to be counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #   @return [Types::WorkflowTypeFilter]
    # @!attribute tag_filter
    #   <p>If specified, only executions that have a tag that matches the filter are
    #         counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #   @return [Types::TagFilter]
    # @!attribute close_status_filter
    #   <p>If specified, only workflow executions that match this close status are counted. This
    #         filter has an affect only if <code>executionStatus</code> is specified as
    #         <code>CLOSED</code>.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #   @return [Types::CloseStatusFilter]
    class CountClosedWorkflowExecutionsInput < Struct.new(
      :domain,
      :start_time_filter,
      :close_time_filter,
      :execution_filter,
      :type_filter,
      :tag_filter,
      :close_status_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or
    #       <a>CountClosedWorkflowExecutions</a>
    #          </p>
    # @!attribute count
    #   <p>The number of workflow executions.</p>
    #   @return [Integer]
    # @!attribute truncated
    #   <p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>
    #   @return [Boolean]
    class CountClosedWorkflowExecutionsOutput < Struct.new(
      :count,
      :truncated,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:truncated] = false unless options.key?(:truncated)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain containing the workflow executions to count.</p>
    #   @return [String]
    # @!attribute start_time_filter
    #   <p>Specifies the start time criteria that workflow executions must meet in order to be
    #         counted.</p>
    #   @return [Types::ExecutionTimeFilter]
    # @!attribute type_filter
    #   <p>Specifies the type of the workflow executions to be counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #   @return [Types::WorkflowTypeFilter]
    # @!attribute tag_filter
    #   <p>If specified, only executions that have a tag that matches the filter are
    #         counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #   @return [Types::TagFilter]
    # @!attribute execution_filter
    #   <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the
    #         filter are counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #   @return [Types::WorkflowExecutionFilter]
    class CountOpenWorkflowExecutionsInput < Struct.new(
      :domain,
      :start_time_filter,
      :type_filter,
      :tag_filter,
      :execution_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or
    #       <a>CountClosedWorkflowExecutions</a>
    #          </p>
    # @!attribute count
    #   <p>The number of workflow executions.</p>
    #   @return [Integer]
    # @!attribute truncated
    #   <p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>
    #   @return [Boolean]
    class CountOpenWorkflowExecutionsOutput < Struct.new(
      :count,
      :truncated,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:truncated] = false unless options.key?(:truncated)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the task list.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>The name of the task list.</p>
    #   @return [Types::TaskList]
    class CountPendingActivityTasksInput < Struct.new(
      :domain,
      :task_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the count of tasks in a task list.</p>
    # @!attribute count
    #   <p>The number of tasks in the task list.</p>
    #   @return [Integer]
    # @!attribute truncated
    #   <p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>
    #   @return [Boolean]
    class CountPendingActivityTasksOutput < Struct.new(
      :count,
      :truncated,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:truncated] = false unless options.key?(:truncated)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the task list.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>The name of the task list.</p>
    #   @return [Types::TaskList]
    class CountPendingDecisionTasksInput < Struct.new(
      :domain,
      :task_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the count of tasks in a task list.</p>
    # @!attribute count
    #   <p>The number of tasks in the task list.</p>
    #   @return [Integer]
    # @!attribute truncated
    #   <p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>
    #   @return [Boolean]
    class CountPendingDecisionTasksOutput < Struct.new(
      :count,
      :truncated,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:truncated] = false unless options.key?(:truncated)
        super
      end
    end

    # <p>Specifies a decision made by the decider. A decision can be one of these types:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CancelTimer</code> – Cancels a previously started timer and records a <code>TimerCanceled</code> event in the
    #         history.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CancelWorkflowExecution</code> – Closes the workflow execution and records a
    #         <code>WorkflowExecutionCanceled</code> event in the history.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CompleteWorkflowExecution</code> – Closes the workflow execution and records a
    #         <code>WorkflowExecutionCompleted</code> event in the history .</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ContinueAsNewWorkflowExecution</code> – Closes the workflow execution and starts a new workflow execution of the
    #         same type using the same workflow ID and a unique run Id. A <code>WorkflowExecutionContinuedAsNew</code> event
    #         is recorded in the history.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FailWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionFailed</code>
    #         event in the history.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RecordMarker</code> – Records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding
    #         custom information in the history for instance to let deciders know that they don't need to look at the history
    #         beyond the marker event.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RequestCancelActivityTask</code> – Attempts to cancel a previously scheduled activity task. If the activity task
    #         was scheduled but has not been assigned to a worker, then it is canceled. If the activity task was already
    #         assigned to a worker, then the worker is informed that cancellation has been requested in the response to
    #         <a>RecordActivityTaskHeartbeat</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RequestCancelExternalWorkflowExecution</code> – Requests that a request be made to cancel the specified external
    #         workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the
    #         history.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ScheduleActivityTask</code> – Schedules an activity task.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SignalExternalWorkflowExecution</code> – Requests a signal to be delivered to the specified external workflow
    #         execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartChildWorkflowExecution</code> – Requests that a child workflow execution be started and records a
    #         <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a
    #         separate workflow execution with its own history.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartTimer</code> – Starts a timer for this workflow execution and records a <code>TimerStarted</code> event in
    #         the history. This timer fires after the specified delay and record a <code>TimerFired</code> event.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express
    #       permissions for the list of decisions returned by this action as if they were members of the API. Treating
    #       decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and
    #       example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #           Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #          <p>
    #             <b>Decision Failure</b>
    #          </p>
    #          <p>Decisions can fail for several reasons</p>
    #          <ul>
    #             <li>
    #                <p>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and therefore fails.</p>
    #             </li>
    #             <li>
    #                <p>A limit on your account was reached.</p>
    #             </li>
    #             <li>
    #                <p>The decision lacks sufficient permissions.</p>
    #             </li>
    #          </ul>
    #          <p>One of the following events might be added to the history to indicate an error. The event attribute's
    #           <code>cause</code> parameter indicates the cause. If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #   because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #           in the <i>Amazon SWF Developer Guide</i>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ScheduleActivityTaskFailed</code> – A <code>ScheduleActivityTask</code> decision failed. This could happen if the
    #         activity type specified in the decision isn't registered, is in a deprecated state, or the decision isn't
    #         properly configured.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RequestCancelActivityTaskFailed</code> – A
    #                         <code>RequestCancelActivityTask</code> decision failed. This could happen if
    #                     there is no open activity task with the specified activityId.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartTimerFailed</code> – A <code>StartTimer</code> decision failed. This
    #                     could happen if there is another open timer with the same timerId.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CancelTimerFailed</code> – A <code>CancelTimer</code> decision failed.
    #                     This could happen if there is no open timer with the specified
    #                     timerId.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartChildWorkflowExecutionFailed</code> – A
    #                         <code>StartChildWorkflowExecution</code> decision failed. This could happen
    #                     if the workflow type specified isn't registered, is deprecated, or the decision
    #                     isn't properly configured.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SignalExternalWorkflowExecutionFailed</code> – A
    #                         <code>SignalExternalWorkflowExecution</code> decision failed. This could
    #                     happen if the <code>workflowID</code> specified in the decision was
    #                     incorrect.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RequestCancelExternalWorkflowExecutionFailed</code> – A
    #                         <code>RequestCancelExternalWorkflowExecution</code> decision failed. This
    #                     could happen if the <code>workflowID</code> specified in the decision was
    #                     incorrect.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CancelWorkflowExecutionFailed</code> – A
    #                         <code>CancelWorkflowExecution</code> decision failed. This could happen if
    #                     there is an unhandled decision task pending in the workflow execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CompleteWorkflowExecutionFailed</code> – A
    #                         <code>CompleteWorkflowExecution</code> decision failed. This could happen if
    #                     there is an unhandled decision task pending in the workflow execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ContinueAsNewWorkflowExecutionFailed</code> – A
    #                         <code>ContinueAsNewWorkflowExecution</code> decision failed. This could
    #                     happen if there is an unhandled decision task pending in the workflow execution
    #                     or the ContinueAsNewWorkflowExecution decision was not configured
    #                     correctly.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FailWorkflowExecutionFailed</code> – A <code>FailWorkflowExecution</code>
    #                     decision failed. This could happen if there is an unhandled decision task
    #                     pending in the workflow execution.</p>
    #             </li>
    #          </ul>
    #          <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p>
    #          <note>
    #             <p>A workflow execution may be closed by the decider by returning one of the following decisions when completing
    #       a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>,
    #           <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An <code>UnhandledDecision</code> fault
    #       is returned if a workflow closing decision is specified and a signal or activity event had been added to the
    #       history while the decision task was being performed by the decider. Unlike the above situations which are logic
    #       issues, this fault is always possible because of race conditions in a distributed system. The right action here is
    #       to call <a>RespondDecisionTaskCompleted</a>  without any decisions. This would result in another decision task
    #       with these new events included in the history. The decider should handle the new events and may decide to close
    #       the workflow execution.</p>
    #          </note>
    #          <p>
    #             <b>How to Code a Decision</b>
    #          </p>
    #          <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>ScheduleActivityTaskDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>RequestCancelActivityTaskDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>CompleteWorkflowExecutionDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>FailWorkflowExecutionDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>CancelWorkflowExecutionDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>RecordMarkerDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>StartTimerDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>CancelTimerDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>SignalExternalWorkflowExecutionDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <a>StartChildWorkflowExecutionDecisionAttributes</a>
    #                   </code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute decision_type
    #   <p>Specifies the type of the decision.</p>
    #   @return [String]
    # @!attribute schedule_activity_task_decision_attributes
    #   <p>Provides the details of the <code>ScheduleActivityTask</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::ScheduleActivityTaskDecisionAttributes]
    # @!attribute request_cancel_activity_task_decision_attributes
    #   <p>Provides the details of the <code>RequestCancelActivityTask</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::RequestCancelActivityTaskDecisionAttributes]
    # @!attribute complete_workflow_execution_decision_attributes
    #   <p>Provides the details of the <code>CompleteWorkflowExecution</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::CompleteWorkflowExecutionDecisionAttributes]
    # @!attribute fail_workflow_execution_decision_attributes
    #   <p>Provides the details of the <code>FailWorkflowExecution</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::FailWorkflowExecutionDecisionAttributes]
    # @!attribute cancel_workflow_execution_decision_attributes
    #   <p>Provides the details of the <code>CancelWorkflowExecution</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::CancelWorkflowExecutionDecisionAttributes]
    # @!attribute continue_as_new_workflow_execution_decision_attributes
    #   <p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::ContinueAsNewWorkflowExecutionDecisionAttributes]
    # @!attribute record_marker_decision_attributes
    #   <p>Provides the details of the <code>RecordMarker</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::RecordMarkerDecisionAttributes]
    # @!attribute start_timer_decision_attributes
    #   <p>Provides the details of the <code>StartTimer</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::StartTimerDecisionAttributes]
    # @!attribute cancel_timer_decision_attributes
    #   <p>Provides the details of the <code>CancelTimer</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::CancelTimerDecisionAttributes]
    # @!attribute signal_external_workflow_execution_decision_attributes
    #   <p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::SignalExternalWorkflowExecutionDecisionAttributes]
    # @!attribute request_cancel_external_workflow_execution_decision_attributes
    #   <p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.
    #         It isn't set for other decision types.</p>
    #   @return [Types::RequestCancelExternalWorkflowExecutionDecisionAttributes]
    # @!attribute start_child_workflow_execution_decision_attributes
    #   <p>Provides the details of the <code>StartChildWorkflowExecution</code> decision. It isn't set for other decision types.</p>
    #   @return [Types::StartChildWorkflowExecutionDecisionAttributes]
    # @!attribute schedule_lambda_function_decision_attributes
    #   <p>Provides the details of the <code>ScheduleLambdaFunction</code> decision. It isn't set
    #         for other decision types.</p>
    #   @return [Types::ScheduleLambdaFunctionDecisionAttributes]
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
      :schedule_lambda_function_decision_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>DecisionTaskCompleted</code> event.</p>
    # @!attribute execution_context
    #   <p>User defined context for the workflow execution.</p>
    #   @return [String]
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute task_list
    #   <p>Represents a task list.</p>
    #   @return [Types::TaskList]
    # @!attribute task_list_schedule_to_start_timeout
    #   <p>The maximum amount of time the decision task can wait to be assigned to a worker.</p>
    #   @return [String]
    class DecisionTaskCompletedEventAttributes < Struct.new(
      :execution_context,
      :scheduled_event_id,
      :started_event_id,
      :task_list,
      :task_list_schedule_to_start_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides details about the <code>DecisionTaskScheduled</code> event.</p>
    # @!attribute task_list
    #   <p>The name of the task list in which the decision task was scheduled.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>
    #            A task priority that, if set, specifies the priority for this decision task.
    #         Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute start_to_close_timeout
    #   <p>The maximum duration for this decision task. The task is considered timed out if it doesn't completed within this duration.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute schedule_to_start_timeout
    #   <p>The maximum amount of time the decision task can wait to be assigned to a worker.</p>
    #   @return [String]
    class DecisionTaskScheduledEventAttributes < Struct.new(
      :task_list,
      :task_priority,
      :start_to_close_timeout,
      :schedule_to_start_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>DecisionTaskStarted</code> event.</p>
    # @!attribute identity
    #   <p>Identity of the decider making the request. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>
    #   @return [String]
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class DecisionTaskStartedEventAttributes < Struct.new(
      :identity,
      :scheduled_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>DecisionTaskTimedOut</code> event.</p>
    # @!attribute timeout_type
    #   <p>The type of timeout that expired before the decision task could be completed.</p>
    #   @return [String]
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started. This
    #         information can be useful for diagnosing problems by tracing back the chain of events leading up to this
    #         event.</p>
    #   @return [Integer]
    class DecisionTaskTimedOutEventAttributes < Struct.new(
      :timeout_type,
      :scheduled_event_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>The <code>StartWorkflowExecution</code> API action was called without the required
    #       parameters set.</p>
    #          <p>Some workflow execution parameters, such as the decision <code>taskList</code>, must be
    #       set to start the execution. However, these parameters might have been set as defaults when the
    #       workflow type was registered. In this case, you can omit these parameters from the
    #         <code>StartWorkflowExecution</code> call and Amazon SWF uses the values defined in the workflow
    #       type.</p>
    #          <note>
    #             <p>If these parameters aren't set and no default parameters were defined in the workflow
    #         type, this error is displayed.</p>
    #          </note>
    # @!attribute message
    #   @return [String]
    class DefaultUndefinedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which the activity type is registered.</p>
    #   @return [String]
    # @!attribute activity_type
    #   <p>The activity type to delete.</p>
    #   @return [Types::ActivityType]
    class DeleteActivityTypeInput < Struct.new(
      :domain,
      :activity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which the workflow type is registered.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The workflow type to delete.</p>
    #   @return [Types::WorkflowType]
    class DeleteWorkflowTypeInput < Struct.new(
      :domain,
      :workflow_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which the activity type is registered.</p>
    #   @return [String]
    # @!attribute activity_type
    #   <p>The activity type to deprecate.</p>
    #   @return [Types::ActivityType]
    class DeprecateActivityTypeInput < Struct.new(
      :domain,
      :activity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the domain to deprecate.</p>
    #   @return [String]
    class DeprecateDomainInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which the workflow type is registered.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The workflow type to deprecate.</p>
    #   @return [Types::WorkflowType]
    class DeprecateWorkflowTypeInput < Struct.new(
      :domain,
      :workflow_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which the activity type is registered.</p>
    #   @return [String]
    # @!attribute activity_type
    #   <p>The activity type to get information about. Activity types are identified by the
    #           <code>name</code> and <code>version</code> that were supplied when the activity was
    #         registered.</p>
    #   @return [Types::ActivityType]
    class DescribeActivityTypeInput < Struct.new(
      :domain,
      :activity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about an activity type.</p>
    # @!attribute type_info
    #   <p>General information about the activity type.</p>
    #            <p>The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REGISTERED</code> – The type is registered and available. Workers supporting this
    #           type should be running.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code> – The type was deprecated using <a>DeprecateActivityType</a>, but is
    #           still in use. You should keep workers supporting this type running.
    #           You cannot create new tasks of this type.
    #         </p>
    #               </li>
    #            </ul>
    #   @return [Types::ActivityTypeInfo]
    # @!attribute configuration
    #   <p>The configuration settings registered with the activity type.</p>
    #   @return [Types::ActivityTypeConfiguration]
    class DescribeActivityTypeOutput < Struct.new(
      :type_info,
      :configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the domain to describe.</p>
    #   @return [String]
    class DescribeDomainInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of a domain.</p>
    # @!attribute domain_info
    #   <p>The basic information about a domain, such as its name, status, and
    #         description.</p>
    #   @return [Types::DomainInfo]
    # @!attribute configuration
    #   <p>The domain configuration. Currently, this includes only the domain's retention
    #         period.</p>
    #   @return [Types::DomainConfiguration]
    class DescribeDomainOutput < Struct.new(
      :domain_info,
      :configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain containing the workflow execution.</p>
    #   @return [String]
    # @!attribute execution
    #   <p>The workflow execution to describe.</p>
    #   @return [Types::WorkflowExecution]
    class DescribeWorkflowExecutionInput < Struct.new(
      :domain,
      :execution,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a workflow execution.</p>
    # @!attribute execution_info
    #   <p>Information about the workflow execution.</p>
    #   @return [Types::WorkflowExecutionInfo]
    # @!attribute execution_configuration
    #   <p>The configuration settings for this workflow execution including timeout values, tasklist etc.</p>
    #   @return [Types::WorkflowExecutionConfiguration]
    # @!attribute open_counts
    #   <p>The number of tasks for this workflow execution. This includes open and closed tasks of all types.</p>
    #   @return [Types::WorkflowExecutionOpenCounts]
    # @!attribute latest_activity_task_timestamp
    #   <p>The time when the last activity task was scheduled for this workflow execution. You can use this information to determine if the workflow has not made progress for an unusually long period of time and might require a corrective action.</p>
    #   @return [Time]
    # @!attribute latest_execution_context
    #   <p>The latest executionContext provided by the decider for this workflow execution. A decider can provide an
    #         executionContext (a free-form string) when closing a decision task using <a>RespondDecisionTaskCompleted</a>.</p>
    #   @return [String]
    class DescribeWorkflowExecutionOutput < Struct.new(
      :execution_info,
      :execution_configuration,
      :open_counts,
      :latest_activity_task_timestamp,
      :latest_execution_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which this workflow type is registered.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The workflow type to describe.</p>
    #   @return [Types::WorkflowType]
    class DescribeWorkflowTypeInput < Struct.new(
      :domain,
      :workflow_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a workflow type.</p>
    # @!attribute type_info
    #   <p>General information about the workflow type.</p>
    #            <p>The status of the workflow type (returned in the WorkflowTypeInfo structure) can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REGISTERED</code> – The type is registered and available. Workers supporting this type should be running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code> – The type was deprecated using <a>DeprecateWorkflowType</a>, but is still in use. You should
    #           keep workers supporting this type running. You cannot create new workflow executions of this type.</p>
    #               </li>
    #            </ul>
    #   @return [Types::WorkflowTypeInfo]
    # @!attribute configuration
    #   <p>Configuration settings of the workflow type registered through <a>RegisterWorkflowType</a>
    #            </p>
    #   @return [Types::WorkflowTypeConfiguration]
    class DescribeWorkflowTypeOutput < Struct.new(
      :type_info,
      :configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the domain already exists. You may get this fault if you are registering a domain that is either already registered or deprecated, or if you undeprecate a domain that is currently registered.</p>
    # @!attribute message
    #   <p>A description that may help with diagnosing the cause of the fault.</p>
    #   @return [String]
    class DomainAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration settings of a domain.</p>
    # @!attribute workflow_execution_retention_period_in_days
    #   <p>The retention period for workflow executions in this domain.</p>
    #   @return [String]
    class DomainConfiguration < Struct.new(
      :workflow_execution_retention_period_in_days,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned when the specified domain has been deprecated.</p>
    # @!attribute message
    #   <p>A description that may help with diagnosing the cause of the fault.</p>
    #   @return [String]
    class DomainDeprecatedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains general information about a domain.</p>
    # @!attribute name
    #   <p>The name of the domain. This name is unique within the account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the domain:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REGISTERED</code> – The domain is properly registered and available. You can use this domain
    #            for registering types and creating new workflow executions.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code> – The domain was deprecated using <a>DeprecateDomain</a>, but is
    #            still in use. You should not create new workflow executions in this domain.
    #         </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain provided through <a>RegisterDomain</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the domain.</p>
    #   @return [String]
    class DomainInfo < Struct.new(
      :name,
      :status,
      :description,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if
    #       specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href="https://en.wikipedia.org/wiki/Unix_time">Unix Time format</a>. For example:
    #       <code>"oldestDate": 1325376070.</code>
    #          </p>
    # @!attribute oldest_date
    #   <p>Specifies the oldest start or close date and time to return.</p>
    #   @return [Time]
    # @!attribute latest_date
    #   <p>Specifies the latest start or close date and time to return.</p>
    #   @return [Time]
    class ExecutionTimeFilter < Struct.new(
      :oldest_date,
      :latest_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>
    # @!attribute workflow_execution
    #   <p>The external workflow execution to which the cancellation request was delivered.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This
    #         information can be useful for diagnosing problems by tracing back the chain of events leading up to this
    #         event.</p>
    #   @return [Integer]
    class ExternalWorkflowExecutionCancelRequestedEventAttributes < Struct.new(
      :workflow_execution,
      :initiated_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>
    # @!attribute workflow_execution
    #   <p>The external workflow execution that the signal was delivered to.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ExternalWorkflowExecutionSignaledEventAttributes < Struct.new(
      :workflow_execution,
      :initiated_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>FailWorkflowExecution</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #   <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #           in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute reason
    #   <p>A descriptive reason for the failure that may help in diagnostics.</p>
    #   @return [String]
    # @!attribute details
    #   <p>
    #            Details of the failure.</p>
    #   @return [String]
    class FailWorkflowExecutionDecisionAttributes < Struct.new(
      :reason,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>FailWorkflowExecutionFailed</code> event.</p>
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #     because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class FailWorkflowExecutionFailedEventAttributes < Struct.new(
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain containing the workflow execution.</p>
    #   @return [String]
    # @!attribute execution
    #   <p>Specifies the workflow execution for which to return the history.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #   @return [String]
    # @!attribute maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #   @return [Integer]
    # @!attribute reverse_order
    #   <p>When set to <code>true</code>, returns the events in reverse order. By default the
    #         results are returned in ascending order of the <code>eventTimeStamp</code> of the
    #         events.</p>
    #   @return [Boolean]
    class GetWorkflowExecutionHistoryInput < Struct.new(
      :domain,
      :execution,
      :next_page_token,
      :maximum_page_size,
      :reverse_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Paginated representation of a workflow history for a workflow execution. This is the up to date, complete and authoritative record of the events related to all tasks and events in the life of the workflow execution.</p>
    # @!attribute events
    #   <p>The list of history events.</p>
    #   @return [Array<Types::HistoryEvent>]
    # @!attribute next_page_token
    #   <p>If a <code>NextPageToken</code> was returned by a previous call, there are more
    #     results available. To retrieve the next page of results, make the call again using the returned token in
    #     <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
    #   @return [String]
    class GetWorkflowExecutionHistoryOutput < Struct.new(
      :events,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Event within a workflow execution. A history event can be one of these types:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ActivityTaskCancelRequested</code> – A <code>RequestCancelActivityTask</code> decision was received by the
    #         system.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ActivityTaskCanceled</code> – The activity task was successfully canceled.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ActivityTaskCompleted</code> – An activity worker successfully completed an activity task by calling
    #         <a>RespondActivityTaskCompleted</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ActivityTaskFailed</code> – An activity worker failed an activity task by calling
    #         <a>RespondActivityTaskFailed</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ActivityTaskScheduled</code> – An activity task was scheduled for execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ActivityTaskStarted</code> – The scheduled activity task was dispatched to a worker.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ActivityTaskTimedOut</code> – The activity task timed out.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CancelTimerFailed</code> – Failed to process CancelTimer decision. This happens when the decision isn't
    #         configured properly, for example no timer exists with the specified timer Id.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CancelWorkflowExecutionFailed</code> – A request to cancel a workflow execution failed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ChildWorkflowExecutionCanceled</code> – A child workflow execution, started by this workflow execution, was
    #         canceled and closed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ChildWorkflowExecutionCompleted</code> – A child workflow execution, started by this workflow execution,
    #         completed successfully and was closed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ChildWorkflowExecutionFailed</code> – A child workflow execution,
    #         started by this workflow execution, failed to complete successfully and was closed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ChildWorkflowExecutionStarted</code> – A child workflow execution was successfully started.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ChildWorkflowExecutionTerminated</code> –  A child workflow execution, started by this workflow execution, was
    #         terminated.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ChildWorkflowExecutionTimedOut</code> –  A child workflow execution, started by this workflow execution, timed
    #         out and was closed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CompleteWorkflowExecutionFailed</code> – The workflow execution failed to complete.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ContinueAsNewWorkflowExecutionFailed</code> – The workflow execution failed to complete after being continued
    #         as a new workflow execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DecisionTaskCompleted</code> – The decider successfully completed a decision task by calling
    #         <a>RespondDecisionTaskCompleted</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DecisionTaskScheduled</code> – A decision task was scheduled for the workflow execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DecisionTaskStarted</code> – The decision task was dispatched to a decider.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DecisionTaskTimedOut</code> – The decision task timed out.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ExternalWorkflowExecutionCancelRequested</code> – Request to cancel an external workflow execution was
    #         successfully delivered to the target execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ExternalWorkflowExecutionSignaled</code> – A signal, requested by this workflow execution, was successfully
    #         delivered to the target external workflow execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FailWorkflowExecutionFailed</code> – A request to mark a workflow execution as failed, itself failed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MarkerRecorded</code> – A marker was recorded in the workflow history as the result of a
    #         <code>RecordMarker</code> decision.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RecordMarkerFailed</code> – A <code>RecordMarker</code> decision was returned as failed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RequestCancelActivityTaskFailed</code> – Failed to process RequestCancelActivityTask decision. This happens
    #         when the decision isn't configured properly.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RequestCancelExternalWorkflowExecutionFailed</code> – Request to cancel an external workflow execution
    #         failed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RequestCancelExternalWorkflowExecutionInitiated</code> – A request was made to request the cancellation of an
    #         external workflow execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ScheduleActivityTaskFailed</code> – Failed to process ScheduleActivityTask decision. This happens when the
    #         decision isn't configured properly, for example the activity type specified isn't registered.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SignalExternalWorkflowExecutionFailed</code> – The request to signal an external workflow execution
    #         failed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SignalExternalWorkflowExecutionInitiated</code> – A request to signal an external workflow was made.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartActivityTaskFailed</code> – A scheduled activity task failed to start.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartChildWorkflowExecutionFailed</code> – Failed to process StartChildWorkflowExecution decision. This happens
    #         when the decision isn't configured properly, for example the workflow type specified isn't registered.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartChildWorkflowExecutionInitiated</code> – A request was made to start a child workflow execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartTimerFailed</code> – Failed to process StartTimer decision. This happens when the decision isn't
    #         configured properly, for example a timer already exists with the specified timer Id.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TimerCanceled</code> – A timer, previously started for this workflow execution, was successfully canceled.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TimerFired</code> – A timer, previously started for this workflow execution, fired.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TimerStarted</code> – A timer was started for the workflow execution due to a <code>StartTimer</code>
    #         decision.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionCancelRequested</code> – A request to cancel this workflow execution was made.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionCanceled</code> – The workflow execution was successfully canceled and closed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionCompleted</code> – The workflow execution was closed due to successful completion.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionContinuedAsNew</code> – The workflow execution was closed and a new execution of the same type
    #         was created with the same workflowId.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionFailed</code> – The workflow execution closed due to a failure.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionSignaled</code> – An external signal was received for the workflow execution.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionStarted</code> – The workflow execution was started.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionTerminated</code> – The workflow execution was terminated.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WorkflowExecutionTimedOut</code> – The workflow execution was closed because a time out was exceeded.</p>
    #             </li>
    #          </ul>
    # @!attribute event_timestamp
    #   <p>The date and time when the event occurred.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of the history event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The system generated ID of the event. This ID uniquely identifies the event with in the workflow execution history.</p>
    #   @return [Integer]
    # @!attribute workflow_execution_started_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionStarted</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionStartedEventAttributes]
    # @!attribute workflow_execution_completed_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionCompleted</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionCompletedEventAttributes]
    # @!attribute complete_workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>CompleteWorkflowExecutionFailed</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::CompleteWorkflowExecutionFailedEventAttributes]
    # @!attribute workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionFailed</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionFailedEventAttributes]
    # @!attribute fail_workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>FailWorkflowExecutionFailed</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::FailWorkflowExecutionFailedEventAttributes]
    # @!attribute workflow_execution_timed_out_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionTimedOut</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionTimedOutEventAttributes]
    # @!attribute workflow_execution_canceled_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionCanceled</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionCanceledEventAttributes]
    # @!attribute cancel_workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>CancelWorkflowExecutionFailed</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::CancelWorkflowExecutionFailedEventAttributes]
    # @!attribute workflow_execution_continued_as_new_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionContinuedAsNew</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionContinuedAsNewEventAttributes]
    # @!attribute continue_as_new_workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>ContinueAsNewWorkflowExecutionFailed</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::ContinueAsNewWorkflowExecutionFailedEventAttributes]
    # @!attribute workflow_execution_terminated_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionTerminated</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionTerminatedEventAttributes]
    # @!attribute workflow_execution_cancel_requested_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionCancelRequested</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionCancelRequestedEventAttributes]
    # @!attribute decision_task_scheduled_event_attributes
    #   <p>If the event is of type <code>DecisionTaskScheduled</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::DecisionTaskScheduledEventAttributes]
    # @!attribute decision_task_started_event_attributes
    #   <p>If the event is of type <code>DecisionTaskStarted</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::DecisionTaskStartedEventAttributes]
    # @!attribute decision_task_completed_event_attributes
    #   <p>If the event is of type <code>DecisionTaskCompleted</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::DecisionTaskCompletedEventAttributes]
    # @!attribute decision_task_timed_out_event_attributes
    #   <p>If the event is of type <code>DecisionTaskTimedOut</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::DecisionTaskTimedOutEventAttributes]
    # @!attribute activity_task_scheduled_event_attributes
    #   <p>If the event is of type <code>ActivityTaskScheduled</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ActivityTaskScheduledEventAttributes]
    # @!attribute activity_task_started_event_attributes
    #   <p>If the event is of type <code>ActivityTaskStarted</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ActivityTaskStartedEventAttributes]
    # @!attribute activity_task_completed_event_attributes
    #   <p>If the event is of type <code>ActivityTaskCompleted</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ActivityTaskCompletedEventAttributes]
    # @!attribute activity_task_failed_event_attributes
    #   <p>If the event is of type <code>ActivityTaskFailed</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ActivityTaskFailedEventAttributes]
    # @!attribute activity_task_timed_out_event_attributes
    #   <p>If the event is of type <code>ActivityTaskTimedOut</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ActivityTaskTimedOutEventAttributes]
    # @!attribute activity_task_canceled_event_attributes
    #   <p>If the event is of type <code>ActivityTaskCanceled</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ActivityTaskCanceledEventAttributes]
    # @!attribute activity_task_cancel_requested_event_attributes
    #   <p>If the event is of type <code>ActivityTaskcancelRequested</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ActivityTaskCancelRequestedEventAttributes]
    # @!attribute workflow_execution_signaled_event_attributes
    #   <p>If the event is of type <code>WorkflowExecutionSignaled</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::WorkflowExecutionSignaledEventAttributes]
    # @!attribute marker_recorded_event_attributes
    #   <p>If the event is of type <code>MarkerRecorded</code> then this member is set and provides detailed information
    #         about the event. It isn't set for other event types.</p>
    #   @return [Types::MarkerRecordedEventAttributes]
    # @!attribute record_marker_failed_event_attributes
    #   <p>If the event is of type <code>DecisionTaskFailed</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::RecordMarkerFailedEventAttributes]
    # @!attribute timer_started_event_attributes
    #   <p>If the event is of type <code>TimerStarted</code> then this member is set and provides detailed information
    #         about the event. It isn't set for other event types.</p>
    #   @return [Types::TimerStartedEventAttributes]
    # @!attribute timer_fired_event_attributes
    #   <p>If the event is of type <code>TimerFired</code> then this member is set and provides detailed information about
    #         the event. It isn't set for other event types.</p>
    #   @return [Types::TimerFiredEventAttributes]
    # @!attribute timer_canceled_event_attributes
    #   <p>If the event is of type <code>TimerCanceled</code> then this member is set and provides detailed information
    #         about the event. It isn't set for other event types.</p>
    #   @return [Types::TimerCanceledEventAttributes]
    # @!attribute start_child_workflow_execution_initiated_event_attributes
    #   <p>If the event is of type <code>StartChildWorkflowExecutionInitiated</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::StartChildWorkflowExecutionInitiatedEventAttributes]
    # @!attribute child_workflow_execution_started_event_attributes
    #   <p>If the event is of type <code>ChildWorkflowExecutionStarted</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ChildWorkflowExecutionStartedEventAttributes]
    # @!attribute child_workflow_execution_completed_event_attributes
    #   <p>If the event is of type <code>ChildWorkflowExecutionCompleted</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::ChildWorkflowExecutionCompletedEventAttributes]
    # @!attribute child_workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>ChildWorkflowExecutionFailed</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ChildWorkflowExecutionFailedEventAttributes]
    # @!attribute child_workflow_execution_timed_out_event_attributes
    #   <p>If the event is of type <code>ChildWorkflowExecutionTimedOut</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::ChildWorkflowExecutionTimedOutEventAttributes]
    # @!attribute child_workflow_execution_canceled_event_attributes
    #   <p>If the event is of type <code>ChildWorkflowExecutionCanceled</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::ChildWorkflowExecutionCanceledEventAttributes]
    # @!attribute child_workflow_execution_terminated_event_attributes
    #   <p>If the event is of type <code>ChildWorkflowExecutionTerminated</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::ChildWorkflowExecutionTerminatedEventAttributes]
    # @!attribute signal_external_workflow_execution_initiated_event_attributes
    #   <p>If the event is of type <code>SignalExternalWorkflowExecutionInitiated</code> then this member is set and
    #         provides detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::SignalExternalWorkflowExecutionInitiatedEventAttributes]
    # @!attribute external_workflow_execution_signaled_event_attributes
    #   <p>If the event is of type <code>ExternalWorkflowExecutionSignaled</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::ExternalWorkflowExecutionSignaledEventAttributes]
    # @!attribute signal_external_workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>SignalExternalWorkflowExecutionFailed</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::SignalExternalWorkflowExecutionFailedEventAttributes]
    # @!attribute external_workflow_execution_cancel_requested_event_attributes
    #   <p>If the event is of type <code>ExternalWorkflowExecutionCancelRequested</code> then this member is set and
    #         provides detailed information about the event. It isn't set for other event types. </p>
    #   @return [Types::ExternalWorkflowExecutionCancelRequestedEventAttributes]
    # @!attribute request_cancel_external_workflow_execution_initiated_event_attributes
    #   <p>If the event is of type <code>RequestCancelExternalWorkflowExecutionInitiated</code> then this member is set and
    #         provides detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes]
    # @!attribute request_cancel_external_workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>RequestCancelExternalWorkflowExecutionFailed</code> then this member is set and
    #         provides detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes]
    # @!attribute schedule_activity_task_failed_event_attributes
    #   <p>If the event is of type <code>ScheduleActivityTaskFailed</code> then this member is set and provides detailed
    #         information about the event. It isn't set for other event types.</p>
    #   @return [Types::ScheduleActivityTaskFailedEventAttributes]
    # @!attribute request_cancel_activity_task_failed_event_attributes
    #   <p>If the event is of type <code>RequestCancelActivityTaskFailed</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::RequestCancelActivityTaskFailedEventAttributes]
    # @!attribute start_timer_failed_event_attributes
    #   <p>If the event is of type <code>StartTimerFailed</code> then this member is set and provides detailed information
    #         about the event. It isn't set for other event types.</p>
    #   @return [Types::StartTimerFailedEventAttributes]
    # @!attribute cancel_timer_failed_event_attributes
    #   <p>If the event is of type <code>CancelTimerFailed</code> then this member is set and provides detailed information
    #         about the event. It isn't set for other event types.</p>
    #   @return [Types::CancelTimerFailedEventAttributes]
    # @!attribute start_child_workflow_execution_failed_event_attributes
    #   <p>If the event is of type <code>StartChildWorkflowExecutionFailed</code> then this member is set and provides
    #         detailed information about the event. It isn't set for other event types.</p>
    #   @return [Types::StartChildWorkflowExecutionFailedEventAttributes]
    # @!attribute lambda_function_scheduled_event_attributes
    #   <p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set
    #         for other event types.</p>
    #   @return [Types::LambdaFunctionScheduledEventAttributes]
    # @!attribute lambda_function_started_event_attributes
    #   <p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for
    #         other event types.</p>
    #   @return [Types::LambdaFunctionStartedEventAttributes]
    # @!attribute lambda_function_completed_event_attributes
    #   <p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set
    #         for other event types.</p>
    #   @return [Types::LambdaFunctionCompletedEventAttributes]
    # @!attribute lambda_function_failed_event_attributes
    #   <p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for
    #         other event types.</p>
    #   @return [Types::LambdaFunctionFailedEventAttributes]
    # @!attribute lambda_function_timed_out_event_attributes
    #   <p>Provides the details of the <code>LambdaFunctionTimedOut</code> event. It isn't set for
    #         other event types.</p>
    #   @return [Types::LambdaFunctionTimedOutEventAttributes]
    # @!attribute schedule_lambda_function_failed_event_attributes
    #   <p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't
    #         set for other event types.</p>
    #   @return [Types::ScheduleLambdaFunctionFailedEventAttributes]
    # @!attribute start_lambda_function_failed_event_attributes
    #   <p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set
    #         for other event types.</p>
    #   @return [Types::StartLambdaFunctionFailedEventAttributes]
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
      :start_lambda_function_failed_event_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:event_id] = 0 unless options.key?(:event_id)
        super
      end
    end

    # <p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set
    #       for other event types.</p>
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this
    #         Lambda task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>LambdaFunctionStarted</code> event recorded when this activity task
    #         started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute result
    #   <p>The results of the Lambda task.</p>
    #   @return [String]
    class LambdaFunctionCompletedEventAttributes < Struct.new(
      :scheduled_event_id,
      :started_event_id,
      :result,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for
    #       other event types.</p>
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this
    #         activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>LambdaFunctionStarted</code> event recorded when this activity task
    #         started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute reason
    #   <p>The reason provided for the failure.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the failure.</p>
    #   @return [String]
    class LambdaFunctionFailedEventAttributes < Struct.new(
      :scheduled_event_id,
      :started_event_id,
      :reason,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set
    #       for other event types.</p>
    # @!attribute id
    #   <p>The unique ID of the Lambda task.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Lambda function.</p>
    #   @return [String]
    # @!attribute control
    #   <p>Data attached to the event that the decider can use in subsequent workflow tasks. This
    #         data isn't sent to the Lambda task.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input provided to the Lambda task.</p>
    #   @return [String]
    # @!attribute start_to_close_timeout
    #   <p>The maximum amount of time a worker can take to process the Lambda task.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>LambdaFunctionCompleted</code> event corresponding to the decision
    #         that resulted in scheduling this activity task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    class LambdaFunctionScheduledEventAttributes < Struct.new(
      :id,
      :name,
      :control,
      :input,
      :start_to_close_timeout,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for
    #       other event types.</p>
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this
    #         activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    class LambdaFunctionStartedEventAttributes < Struct.new(
      :scheduled_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        super
      end
    end

    # <p>Provides details of the <code>LambdaFunctionTimedOut</code> event.</p>
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this
    #         activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ActivityTaskStarted</code> event that was recorded when this
    #         activity task started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute timeout_type
    #   <p>The type of the timeout that caused this event.</p>
    #   @return [String]
    class LambdaFunctionTimedOutEventAttributes < Struct.new(
      :scheduled_event_id,
      :started_event_id,
      :timeout_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.</p>
    # @!attribute message
    #   <p>A description that may help with diagnosing the cause of the fault.</p>
    #   @return [String]
    class LimitExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which the activity types have been registered.</p>
    #   @return [String]
    # @!attribute name
    #   <p>If specified, only lists the activity types that have this name.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>Specifies the registration status of the activity types to list.</p>
    #   @return [String]
    # @!attribute next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #   @return [String]
    # @!attribute maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #   @return [Integer]
    # @!attribute reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default, the
    #         results are returned in ascending alphabetical order by <code>name</code> of the activity
    #         types.</p>
    #   @return [Boolean]
    class ListActivityTypesInput < Struct.new(
      :domain,
      :name,
      :registration_status,
      :next_page_token,
      :maximum_page_size,
      :reverse_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a paginated list of activity type information structures.</p>
    # @!attribute type_infos
    #   <p>List of activity type information.</p>
    #   @return [Array<Types::ActivityTypeInfo>]
    # @!attribute next_page_token
    #   <p>If a <code>NextPageToken</code> was returned by a previous call, there are more
    #     results available. To retrieve the next page of results, make the call again using the returned token in
    #     <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
    #   @return [String]
    class ListActivityTypesOutput < Struct.new(
      :type_infos,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the workflow executions to list.</p>
    #   @return [String]
    # @!attribute start_time_filter
    #   <p>If specified, the workflow executions are included in the returned results based on
    #         whether their start times are within the range specified by this filter. Also, if this
    #         parameter is specified, the returned results are ordered by their start times.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    #   @return [Types::ExecutionTimeFilter]
    # @!attribute close_time_filter
    #   <p>If specified, the workflow executions are included in the returned results based on
    #         whether their close times are within the range specified by this filter. Also, if this
    #         parameter is specified, the returned results are ordered by their close times.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    #   @return [Types::ExecutionTimeFilter]
    # @!attribute execution_filter
    #   <p>If specified, only workflow executions matching the workflow ID specified in the filter
    #         are returned.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #   @return [Types::WorkflowExecutionFilter]
    # @!attribute close_status_filter
    #   <p>If specified, only workflow executions that match this <i>close
    #           status</i> are listed. For example, if TERMINATED is specified, then only TERMINATED
    #         workflow executions are listed.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #   @return [Types::CloseStatusFilter]
    # @!attribute type_filter
    #   <p>If specified, only executions of the type specified in the filter are
    #         returned.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #   @return [Types::WorkflowTypeFilter]
    # @!attribute tag_filter
    #   <p>If specified, only executions that have the matching tag are listed.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #   @return [Types::TagFilter]
    # @!attribute next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #   @return [String]
    # @!attribute maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #   @return [Integer]
    # @!attribute reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in descending order of the start or the close time of the
    #         executions.</p>
    #   @return [Boolean]
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
      :reverse_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a paginated list of information about workflow executions.</p>
    # @!attribute execution_infos
    #   <p>The list of workflow information structures.</p>
    #   @return [Array<Types::WorkflowExecutionInfo>]
    # @!attribute next_page_token
    #   <p>If a <code>NextPageToken</code> was returned by a previous call, there are more
    #     results available. To retrieve the next page of results, make the call again using the returned token in
    #     <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
    #   @return [String]
    class ListClosedWorkflowExecutionsOutput < Struct.new(
      :execution_infos,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>Specifies the registration status of the domains to list.</p>
    #   @return [String]
    # @!attribute maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #   @return [Integer]
    # @!attribute reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default, the
    #         results are returned in ascending alphabetical order by <code>name</code> of the
    #         domains.</p>
    #   @return [Boolean]
    class ListDomainsInput < Struct.new(
      :next_page_token,
      :registration_status,
      :maximum_page_size,
      :reverse_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a paginated collection of DomainInfo structures.</p>
    # @!attribute domain_infos
    #   <p>A list of DomainInfo structures.</p>
    #   @return [Array<Types::DomainInfo>]
    # @!attribute next_page_token
    #   <p>If a <code>NextPageToken</code> was returned by a previous call, there are more
    #     results available. To retrieve the next page of results, make the call again using the returned token in
    #     <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
    #   @return [String]
    class ListDomainsOutput < Struct.new(
      :domain_infos,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the workflow executions to list.</p>
    #   @return [String]
    # @!attribute start_time_filter
    #   <p>Workflow executions are included in the returned results based on whether their start
    #         times are within the range specified by this filter.</p>
    #   @return [Types::ExecutionTimeFilter]
    # @!attribute type_filter
    #   <p>If specified, only executions of the type specified in the filter are
    #         returned.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #   @return [Types::WorkflowTypeFilter]
    # @!attribute tag_filter
    #   <p>If specified, only executions that have the matching tag are listed.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #   @return [Types::TagFilter]
    # @!attribute next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #   @return [String]
    # @!attribute maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #   @return [Integer]
    # @!attribute reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in descending order of the start time of the executions.</p>
    #   @return [Boolean]
    # @!attribute execution_filter
    #   <p>If specified, only workflow executions matching the workflow ID specified in the filter
    #         are returned.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #   @return [Types::WorkflowExecutionFilter]
    class ListOpenWorkflowExecutionsInput < Struct.new(
      :domain,
      :start_time_filter,
      :type_filter,
      :tag_filter,
      :next_page_token,
      :maximum_page_size,
      :reverse_order,
      :execution_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a paginated list of information about workflow executions.</p>
    # @!attribute execution_infos
    #   <p>The list of workflow information structures.</p>
    #   @return [Array<Types::WorkflowExecutionInfo>]
    # @!attribute next_page_token
    #   <p>If a <code>NextPageToken</code> was returned by a previous call, there are more
    #     results available. To retrieve the next page of results, make the call again using the returned token in
    #     <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
    #   @return [String]
    class ListOpenWorkflowExecutionsOutput < Struct.new(
      :execution_infos,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of tags associated with the domain.</p>
    #   @return [Array<Types::ResourceTag>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which the workflow types have been registered.</p>
    #   @return [String]
    # @!attribute name
    #   <p>If specified, lists the workflow type with this name.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>Specifies the registration status of the workflow types to list.</p>
    #   @return [String]
    # @!attribute next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #   @return [String]
    # @!attribute maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #   @return [Integer]
    # @!attribute reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in ascending alphabetical order of the <code>name</code> of the workflow
    #         types.</p>
    #   @return [Boolean]
    class ListWorkflowTypesInput < Struct.new(
      :domain,
      :name,
      :registration_status,
      :next_page_token,
      :maximum_page_size,
      :reverse_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a paginated list of information structures about workflow types.</p>
    # @!attribute type_infos
    #   <p>The list of workflow type information.</p>
    #   @return [Array<Types::WorkflowTypeInfo>]
    # @!attribute next_page_token
    #   <p>If a <code>NextPageToken</code> was returned by a previous call, there are more
    #     results available. To retrieve the next page of results, make the call again using the returned token in
    #     <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
    #   @return [String]
    class ListWorkflowTypesOutput < Struct.new(
      :type_infos,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>MarkerRecorded</code> event.</p>
    # @!attribute marker_name
    #   <p>The name of the marker.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the marker.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>RecordMarker</code> decision that requested this marker. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class MarkerRecordedEventAttributes < Struct.new(
      :marker_name,
      :details,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Returned when the caller doesn't have sufficient permissions to invoke the action.</p>
    # @!attribute message
    #   <p>A description that may help with diagnosing the cause of the fault.</p>
    #   @return [String]
    class OperationNotPermittedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the task lists being polled.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>Specifies the task list to poll for activity tasks.</p>
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [Types::TaskList]
    # @!attribute identity
    #   <p>Identity of the worker making the request, recorded in the
    #           <code>ActivityTaskStarted</code> event in the workflow history. This enables diagnostic
    #         tracing when problems arise. The form of this identity is user defined.</p>
    #   @return [String]
    class PollForActivityTaskInput < Struct.new(
      :domain,
      :task_list,
      :identity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unit of work sent to an activity worker.</p>
    # @!attribute task_token
    #   <p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>
    #   @return [String]
    # @!attribute activity_id
    #   <p>The unique ID of the task.</p>
    #   @return [String]
    # @!attribute started_event_id
    #   <p>The ID of the <code>ActivityTaskStarted</code> event recorded in the history.</p>
    #   @return [Integer]
    # @!attribute workflow_execution
    #   <p>The workflow execution that started this activity task.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute activity_type
    #   <p>The type of this activity task.</p>
    #   @return [Types::ActivityType]
    # @!attribute input
    #   <p>The inputs provided when the activity task was scheduled. The form of the input is user defined and should be meaningful to the activity implementation.</p>
    #   @return [String]
    class PollForActivityTaskOutput < Struct.new(
      :task_token,
      :activity_id,
      :started_event_id,
      :workflow_execution,
      :activity_type,
      :input,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain containing the task lists to poll.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>Specifies the task list to poll for decision tasks.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [Types::TaskList]
    # @!attribute identity
    #   <p>Identity of the decider making the request, which is recorded in the
    #         DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when
    #         problems arise. The form of this identity is user defined.</p>
    #   @return [String]
    # @!attribute next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #            <note>
    #               <p>The <code>nextPageToken</code> returned by this action cannot be used with <a>GetWorkflowExecutionHistory</a> to get the next page. You must call <a>PollForDecisionTask</a> again (with the <code>nextPageToken</code>) to retrieve
    #           the next page of history records. Calling <a>PollForDecisionTask</a> with a
    #             <code>nextPageToken</code> doesn't return a new decision task.</p>
    #            </note>
    #   @return [String]
    # @!attribute maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #            <p>This
    #         is an upper limit only; the actual number of results returned per call may be fewer than the
    #         specified maximum.</p>
    #   @return [Integer]
    # @!attribute reverse_order
    #   <p>When set to <code>true</code>, returns the events in reverse order. By default the
    #         results are returned in ascending order of the <code>eventTimestamp</code> of the
    #         events.</p>
    #   @return [Boolean]
    # @!attribute start_at_previous_started_event
    #   <p>When set to <code>true</code>, returns the events with <code>eventTimestamp</code> greater than or equal to <code>eventTimestamp</code> of the most recent <code>DecisionTaskStarted</code> event. By default, this parameter is set to <code>false</code>.</p>
    #   @return [Boolean]
    class PollForDecisionTaskInput < Struct.new(
      :domain,
      :task_list,
      :identity,
      :next_page_token,
      :maximum_page_size,
      :reverse_order,
      :start_at_previous_started_event,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that represents a decision task. Decision tasks are sent to deciders in order for them to make decisions.</p>
    # @!attribute task_token
    #   <p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>
    #   @return [String]
    # @!attribute started_event_id
    #   <p>The ID of the <code>DecisionTaskStarted</code> event recorded in the history.</p>
    #   @return [Integer]
    # @!attribute workflow_execution
    #   <p>The workflow execution for which this decision task was created.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute workflow_type
    #   <p>The type of the workflow execution for which this decision task was created.</p>
    #   @return [Types::WorkflowType]
    # @!attribute events
    #   <p>A paginated list of history events of the workflow execution. The decider uses this during the processing of the decision task.</p>
    #   @return [Array<Types::HistoryEvent>]
    # @!attribute next_page_token
    #   <p>If a <code>NextPageToken</code> was returned by a previous call, there are more
    #     results available. To retrieve the next page of results, make the call again using the returned token in
    #     <code>nextPageToken</code>. Keep all other arguments unchanged.</p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
    #   @return [String]
    # @!attribute previous_started_event_id
    #   <p>The ID of the DecisionTaskStarted event of the previous decision task of this workflow execution that was processed by the decider. This can be used to determine the events in the history new since the last decision task received by the decider.</p>
    #   @return [Integer]
    class PollForDecisionTaskOutput < Struct.new(
      :task_token,
      :started_event_id,
      :workflow_execution,
      :workflow_type,
      :events,
      :next_page_token,
      :previous_started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        options[:previous_started_event_id] = 0 unless options.key?(:previous_started_event_id)
        super
      end
    end

    # @!attribute task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results. </p>
    #            </important>
    #   @return [String]
    # @!attribute details
    #   <p>If specified, contains details about the progress of the task.</p>
    #   @return [String]
    class RecordActivityTaskHeartbeatInput < Struct.new(
      :task_token,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Status information about an activity task.</p>
    # @!attribute cancel_requested
    #   <p>Set to <code>true</code> if cancellation of the task is requested.</p>
    #   @return [Boolean]
    class RecordActivityTaskHeartbeatOutput < Struct.new(
      :cancel_requested,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cancel_requested] = false unless options.key?(:cancel_requested)
        super
      end
    end

    # <p>Provides the details of the <code>RecordMarker</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute marker_name
    #   <p>
    #            The name of the marker.</p>
    #   @return [String]
    # @!attribute details
    #   <p>
    #            The details of the marker.</p>
    #   @return [String]
    class RecordMarkerDecisionAttributes < Struct.new(
      :marker_name,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>RecordMarkerFailed</code> event.</p>
    # @!attribute marker_name
    #   <p>The marker's name.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #     because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>RecordMarkerFailed</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class RecordMarkerFailedEventAttributes < Struct.new(
      :marker_name,
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain in which this activity is to be registered.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the activity type within the domain.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the activity type.</p>
    #            <note>
    #               <p>The activity type consists of the name and version, the combination of which must be
    #           unique within the domain.</p>
    #            </note>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A textual description of the activity type.</p>
    #   @return [String]
    # @!attribute default_task_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration that a worker can take to process tasks
    #         of this activity type. This default can be overridden when scheduling an activity task using
    #         the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_task_heartbeat_timeout
    #   <p>If set, specifies the default maximum time before which a worker processing a task of
    #         this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If
    #         the timeout is exceeded, the activity task is automatically timed out. This default can be
    #         overridden when scheduling an activity task using the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>. If the activity worker subsequently attempts to record a heartbeat
    #         or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In
    #         this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should
    #         clean up the activity task.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_task_list
    #   <p>If set, specifies the default task list to use for scheduling tasks of this activity
    #         type. This default task list is used if a task list isn't provided when a task is scheduled
    #         through the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #   @return [Types::TaskList]
    # @!attribute default_task_priority
    #   <p>The default task priority to assign to the activity type. If not assigned, then
    #           <code>0</code> is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>in the
    #         <i>Amazon SWF Developer Guide</i>.</i>.</p>
    #   @return [String]
    # @!attribute default_task_schedule_to_start_timeout
    #   <p>If set, specifies the default maximum duration that a task of this activity type can
    #         wait before being assigned to a worker. This default can be overridden when scheduling an
    #         activity task using the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_task_schedule_to_close_timeout
    #   <p>If set, specifies the default maximum duration for a task of this activity type. This
    #         default can be overridden when scheduling an activity task using the
    #           <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
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
      :default_task_schedule_to_close_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the domain to register. The name must be unique in the region that the domain
    #         is registered in.</p>
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A text description of the domain.</p>
    #   @return [String]
    # @!attribute workflow_execution_retention_period_in_days
    #   <p>The duration (in days) that records and histories of workflow executions on the domain
    #         should be kept by the service. After the retention period, the workflow execution isn't
    #         available in the results of visibility calls.</p>
    #            <p>If you pass the value <code>NONE</code> or <code>0</code> (zero), then the workflow
    #         execution history isn't retained. As soon as the workflow execution completes, the execution
    #         record and its history are deleted.</p>
    #            <p>The maximum workflow execution retention period is 90 days. For more information about
    #         Amazon SWF service limits, see: <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html">Amazon SWF Service Limits</a> in the
    #           <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to be added when registering a domain.</p>
    #            <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>
    #   @return [Array<Types::ResourceTag>]
    class RegisterDomainInput < Struct.new(
      :name,
      :description,
      :workflow_execution_retention_period_in_days,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain in which to register the workflow type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow type.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the workflow type.</p>
    #            <note>
    #               <p>The workflow type consists of the name and version, the combination of which must be
    #           unique within the domain. To get a list of all currently registered workflow types, use the
    #             <a>ListWorkflowTypes</a> action.</p>
    #            </note>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Textual description of the workflow type.</p>
    #   @return [String]
    # @!attribute default_task_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration of decision tasks for this workflow
    #         type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_execution_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration for executions of this workflow type.
    #         You can override this default when starting an execution through the <a>StartWorkflowExecution</a> Action or <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds; an integer greater than or equal to 0. Unlike
    #         some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for
    #           <code>defaultExecutionStartToCloseTimeout</code>; there is a one-year max limit on the time
    #         that a workflow execution can run. Exceeding this limit always causes the workflow execution
    #         to time out.</p>
    #   @return [String]
    # @!attribute default_task_list
    #   <p>If set, specifies the default task list to use for scheduling decision tasks for
    #         executions of this workflow type. This default is used only if a task list isn't provided when
    #         starting the execution through the <a>StartWorkflowExecution</a> Action or
    #           <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #   @return [Types::TaskList]
    # @!attribute default_task_priority
    #   <p>The default task priority to assign to the workflow type. If not assigned, then
    #           <code>0</code> is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute default_child_policy
    #   <p>If set, specifies the default policy to use for the child workflow executions when a
    #         workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This
    #         default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute default_lambda_role
    #   <p>The default IAM role attached to this workflow type.</p>
    #            <note>
    #               <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
    #           don't specify an IAM role when you start this workflow type, the default Lambda role is
    #           attached to the execution. For more information, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
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
      :default_lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>RequestCancelActivityTask</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #   <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #           in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute activity_id
    #   <p>The <code>activityId</code> of the activity task to be canceled.</p>
    #   @return [String]
    class RequestCancelActivityTaskDecisionAttributes < Struct.new(
      :activity_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>RequestCancelActivityTaskFailed</code> event.</p>
    # @!attribute activity_id
    #   <p>The activityId provided in the <code>RequestCancelActivityTask</code> decision that failed.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #     because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class RequestCancelActivityTaskFailedEventAttributes < Struct.new(
      :activity_id,
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute workflow_id
    #   <p>
    #            The <code>workflowId</code> of the external workflow execution to cancel.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The <code>runId</code> of the external workflow execution to cancel.</p>
    #   @return [String]
    # @!attribute control
    #   <p>The data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
    #   @return [String]
    class RequestCancelExternalWorkflowExecutionDecisionAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :control,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>
    # @!attribute workflow_id
    #   <p>The <code>workflowId</code> of the external workflow to which the cancel request was to be delivered.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The <code>runId</code> of the external workflow execution.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #     because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This
    #         information can be useful for diagnosing problems by tracing back the chain of events leading up to this
    #         event.</p>
    #   @return [Integer]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute control
    #   <p>The data attached to the event that the decider can use in subsequent workflow tasks.
    #         This data isn't sent to the workflow execution.</p>
    #   @return [String]
    class RequestCancelExternalWorkflowExecutionFailedEventAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :cause,
      :initiated_event_id,
      :decision_task_completed_event_id,
      :control,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>
    # @!attribute workflow_id
    #   <p>The <code>workflowId</code> of the external workflow execution to be canceled.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The <code>runId</code> of the external workflow execution to be canceled.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute control
    #   <p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
    #   @return [String]
    class RequestCancelExternalWorkflowExecutionInitiatedEventAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :decision_task_completed_event_id,
      :control,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain containing the workflow execution to cancel.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The workflowId of the workflow execution to cancel.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The runId of the workflow execution to cancel.</p>
    #   @return [String]
    class RequestCancelWorkflowExecutionInput < Struct.new(
      :domain,
      :workflow_id,
      :run_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Tags are key-value pairs that can be associated with Amazon SWF state machines and
    #       activities.</p>
    #          <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @!attribute key
    #   <p>The key of a tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a tag.</p>
    #   @return [String]
    class ResourceTag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    #   @return [String]
    # @!attribute details
    #   <p> Information about the cancellation.</p>
    #   @return [String]
    class RespondActivityTaskCanceledInput < Struct.new(
      :task_token,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    #   @return [String]
    # @!attribute result
    #   <p>The result of the activity task. It is a free form string that is implementation
    #         specific.</p>
    #   @return [String]
    class RespondActivityTaskCompletedInput < Struct.new(
      :task_token,
      :result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    #   @return [String]
    # @!attribute reason
    #   <p>Description of the error that may assist in diagnostics.</p>
    #   @return [String]
    # @!attribute details
    #   <p> Detailed information about the failure.</p>
    #   @return [String]
    class RespondActivityTaskFailedInput < Struct.new(
      :task_token,
      :reason,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Input data for a TaskCompleted response to a decision task.</p>
    # @!attribute task_token
    #   <p>The <code>taskToken</code> from the <a>DecisionTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    #   @return [String]
    # @!attribute decisions
    #   <p>The list of decisions (possibly empty) made by the decider while processing this
    #         decision task. See the docs for the <a>Decision</a> structure for
    #         details.</p>
    #   @return [Array<Types::Decision>]
    # @!attribute execution_context
    #   <p>User defined context to add to workflow execution.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>The task list to use for the future decision tasks of this workflow execution. This list overrides the original task list you specified while starting the workflow execution. </p>
    #   @return [Types::TaskList]
    # @!attribute task_list_schedule_to_start_timeout
    #   <p>Specifies a timeout (in seconds) for the task list override. When this parameter is missing, the task list override is permanent. This parameter makes it possible to temporarily override the task list. If a decision task scheduled on the override task list is not started within the timeout, the decision task will time out. Amazon SWF will revert the override and schedule a new decision task to the original task list.</p>
    #            <p>If a decision task scheduled on the override task list is started within the timeout, but not completed within the start-to-close timeout, Amazon SWF will also revert the override and schedule a new decision task to the original task list.</p>
    #   @return [String]
    class RespondDecisionTaskCompletedInput < Struct.new(
      :task_token,
      :decisions,
      :execution_context,
      :task_list,
      :task_list_schedule_to_start_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>ScheduleActivityTask</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with the
    #   appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>activityType.name</code> – String constraint. The key is <code>swf:activityType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>activityType.version</code> – String constraint. The key is <code>swf:activityType.version</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #   <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #           in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute activity_type
    #   <p>
    #            The type of the activity task to schedule.</p>
    #   @return [Types::ActivityType]
    # @!attribute activity_id
    #   <p>
    #            The <code>activityId</code> of the activity task.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute control
    #   <p>Data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the activity.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input provided to the activity task.</p>
    #   @return [String]
    # @!attribute schedule_to_close_timeout
    #   <p>The maximum duration for this activity task.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>A schedule-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-close timeout was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute task_list
    #   <p>If set, specifies the name of the task list in which to schedule the activity task. If not specified, the
    #         <code>defaultTaskList</code> registered with the activity type is used.</p>
    #            <note>
    #               <p>A task list for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default task list was specified at registration time then a fault is returned.</p>
    #            </note>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>
    #            If set, specifies the priority with which the activity task is to be assigned to a worker. This
    #         overrides the defaultTaskPriority specified when registering the activity type using <a>RegisterActivityType</a>.
    #         Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a>  in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute schedule_to_start_timeout
    #   <p>
    #            If set, specifies the maximum duration the activity task can wait to be assigned to a worker.
    #         This overrides the default schedule-to-start timeout specified when registering the activity type using
    #         <a>RegisterActivityType</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>A schedule-to-start timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-start timeout was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute start_to_close_timeout
    #   <p>If set, specifies the maximum duration a worker may take to process this activity task. This overrides the
    #         default start-to-close timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>A start-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default start-to-close timeout was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute heartbeat_timeout
    #   <p>If set, specifies the maximum time before which a worker processing a task of this type must report progress by
    #         calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed
    #         out. If the worker subsequently attempts to record a heartbeat or returns a result, it is ignored. This
    #         overrides the default heartbeat timeout specified when registering the activity type using
    #         <a>RegisterActivityType</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
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
      :heartbeat_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>ScheduleActivityTaskFailed</code> event.</p>
    # @!attribute activity_type
    #   <p>The activity type provided in the <code>ScheduleActivityTask</code> decision that failed.</p>
    #   @return [Types::ActivityType]
    # @!attribute activity_id
    #   <p>The activityId provided in the <code>ScheduleActivityTask</code> decision that failed.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #     because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the
    #         scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class ScheduleActivityTaskFailedEventAttributes < Struct.new(
      :activity_type,
      :activity_id,
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Decision attributes specified in <code>scheduleLambdaFunctionDecisionAttributes</code> within the list of
    #       decisions <code>decisions</code> passed to <a>RespondDecisionTaskCompleted</a>.</p>
    # @!attribute id
    #   <p>A string that identifies the Lambda function execution in the event history.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name, or ARN, of the Lambda function to schedule.</p>
    #   @return [String]
    # @!attribute control
    #   <p>The data attached to the event that the decider can use in subsequent workflow tasks.
    #         This data isn't sent to the Lambda task.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The optional input data to be supplied to the Lambda function.</p>
    #   @return [String]
    # @!attribute start_to_close_timeout
    #   <p>The timeout value, in seconds, after which the Lambda function is considered to be
    #               failed once it has started. This can be any integer from 1-900 (1s-15m).</p>
    #            <p>If no value is supplied, then a default value of 900s is assumed.</p>
    #   @return [String]
    class ScheduleLambdaFunctionDecisionAttributes < Struct.new(
      :id,
      :name,
      :control,
      :input,
      :start_to_close_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't
    #       set for other event types.</p>
    # @!attribute id
    #   <p>The ID provided in the <code>ScheduleLambdaFunction</code> decision that failed.
    #       </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Lambda function.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision
    #           failed because it lacked sufficient permissions. For details and example IAM policies, see
    #             <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
    #             IAM to Manage Access to Amazon SWF Workflows</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>LambdaFunctionCompleted</code> event corresponding to the decision
    #         that resulted in scheduling this Lambda task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    class ScheduleLambdaFunctionFailedEventAttributes < Struct.new(
      :id,
      :name,
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute workflow_id
    #   <p>
    #            The <code>workflowId</code> of the workflow execution to be signaled.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The <code>runId</code> of the workflow execution to be signaled.</p>
    #   @return [String]
    # @!attribute signal_name
    #   <p>
    #            The name of the signal.The target workflow execution uses the signal name and input to
    #         process the signal.</p>
    #   @return [String]
    # @!attribute input
    #   <p>
    #            The input data to be provided with the signal. The target workflow execution uses the signal
    #         name and input data to process the signal.</p>
    #   @return [String]
    # @!attribute control
    #   <p>The data attached to the event that can be used by the decider in subsequent decision tasks.</p>
    #   @return [String]
    class SignalExternalWorkflowExecutionDecisionAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :signal_name,
      :input,
      :control,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>
    # @!attribute workflow_id
    #   <p>The <code>workflowId</code> of the external workflow execution that the signal was being delivered to.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The <code>runId</code> of the external workflow execution that the signal was being delivered to.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #     because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute initiated_event_id
    #   <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute control
    #   <p>The data attached to the event that the decider can use in subsequent workflow tasks.
    #         This data isn't sent to the workflow execution.</p>
    #   @return [String]
    class SignalExternalWorkflowExecutionFailedEventAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :cause,
      :initiated_event_id,
      :decision_task_completed_event_id,
      :control,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>
    # @!attribute workflow_id
    #   <p>The <code>workflowId</code> of the external workflow execution.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The <code>runId</code> of the external workflow execution to send the signal to.</p>
    #   @return [String]
    # @!attribute signal_name
    #   <p>The name of the signal.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input provided to the signal.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute control
    #   <p>Data attached to the event that can be used by the decider in subsequent decision tasks.</p>
    #   @return [String]
    class SignalExternalWorkflowExecutionInitiatedEventAttributes < Struct.new(
      :workflow_id,
      :run_id,
      :signal_name,
      :input,
      :decision_task_completed_event_id,
      :control,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain containing the workflow execution to signal.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The workflowId of the workflow execution to signal.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The runId of the workflow execution to signal.</p>
    #   @return [String]
    # @!attribute signal_name
    #   <p>The name of the signal. This name must be meaningful to the target workflow.</p>
    #   @return [String]
    # @!attribute input
    #   <p>Data to attach to the <code>WorkflowExecutionSignaled</code> event in the target
    #         workflow execution's history.</p>
    #   @return [String]
    class SignalWorkflowExecutionInput < Struct.new(
      :domain,
      :workflow_id,
      :run_id,
      :signal_name,
      :input,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>StartChildWorkflowExecution</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with the
    #              appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.N</code> – The key is "swf:tagList.N" where N is the tag number from 0 to 4,
    #             inclusive.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code> – String constraint. The key is <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute workflow_type
    #   <p>
    #            The type of the workflow execution to be started.</p>
    #   @return [Types::WorkflowType]
    # @!attribute workflow_id
    #   <p>
    #            The <code>workflowId</code> of the workflow execution.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute control
    #   <p>The data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the child workflow execution.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input to be provided to the workflow execution.</p>
    #   @return [String]
    # @!attribute execution_start_to_close_timeout
    #   <p>The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default execution start-to-close timeout was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute task_list
    #   <p>The name of the task list to be used for decision tasks of the child workflow execution.</p>
    #            <note>
    #               <p>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault is returned.</p>
    #            </note>
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>
    #            A task priority that, if set, specifies the priority for a decision task of this workflow
    #         execution. This overrides the defaultTaskPriority specified when registering the workflow type.
    #         Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute task_start_to_close_timeout
    #   <p>Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the
    #         <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using
    #         <a>RegisterWorkflowType</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute child_policy
    #   <p>
    #            If set, specifies the policy to use for the child workflow executions if the workflow execution
    #         being started is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an
    #         expired timeout. This policy overrides the default child policy specified when registering the workflow type using
    #         <a>RegisterWorkflowType</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute tag_list
    #   <p>The list of tags to associate with the child workflow execution. A maximum of 5 tags can be specified. You can
    #         list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or
    #         <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>
    #   @return [Array<String>]
    # @!attribute lambda_role
    #   <p>The IAM role attached to the child workflow execution.</p>
    #   @return [String]
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
      :lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>
    # @!attribute workflow_type
    #   <p>The workflow type provided in the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> that failed.</p>
    #   @return [Types::WorkflowType]
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>When <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision fails because it lacks sufficient permissions. 
    #                 For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">
    #                     Using IAM to Manage Access to Amazon SWF Workflows</a>  in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The <code>workflowId</code> of the child workflow execution.</p>
    #   @return [String]
    # @!attribute initiated_event_id
    #   <p>When the <code>cause</code> is <code>WORKFLOW_ALREADY_RUNNING</code>, <code>initiatedEventId</code> is the ID of the <code>StartChildWorkflowExecutionInitiated</code>
    #             event that corresponds to the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to start the workflow execution. You can use this information to diagnose
    #             problems by tracing back the chain of events leading up to this event.</p>
    #            <p>When the <code>cause</code> isn't <code>WORKFLOW_ALREADY_RUNNING</code>, <code>initiatedEventId</code> is set to <code>0</code> because the 
    #             <code>StartChildWorkflowExecutionInitiated</code> event doesn't exist.</p>
    #   @return [Integer]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events.</p>
    #   @return [Integer]
    # @!attribute control
    #   <p>The data attached to the event that the decider can use in subsequent workflow tasks.
    #         This data isn't sent to the child workflow execution.</p>
    #   @return [String]
    class StartChildWorkflowExecutionFailedEventAttributes < Struct.new(
      :workflow_type,
      :cause,
      :workflow_id,
      :initiated_event_id,
      :decision_task_completed_event_id,
      :control,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:initiated_event_id] = 0 unless options.key?(:initiated_event_id)
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>
    # @!attribute workflow_id
    #   <p>The <code>workflowId</code> of the child workflow execution.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The type of the child workflow execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute control
    #   <p>Data attached to the event that can be used by the decider in subsequent decision tasks. This data isn't sent to the activity.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The inputs provided to the child workflow execution.</p>
    #   @return [String]
    # @!attribute execution_start_to_close_timeout
    #   <p>The maximum duration for the child workflow execution. If the workflow execution isn't closed within this duration, it is timed out and force-terminated.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>The name of the task list used for the decision tasks of the child workflow execution.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>
    #            The priority assigned for the decision tasks for this workflow execution.
    #         Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to request this child workflow execution. This
    #         information can be useful for diagnosing problems by tracing back the cause of events.</p>
    #   @return [Integer]
    # @!attribute child_policy
    #   <p>The policy to use for the child workflow executions if this execution gets terminated by explicitly calling the
    #         <a>TerminateWorkflowExecution</a> action or due to an expired timeout.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute task_start_to_close_timeout
    #   <p>The maximum duration allowed for the decision tasks for this workflow execution.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute tag_list
    #   <p>The list of tags to associated with the child workflow execution.</p>
    #   @return [Array<String>]
    # @!attribute lambda_role
    #   <p>The IAM role to attach to the child workflow execution.</p>
    #   @return [String]
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
      :lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set
    #       for other event types.</p>
    # @!attribute scheduled_event_id
    #   <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this
    #         activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute cause
    #   <p>The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision
    #           failed because the IAM role attached to the execution lacked sufficient permissions. For
    #           details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">Lambda Tasks</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute message
    #   <p>A description that can help diagnose the cause of the fault.</p>
    #   @return [String]
    class StartLambdaFunctionFailedEventAttributes < Struct.new(
      :scheduled_event_id,
      :cause,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scheduled_event_id] = 0 unless options.key?(:scheduled_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>StartTimer</code> decision.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to only
    #   specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #   parameter values fall outside the specified constraints, the action fails. The associated event attribute's
    #           <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see
    #           <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @!attribute timer_id
    #   <p>
    #            The unique ID of the timer.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute control
    #   <p>The data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
    #   @return [String]
    # @!attribute start_to_fire_timeout
    #   <p>
    #            The duration to wait before firing the timer.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>.</p>
    #   @return [String]
    class StartTimerDecisionAttributes < Struct.new(
      :timer_id,
      :control,
      :start_to_fire_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>StartTimerFailed</code> event.</p>
    # @!attribute timer_id
    #   <p>The timerId provided in the <code>StartTimer</code> decision that failed.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p>
    #            <note>
    #               <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed
    #     because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>
    #             in the <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class StartTimerFailedEventAttributes < Struct.new(
      :timer_id,
      :cause,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # @!attribute domain
    #   <p>The name of the domain in which the workflow execution is created.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The user defined identifier associated with the workflow execution. You can use this to
    #         associate a custom identifier with the workflow execution. You may specify the same identifier
    #         if a workflow execution is logically a <i>restart</i> of a previous execution.
    #         You cannot have two open workflow executions with the same <code>workflowId</code> at the same
    #         time within the same domain.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The type of the workflow to start.</p>
    #   @return [Types::WorkflowType]
    # @!attribute task_list
    #   <p>The task list to use for the decision tasks generated for this workflow execution. This
    #         overrides the <code>defaultTaskList</code> specified when registering the workflow
    #         type.</p>
    #            <note>
    #               <p>A task list for this workflow execution must be specified either as a default for the
    #           workflow type or through this parameter. If neither this parameter is set nor a default task
    #           list was specified at registration time then a fault is returned.</p>
    #            </note>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>The task priority to use for this workflow execution. This overrides any default
    #         priority that was assigned when the workflow type was registered. If not set, then the default
    #         task priority for the workflow type is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The input for the workflow execution. This is a free form string which should be
    #         meaningful to the workflow you are starting. This <code>input</code> is made available to the
    #         new workflow execution in the <code>WorkflowExecutionStarted</code> history event.</p>
    #   @return [String]
    # @!attribute execution_start_to_close_timeout
    #   <p>The total duration for this workflow execution. This overrides the
    #         defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p>
    #            <p>The duration is specified in seconds; an integer greater than or equal to
    #           <code>0</code>. Exceeding this limit causes the workflow execution to time out. Unlike some
    #         of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for this
    #         timeout; there is a one-year max limit on the time that a workflow execution can
    #         run.</p>
    #            <note>
    #               <p>An execution start-to-close timeout must be specified either through this parameter
    #           or as a default when the workflow type is registered. If neither this parameter nor a
    #           default execution start-to-close timeout is specified, a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute tag_list
    #   <p>The list of tags to associate with the workflow execution. You can specify a maximum of
    #         5 tags. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and
    #         specifying a <a>TagFilter</a>.</p>
    #   @return [Array<String>]
    # @!attribute task_start_to_close_timeout
    #   <p>Specifies the maximum duration of decision tasks for this workflow execution. This
    #         parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering
    #         the workflow type using <a>RegisterWorkflowType</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>A task start-to-close timeout for this workflow execution must be specified either as
    #           a default for the workflow type or through this parameter. If neither this parameter is set
    #           nor a default task start-to-close timeout was specified at registration time then a fault is
    #           returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute child_policy
    #   <p>If set, specifies the policy to use for the child workflow executions of this workflow
    #         execution if it is terminated, by calling the <a>TerminateWorkflowExecution</a>
    #         action explicitly or due to an expired timeout. This policy overrides the default child policy
    #         specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>A child policy for this workflow execution must be specified either as a default for
    #           the workflow type or through this parameter. If neither this parameter is set nor a default
    #           child policy was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    # @!attribute lambda_role
    #   <p>The IAM role to attach to this workflow execution.</p>
    #            <note>
    #               <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
    #           don't attach an IAM role, any attempt to schedule a Lambda task fails. This results in a
    #             <code>ScheduleLambdaFunctionFailed</code> history event. For more information, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
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
      :lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the <code>runId</code> of a workflow execution.</p>
    # @!attribute run_id
    #   <p>The <code>runId</code> of a workflow execution. This ID is generated by the service and
    #         can be used to uniquely identify the workflow execution within a domain.</p>
    #   @return [String]
    class StartWorkflowExecutionOutput < Struct.new(
      :run_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used to filter the workflow executions in visibility APIs based on a tag.</p>
    # @!attribute tag
    #   <p>
    #            Specifies the tag that must be associated with the execution for it to meet the filter
    #         criteria.</p>
    #            <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>
    #   @return [String]
    class TagFilter < Struct.new(
      :tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to add to a domain. </p>
    #            <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>
    #   @return [Array<Types::ResourceTag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a task list.</p>
    # @!attribute name
    #   <p>The name of the task list.</p>
    #   @return [String]
    class TaskList < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The domain of the workflow execution to terminate.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The workflowId of the workflow execution to terminate.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The runId of the workflow execution to terminate.</p>
    #   @return [String]
    # @!attribute reason
    #   <p> A descriptive reason for terminating the workflow execution.</p>
    #   @return [String]
    # @!attribute details
    #   <p> Details for terminating the workflow execution.</p>
    #   @return [String]
    # @!attribute child_policy
    #   <p>If set, specifies the policy to use for the child workflow executions of the workflow
    #         execution being terminated. This policy overrides the child policy specified for the workflow
    #         execution at registration time or when starting the execution.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>A child policy for this workflow execution must be specified either as a default for
    #           the workflow type or through this parameter. If neither this parameter is set nor a default
    #           child policy was specified at registration time then a fault is returned.</p>
    #            </note>
    #   @return [String]
    class TerminateWorkflowExecutionInput < Struct.new(
      :domain,
      :workflow_id,
      :run_id,
      :reason,
      :details,
      :child_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Provides the details of the <code>TimerCanceled</code> event.
    #    </p>
    # @!attribute timer_id
    #   <p>The unique ID of the timer that was canceled.</p>
    #   @return [String]
    # @!attribute started_event_id
    #   <p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class TimerCanceledEventAttributes < Struct.new(
      :timer_id,
      :started_event_id,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>TimerFired</code> event.</p>
    # @!attribute timer_id
    #   <p>The unique ID of the timer that fired.</p>
    #   @return [String]
    # @!attribute started_event_id
    #   <p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started.
    #         This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class TimerFiredEventAttributes < Struct.new(
      :timer_id,
      :started_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:started_event_id] = 0 unless options.key?(:started_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>TimerStarted</code> event.</p>
    # @!attribute timer_id
    #   <p>The unique ID of the timer that was started.</p>
    #   @return [String]
    # @!attribute control
    #   <p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
    #   @return [String]
    # @!attribute start_to_fire_timeout
    #   <p>The duration of time after which the timer fires.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class TimerStartedEventAttributes < Struct.new(
      :timer_id,
      :control,
      :start_to_fire_timeout,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>You've exceeded the number of tags allowed for a domain.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the type already exists in the specified domain. You may get this fault if you are registering a type that is either already registered or deprecated, or if you undeprecate a type that is currently registered.</p>
    # @!attribute message
    #   <p>A description that may help with diagnosing the cause of the fault.</p>
    #   @return [String]
    class TypeAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned when the specified activity or workflow type was already deprecated.</p>
    # @!attribute message
    #   <p>A description that may help with diagnosing the cause of the fault.</p>
    #   @return [String]
    class TypeDeprecatedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned when the resource type has not been deprecated.</p>
    # @!attribute message
    #   @return [String]
    class TypeNotDeprecatedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain of the deprecated activity type.</p>
    #   @return [String]
    # @!attribute activity_type
    #   <p>The activity type to undeprecate.</p>
    #   @return [Types::ActivityType]
    class UndeprecateActivityTypeInput < Struct.new(
      :domain,
      :activity_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the domain of the deprecated workflow type.</p>
    #   @return [String]
    class UndeprecateDomainInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain of the deprecated workflow type.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The name of the domain of the deprecated workflow type.</p>
    #   @return [Types::WorkflowType]
    class UndeprecateWorkflowTypeInput < Struct.new(
      :domain,
      :workflow_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.</p>
    # @!attribute message
    #   <p>A description that may help with diagnosing the cause of the fault.</p>
    #   @return [String]
    class UnknownResourceFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tags to remove from the Amazon SWF domain.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a workflow execution.</p>
    # @!attribute workflow_id
    #   <p>The user defined identifier associated with the workflow execution.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>A system-generated unique identifier for the workflow execution.</p>
    #   @return [String]
    class WorkflowExecution < Struct.new(
      :workflow_id,
      :run_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned by <a>StartWorkflowExecution</a> when an open execution with the same workflowId is already running in
    #       the specified domain.</p>
    # @!attribute message
    #   <p>A description that may help with diagnosing the cause of the fault.</p>
    #   @return [String]
    class WorkflowExecutionAlreadyStartedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>WorkflowExecutionCancelRequested</code> event.</p>
    # @!attribute external_workflow_execution
    #   <p>The external workflow execution for which the cancellation was requested.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute external_initiated_event_id
    #   <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this workflow execution.The source event
    #         with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute cause
    #   <p>If set, indicates that the request to cancel the workflow execution was automatically generated, and specifies the cause. This happens if the parent workflow execution times out or is terminated, and the child policy is set to cancel child executions.</p>
    #   @return [String]
    class WorkflowExecutionCancelRequestedEventAttributes < Struct.new(
      :external_workflow_execution,
      :external_initiated_event_id,
      :cause,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:external_initiated_event_id] = 0 unless options.key?(:external_initiated_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>WorkflowExecutionCanceled</code> event.</p>
    # @!attribute details
    #   <p>The details of the cancellation.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class WorkflowExecutionCanceledEventAttributes < Struct.new(
      :details,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>WorkflowExecutionCompleted</code> event.</p>
    # @!attribute result
    #   <p>The result produced by the workflow execution upon successful completion.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class WorkflowExecutionCompletedEventAttributes < Struct.new(
      :result,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>
    # @!attribute task_start_to_close_timeout
    #   <p>The maximum duration allowed for decision tasks for this workflow execution.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute execution_start_to_close_timeout
    #   <p>The total duration for this workflow execution.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>The task list used for the decision tasks generated for this workflow execution.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>The priority assigned to decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute child_policy
    #   <p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the
    #         <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lambda_role
    #   <p>The IAM role attached to the child workflow execution.</p>
    #   @return [String]
    class WorkflowExecutionConfiguration < Struct.new(
      :task_start_to_close_timeout,
      :execution_start_to_close_timeout,
      :task_list,
      :task_priority,
      :child_policy,
      :lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>
    # @!attribute input
    #   <p>The input provided to the new workflow execution.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute new_execution_run_id
    #   <p>The <code>runId</code> of the new workflow execution.</p>
    #   @return [String]
    # @!attribute execution_start_to_close_timeout
    #   <p>The total duration allowed for the new workflow execution.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute task_list
    #   <p>The task list to use for the decisions of the new (continued) workflow
    #         execution.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>The priority of the task to use for the decisions of the new (continued) workflow
    #         execution.</p>
    #   @return [String]
    # @!attribute task_start_to_close_timeout
    #   <p>The maximum duration of decision tasks for the new workflow execution.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute child_policy
    #   <p>The policy to use for the child workflow executions of the new execution if it is terminated by calling the
    #         <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tag_list
    #   <p>The list of tags associated with the new workflow execution.</p>
    #   @return [Array<String>]
    # @!attribute workflow_type
    #   <p>The workflow type of this execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute lambda_role
    #   <p>The IAM role to attach to the new (continued) workflow execution.</p>
    #   @return [String]
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
      :lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>WorkflowExecutionFailed</code> event.</p>
    # @!attribute reason
    #   <p>The descriptive reason provided for the failure.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details of the failure.</p>
    #   @return [String]
    # @!attribute decision_task_completed_event_id
    #   <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    #         <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    class WorkflowExecutionFailedEventAttributes < Struct.new(
      :reason,
      :details,
      :decision_task_completed_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:decision_task_completed_event_id] = 0 unless options.key?(:decision_task_completed_event_id)
        super
      end
    end

    # <p>Used to filter the workflow executions in visibility APIs by their <code>workflowId</code>.</p>
    # @!attribute workflow_id
    #   <p>The workflowId to pass of match the criteria of this filter.</p>
    #   @return [String]
    class WorkflowExecutionFilter < Struct.new(
      :workflow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a workflow execution.</p>
    # @!attribute execution
    #   <p>The workflow execution this information is about.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute workflow_type
    #   <p>The type of the workflow execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute start_timestamp
    #   <p>The time when the execution was started.</p>
    #   @return [Time]
    # @!attribute close_timestamp
    #   <p>The time when the workflow execution was closed. Set only if the execution status is CLOSED.</p>
    #   @return [Time]
    # @!attribute execution_status
    #   <p>The current status of the execution.</p>
    #   @return [String]
    # @!attribute close_status
    #   <p>If the execution status is closed then this specifies how the execution was closed:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> – the execution was successfully completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELED</code> – the execution was canceled.Cancellation allows the implementation to gracefully clean
    #           up before the execution is closed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATED</code> – the execution was force terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – the execution failed to complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMED_OUT</code> – the execution did not complete in the alloted time and was automatically timed
    #           out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTINUED_AS_NEW</code> – the execution is logically continued. This means the current execution was
    #           completed and a new execution was started to carry on the workflow.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute parent
    #   <p>If this workflow execution is a child of another execution then contains the workflow execution that started this execution.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute tag_list
    #   <p>The list of tags associated with the workflow execution. Tags can be used to identify and list workflow executions of interest through the visibility APIs. A workflow execution can have a maximum of 5 tags.</p>
    #   @return [Array<String>]
    # @!attribute cancel_requested
    #   <p>Set to true if a cancellation is requested for this workflow execution.</p>
    #   @return [Boolean]
    class WorkflowExecutionInfo < Struct.new(
      :execution,
      :workflow_type,
      :start_timestamp,
      :close_timestamp,
      :execution_status,
      :close_status,
      :parent,
      :tag_list,
      :cancel_requested,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cancel_requested] = false unless options.key?(:cancel_requested)
        super
      end
    end

    # <p>Contains the counts of open tasks, child workflow executions and timers for a workflow execution.</p>
    # @!attribute open_activity_tasks
    #   <p>The count of activity tasks whose status is <code>OPEN</code>.</p>
    #   @return [Integer]
    # @!attribute open_decision_tasks
    #   <p>The count of decision tasks whose status is OPEN. A workflow execution can have at most one open decision task.</p>
    #   @return [Integer]
    # @!attribute open_timers
    #   <p>The count of timers started by this workflow execution that have not fired yet.</p>
    #   @return [Integer]
    # @!attribute open_child_workflow_executions
    #   <p>The count of child workflow executions whose status is <code>OPEN</code>.</p>
    #   @return [Integer]
    # @!attribute open_lambda_functions
    #   <p>The count of Lambda tasks whose status is <code>OPEN</code>.</p>
    #   @return [Integer]
    class WorkflowExecutionOpenCounts < Struct.new(
      :open_activity_tasks,
      :open_decision_tasks,
      :open_timers,
      :open_child_workflow_executions,
      :open_lambda_functions,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:open_activity_tasks] = 0 unless options.key?(:open_activity_tasks)
        options[:open_decision_tasks] = 0 unless options.key?(:open_decision_tasks)
        options[:open_timers] = 0 unless options.key?(:open_timers)
        options[:open_child_workflow_executions] = 0 unless options.key?(:open_child_workflow_executions)
        options[:open_lambda_functions] = 0 unless options.key?(:open_lambda_functions)
        super
      end
    end

    # <p>Provides the details of the <code>WorkflowExecutionSignaled</code> event.</p>
    # @!attribute signal_name
    #   <p>The name of the signal received. The decider can use the signal name and inputs to determine how to the process the signal.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The inputs provided with the signal. The decider can use the signal name and inputs to determine how to process the signal.</p>
    #   @return [String]
    # @!attribute external_workflow_execution
    #   <p>The workflow execution that sent the signal. This is set only of the signal was sent by another workflow execution.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute external_initiated_event_id
    #   <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>SignalExternalWorkflow</code> decision to signal this workflow execution.The source event with this ID can
    #         be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event. This field is set only if
    #         the signal was initiated by another workflow execution.</p>
    #   @return [Integer]
    class WorkflowExecutionSignaledEventAttributes < Struct.new(
      :signal_name,
      :input,
      :external_workflow_execution,
      :external_initiated_event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:external_initiated_event_id] = 0 unless options.key?(:external_initiated_event_id)
        super
      end
    end

    # <p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>
    # @!attribute input
    #   <p>The input provided to the workflow execution.</p>
    #   @return [String]
    # @!attribute execution_start_to_close_timeout
    #   <p>The maximum duration for this workflow execution.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute task_start_to_close_timeout
    #   <p>The maximum duration of decision tasks for this workflow type.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute child_policy
    #   <p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the
    #         <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute task_list
    #   <p>The name of the task list for scheduling the decision tasks for this workflow execution.</p>
    #   @return [Types::TaskList]
    # @!attribute task_priority
    #   <p>The priority of the decision tasks in the workflow execution.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The workflow type of this execution.</p>
    #   @return [Types::WorkflowType]
    # @!attribute tag_list
    #   <p>The list of tags associated with this workflow execution. An execution can have up to 5 tags.</p>
    #   @return [Array<String>]
    # @!attribute continued_execution_run_id
    #   <p>If this workflow execution was started due to a <code>ContinueAsNewWorkflowExecution</code> decision, then it
    #         contains the <code>runId</code> of the previous workflow execution that was closed and continued as this
    #         execution.</p>
    #   @return [String]
    # @!attribute parent_workflow_execution
    #   <p>The source workflow execution that started this workflow execution. The member isn't set if the workflow execution was not started by a workflow.</p>
    #   @return [Types::WorkflowExecution]
    # @!attribute parent_initiated_event_id
    #   <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the
    #         <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a> to start this workflow execution. The source event with
    #         this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of
    #     events leading up to this event.</p>
    #   @return [Integer]
    # @!attribute lambda_role
    #   <p>The IAM role attached to the workflow execution.</p>
    #   @return [String]
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
      :lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:parent_initiated_event_id] = 0 unless options.key?(:parent_initiated_event_id)
        super
      end
    end

    # <p>Provides the details of the <code>WorkflowExecutionTerminated</code> event.</p>
    # @!attribute reason
    #   <p>The reason provided for the termination.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details provided for the termination.</p>
    #   @return [String]
    # @!attribute child_policy
    #   <p>The policy used for the child workflow executions of this workflow execution.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute cause
    #   <p>If set, indicates that the workflow execution was automatically terminated, and specifies the cause. This happens if the parent workflow execution times out or is terminated and the child policy is set to terminate child executions.</p>
    #   @return [String]
    class WorkflowExecutionTerminatedEventAttributes < Struct.new(
      :reason,
      :details,
      :child_policy,
      :cause,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details of the <code>WorkflowExecutionTimedOut</code> event.</p>
    # @!attribute timeout_type
    #   <p>The type of timeout that caused this event.</p>
    #   @return [String]
    # @!attribute child_policy
    #   <p>The policy used for the child workflow executions of this workflow execution.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class WorkflowExecutionTimedOutEventAttributes < Struct.new(
      :timeout_type,
      :child_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a workflow type.</p>
    # @!attribute name
    #   <p>
    #            The name of the workflow type.</p>
    #            <note>
    #               <p>The combination of workflow type name and version must be unique with in a domain.</p>
    #            </note>
    #   @return [String]
    # @!attribute version
    #   <p>
    #            The version of the workflow type.</p>
    #            <note>
    #               <p>The combination of workflow type name and version must be unique with in a domain.</p>
    #            </note>
    #   @return [String]
    class WorkflowType < Struct.new(
      :name,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings of a workflow type.</p>
    # @!attribute default_task_start_to_close_timeout
    #   <p>
    #            The default maximum duration, specified when registering the workflow type, that a decision task
    #         for executions of this workflow type might take before returning completion or failure. If the task doesn'tdo  close
    #         in the specified time then the task is automatically timed out and rescheduled. If the decider eventually reports
    #         a completion or failure, it is ignored. This default can be overridden when starting a workflow execution using
    #         the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_execution_start_to_close_timeout
    #   <p>
    #            The default maximum duration, specified when registering the workflow type, for executions of
    #         this workflow type. This default can be overridden when starting a workflow execution using the
    #         <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #   @return [String]
    # @!attribute default_task_list
    #   <p>
    #            The default task list, specified when registering the workflow type, for decisions tasks
    #         scheduled for workflow executions of this type. This default can be overridden when starting a workflow execution
    #         using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #   @return [Types::TaskList]
    # @!attribute default_task_priority
    #   <p>
    #            The default task priority, specified when registering the workflow type, for all decision tasks
    #         of this workflow type. This default can be overridden when starting a workflow execution using the
    #         <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p>
    #            <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    #     (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute default_child_policy
    #   <p>
    #            The default policy to use for the child workflow executions when a workflow execution of this
    #         type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired
    #         timeout. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a>
    #         action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #     execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    #     to take appropriate actions when it receives an execution history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute default_lambda_role
    #   <p>The default IAM role attached to this workflow type.</p>
    #            <note>
    #               <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
    #           don't specify an IAM role when starting this workflow type, the default Lambda role is
    #           attached to the execution. For more information, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    class WorkflowTypeConfiguration < Struct.new(
      :default_task_start_to_close_timeout,
      :default_execution_start_to_close_timeout,
      :default_task_list,
      :default_task_priority,
      :default_child_policy,
      :default_lambda_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.</p>
    # @!attribute name
    #   <p>
    #            Name of the workflow type.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version of the workflow type.</p>
    #   @return [String]
    class WorkflowTypeFilter < Struct.new(
      :name,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a workflow type.</p>
    # @!attribute workflow_type
    #   <p>The workflow type this information is about.</p>
    #   @return [Types::WorkflowType]
    # @!attribute status
    #   <p>The current status of the workflow type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the type registered through <a>RegisterWorkflowType</a>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when this type was registered.</p>
    #   @return [Time]
    # @!attribute deprecation_date
    #   <p>If the type is in deprecated state, then it is set to the date when the type was deprecated.</p>
    #   @return [Time]
    class WorkflowTypeInfo < Struct.new(
      :workflow_type,
      :status,
      :description,
      :creation_date,
      :deprecation_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
