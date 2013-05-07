# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class SimpleWorkflow

    # Client class for Amazon Simple Workflow Service (SWF).
    class Client < Core::JSONClient

      # @api private
      CACHEABLE_REQUESTS = Set[
        :count_pending_activity_tasks,
        :count_pending_decision_tasks,
        :count_closed_workflow_executions,
        :count_open_workflow_executions,
        :describe_activity_type,
        :describe_domain,
        :describe_workflow_execution,
        :describe_workflow_type,
        :get_workflow_execution_history,
        #:poll_for_decision_task, # see below for expanded logic
        :list_activity_types,
        :list_domains,
        :list_closed_workfow_executions,
        :list_open_workfow_executions,
        :list_workfow_types,
      ]

      # client methods #

      # @!method count_closed_workflow_executions(options = {})
      # Calls the CountClosedWorkflowExecutions API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:start_time_filter` - (Hash)
      #     * `:oldest_date` - *required* - (Integer<unix timestamp>)
      #     * `:latest_date` - (Integer<unix timestamp>)
      #   * `:close_time_filter` - (Hash)
      #     * `:oldest_date` - *required* - (Integer<unix timestamp>)
      #     * `:latest_date` - (Integer<unix timestamp>)
      #   * `:execution_filter` - (Hash)
      #     * `:workflow_id` - *required* - (String)
      #   * `:type_filter` - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - (String)
      #   * `:tag_filter` - (Hash)
      #     * `:tag` - *required* - (String)
      #   * `:close_status_filter` - (Hash)
      #     * `:status` - *required* - (String) Valid values include:
      #       * `COMPLETED`
      #       * `FAILED`
      #       * `CANCELED`
      #       * `TERMINATED`
      #       * `CONTINUED_AS_NEW`
      #       * `TIMED_OUT`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `count` - (Integer)
      #   * `truncated` - (Boolean)

      # @!method count_open_workflow_executions(options = {})
      # Calls the CountOpenWorkflowExecutions API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:start_time_filter` - *required* - (Hash)
      #     * `:oldest_date` - *required* - (Integer<unix timestamp>)
      #     * `:latest_date` - (Integer<unix timestamp>)
      #   * `:type_filter` - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - (String)
      #   * `:tag_filter` - (Hash)
      #     * `:tag` - *required* - (String)
      #   * `:execution_filter` - (Hash)
      #     * `:workflow_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `count` - (Integer)
      #   * `truncated` - (Boolean)

      # @!method count_pending_activity_tasks(options = {})
      # Calls the CountPendingActivityTasks API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:task_list` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `count` - (Integer)
      #   * `truncated` - (Boolean)

      # @!method count_pending_decision_tasks(options = {})
      # Calls the CountPendingDecisionTasks API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:task_list` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `count` - (Integer)
      #   * `truncated` - (Boolean)

      # @!method deprecate_activity_type(options = {})
      # Calls the DeprecateActivityType API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:activity_type` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - *required* - (String)
      # @return [Core::Response]

      # @!method deprecate_domain(options = {})
      # Calls the DeprecateDomain API operation.
      # @param [Hash] options
      #   * `:name` - *required* - (String)
      # @return [Core::Response]

      # @!method deprecate_workflow_type(options = {})
      # Calls the DeprecateWorkflowType API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:workflow_type` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - *required* - (String)
      # @return [Core::Response]

      # @!method describe_activity_type(options = {})
      # Calls the DescribeActivityType API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:activity_type` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `typeInfo` - (Hash)
      #     * `activityType` - (Hash)
      #       * `name` - (String)
      #       * `version` - (String)
      #     * `status` - (String)
      #     * `description` - (String)
      #     * `creationDate` - (Time)
      #     * `deprecationDate` - (Time)
      #   * `configuration` - (Hash)
      #     * `defaultTaskStartToCloseTimeout` - (String)
      #     * `defaultTaskHeartbeatTimeout` - (String)
      #     * `defaultTaskList` - (Hash)
      #       * `name` - (String)
      #     * `defaultTaskScheduleToStartTimeout` - (String)
      #     * `defaultTaskScheduleToCloseTimeout` - (String)

      # @!method describe_domain(options = {})
      # Calls the DescribeDomain API operation.
      # @param [Hash] options
      #   * `:name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `domainInfo` - (Hash)
      #     * `name` - (String)
      #     * `status` - (String)
      #     * `description` - (String)
      #   * `configuration` - (Hash)
      #     * `workflowExecutionRetentionPeriodInDays` - (String)

      # @!method describe_workflow_execution(options = {})
      # Calls the DescribeWorkflowExecution API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:execution` - *required* - (Hash)
      #     * `:workflow_id` - *required* - (String)
      #     * `:run_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `executionInfo` - (Hash)
      #     * `execution` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #     * `workflowType` - (Hash)
      #       * `name` - (String)
      #       * `version` - (String)
      #     * `startTimestamp` - (Time)
      #     * `closeTimestamp` - (Time)
      #     * `executionStatus` - (String)
      #     * `closeStatus` - (String)
      #     * `parent` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #     * `tagList` - (Array<String>)
      #     * `cancelRequested` - (Boolean)
      #   * `executionConfiguration` - (Hash)
      #     * `taskStartToCloseTimeout` - (String)
      #     * `executionStartToCloseTimeout` - (String)
      #     * `taskList` - (Hash)
      #       * `name` - (String)
      #     * `childPolicy` - (String)
      #   * `openCounts` - (Hash)
      #     * `openActivityTasks` - (Integer)
      #     * `openDecisionTasks` - (Integer)
      #     * `openTimers` - (Integer)
      #     * `openChildWorkflowExecutions` - (Integer)
      #   * `latestActivityTaskTimestamp` - (Time)
      #   * `latestExecutionContext` - (String)

      # @!method describe_workflow_type(options = {})
      # Calls the DescribeWorkflowType API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:workflow_type` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `typeInfo` - (Hash)
      #     * `workflowType` - (Hash)
      #       * `name` - (String)
      #       * `version` - (String)
      #     * `status` - (String)
      #     * `description` - (String)
      #     * `creationDate` - (Time)
      #     * `deprecationDate` - (Time)
      #   * `configuration` - (Hash)
      #     * `defaultTaskStartToCloseTimeout` - (String)
      #     * `defaultExecutionStartToCloseTimeout` - (String)
      #     * `defaultTaskList` - (Hash)
      #       * `name` - (String)
      #     * `defaultChildPolicy` - (String)

      # @!method get_workflow_execution_history(options = {})
      # Calls the GetWorkflowExecutionHistory API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:execution` - *required* - (Hash)
      #     * `:workflow_id` - *required* - (String)
      #     * `:run_id` - *required* - (String)
      #   * `:next_page_token` - (String)
      #   * `:maximum_page_size` - (Integer)
      #   * `:reverse_order` - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `events` - (Array<Hash>)
      #     * `eventTimestamp` - (Time)
      #     * `eventType` - (String)
      #     * `eventId` - (Integer)
      #     * `workflowExecutionStartedEventAttributes` - (Hash)
      #       * `input` - (String)
      #       * `executionStartToCloseTimeout` - (String)
      #       * `taskStartToCloseTimeout` - (String)
      #       * `childPolicy` - (String)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `tagList` - (Array<String>)
      #       * `continuedExecutionRunId` - (String)
      #       * `parentWorkflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `parentInitiatedEventId` - (Integer)
      #     * `workflowExecutionCompletedEventAttributes` - (Hash)
      #       * `result` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `completeWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `workflowExecutionFailedEventAttributes` - (Hash)
      #       * `reason` - (String)
      #       * `details` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `failWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `workflowExecutionTimedOutEventAttributes` - (Hash)
      #       * `timeoutType` - (String)
      #       * `childPolicy` - (String)
      #     * `workflowExecutionCanceledEventAttributes` - (Hash)
      #       * `details` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `cancelWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `workflowExecutionContinuedAsNewEventAttributes` - (Hash)
      #       * `input` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `newExecutionRunId` - (String)
      #       * `executionStartToCloseTimeout` - (String)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `taskStartToCloseTimeout` - (String)
      #       * `childPolicy` - (String)
      #       * `tagList` - (Array<String>)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #     * `continueAsNewWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `workflowExecutionTerminatedEventAttributes` - (Hash)
      #       * `reason` - (String)
      #       * `details` - (String)
      #       * `childPolicy` - (String)
      #       * `cause` - (String)
      #     * `workflowExecutionCancelRequestedEventAttributes` - (Hash)
      #       * `externalWorkflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `externalInitiatedEventId` - (Integer)
      #       * `cause` - (String)
      #     * `decisionTaskScheduledEventAttributes` - (Hash)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `startToCloseTimeout` - (String)
      #     * `decisionTaskStartedEventAttributes` - (Hash)
      #       * `identity` - (String)
      #       * `scheduledEventId` - (Integer)
      #     * `decisionTaskCompletedEventAttributes` - (Hash)
      #       * `executionContext` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `decisionTaskTimedOutEventAttributes` - (Hash)
      #       * `timeoutType` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `activityTaskScheduledEventAttributes` - (Hash)
      #       * `activityType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `activityId` - (String)
      #       * `input` - (String)
      #       * `control` - (String)
      #       * `scheduleToStartTimeout` - (String)
      #       * `scheduleToCloseTimeout` - (String)
      #       * `startToCloseTimeout` - (String)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `heartbeatTimeout` - (String)
      #     * `activityTaskStartedEventAttributes` - (Hash)
      #       * `identity` - (String)
      #       * `scheduledEventId` - (Integer)
      #     * `activityTaskCompletedEventAttributes` - (Hash)
      #       * `result` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `activityTaskFailedEventAttributes` - (Hash)
      #       * `reason` - (String)
      #       * `details` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `activityTaskTimedOutEventAttributes` - (Hash)
      #       * `timeoutType` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #       * `details` - (String)
      #     * `activityTaskCanceledEventAttributes` - (Hash)
      #       * `details` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #       * `latestCancelRequestedEventId` - (Integer)
      #     * `activityTaskCancelRequestedEventAttributes` - (Hash)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `activityId` - (String)
      #     * `workflowExecutionSignaledEventAttributes` - (Hash)
      #       * `signalName` - (String)
      #       * `input` - (String)
      #       * `externalWorkflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `externalInitiatedEventId` - (Integer)
      #     * `markerRecordedEventAttributes` - (Hash)
      #       * `markerName` - (String)
      #       * `details` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `timerStartedEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `control` - (String)
      #       * `startToFireTimeout` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `timerFiredEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `startedEventId` - (Integer)
      #     * `timerCanceledEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `startedEventId` - (Integer)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `startChildWorkflowExecutionInitiatedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `control` - (String)
      #       * `input` - (String)
      #       * `executionStartToCloseTimeout` - (String)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `childPolicy` - (String)
      #       * `taskStartToCloseTimeout` - (String)
      #       * `tagList` - (Array<String>)
      #     * `childWorkflowExecutionStartedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `initiatedEventId` - (Integer)
      #     * `childWorkflowExecutionCompletedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `result` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `childWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `reason` - (String)
      #       * `details` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `childWorkflowExecutionTimedOutEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `timeoutType` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `childWorkflowExecutionCanceledEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `details` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `childWorkflowExecutionTerminatedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `signalExternalWorkflowExecutionInitiatedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #       * `signalName` - (String)
      #       * `input` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `control` - (String)
      #     * `externalWorkflowExecutionSignaledEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `initiatedEventId` - (Integer)
      #     * `signalExternalWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #       * `cause` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `externalWorkflowExecutionCancelRequestedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `initiatedEventId` - (Integer)
      #     * `requestCancelExternalWorkflowExecutionInitiatedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `control` - (String)
      #     * `requestCancelExternalWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #       * `cause` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `scheduleActivityTaskFailedEventAttributes` - (Hash)
      #       * `activityType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `activityId` - (String)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `requestCancelActivityTaskFailedEventAttributes` - (Hash)
      #       * `activityId` - (String)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `startTimerFailedEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `cancelTimerFailedEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `startChildWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `cause` - (String)
      #       * `workflowId` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #   * `nextPageToken` - (String)

      # @!method list_activity_types(options = {})
      # Calls the ListActivityTypes API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:name` - (String)
      #   * `:registration_status` - *required* - (String) Valid values
      #     include:
      #     * `REGISTERED`
      #     * `DEPRECATED`
      #   * `:next_page_token` - (String)
      #   * `:maximum_page_size` - (Integer)
      #   * `:reverse_order` - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `typeInfos` - (Array<Hash>)
      #     * `activityType` - (Hash)
      #       * `name` - (String)
      #       * `version` - (String)
      #     * `status` - (String)
      #     * `description` - (String)
      #     * `creationDate` - (Time)
      #     * `deprecationDate` - (Time)
      #   * `nextPageToken` - (String)

      # @!method list_closed_workflow_executions(options = {})
      # Calls the ListClosedWorkflowExecutions API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:start_time_filter` - (Hash)
      #     * `:oldest_date` - *required* - (Integer<unix timestamp>)
      #     * `:latest_date` - (Integer<unix timestamp>)
      #   * `:close_time_filter` - (Hash)
      #     * `:oldest_date` - *required* - (Integer<unix timestamp>)
      #     * `:latest_date` - (Integer<unix timestamp>)
      #   * `:execution_filter` - (Hash)
      #     * `:workflow_id` - *required* - (String)
      #   * `:close_status_filter` - (Hash)
      #     * `:status` - *required* - (String) Valid values include:
      #       * `COMPLETED`
      #       * `FAILED`
      #       * `CANCELED`
      #       * `TERMINATED`
      #       * `CONTINUED_AS_NEW`
      #       * `TIMED_OUT`
      #   * `:type_filter` - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - (String)
      #   * `:tag_filter` - (Hash)
      #     * `:tag` - *required* - (String)
      #   * `:next_page_token` - (String)
      #   * `:maximum_page_size` - (Integer)
      #   * `:reverse_order` - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `executionInfos` - (Array<Hash>)
      #     * `execution` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #     * `workflowType` - (Hash)
      #       * `name` - (String)
      #       * `version` - (String)
      #     * `startTimestamp` - (Time)
      #     * `closeTimestamp` - (Time)
      #     * `executionStatus` - (String)
      #     * `closeStatus` - (String)
      #     * `parent` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #     * `tagList` - (Array<String>)
      #     * `cancelRequested` - (Boolean)
      #   * `nextPageToken` - (String)

      # @!method list_domains(options = {})
      # Calls the ListDomains API operation.
      # @param [Hash] options
      #   * `:next_page_token` - (String)
      #   * `:registration_status` - *required* - (String) Valid values
      #     include:
      #     * `REGISTERED`
      #     * `DEPRECATED`
      #   * `:maximum_page_size` - (Integer)
      #   * `:reverse_order` - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `domainInfos` - (Array<Hash>)
      #     * `name` - (String)
      #     * `status` - (String)
      #     * `description` - (String)
      #   * `nextPageToken` - (String)

      # @!method list_open_workflow_executions(options = {})
      # Calls the ListOpenWorkflowExecutions API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:start_time_filter` - *required* - (Hash)
      #     * `:oldest_date` - *required* - (Integer<unix timestamp>)
      #     * `:latest_date` - (Integer<unix timestamp>)
      #   * `:type_filter` - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - (String)
      #   * `:tag_filter` - (Hash)
      #     * `:tag` - *required* - (String)
      #   * `:next_page_token` - (String)
      #   * `:maximum_page_size` - (Integer)
      #   * `:reverse_order` - (Boolean)
      #   * `:execution_filter` - (Hash)
      #     * `:workflow_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `executionInfos` - (Array<Hash>)
      #     * `execution` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #     * `workflowType` - (Hash)
      #       * `name` - (String)
      #       * `version` - (String)
      #     * `startTimestamp` - (Time)
      #     * `closeTimestamp` - (Time)
      #     * `executionStatus` - (String)
      #     * `closeStatus` - (String)
      #     * `parent` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #     * `tagList` - (Array<String>)
      #     * `cancelRequested` - (Boolean)
      #   * `nextPageToken` - (String)

      # @!method list_workflow_types(options = {})
      # Calls the ListWorkflowTypes API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:name` - (String)
      #   * `:registration_status` - *required* - (String) Valid values
      #     include:
      #     * `REGISTERED`
      #     * `DEPRECATED`
      #   * `:next_page_token` - (String)
      #   * `:maximum_page_size` - (Integer)
      #   * `:reverse_order` - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `typeInfos` - (Array<Hash>)
      #     * `workflowType` - (Hash)
      #       * `name` - (String)
      #       * `version` - (String)
      #     * `status` - (String)
      #     * `description` - (String)
      #     * `creationDate` - (Time)
      #     * `deprecationDate` - (Time)
      #   * `nextPageToken` - (String)

      # @!method poll_for_activity_task(options = {})
      # Calls the PollForActivityTask API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:task_list` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      #   * `:identity` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `taskToken` - (String)
      #   * `activityId` - (String)
      #   * `startedEventId` - (Integer)
      #   * `workflowExecution` - (Hash)
      #     * `workflowId` - (String)
      #     * `runId` - (String)
      #   * `activityType` - (Hash)
      #     * `name` - (String)
      #     * `version` - (String)
      #   * `input` - (String)

      # @!method poll_for_decision_task(options = {})
      # Calls the PollForDecisionTask API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:task_list` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      #   * `:identity` - (String)
      #   * `:next_page_token` - (String)
      #   * `:maximum_page_size` - (Integer)
      #   * `:reverse_order` - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `taskToken` - (String)
      #   * `startedEventId` - (Integer)
      #   * `workflowExecution` - (Hash)
      #     * `workflowId` - (String)
      #     * `runId` - (String)
      #   * `workflowType` - (Hash)
      #     * `name` - (String)
      #     * `version` - (String)
      #   * `events` - (Array<Hash>)
      #     * `eventTimestamp` - (Time)
      #     * `eventType` - (String)
      #     * `eventId` - (Integer)
      #     * `workflowExecutionStartedEventAttributes` - (Hash)
      #       * `input` - (String)
      #       * `executionStartToCloseTimeout` - (String)
      #       * `taskStartToCloseTimeout` - (String)
      #       * `childPolicy` - (String)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `tagList` - (Array<String>)
      #       * `continuedExecutionRunId` - (String)
      #       * `parentWorkflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `parentInitiatedEventId` - (Integer)
      #     * `workflowExecutionCompletedEventAttributes` - (Hash)
      #       * `result` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `completeWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `workflowExecutionFailedEventAttributes` - (Hash)
      #       * `reason` - (String)
      #       * `details` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `failWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `workflowExecutionTimedOutEventAttributes` - (Hash)
      #       * `timeoutType` - (String)
      #       * `childPolicy` - (String)
      #     * `workflowExecutionCanceledEventAttributes` - (Hash)
      #       * `details` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `cancelWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `workflowExecutionContinuedAsNewEventAttributes` - (Hash)
      #       * `input` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `newExecutionRunId` - (String)
      #       * `executionStartToCloseTimeout` - (String)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `taskStartToCloseTimeout` - (String)
      #       * `childPolicy` - (String)
      #       * `tagList` - (Array<String>)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #     * `continueAsNewWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `workflowExecutionTerminatedEventAttributes` - (Hash)
      #       * `reason` - (String)
      #       * `details` - (String)
      #       * `childPolicy` - (String)
      #       * `cause` - (String)
      #     * `workflowExecutionCancelRequestedEventAttributes` - (Hash)
      #       * `externalWorkflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `externalInitiatedEventId` - (Integer)
      #       * `cause` - (String)
      #     * `decisionTaskScheduledEventAttributes` - (Hash)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `startToCloseTimeout` - (String)
      #     * `decisionTaskStartedEventAttributes` - (Hash)
      #       * `identity` - (String)
      #       * `scheduledEventId` - (Integer)
      #     * `decisionTaskCompletedEventAttributes` - (Hash)
      #       * `executionContext` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `decisionTaskTimedOutEventAttributes` - (Hash)
      #       * `timeoutType` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `activityTaskScheduledEventAttributes` - (Hash)
      #       * `activityType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `activityId` - (String)
      #       * `input` - (String)
      #       * `control` - (String)
      #       * `scheduleToStartTimeout` - (String)
      #       * `scheduleToCloseTimeout` - (String)
      #       * `startToCloseTimeout` - (String)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `heartbeatTimeout` - (String)
      #     * `activityTaskStartedEventAttributes` - (Hash)
      #       * `identity` - (String)
      #       * `scheduledEventId` - (Integer)
      #     * `activityTaskCompletedEventAttributes` - (Hash)
      #       * `result` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `activityTaskFailedEventAttributes` - (Hash)
      #       * `reason` - (String)
      #       * `details` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `activityTaskTimedOutEventAttributes` - (Hash)
      #       * `timeoutType` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #       * `details` - (String)
      #     * `activityTaskCanceledEventAttributes` - (Hash)
      #       * `details` - (String)
      #       * `scheduledEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #       * `latestCancelRequestedEventId` - (Integer)
      #     * `activityTaskCancelRequestedEventAttributes` - (Hash)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `activityId` - (String)
      #     * `workflowExecutionSignaledEventAttributes` - (Hash)
      #       * `signalName` - (String)
      #       * `input` - (String)
      #       * `externalWorkflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `externalInitiatedEventId` - (Integer)
      #     * `markerRecordedEventAttributes` - (Hash)
      #       * `markerName` - (String)
      #       * `details` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `timerStartedEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `control` - (String)
      #       * `startToFireTimeout` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `timerFiredEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `startedEventId` - (Integer)
      #     * `timerCanceledEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `startedEventId` - (Integer)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `startChildWorkflowExecutionInitiatedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `control` - (String)
      #       * `input` - (String)
      #       * `executionStartToCloseTimeout` - (String)
      #       * `taskList` - (Hash)
      #         * `name` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `childPolicy` - (String)
      #       * `taskStartToCloseTimeout` - (String)
      #       * `tagList` - (Array<String>)
      #     * `childWorkflowExecutionStartedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `initiatedEventId` - (Integer)
      #     * `childWorkflowExecutionCompletedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `result` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `childWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `reason` - (String)
      #       * `details` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `childWorkflowExecutionTimedOutEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `timeoutType` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `childWorkflowExecutionCanceledEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `details` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `childWorkflowExecutionTerminatedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `startedEventId` - (Integer)
      #     * `signalExternalWorkflowExecutionInitiatedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #       * `signalName` - (String)
      #       * `input` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `control` - (String)
      #     * `externalWorkflowExecutionSignaledEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `initiatedEventId` - (Integer)
      #     * `signalExternalWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #       * `cause` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `externalWorkflowExecutionCancelRequestedEventAttributes` - (Hash)
      #       * `workflowExecution` - (Hash)
      #         * `workflowId` - (String)
      #         * `runId` - (String)
      #       * `initiatedEventId` - (Integer)
      #     * `requestCancelExternalWorkflowExecutionInitiatedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #       * `control` - (String)
      #     * `requestCancelExternalWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `workflowId` - (String)
      #       * `runId` - (String)
      #       * `cause` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `scheduleActivityTaskFailedEventAttributes` - (Hash)
      #       * `activityType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `activityId` - (String)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `requestCancelActivityTaskFailedEventAttributes` - (Hash)
      #       * `activityId` - (String)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `startTimerFailedEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `cancelTimerFailedEventAttributes` - (Hash)
      #       * `timerId` - (String)
      #       * `cause` - (String)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #     * `startChildWorkflowExecutionFailedEventAttributes` - (Hash)
      #       * `workflowType` - (Hash)
      #         * `name` - (String)
      #         * `version` - (String)
      #       * `cause` - (String)
      #       * `workflowId` - (String)
      #       * `initiatedEventId` - (Integer)
      #       * `decisionTaskCompletedEventId` - (Integer)
      #   * `nextPageToken` - (String)
      #   * `previousStartedEventId` - (Integer)

      # @!method record_activity_task_heartbeat(options = {})
      # Calls the RecordActivityTaskHeartbeat API operation.
      # @param [Hash] options
      #   * `:task_token` - *required* - (String)
      #   * `:details` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `cancelRequested` - (Boolean)

      # @!method register_activity_type(options = {})
      # Calls the RegisterActivityType API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:name` - *required* - (String)
      #   * `:version` - *required* - (String)
      #   * `:description` - (String)
      #   * `:default_task_start_to_close_timeout` - (String)
      #   * `:default_task_heartbeat_timeout` - (String)
      #   * `:default_task_list` - (Hash)
      #     * `:name` - *required* - (String)
      #   * `:default_task_schedule_to_start_timeout` - (String)
      #   * `:default_task_schedule_to_close_timeout` - (String)
      # @return [Core::Response]

      # @!method register_domain(options = {})
      # Calls the RegisterDomain API operation.
      # @param [Hash] options
      #   * `:name` - *required* - (String)
      #   * `:description` - (String)
      #   * `:workflow_execution_retention_period_in_days` - *required* - (String)
      # @return [Core::Response]

      # @!method register_workflow_type(options = {})
      # Calls the RegisterWorkflowType API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:name` - *required* - (String)
      #   * `:version` - *required* - (String)
      #   * `:description` - (String)
      #   * `:default_task_start_to_close_timeout` - (String)
      #   * `:default_execution_start_to_close_timeout` - (String)
      #   * `:default_task_list` - (Hash)
      #     * `:name` - *required* - (String)
      #   * `:default_child_policy` - (String) Valid values include:
      #     * `TERMINATE`
      #     * `REQUEST_CANCEL`
      #     * `ABANDON`
      # @return [Core::Response]

      # @!method request_cancel_workflow_execution(options = {})
      # Calls the RequestCancelWorkflowExecution API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:workflow_id` - *required* - (String)
      #   * `:run_id` - (String)
      # @return [Core::Response]

      # @!method respond_activity_task_canceled(options = {})
      # Calls the RespondActivityTaskCanceled API operation.
      # @param [Hash] options
      #   * `:task_token` - *required* - (String)
      #   * `:details` - (String)
      # @return [Core::Response]

      # @!method respond_activity_task_completed(options = {})
      # Calls the RespondActivityTaskCompleted API operation.
      # @param [Hash] options
      #   * `:task_token` - *required* - (String)
      #   * `:result` - (String)
      # @return [Core::Response]

      # @!method respond_activity_task_failed(options = {})
      # Calls the RespondActivityTaskFailed API operation.
      # @param [Hash] options
      #   * `:task_token` - *required* - (String)
      #   * `:reason` - (String)
      #   * `:details` - (String)
      # @return [Core::Response]

      # @!method respond_decision_task_completed(options = {})
      # Calls the RespondDecisionTaskCompleted API operation.
      # @param [Hash] options
      #   * `:task_token` - *required* - (String)
      #   * `:decisions` - (Array<Hash>)
      #     * `:decision_type` - *required* - (String) Valid values include:
      #       * `ScheduleActivityTask`
      #       * `RequestCancelActivityTask`
      #       * `CompleteWorkflowExecution`
      #       * `FailWorkflowExecution`
      #       * `CancelWorkflowExecution`
      #       * `ContinueAsNewWorkflowExecution`
      #       * `RecordMarker`
      #       * `StartTimer`
      #       * `CancelTimer`
      #       * `SignalExternalWorkflowExecution`
      #       * `RequestCancelExternalWorkflowExecution`
      #       * `StartChildWorkflowExecution`
      #     * `:schedule_activity_task_decision_attributes` - (Hash)
      #       * `:activity_type` - *required* - (Hash)
      #         * `:name` - *required* - (String)
      #         * `:version` - *required* - (String)
      #       * `:activity_id` - *required* - (String)
      #       * `:control` - (String)
      #       * `:input` - (String)
      #       * `:schedule_to_close_timeout` - (String)
      #       * `:task_list` - (Hash)
      #         * `:name` - *required* - (String)
      #       * `:schedule_to_start_timeout` - (String)
      #       * `:start_to_close_timeout` - (String)
      #       * `:heartbeat_timeout` - (String)
      #     * `:request_cancel_activity_task_decision_attributes` - (Hash)
      #       * `:activity_id` - *required* - (String)
      #     * `:complete_workflow_execution_decision_attributes` - (Hash)
      #       * `:result` - (String)
      #     * `:fail_workflow_execution_decision_attributes` - (Hash)
      #       * `:reason` - (String)
      #       * `:details` - (String)
      #     * `:cancel_workflow_execution_decision_attributes` - (Hash)
      #       * `:details` - (String)
      #     * `:continue_as_new_workflow_execution_decision_attributes` - (Hash)
      #       * `:input` - (String)
      #       * `:execution_start_to_close_timeout` - (String)
      #       * `:task_list` - (Hash)
      #         * `:name` - *required* - (String)
      #       * `:task_start_to_close_timeout` - (String)
      #       * `:child_policy` - (String) Valid values include:
      #         * `TERMINATE`
      #         * `REQUEST_CANCEL`
      #         * `ABANDON`
      #       * `:tag_list` - (Array<String>)
      #       * `:workflow_type_version` - (String)
      #     * `:record_marker_decision_attributes` - (Hash)
      #       * `:marker_name` - *required* - (String)
      #       * `:details` - (String)
      #     * `:start_timer_decision_attributes` - (Hash)
      #       * `:timer_id` - *required* - (String)
      #       * `:control` - (String)
      #       * `:start_to_fire_timeout` - *required* - (String)
      #     * `:cancel_timer_decision_attributes` - (Hash)
      #       * `:timer_id` - *required* - (String)
      #     * `:signal_external_workflow_execution_decision_attributes` - (Hash)
      #       * `:workflow_id` - *required* - (String)
      #       * `:run_id` - (String)
      #       * `:signal_name` - *required* - (String)
      #       * `:input` - (String)
      #       * `:control` - (String)
      #     * `:request_cancel_external_workflow_execution_decision_attributes` - (Hash)
      #       * `:workflow_id` - *required* - (String)
      #       * `:run_id` - (String)
      #       * `:control` - (String)
      #     * `:start_child_workflow_execution_decision_attributes` - (Hash)
      #       * `:workflow_type` - *required* - (Hash)
      #         * `:name` - *required* - (String)
      #         * `:version` - *required* - (String)
      #       * `:workflow_id` - *required* - (String)
      #       * `:control` - (String)
      #       * `:input` - (String)
      #       * `:execution_start_to_close_timeout` - (String)
      #       * `:task_list` - (Hash)
      #         * `:name` - *required* - (String)
      #       * `:task_start_to_close_timeout` - (String)
      #       * `:child_policy` - (String) Valid values include:
      #         * `TERMINATE`
      #         * `REQUEST_CANCEL`
      #         * `ABANDON`
      #       * `:tag_list` - (Array<String>)
      #   * `:execution_context` - (String)
      # @return [Core::Response]

      # @!method signal_workflow_execution(options = {})
      # Calls the SignalWorkflowExecution API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:workflow_id` - *required* - (String)
      #   * `:run_id` - (String)
      #   * `:signal_name` - *required* - (String)
      #   * `:input` - (String)
      # @return [Core::Response]

      # @!method start_workflow_execution(options = {})
      # Calls the StartWorkflowExecution API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:workflow_id` - *required* - (String)
      #   * `:workflow_type` - *required* - (Hash)
      #     * `:name` - *required* - (String)
      #     * `:version` - *required* - (String)
      #   * `:task_list` - (Hash)
      #     * `:name` - *required* - (String)
      #   * `:input` - (String)
      #   * `:execution_start_to_close_timeout` - (String)
      #   * `:tag_list` - (Array<String>)
      #   * `:task_start_to_close_timeout` - (String)
      #   * `:child_policy` - (String) Valid values include:
      #     * `TERMINATE`
      #     * `REQUEST_CANCEL`
      #     * `ABANDON`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `runId` - (String)

      # @!method terminate_workflow_execution(options = {})
      # Calls the TerminateWorkflowExecution API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String)
      #   * `:workflow_id` - *required* - (String)
      #   * `:run_id` - (String)
      #   * `:reason` - (String)
      #   * `:details` - (String)
      #   * `:child_policy` - (String) Valid values include:
      #     * `TERMINATE`
      #     * `REQUEST_CANCEL`
      #     * `ABANDON`
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2012-01-25')

      protected

      def cacheable_request? name, options
        if name == :poll_for_decision_task
          options.keys.include?(:next_page_token)
        else
          self.class::CACHEABLE_REQUESTS.include?(name)
        end
      end

      def build_request *args
        request = super(*args)
        if request.headers['x-amz-target'] =~ /PollFor(Decision|Activity)Task/
          request.read_timeout = 90
        end
        request
      end

    end
  end
end
