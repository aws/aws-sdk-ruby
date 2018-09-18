# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SWF
  # @api private
  module ClientApi

    include Seahorse::Model

    ActivityId = Shapes::StringShape.new(name: 'ActivityId')
    ActivityTask = Shapes::StructureShape.new(name: 'ActivityTask')
    ActivityTaskCancelRequestedEventAttributes = Shapes::StructureShape.new(name: 'ActivityTaskCancelRequestedEventAttributes')
    ActivityTaskCanceledEventAttributes = Shapes::StructureShape.new(name: 'ActivityTaskCanceledEventAttributes')
    ActivityTaskCompletedEventAttributes = Shapes::StructureShape.new(name: 'ActivityTaskCompletedEventAttributes')
    ActivityTaskFailedEventAttributes = Shapes::StructureShape.new(name: 'ActivityTaskFailedEventAttributes')
    ActivityTaskScheduledEventAttributes = Shapes::StructureShape.new(name: 'ActivityTaskScheduledEventAttributes')
    ActivityTaskStartedEventAttributes = Shapes::StructureShape.new(name: 'ActivityTaskStartedEventAttributes')
    ActivityTaskStatus = Shapes::StructureShape.new(name: 'ActivityTaskStatus')
    ActivityTaskTimedOutEventAttributes = Shapes::StructureShape.new(name: 'ActivityTaskTimedOutEventAttributes')
    ActivityTaskTimeoutType = Shapes::StringShape.new(name: 'ActivityTaskTimeoutType')
    ActivityType = Shapes::StructureShape.new(name: 'ActivityType')
    ActivityTypeConfiguration = Shapes::StructureShape.new(name: 'ActivityTypeConfiguration')
    ActivityTypeDetail = Shapes::StructureShape.new(name: 'ActivityTypeDetail')
    ActivityTypeInfo = Shapes::StructureShape.new(name: 'ActivityTypeInfo')
    ActivityTypeInfoList = Shapes::ListShape.new(name: 'ActivityTypeInfoList')
    ActivityTypeInfos = Shapes::StructureShape.new(name: 'ActivityTypeInfos')
    Arn = Shapes::StringShape.new(name: 'Arn')
    CancelTimerDecisionAttributes = Shapes::StructureShape.new(name: 'CancelTimerDecisionAttributes')
    CancelTimerFailedCause = Shapes::StringShape.new(name: 'CancelTimerFailedCause')
    CancelTimerFailedEventAttributes = Shapes::StructureShape.new(name: 'CancelTimerFailedEventAttributes')
    CancelWorkflowExecutionDecisionAttributes = Shapes::StructureShape.new(name: 'CancelWorkflowExecutionDecisionAttributes')
    CancelWorkflowExecutionFailedCause = Shapes::StringShape.new(name: 'CancelWorkflowExecutionFailedCause')
    CancelWorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'CancelWorkflowExecutionFailedEventAttributes')
    Canceled = Shapes::BooleanShape.new(name: 'Canceled')
    CauseMessage = Shapes::StringShape.new(name: 'CauseMessage')
    ChildPolicy = Shapes::StringShape.new(name: 'ChildPolicy')
    ChildWorkflowExecutionCanceledEventAttributes = Shapes::StructureShape.new(name: 'ChildWorkflowExecutionCanceledEventAttributes')
    ChildWorkflowExecutionCompletedEventAttributes = Shapes::StructureShape.new(name: 'ChildWorkflowExecutionCompletedEventAttributes')
    ChildWorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'ChildWorkflowExecutionFailedEventAttributes')
    ChildWorkflowExecutionStartedEventAttributes = Shapes::StructureShape.new(name: 'ChildWorkflowExecutionStartedEventAttributes')
    ChildWorkflowExecutionTerminatedEventAttributes = Shapes::StructureShape.new(name: 'ChildWorkflowExecutionTerminatedEventAttributes')
    ChildWorkflowExecutionTimedOutEventAttributes = Shapes::StructureShape.new(name: 'ChildWorkflowExecutionTimedOutEventAttributes')
    CloseStatus = Shapes::StringShape.new(name: 'CloseStatus')
    CloseStatusFilter = Shapes::StructureShape.new(name: 'CloseStatusFilter')
    CompleteWorkflowExecutionDecisionAttributes = Shapes::StructureShape.new(name: 'CompleteWorkflowExecutionDecisionAttributes')
    CompleteWorkflowExecutionFailedCause = Shapes::StringShape.new(name: 'CompleteWorkflowExecutionFailedCause')
    CompleteWorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'CompleteWorkflowExecutionFailedEventAttributes')
    ContinueAsNewWorkflowExecutionDecisionAttributes = Shapes::StructureShape.new(name: 'ContinueAsNewWorkflowExecutionDecisionAttributes')
    ContinueAsNewWorkflowExecutionFailedCause = Shapes::StringShape.new(name: 'ContinueAsNewWorkflowExecutionFailedCause')
    ContinueAsNewWorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'ContinueAsNewWorkflowExecutionFailedEventAttributes')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CountClosedWorkflowExecutionsInput = Shapes::StructureShape.new(name: 'CountClosedWorkflowExecutionsInput')
    CountOpenWorkflowExecutionsInput = Shapes::StructureShape.new(name: 'CountOpenWorkflowExecutionsInput')
    CountPendingActivityTasksInput = Shapes::StructureShape.new(name: 'CountPendingActivityTasksInput')
    CountPendingDecisionTasksInput = Shapes::StructureShape.new(name: 'CountPendingDecisionTasksInput')
    Data = Shapes::StringShape.new(name: 'Data')
    Decision = Shapes::StructureShape.new(name: 'Decision')
    DecisionList = Shapes::ListShape.new(name: 'DecisionList')
    DecisionTask = Shapes::StructureShape.new(name: 'DecisionTask')
    DecisionTaskCompletedEventAttributes = Shapes::StructureShape.new(name: 'DecisionTaskCompletedEventAttributes')
    DecisionTaskScheduledEventAttributes = Shapes::StructureShape.new(name: 'DecisionTaskScheduledEventAttributes')
    DecisionTaskStartedEventAttributes = Shapes::StructureShape.new(name: 'DecisionTaskStartedEventAttributes')
    DecisionTaskTimedOutEventAttributes = Shapes::StructureShape.new(name: 'DecisionTaskTimedOutEventAttributes')
    DecisionTaskTimeoutType = Shapes::StringShape.new(name: 'DecisionTaskTimeoutType')
    DecisionType = Shapes::StringShape.new(name: 'DecisionType')
    DefaultUndefinedFault = Shapes::StructureShape.new(name: 'DefaultUndefinedFault')
    DeprecateActivityTypeInput = Shapes::StructureShape.new(name: 'DeprecateActivityTypeInput')
    DeprecateDomainInput = Shapes::StructureShape.new(name: 'DeprecateDomainInput')
    DeprecateWorkflowTypeInput = Shapes::StructureShape.new(name: 'DeprecateWorkflowTypeInput')
    DescribeActivityTypeInput = Shapes::StructureShape.new(name: 'DescribeActivityTypeInput')
    DescribeDomainInput = Shapes::StructureShape.new(name: 'DescribeDomainInput')
    DescribeWorkflowExecutionInput = Shapes::StructureShape.new(name: 'DescribeWorkflowExecutionInput')
    DescribeWorkflowTypeInput = Shapes::StructureShape.new(name: 'DescribeWorkflowTypeInput')
    Description = Shapes::StringShape.new(name: 'Description')
    DomainAlreadyExistsFault = Shapes::StructureShape.new(name: 'DomainAlreadyExistsFault')
    DomainConfiguration = Shapes::StructureShape.new(name: 'DomainConfiguration')
    DomainDeprecatedFault = Shapes::StructureShape.new(name: 'DomainDeprecatedFault')
    DomainDetail = Shapes::StructureShape.new(name: 'DomainDetail')
    DomainInfo = Shapes::StructureShape.new(name: 'DomainInfo')
    DomainInfoList = Shapes::ListShape.new(name: 'DomainInfoList')
    DomainInfos = Shapes::StructureShape.new(name: 'DomainInfos')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DurationInDays = Shapes::StringShape.new(name: 'DurationInDays')
    DurationInSeconds = Shapes::StringShape.new(name: 'DurationInSeconds')
    DurationInSecondsOptional = Shapes::StringShape.new(name: 'DurationInSecondsOptional')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventId = Shapes::IntegerShape.new(name: 'EventId')
    EventType = Shapes::StringShape.new(name: 'EventType')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExecutionTimeFilter = Shapes::StructureShape.new(name: 'ExecutionTimeFilter')
    ExternalWorkflowExecutionCancelRequestedEventAttributes = Shapes::StructureShape.new(name: 'ExternalWorkflowExecutionCancelRequestedEventAttributes')
    ExternalWorkflowExecutionSignaledEventAttributes = Shapes::StructureShape.new(name: 'ExternalWorkflowExecutionSignaledEventAttributes')
    FailWorkflowExecutionDecisionAttributes = Shapes::StructureShape.new(name: 'FailWorkflowExecutionDecisionAttributes')
    FailWorkflowExecutionFailedCause = Shapes::StringShape.new(name: 'FailWorkflowExecutionFailedCause')
    FailWorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'FailWorkflowExecutionFailedEventAttributes')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FunctionId = Shapes::StringShape.new(name: 'FunctionId')
    FunctionInput = Shapes::StringShape.new(name: 'FunctionInput')
    FunctionName = Shapes::StringShape.new(name: 'FunctionName')
    GetWorkflowExecutionHistoryInput = Shapes::StructureShape.new(name: 'GetWorkflowExecutionHistoryInput')
    History = Shapes::StructureShape.new(name: 'History')
    HistoryEvent = Shapes::StructureShape.new(name: 'HistoryEvent')
    HistoryEventList = Shapes::ListShape.new(name: 'HistoryEventList')
    Identity = Shapes::StringShape.new(name: 'Identity')
    LambdaFunctionCompletedEventAttributes = Shapes::StructureShape.new(name: 'LambdaFunctionCompletedEventAttributes')
    LambdaFunctionFailedEventAttributes = Shapes::StructureShape.new(name: 'LambdaFunctionFailedEventAttributes')
    LambdaFunctionScheduledEventAttributes = Shapes::StructureShape.new(name: 'LambdaFunctionScheduledEventAttributes')
    LambdaFunctionStartedEventAttributes = Shapes::StructureShape.new(name: 'LambdaFunctionStartedEventAttributes')
    LambdaFunctionTimedOutEventAttributes = Shapes::StructureShape.new(name: 'LambdaFunctionTimedOutEventAttributes')
    LambdaFunctionTimeoutType = Shapes::StringShape.new(name: 'LambdaFunctionTimeoutType')
    LimitExceededFault = Shapes::StructureShape.new(name: 'LimitExceededFault')
    LimitedData = Shapes::StringShape.new(name: 'LimitedData')
    ListActivityTypesInput = Shapes::StructureShape.new(name: 'ListActivityTypesInput')
    ListClosedWorkflowExecutionsInput = Shapes::StructureShape.new(name: 'ListClosedWorkflowExecutionsInput')
    ListDomainsInput = Shapes::StructureShape.new(name: 'ListDomainsInput')
    ListOpenWorkflowExecutionsInput = Shapes::StructureShape.new(name: 'ListOpenWorkflowExecutionsInput')
    ListWorkflowTypesInput = Shapes::StructureShape.new(name: 'ListWorkflowTypesInput')
    MarkerName = Shapes::StringShape.new(name: 'MarkerName')
    MarkerRecordedEventAttributes = Shapes::StructureShape.new(name: 'MarkerRecordedEventAttributes')
    Name = Shapes::StringShape.new(name: 'Name')
    OpenDecisionTasksCount = Shapes::IntegerShape.new(name: 'OpenDecisionTasksCount')
    OperationNotPermittedFault = Shapes::StructureShape.new(name: 'OperationNotPermittedFault')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    PendingTaskCount = Shapes::StructureShape.new(name: 'PendingTaskCount')
    PollForActivityTaskInput = Shapes::StructureShape.new(name: 'PollForActivityTaskInput')
    PollForDecisionTaskInput = Shapes::StructureShape.new(name: 'PollForDecisionTaskInput')
    RecordActivityTaskHeartbeatInput = Shapes::StructureShape.new(name: 'RecordActivityTaskHeartbeatInput')
    RecordMarkerDecisionAttributes = Shapes::StructureShape.new(name: 'RecordMarkerDecisionAttributes')
    RecordMarkerFailedCause = Shapes::StringShape.new(name: 'RecordMarkerFailedCause')
    RecordMarkerFailedEventAttributes = Shapes::StructureShape.new(name: 'RecordMarkerFailedEventAttributes')
    RegisterActivityTypeInput = Shapes::StructureShape.new(name: 'RegisterActivityTypeInput')
    RegisterDomainInput = Shapes::StructureShape.new(name: 'RegisterDomainInput')
    RegisterWorkflowTypeInput = Shapes::StructureShape.new(name: 'RegisterWorkflowTypeInput')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    RequestCancelActivityTaskDecisionAttributes = Shapes::StructureShape.new(name: 'RequestCancelActivityTaskDecisionAttributes')
    RequestCancelActivityTaskFailedCause = Shapes::StringShape.new(name: 'RequestCancelActivityTaskFailedCause')
    RequestCancelActivityTaskFailedEventAttributes = Shapes::StructureShape.new(name: 'RequestCancelActivityTaskFailedEventAttributes')
    RequestCancelExternalWorkflowExecutionDecisionAttributes = Shapes::StructureShape.new(name: 'RequestCancelExternalWorkflowExecutionDecisionAttributes')
    RequestCancelExternalWorkflowExecutionFailedCause = Shapes::StringShape.new(name: 'RequestCancelExternalWorkflowExecutionFailedCause')
    RequestCancelExternalWorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'RequestCancelExternalWorkflowExecutionFailedEventAttributes')
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = Shapes::StructureShape.new(name: 'RequestCancelExternalWorkflowExecutionInitiatedEventAttributes')
    RequestCancelWorkflowExecutionInput = Shapes::StructureShape.new(name: 'RequestCancelWorkflowExecutionInput')
    RespondActivityTaskCanceledInput = Shapes::StructureShape.new(name: 'RespondActivityTaskCanceledInput')
    RespondActivityTaskCompletedInput = Shapes::StructureShape.new(name: 'RespondActivityTaskCompletedInput')
    RespondActivityTaskFailedInput = Shapes::StructureShape.new(name: 'RespondActivityTaskFailedInput')
    RespondDecisionTaskCompletedInput = Shapes::StructureShape.new(name: 'RespondDecisionTaskCompletedInput')
    ReverseOrder = Shapes::BooleanShape.new(name: 'ReverseOrder')
    Run = Shapes::StructureShape.new(name: 'Run')
    ScheduleActivityTaskDecisionAttributes = Shapes::StructureShape.new(name: 'ScheduleActivityTaskDecisionAttributes')
    ScheduleActivityTaskFailedCause = Shapes::StringShape.new(name: 'ScheduleActivityTaskFailedCause')
    ScheduleActivityTaskFailedEventAttributes = Shapes::StructureShape.new(name: 'ScheduleActivityTaskFailedEventAttributes')
    ScheduleLambdaFunctionDecisionAttributes = Shapes::StructureShape.new(name: 'ScheduleLambdaFunctionDecisionAttributes')
    ScheduleLambdaFunctionFailedCause = Shapes::StringShape.new(name: 'ScheduleLambdaFunctionFailedCause')
    ScheduleLambdaFunctionFailedEventAttributes = Shapes::StructureShape.new(name: 'ScheduleLambdaFunctionFailedEventAttributes')
    SignalExternalWorkflowExecutionDecisionAttributes = Shapes::StructureShape.new(name: 'SignalExternalWorkflowExecutionDecisionAttributes')
    SignalExternalWorkflowExecutionFailedCause = Shapes::StringShape.new(name: 'SignalExternalWorkflowExecutionFailedCause')
    SignalExternalWorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'SignalExternalWorkflowExecutionFailedEventAttributes')
    SignalExternalWorkflowExecutionInitiatedEventAttributes = Shapes::StructureShape.new(name: 'SignalExternalWorkflowExecutionInitiatedEventAttributes')
    SignalName = Shapes::StringShape.new(name: 'SignalName')
    SignalWorkflowExecutionInput = Shapes::StructureShape.new(name: 'SignalWorkflowExecutionInput')
    StartChildWorkflowExecutionDecisionAttributes = Shapes::StructureShape.new(name: 'StartChildWorkflowExecutionDecisionAttributes')
    StartChildWorkflowExecutionFailedCause = Shapes::StringShape.new(name: 'StartChildWorkflowExecutionFailedCause')
    StartChildWorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'StartChildWorkflowExecutionFailedEventAttributes')
    StartChildWorkflowExecutionInitiatedEventAttributes = Shapes::StructureShape.new(name: 'StartChildWorkflowExecutionInitiatedEventAttributes')
    StartLambdaFunctionFailedCause = Shapes::StringShape.new(name: 'StartLambdaFunctionFailedCause')
    StartLambdaFunctionFailedEventAttributes = Shapes::StructureShape.new(name: 'StartLambdaFunctionFailedEventAttributes')
    StartTimerDecisionAttributes = Shapes::StructureShape.new(name: 'StartTimerDecisionAttributes')
    StartTimerFailedCause = Shapes::StringShape.new(name: 'StartTimerFailedCause')
    StartTimerFailedEventAttributes = Shapes::StructureShape.new(name: 'StartTimerFailedEventAttributes')
    StartWorkflowExecutionInput = Shapes::StructureShape.new(name: 'StartWorkflowExecutionInput')
    Tag = Shapes::StringShape.new(name: 'Tag')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TaskList = Shapes::StructureShape.new(name: 'TaskList')
    TaskPriority = Shapes::StringShape.new(name: 'TaskPriority')
    TaskToken = Shapes::StringShape.new(name: 'TaskToken')
    TerminateReason = Shapes::StringShape.new(name: 'TerminateReason')
    TerminateWorkflowExecutionInput = Shapes::StructureShape.new(name: 'TerminateWorkflowExecutionInput')
    TimerCanceledEventAttributes = Shapes::StructureShape.new(name: 'TimerCanceledEventAttributes')
    TimerFiredEventAttributes = Shapes::StructureShape.new(name: 'TimerFiredEventAttributes')
    TimerId = Shapes::StringShape.new(name: 'TimerId')
    TimerStartedEventAttributes = Shapes::StructureShape.new(name: 'TimerStartedEventAttributes')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Truncated = Shapes::BooleanShape.new(name: 'Truncated')
    TypeAlreadyExistsFault = Shapes::StructureShape.new(name: 'TypeAlreadyExistsFault')
    TypeDeprecatedFault = Shapes::StructureShape.new(name: 'TypeDeprecatedFault')
    UnknownResourceFault = Shapes::StructureShape.new(name: 'UnknownResourceFault')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionOptional = Shapes::StringShape.new(name: 'VersionOptional')
    WorkflowExecution = Shapes::StructureShape.new(name: 'WorkflowExecution')
    WorkflowExecutionAlreadyStartedFault = Shapes::StructureShape.new(name: 'WorkflowExecutionAlreadyStartedFault')
    WorkflowExecutionCancelRequestedCause = Shapes::StringShape.new(name: 'WorkflowExecutionCancelRequestedCause')
    WorkflowExecutionCancelRequestedEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionCancelRequestedEventAttributes')
    WorkflowExecutionCanceledEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionCanceledEventAttributes')
    WorkflowExecutionCompletedEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionCompletedEventAttributes')
    WorkflowExecutionConfiguration = Shapes::StructureShape.new(name: 'WorkflowExecutionConfiguration')
    WorkflowExecutionContinuedAsNewEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionContinuedAsNewEventAttributes')
    WorkflowExecutionCount = Shapes::StructureShape.new(name: 'WorkflowExecutionCount')
    WorkflowExecutionDetail = Shapes::StructureShape.new(name: 'WorkflowExecutionDetail')
    WorkflowExecutionFailedEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionFailedEventAttributes')
    WorkflowExecutionFilter = Shapes::StructureShape.new(name: 'WorkflowExecutionFilter')
    WorkflowExecutionInfo = Shapes::StructureShape.new(name: 'WorkflowExecutionInfo')
    WorkflowExecutionInfoList = Shapes::ListShape.new(name: 'WorkflowExecutionInfoList')
    WorkflowExecutionInfos = Shapes::StructureShape.new(name: 'WorkflowExecutionInfos')
    WorkflowExecutionOpenCounts = Shapes::StructureShape.new(name: 'WorkflowExecutionOpenCounts')
    WorkflowExecutionSignaledEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionSignaledEventAttributes')
    WorkflowExecutionStartedEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionStartedEventAttributes')
    WorkflowExecutionTerminatedCause = Shapes::StringShape.new(name: 'WorkflowExecutionTerminatedCause')
    WorkflowExecutionTerminatedEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionTerminatedEventAttributes')
    WorkflowExecutionTimedOutEventAttributes = Shapes::StructureShape.new(name: 'WorkflowExecutionTimedOutEventAttributes')
    WorkflowExecutionTimeoutType = Shapes::StringShape.new(name: 'WorkflowExecutionTimeoutType')
    WorkflowId = Shapes::StringShape.new(name: 'WorkflowId')
    WorkflowRunId = Shapes::StringShape.new(name: 'WorkflowRunId')
    WorkflowRunIdOptional = Shapes::StringShape.new(name: 'WorkflowRunIdOptional')
    WorkflowType = Shapes::StructureShape.new(name: 'WorkflowType')
    WorkflowTypeConfiguration = Shapes::StructureShape.new(name: 'WorkflowTypeConfiguration')
    WorkflowTypeDetail = Shapes::StructureShape.new(name: 'WorkflowTypeDetail')
    WorkflowTypeFilter = Shapes::StructureShape.new(name: 'WorkflowTypeFilter')
    WorkflowTypeInfo = Shapes::StructureShape.new(name: 'WorkflowTypeInfo')
    WorkflowTypeInfoList = Shapes::ListShape.new(name: 'WorkflowTypeInfoList')
    WorkflowTypeInfos = Shapes::StructureShape.new(name: 'WorkflowTypeInfos')

    ActivityTask.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    ActivityTask.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    ActivityTask.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ActivityTask.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ActivityTask.add_member(:activity_type, Shapes::ShapeRef.new(shape: ActivityType, required: true, location_name: "activityType"))
    ActivityTask.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    ActivityTask.struct_class = Types::ActivityTask

    ActivityTaskCancelRequestedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    ActivityTaskCancelRequestedEventAttributes.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    ActivityTaskCancelRequestedEventAttributes.struct_class = Types::ActivityTaskCancelRequestedEventAttributes

    ActivityTaskCanceledEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    ActivityTaskCanceledEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    ActivityTaskCanceledEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ActivityTaskCanceledEventAttributes.add_member(:latest_cancel_requested_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "latestCancelRequestedEventId"))
    ActivityTaskCanceledEventAttributes.struct_class = Types::ActivityTaskCanceledEventAttributes

    ActivityTaskCompletedEventAttributes.add_member(:result, Shapes::ShapeRef.new(shape: Data, location_name: "result"))
    ActivityTaskCompletedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    ActivityTaskCompletedEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ActivityTaskCompletedEventAttributes.struct_class = Types::ActivityTaskCompletedEventAttributes

    ActivityTaskFailedEventAttributes.add_member(:reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "reason"))
    ActivityTaskFailedEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    ActivityTaskFailedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    ActivityTaskFailedEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ActivityTaskFailedEventAttributes.struct_class = Types::ActivityTaskFailedEventAttributes

    ActivityTaskScheduledEventAttributes.add_member(:activity_type, Shapes::ShapeRef.new(shape: ActivityType, required: true, location_name: "activityType"))
    ActivityTaskScheduledEventAttributes.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    ActivityTaskScheduledEventAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    ActivityTaskScheduledEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    ActivityTaskScheduledEventAttributes.add_member(:schedule_to_start_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "scheduleToStartTimeout"))
    ActivityTaskScheduledEventAttributes.add_member(:schedule_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "scheduleToCloseTimeout"))
    ActivityTaskScheduledEventAttributes.add_member(:start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "startToCloseTimeout"))
    ActivityTaskScheduledEventAttributes.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    ActivityTaskScheduledEventAttributes.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    ActivityTaskScheduledEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    ActivityTaskScheduledEventAttributes.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "heartbeatTimeout"))
    ActivityTaskScheduledEventAttributes.struct_class = Types::ActivityTaskScheduledEventAttributes

    ActivityTaskStartedEventAttributes.add_member(:identity, Shapes::ShapeRef.new(shape: Identity, location_name: "identity"))
    ActivityTaskStartedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    ActivityTaskStartedEventAttributes.struct_class = Types::ActivityTaskStartedEventAttributes

    ActivityTaskStatus.add_member(:cancel_requested, Shapes::ShapeRef.new(shape: Canceled, required: true, location_name: "cancelRequested"))
    ActivityTaskStatus.struct_class = Types::ActivityTaskStatus

    ActivityTaskTimedOutEventAttributes.add_member(:timeout_type, Shapes::ShapeRef.new(shape: ActivityTaskTimeoutType, required: true, location_name: "timeoutType"))
    ActivityTaskTimedOutEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    ActivityTaskTimedOutEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ActivityTaskTimedOutEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: LimitedData, location_name: "details"))
    ActivityTaskTimedOutEventAttributes.struct_class = Types::ActivityTaskTimedOutEventAttributes

    ActivityType.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ActivityType.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    ActivityType.struct_class = Types::ActivityType

    ActivityTypeConfiguration.add_member(:default_task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskStartToCloseTimeout"))
    ActivityTypeConfiguration.add_member(:default_task_heartbeat_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskHeartbeatTimeout"))
    ActivityTypeConfiguration.add_member(:default_task_list, Shapes::ShapeRef.new(shape: TaskList, location_name: "defaultTaskList"))
    ActivityTypeConfiguration.add_member(:default_task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "defaultTaskPriority"))
    ActivityTypeConfiguration.add_member(:default_task_schedule_to_start_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskScheduleToStartTimeout"))
    ActivityTypeConfiguration.add_member(:default_task_schedule_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskScheduleToCloseTimeout"))
    ActivityTypeConfiguration.struct_class = Types::ActivityTypeConfiguration

    ActivityTypeDetail.add_member(:type_info, Shapes::ShapeRef.new(shape: ActivityTypeInfo, required: true, location_name: "typeInfo"))
    ActivityTypeDetail.add_member(:configuration, Shapes::ShapeRef.new(shape: ActivityTypeConfiguration, required: true, location_name: "configuration"))
    ActivityTypeDetail.struct_class = Types::ActivityTypeDetail

    ActivityTypeInfo.add_member(:activity_type, Shapes::ShapeRef.new(shape: ActivityType, required: true, location_name: "activityType"))
    ActivityTypeInfo.add_member(:status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "status"))
    ActivityTypeInfo.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ActivityTypeInfo.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    ActivityTypeInfo.add_member(:deprecation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "deprecationDate"))
    ActivityTypeInfo.struct_class = Types::ActivityTypeInfo

    ActivityTypeInfoList.member = Shapes::ShapeRef.new(shape: ActivityTypeInfo)

    ActivityTypeInfos.add_member(:type_infos, Shapes::ShapeRef.new(shape: ActivityTypeInfoList, required: true, location_name: "typeInfos"))
    ActivityTypeInfos.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    ActivityTypeInfos.struct_class = Types::ActivityTypeInfos

    CancelTimerDecisionAttributes.add_member(:timer_id, Shapes::ShapeRef.new(shape: TimerId, required: true, location_name: "timerId"))
    CancelTimerDecisionAttributes.struct_class = Types::CancelTimerDecisionAttributes

    CancelTimerFailedEventAttributes.add_member(:timer_id, Shapes::ShapeRef.new(shape: TimerId, required: true, location_name: "timerId"))
    CancelTimerFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: CancelTimerFailedCause, required: true, location_name: "cause"))
    CancelTimerFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    CancelTimerFailedEventAttributes.struct_class = Types::CancelTimerFailedEventAttributes

    CancelWorkflowExecutionDecisionAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    CancelWorkflowExecutionDecisionAttributes.struct_class = Types::CancelWorkflowExecutionDecisionAttributes

    CancelWorkflowExecutionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: CancelWorkflowExecutionFailedCause, required: true, location_name: "cause"))
    CancelWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    CancelWorkflowExecutionFailedEventAttributes.struct_class = Types::CancelWorkflowExecutionFailedEventAttributes

    ChildWorkflowExecutionCanceledEventAttributes.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ChildWorkflowExecutionCanceledEventAttributes.struct_class = Types::ChildWorkflowExecutionCanceledEventAttributes

    ChildWorkflowExecutionCompletedEventAttributes.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:result, Shapes::ShapeRef.new(shape: Data, location_name: "result"))
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ChildWorkflowExecutionCompletedEventAttributes.struct_class = Types::ChildWorkflowExecutionCompletedEventAttributes

    ChildWorkflowExecutionFailedEventAttributes.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "reason"))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ChildWorkflowExecutionFailedEventAttributes.struct_class = Types::ChildWorkflowExecutionFailedEventAttributes

    ChildWorkflowExecutionStartedEventAttributes.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ChildWorkflowExecutionStartedEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    ChildWorkflowExecutionStartedEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    ChildWorkflowExecutionStartedEventAttributes.struct_class = Types::ChildWorkflowExecutionStartedEventAttributes

    ChildWorkflowExecutionTerminatedEventAttributes.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ChildWorkflowExecutionTerminatedEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    ChildWorkflowExecutionTerminatedEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    ChildWorkflowExecutionTerminatedEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ChildWorkflowExecutionTerminatedEventAttributes.struct_class = Types::ChildWorkflowExecutionTerminatedEventAttributes

    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:timeout_type, Shapes::ShapeRef.new(shape: WorkflowExecutionTimeoutType, required: true, location_name: "timeoutType"))
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    ChildWorkflowExecutionTimedOutEventAttributes.struct_class = Types::ChildWorkflowExecutionTimedOutEventAttributes

    CloseStatusFilter.add_member(:status, Shapes::ShapeRef.new(shape: CloseStatus, required: true, location_name: "status"))
    CloseStatusFilter.struct_class = Types::CloseStatusFilter

    CompleteWorkflowExecutionDecisionAttributes.add_member(:result, Shapes::ShapeRef.new(shape: Data, location_name: "result"))
    CompleteWorkflowExecutionDecisionAttributes.struct_class = Types::CompleteWorkflowExecutionDecisionAttributes

    CompleteWorkflowExecutionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: CompleteWorkflowExecutionFailedCause, required: true, location_name: "cause"))
    CompleteWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    CompleteWorkflowExecutionFailedEventAttributes.struct_class = Types::CompleteWorkflowExecutionFailedEventAttributes

    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "executionStartToCloseTimeout"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, location_name: "taskList"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "taskStartToCloseTimeout"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, location_name: "childPolicy"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:workflow_type_version, Shapes::ShapeRef.new(shape: Version, location_name: "workflowTypeVersion"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "lambdaRole"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.struct_class = Types::ContinueAsNewWorkflowExecutionDecisionAttributes

    ContinueAsNewWorkflowExecutionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: ContinueAsNewWorkflowExecutionFailedCause, required: true, location_name: "cause"))
    ContinueAsNewWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    ContinueAsNewWorkflowExecutionFailedEventAttributes.struct_class = Types::ContinueAsNewWorkflowExecutionFailedEventAttributes

    CountClosedWorkflowExecutionsInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    CountClosedWorkflowExecutionsInput.add_member(:start_time_filter, Shapes::ShapeRef.new(shape: ExecutionTimeFilter, location_name: "startTimeFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:close_time_filter, Shapes::ShapeRef.new(shape: ExecutionTimeFilter, location_name: "closeTimeFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:execution_filter, Shapes::ShapeRef.new(shape: WorkflowExecutionFilter, location_name: "executionFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:type_filter, Shapes::ShapeRef.new(shape: WorkflowTypeFilter, location_name: "typeFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:tag_filter, Shapes::ShapeRef.new(shape: TagFilter, location_name: "tagFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:close_status_filter, Shapes::ShapeRef.new(shape: CloseStatusFilter, location_name: "closeStatusFilter"))
    CountClosedWorkflowExecutionsInput.struct_class = Types::CountClosedWorkflowExecutionsInput

    CountOpenWorkflowExecutionsInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    CountOpenWorkflowExecutionsInput.add_member(:start_time_filter, Shapes::ShapeRef.new(shape: ExecutionTimeFilter, required: true, location_name: "startTimeFilter"))
    CountOpenWorkflowExecutionsInput.add_member(:type_filter, Shapes::ShapeRef.new(shape: WorkflowTypeFilter, location_name: "typeFilter"))
    CountOpenWorkflowExecutionsInput.add_member(:tag_filter, Shapes::ShapeRef.new(shape: TagFilter, location_name: "tagFilter"))
    CountOpenWorkflowExecutionsInput.add_member(:execution_filter, Shapes::ShapeRef.new(shape: WorkflowExecutionFilter, location_name: "executionFilter"))
    CountOpenWorkflowExecutionsInput.struct_class = Types::CountOpenWorkflowExecutionsInput

    CountPendingActivityTasksInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    CountPendingActivityTasksInput.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    CountPendingActivityTasksInput.struct_class = Types::CountPendingActivityTasksInput

    CountPendingDecisionTasksInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    CountPendingDecisionTasksInput.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    CountPendingDecisionTasksInput.struct_class = Types::CountPendingDecisionTasksInput

    Decision.add_member(:decision_type, Shapes::ShapeRef.new(shape: DecisionType, required: true, location_name: "decisionType"))
    Decision.add_member(:schedule_activity_task_decision_attributes, Shapes::ShapeRef.new(shape: ScheduleActivityTaskDecisionAttributes, location_name: "scheduleActivityTaskDecisionAttributes"))
    Decision.add_member(:request_cancel_activity_task_decision_attributes, Shapes::ShapeRef.new(shape: RequestCancelActivityTaskDecisionAttributes, location_name: "requestCancelActivityTaskDecisionAttributes"))
    Decision.add_member(:complete_workflow_execution_decision_attributes, Shapes::ShapeRef.new(shape: CompleteWorkflowExecutionDecisionAttributes, location_name: "completeWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:fail_workflow_execution_decision_attributes, Shapes::ShapeRef.new(shape: FailWorkflowExecutionDecisionAttributes, location_name: "failWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:cancel_workflow_execution_decision_attributes, Shapes::ShapeRef.new(shape: CancelWorkflowExecutionDecisionAttributes, location_name: "cancelWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:continue_as_new_workflow_execution_decision_attributes, Shapes::ShapeRef.new(shape: ContinueAsNewWorkflowExecutionDecisionAttributes, location_name: "continueAsNewWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:record_marker_decision_attributes, Shapes::ShapeRef.new(shape: RecordMarkerDecisionAttributes, location_name: "recordMarkerDecisionAttributes"))
    Decision.add_member(:start_timer_decision_attributes, Shapes::ShapeRef.new(shape: StartTimerDecisionAttributes, location_name: "startTimerDecisionAttributes"))
    Decision.add_member(:cancel_timer_decision_attributes, Shapes::ShapeRef.new(shape: CancelTimerDecisionAttributes, location_name: "cancelTimerDecisionAttributes"))
    Decision.add_member(:signal_external_workflow_execution_decision_attributes, Shapes::ShapeRef.new(shape: SignalExternalWorkflowExecutionDecisionAttributes, location_name: "signalExternalWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:request_cancel_external_workflow_execution_decision_attributes, Shapes::ShapeRef.new(shape: RequestCancelExternalWorkflowExecutionDecisionAttributes, location_name: "requestCancelExternalWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:start_child_workflow_execution_decision_attributes, Shapes::ShapeRef.new(shape: StartChildWorkflowExecutionDecisionAttributes, location_name: "startChildWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:schedule_lambda_function_decision_attributes, Shapes::ShapeRef.new(shape: ScheduleLambdaFunctionDecisionAttributes, location_name: "scheduleLambdaFunctionDecisionAttributes"))
    Decision.struct_class = Types::Decision

    DecisionList.member = Shapes::ShapeRef.new(shape: Decision)

    DecisionTask.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    DecisionTask.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    DecisionTask.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    DecisionTask.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    DecisionTask.add_member(:events, Shapes::ShapeRef.new(shape: HistoryEventList, required: true, location_name: "events"))
    DecisionTask.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    DecisionTask.add_member(:previous_started_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "previousStartedEventId"))
    DecisionTask.struct_class = Types::DecisionTask

    DecisionTaskCompletedEventAttributes.add_member(:execution_context, Shapes::ShapeRef.new(shape: Data, location_name: "executionContext"))
    DecisionTaskCompletedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    DecisionTaskCompletedEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    DecisionTaskCompletedEventAttributes.struct_class = Types::DecisionTaskCompletedEventAttributes

    DecisionTaskScheduledEventAttributes.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    DecisionTaskScheduledEventAttributes.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    DecisionTaskScheduledEventAttributes.add_member(:start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "startToCloseTimeout"))
    DecisionTaskScheduledEventAttributes.struct_class = Types::DecisionTaskScheduledEventAttributes

    DecisionTaskStartedEventAttributes.add_member(:identity, Shapes::ShapeRef.new(shape: Identity, location_name: "identity"))
    DecisionTaskStartedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    DecisionTaskStartedEventAttributes.struct_class = Types::DecisionTaskStartedEventAttributes

    DecisionTaskTimedOutEventAttributes.add_member(:timeout_type, Shapes::ShapeRef.new(shape: DecisionTaskTimeoutType, required: true, location_name: "timeoutType"))
    DecisionTaskTimedOutEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    DecisionTaskTimedOutEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    DecisionTaskTimedOutEventAttributes.struct_class = Types::DecisionTaskTimedOutEventAttributes

    DeprecateActivityTypeInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    DeprecateActivityTypeInput.add_member(:activity_type, Shapes::ShapeRef.new(shape: ActivityType, required: true, location_name: "activityType"))
    DeprecateActivityTypeInput.struct_class = Types::DeprecateActivityTypeInput

    DeprecateDomainInput.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    DeprecateDomainInput.struct_class = Types::DeprecateDomainInput

    DeprecateWorkflowTypeInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    DeprecateWorkflowTypeInput.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    DeprecateWorkflowTypeInput.struct_class = Types::DeprecateWorkflowTypeInput

    DescribeActivityTypeInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    DescribeActivityTypeInput.add_member(:activity_type, Shapes::ShapeRef.new(shape: ActivityType, required: true, location_name: "activityType"))
    DescribeActivityTypeInput.struct_class = Types::DescribeActivityTypeInput

    DescribeDomainInput.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    DescribeDomainInput.struct_class = Types::DescribeDomainInput

    DescribeWorkflowExecutionInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    DescribeWorkflowExecutionInput.add_member(:execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "execution"))
    DescribeWorkflowExecutionInput.struct_class = Types::DescribeWorkflowExecutionInput

    DescribeWorkflowTypeInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    DescribeWorkflowTypeInput.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    DescribeWorkflowTypeInput.struct_class = Types::DescribeWorkflowTypeInput

    DomainConfiguration.add_member(:workflow_execution_retention_period_in_days, Shapes::ShapeRef.new(shape: DurationInDays, required: true, location_name: "workflowExecutionRetentionPeriodInDays"))
    DomainConfiguration.struct_class = Types::DomainConfiguration

    DomainDetail.add_member(:domain_info, Shapes::ShapeRef.new(shape: DomainInfo, required: true, location_name: "domainInfo"))
    DomainDetail.add_member(:configuration, Shapes::ShapeRef.new(shape: DomainConfiguration, required: true, location_name: "configuration"))
    DomainDetail.struct_class = Types::DomainDetail

    DomainInfo.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    DomainInfo.add_member(:status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "status"))
    DomainInfo.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DomainInfo.struct_class = Types::DomainInfo

    DomainInfoList.member = Shapes::ShapeRef.new(shape: DomainInfo)

    DomainInfos.add_member(:domain_infos, Shapes::ShapeRef.new(shape: DomainInfoList, required: true, location_name: "domainInfos"))
    DomainInfos.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    DomainInfos.struct_class = Types::DomainInfos

    ExecutionTimeFilter.add_member(:oldest_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "oldestDate"))
    ExecutionTimeFilter.add_member(:latest_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestDate"))
    ExecutionTimeFilter.struct_class = Types::ExecutionTimeFilter

    ExternalWorkflowExecutionCancelRequestedEventAttributes.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ExternalWorkflowExecutionCancelRequestedEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    ExternalWorkflowExecutionCancelRequestedEventAttributes.struct_class = Types::ExternalWorkflowExecutionCancelRequestedEventAttributes

    ExternalWorkflowExecutionSignaledEventAttributes.add_member(:workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "workflowExecution"))
    ExternalWorkflowExecutionSignaledEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    ExternalWorkflowExecutionSignaledEventAttributes.struct_class = Types::ExternalWorkflowExecutionSignaledEventAttributes

    FailWorkflowExecutionDecisionAttributes.add_member(:reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "reason"))
    FailWorkflowExecutionDecisionAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    FailWorkflowExecutionDecisionAttributes.struct_class = Types::FailWorkflowExecutionDecisionAttributes

    FailWorkflowExecutionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: FailWorkflowExecutionFailedCause, required: true, location_name: "cause"))
    FailWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    FailWorkflowExecutionFailedEventAttributes.struct_class = Types::FailWorkflowExecutionFailedEventAttributes

    GetWorkflowExecutionHistoryInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    GetWorkflowExecutionHistoryInput.add_member(:execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "execution"))
    GetWorkflowExecutionHistoryInput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    GetWorkflowExecutionHistoryInput.add_member(:maximum_page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "maximumPageSize"))
    GetWorkflowExecutionHistoryInput.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location_name: "reverseOrder"))
    GetWorkflowExecutionHistoryInput.struct_class = Types::GetWorkflowExecutionHistoryInput

    History.add_member(:events, Shapes::ShapeRef.new(shape: HistoryEventList, required: true, location_name: "events"))
    History.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    History.struct_class = Types::History

    HistoryEvent.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTimestamp"))
    HistoryEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "eventType"))
    HistoryEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    HistoryEvent.add_member(:workflow_execution_started_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionStartedEventAttributes, location_name: "workflowExecutionStartedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_completed_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionCompletedEventAttributes, location_name: "workflowExecutionCompletedEventAttributes"))
    HistoryEvent.add_member(:complete_workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: CompleteWorkflowExecutionFailedEventAttributes, location_name: "completeWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionFailedEventAttributes, location_name: "workflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:fail_workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: FailWorkflowExecutionFailedEventAttributes, location_name: "failWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_timed_out_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionTimedOutEventAttributes, location_name: "workflowExecutionTimedOutEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_canceled_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionCanceledEventAttributes, location_name: "workflowExecutionCanceledEventAttributes"))
    HistoryEvent.add_member(:cancel_workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: CancelWorkflowExecutionFailedEventAttributes, location_name: "cancelWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_continued_as_new_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionContinuedAsNewEventAttributes, location_name: "workflowExecutionContinuedAsNewEventAttributes"))
    HistoryEvent.add_member(:continue_as_new_workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: ContinueAsNewWorkflowExecutionFailedEventAttributes, location_name: "continueAsNewWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_terminated_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionTerminatedEventAttributes, location_name: "workflowExecutionTerminatedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_cancel_requested_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionCancelRequestedEventAttributes, location_name: "workflowExecutionCancelRequestedEventAttributes"))
    HistoryEvent.add_member(:decision_task_scheduled_event_attributes, Shapes::ShapeRef.new(shape: DecisionTaskScheduledEventAttributes, location_name: "decisionTaskScheduledEventAttributes"))
    HistoryEvent.add_member(:decision_task_started_event_attributes, Shapes::ShapeRef.new(shape: DecisionTaskStartedEventAttributes, location_name: "decisionTaskStartedEventAttributes"))
    HistoryEvent.add_member(:decision_task_completed_event_attributes, Shapes::ShapeRef.new(shape: DecisionTaskCompletedEventAttributes, location_name: "decisionTaskCompletedEventAttributes"))
    HistoryEvent.add_member(:decision_task_timed_out_event_attributes, Shapes::ShapeRef.new(shape: DecisionTaskTimedOutEventAttributes, location_name: "decisionTaskTimedOutEventAttributes"))
    HistoryEvent.add_member(:activity_task_scheduled_event_attributes, Shapes::ShapeRef.new(shape: ActivityTaskScheduledEventAttributes, location_name: "activityTaskScheduledEventAttributes"))
    HistoryEvent.add_member(:activity_task_started_event_attributes, Shapes::ShapeRef.new(shape: ActivityTaskStartedEventAttributes, location_name: "activityTaskStartedEventAttributes"))
    HistoryEvent.add_member(:activity_task_completed_event_attributes, Shapes::ShapeRef.new(shape: ActivityTaskCompletedEventAttributes, location_name: "activityTaskCompletedEventAttributes"))
    HistoryEvent.add_member(:activity_task_failed_event_attributes, Shapes::ShapeRef.new(shape: ActivityTaskFailedEventAttributes, location_name: "activityTaskFailedEventAttributes"))
    HistoryEvent.add_member(:activity_task_timed_out_event_attributes, Shapes::ShapeRef.new(shape: ActivityTaskTimedOutEventAttributes, location_name: "activityTaskTimedOutEventAttributes"))
    HistoryEvent.add_member(:activity_task_canceled_event_attributes, Shapes::ShapeRef.new(shape: ActivityTaskCanceledEventAttributes, location_name: "activityTaskCanceledEventAttributes"))
    HistoryEvent.add_member(:activity_task_cancel_requested_event_attributes, Shapes::ShapeRef.new(shape: ActivityTaskCancelRequestedEventAttributes, location_name: "activityTaskCancelRequestedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_signaled_event_attributes, Shapes::ShapeRef.new(shape: WorkflowExecutionSignaledEventAttributes, location_name: "workflowExecutionSignaledEventAttributes"))
    HistoryEvent.add_member(:marker_recorded_event_attributes, Shapes::ShapeRef.new(shape: MarkerRecordedEventAttributes, location_name: "markerRecordedEventAttributes"))
    HistoryEvent.add_member(:record_marker_failed_event_attributes, Shapes::ShapeRef.new(shape: RecordMarkerFailedEventAttributes, location_name: "recordMarkerFailedEventAttributes"))
    HistoryEvent.add_member(:timer_started_event_attributes, Shapes::ShapeRef.new(shape: TimerStartedEventAttributes, location_name: "timerStartedEventAttributes"))
    HistoryEvent.add_member(:timer_fired_event_attributes, Shapes::ShapeRef.new(shape: TimerFiredEventAttributes, location_name: "timerFiredEventAttributes"))
    HistoryEvent.add_member(:timer_canceled_event_attributes, Shapes::ShapeRef.new(shape: TimerCanceledEventAttributes, location_name: "timerCanceledEventAttributes"))
    HistoryEvent.add_member(:start_child_workflow_execution_initiated_event_attributes, Shapes::ShapeRef.new(shape: StartChildWorkflowExecutionInitiatedEventAttributes, location_name: "startChildWorkflowExecutionInitiatedEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_started_event_attributes, Shapes::ShapeRef.new(shape: ChildWorkflowExecutionStartedEventAttributes, location_name: "childWorkflowExecutionStartedEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_completed_event_attributes, Shapes::ShapeRef.new(shape: ChildWorkflowExecutionCompletedEventAttributes, location_name: "childWorkflowExecutionCompletedEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: ChildWorkflowExecutionFailedEventAttributes, location_name: "childWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_timed_out_event_attributes, Shapes::ShapeRef.new(shape: ChildWorkflowExecutionTimedOutEventAttributes, location_name: "childWorkflowExecutionTimedOutEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_canceled_event_attributes, Shapes::ShapeRef.new(shape: ChildWorkflowExecutionCanceledEventAttributes, location_name: "childWorkflowExecutionCanceledEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_terminated_event_attributes, Shapes::ShapeRef.new(shape: ChildWorkflowExecutionTerminatedEventAttributes, location_name: "childWorkflowExecutionTerminatedEventAttributes"))
    HistoryEvent.add_member(:signal_external_workflow_execution_initiated_event_attributes, Shapes::ShapeRef.new(shape: SignalExternalWorkflowExecutionInitiatedEventAttributes, location_name: "signalExternalWorkflowExecutionInitiatedEventAttributes"))
    HistoryEvent.add_member(:external_workflow_execution_signaled_event_attributes, Shapes::ShapeRef.new(shape: ExternalWorkflowExecutionSignaledEventAttributes, location_name: "externalWorkflowExecutionSignaledEventAttributes"))
    HistoryEvent.add_member(:signal_external_workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: SignalExternalWorkflowExecutionFailedEventAttributes, location_name: "signalExternalWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:external_workflow_execution_cancel_requested_event_attributes, Shapes::ShapeRef.new(shape: ExternalWorkflowExecutionCancelRequestedEventAttributes, location_name: "externalWorkflowExecutionCancelRequestedEventAttributes"))
    HistoryEvent.add_member(:request_cancel_external_workflow_execution_initiated_event_attributes, Shapes::ShapeRef.new(shape: RequestCancelExternalWorkflowExecutionInitiatedEventAttributes, location_name: "requestCancelExternalWorkflowExecutionInitiatedEventAttributes"))
    HistoryEvent.add_member(:request_cancel_external_workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: RequestCancelExternalWorkflowExecutionFailedEventAttributes, location_name: "requestCancelExternalWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:schedule_activity_task_failed_event_attributes, Shapes::ShapeRef.new(shape: ScheduleActivityTaskFailedEventAttributes, location_name: "scheduleActivityTaskFailedEventAttributes"))
    HistoryEvent.add_member(:request_cancel_activity_task_failed_event_attributes, Shapes::ShapeRef.new(shape: RequestCancelActivityTaskFailedEventAttributes, location_name: "requestCancelActivityTaskFailedEventAttributes"))
    HistoryEvent.add_member(:start_timer_failed_event_attributes, Shapes::ShapeRef.new(shape: StartTimerFailedEventAttributes, location_name: "startTimerFailedEventAttributes"))
    HistoryEvent.add_member(:cancel_timer_failed_event_attributes, Shapes::ShapeRef.new(shape: CancelTimerFailedEventAttributes, location_name: "cancelTimerFailedEventAttributes"))
    HistoryEvent.add_member(:start_child_workflow_execution_failed_event_attributes, Shapes::ShapeRef.new(shape: StartChildWorkflowExecutionFailedEventAttributes, location_name: "startChildWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:lambda_function_scheduled_event_attributes, Shapes::ShapeRef.new(shape: LambdaFunctionScheduledEventAttributes, location_name: "lambdaFunctionScheduledEventAttributes"))
    HistoryEvent.add_member(:lambda_function_started_event_attributes, Shapes::ShapeRef.new(shape: LambdaFunctionStartedEventAttributes, location_name: "lambdaFunctionStartedEventAttributes"))
    HistoryEvent.add_member(:lambda_function_completed_event_attributes, Shapes::ShapeRef.new(shape: LambdaFunctionCompletedEventAttributes, location_name: "lambdaFunctionCompletedEventAttributes"))
    HistoryEvent.add_member(:lambda_function_failed_event_attributes, Shapes::ShapeRef.new(shape: LambdaFunctionFailedEventAttributes, location_name: "lambdaFunctionFailedEventAttributes"))
    HistoryEvent.add_member(:lambda_function_timed_out_event_attributes, Shapes::ShapeRef.new(shape: LambdaFunctionTimedOutEventAttributes, location_name: "lambdaFunctionTimedOutEventAttributes"))
    HistoryEvent.add_member(:schedule_lambda_function_failed_event_attributes, Shapes::ShapeRef.new(shape: ScheduleLambdaFunctionFailedEventAttributes, location_name: "scheduleLambdaFunctionFailedEventAttributes"))
    HistoryEvent.add_member(:start_lambda_function_failed_event_attributes, Shapes::ShapeRef.new(shape: StartLambdaFunctionFailedEventAttributes, location_name: "startLambdaFunctionFailedEventAttributes"))
    HistoryEvent.struct_class = Types::HistoryEvent

    HistoryEventList.member = Shapes::ShapeRef.new(shape: HistoryEvent)

    LambdaFunctionCompletedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    LambdaFunctionCompletedEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    LambdaFunctionCompletedEventAttributes.add_member(:result, Shapes::ShapeRef.new(shape: Data, location_name: "result"))
    LambdaFunctionCompletedEventAttributes.struct_class = Types::LambdaFunctionCompletedEventAttributes

    LambdaFunctionFailedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    LambdaFunctionFailedEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    LambdaFunctionFailedEventAttributes.add_member(:reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "reason"))
    LambdaFunctionFailedEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    LambdaFunctionFailedEventAttributes.struct_class = Types::LambdaFunctionFailedEventAttributes

    LambdaFunctionScheduledEventAttributes.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location_name: "id"))
    LambdaFunctionScheduledEventAttributes.add_member(:name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "name"))
    LambdaFunctionScheduledEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    LambdaFunctionScheduledEventAttributes.add_member(:input, Shapes::ShapeRef.new(shape: FunctionInput, location_name: "input"))
    LambdaFunctionScheduledEventAttributes.add_member(:start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "startToCloseTimeout"))
    LambdaFunctionScheduledEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    LambdaFunctionScheduledEventAttributes.struct_class = Types::LambdaFunctionScheduledEventAttributes

    LambdaFunctionStartedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    LambdaFunctionStartedEventAttributes.struct_class = Types::LambdaFunctionStartedEventAttributes

    LambdaFunctionTimedOutEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "scheduledEventId"))
    LambdaFunctionTimedOutEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    LambdaFunctionTimedOutEventAttributes.add_member(:timeout_type, Shapes::ShapeRef.new(shape: LambdaFunctionTimeoutType, location_name: "timeoutType"))
    LambdaFunctionTimedOutEventAttributes.struct_class = Types::LambdaFunctionTimedOutEventAttributes

    ListActivityTypesInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    ListActivityTypesInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    ListActivityTypesInput.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "registrationStatus"))
    ListActivityTypesInput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    ListActivityTypesInput.add_member(:maximum_page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "maximumPageSize"))
    ListActivityTypesInput.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location_name: "reverseOrder"))
    ListActivityTypesInput.struct_class = Types::ListActivityTypesInput

    ListClosedWorkflowExecutionsInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    ListClosedWorkflowExecutionsInput.add_member(:start_time_filter, Shapes::ShapeRef.new(shape: ExecutionTimeFilter, location_name: "startTimeFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:close_time_filter, Shapes::ShapeRef.new(shape: ExecutionTimeFilter, location_name: "closeTimeFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:execution_filter, Shapes::ShapeRef.new(shape: WorkflowExecutionFilter, location_name: "executionFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:close_status_filter, Shapes::ShapeRef.new(shape: CloseStatusFilter, location_name: "closeStatusFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:type_filter, Shapes::ShapeRef.new(shape: WorkflowTypeFilter, location_name: "typeFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:tag_filter, Shapes::ShapeRef.new(shape: TagFilter, location_name: "tagFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    ListClosedWorkflowExecutionsInput.add_member(:maximum_page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "maximumPageSize"))
    ListClosedWorkflowExecutionsInput.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location_name: "reverseOrder"))
    ListClosedWorkflowExecutionsInput.struct_class = Types::ListClosedWorkflowExecutionsInput

    ListDomainsInput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    ListDomainsInput.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "registrationStatus"))
    ListDomainsInput.add_member(:maximum_page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "maximumPageSize"))
    ListDomainsInput.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location_name: "reverseOrder"))
    ListDomainsInput.struct_class = Types::ListDomainsInput

    ListOpenWorkflowExecutionsInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    ListOpenWorkflowExecutionsInput.add_member(:start_time_filter, Shapes::ShapeRef.new(shape: ExecutionTimeFilter, required: true, location_name: "startTimeFilter"))
    ListOpenWorkflowExecutionsInput.add_member(:type_filter, Shapes::ShapeRef.new(shape: WorkflowTypeFilter, location_name: "typeFilter"))
    ListOpenWorkflowExecutionsInput.add_member(:tag_filter, Shapes::ShapeRef.new(shape: TagFilter, location_name: "tagFilter"))
    ListOpenWorkflowExecutionsInput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    ListOpenWorkflowExecutionsInput.add_member(:maximum_page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "maximumPageSize"))
    ListOpenWorkflowExecutionsInput.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location_name: "reverseOrder"))
    ListOpenWorkflowExecutionsInput.add_member(:execution_filter, Shapes::ShapeRef.new(shape: WorkflowExecutionFilter, location_name: "executionFilter"))
    ListOpenWorkflowExecutionsInput.struct_class = Types::ListOpenWorkflowExecutionsInput

    ListWorkflowTypesInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    ListWorkflowTypesInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    ListWorkflowTypesInput.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "registrationStatus"))
    ListWorkflowTypesInput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    ListWorkflowTypesInput.add_member(:maximum_page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "maximumPageSize"))
    ListWorkflowTypesInput.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location_name: "reverseOrder"))
    ListWorkflowTypesInput.struct_class = Types::ListWorkflowTypesInput

    MarkerRecordedEventAttributes.add_member(:marker_name, Shapes::ShapeRef.new(shape: MarkerName, required: true, location_name: "markerName"))
    MarkerRecordedEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    MarkerRecordedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    MarkerRecordedEventAttributes.struct_class = Types::MarkerRecordedEventAttributes

    PendingTaskCount.add_member(:count, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "count"))
    PendingTaskCount.add_member(:truncated, Shapes::ShapeRef.new(shape: Truncated, location_name: "truncated"))
    PendingTaskCount.struct_class = Types::PendingTaskCount

    PollForActivityTaskInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    PollForActivityTaskInput.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    PollForActivityTaskInput.add_member(:identity, Shapes::ShapeRef.new(shape: Identity, location_name: "identity"))
    PollForActivityTaskInput.struct_class = Types::PollForActivityTaskInput

    PollForDecisionTaskInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    PollForDecisionTaskInput.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    PollForDecisionTaskInput.add_member(:identity, Shapes::ShapeRef.new(shape: Identity, location_name: "identity"))
    PollForDecisionTaskInput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    PollForDecisionTaskInput.add_member(:maximum_page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "maximumPageSize"))
    PollForDecisionTaskInput.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location_name: "reverseOrder"))
    PollForDecisionTaskInput.struct_class = Types::PollForDecisionTaskInput

    RecordActivityTaskHeartbeatInput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    RecordActivityTaskHeartbeatInput.add_member(:details, Shapes::ShapeRef.new(shape: LimitedData, location_name: "details"))
    RecordActivityTaskHeartbeatInput.struct_class = Types::RecordActivityTaskHeartbeatInput

    RecordMarkerDecisionAttributes.add_member(:marker_name, Shapes::ShapeRef.new(shape: MarkerName, required: true, location_name: "markerName"))
    RecordMarkerDecisionAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    RecordMarkerDecisionAttributes.struct_class = Types::RecordMarkerDecisionAttributes

    RecordMarkerFailedEventAttributes.add_member(:marker_name, Shapes::ShapeRef.new(shape: MarkerName, required: true, location_name: "markerName"))
    RecordMarkerFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: RecordMarkerFailedCause, required: true, location_name: "cause"))
    RecordMarkerFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    RecordMarkerFailedEventAttributes.struct_class = Types::RecordMarkerFailedEventAttributes

    RegisterActivityTypeInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    RegisterActivityTypeInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    RegisterActivityTypeInput.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    RegisterActivityTypeInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegisterActivityTypeInput.add_member(:default_task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskStartToCloseTimeout"))
    RegisterActivityTypeInput.add_member(:default_task_heartbeat_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskHeartbeatTimeout"))
    RegisterActivityTypeInput.add_member(:default_task_list, Shapes::ShapeRef.new(shape: TaskList, location_name: "defaultTaskList"))
    RegisterActivityTypeInput.add_member(:default_task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "defaultTaskPriority"))
    RegisterActivityTypeInput.add_member(:default_task_schedule_to_start_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskScheduleToStartTimeout"))
    RegisterActivityTypeInput.add_member(:default_task_schedule_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskScheduleToCloseTimeout"))
    RegisterActivityTypeInput.struct_class = Types::RegisterActivityTypeInput

    RegisterDomainInput.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    RegisterDomainInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegisterDomainInput.add_member(:workflow_execution_retention_period_in_days, Shapes::ShapeRef.new(shape: DurationInDays, required: true, location_name: "workflowExecutionRetentionPeriodInDays"))
    RegisterDomainInput.struct_class = Types::RegisterDomainInput

    RegisterWorkflowTypeInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    RegisterWorkflowTypeInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    RegisterWorkflowTypeInput.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    RegisterWorkflowTypeInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegisterWorkflowTypeInput.add_member(:default_task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskStartToCloseTimeout"))
    RegisterWorkflowTypeInput.add_member(:default_execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultExecutionStartToCloseTimeout"))
    RegisterWorkflowTypeInput.add_member(:default_task_list, Shapes::ShapeRef.new(shape: TaskList, location_name: "defaultTaskList"))
    RegisterWorkflowTypeInput.add_member(:default_task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "defaultTaskPriority"))
    RegisterWorkflowTypeInput.add_member(:default_child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, location_name: "defaultChildPolicy"))
    RegisterWorkflowTypeInput.add_member(:default_lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "defaultLambdaRole"))
    RegisterWorkflowTypeInput.struct_class = Types::RegisterWorkflowTypeInput

    RequestCancelActivityTaskDecisionAttributes.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    RequestCancelActivityTaskDecisionAttributes.struct_class = Types::RequestCancelActivityTaskDecisionAttributes

    RequestCancelActivityTaskFailedEventAttributes.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    RequestCancelActivityTaskFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: RequestCancelActivityTaskFailedCause, required: true, location_name: "cause"))
    RequestCancelActivityTaskFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    RequestCancelActivityTaskFailedEventAttributes.struct_class = Types::RequestCancelActivityTaskFailedEventAttributes

    RequestCancelExternalWorkflowExecutionDecisionAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    RequestCancelExternalWorkflowExecutionDecisionAttributes.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    RequestCancelExternalWorkflowExecutionDecisionAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    RequestCancelExternalWorkflowExecutionDecisionAttributes.struct_class = Types::RequestCancelExternalWorkflowExecutionDecisionAttributes

    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: RequestCancelExternalWorkflowExecutionFailedCause, required: true, location_name: "cause"))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.struct_class = Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes

    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.struct_class = Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes

    RequestCancelWorkflowExecutionInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    RequestCancelWorkflowExecutionInput.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    RequestCancelWorkflowExecutionInput.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    RequestCancelWorkflowExecutionInput.struct_class = Types::RequestCancelWorkflowExecutionInput

    RespondActivityTaskCanceledInput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    RespondActivityTaskCanceledInput.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    RespondActivityTaskCanceledInput.struct_class = Types::RespondActivityTaskCanceledInput

    RespondActivityTaskCompletedInput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    RespondActivityTaskCompletedInput.add_member(:result, Shapes::ShapeRef.new(shape: Data, location_name: "result"))
    RespondActivityTaskCompletedInput.struct_class = Types::RespondActivityTaskCompletedInput

    RespondActivityTaskFailedInput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    RespondActivityTaskFailedInput.add_member(:reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "reason"))
    RespondActivityTaskFailedInput.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    RespondActivityTaskFailedInput.struct_class = Types::RespondActivityTaskFailedInput

    RespondDecisionTaskCompletedInput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    RespondDecisionTaskCompletedInput.add_member(:decisions, Shapes::ShapeRef.new(shape: DecisionList, location_name: "decisions"))
    RespondDecisionTaskCompletedInput.add_member(:execution_context, Shapes::ShapeRef.new(shape: Data, location_name: "executionContext"))
    RespondDecisionTaskCompletedInput.struct_class = Types::RespondDecisionTaskCompletedInput

    Run.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunId, location_name: "runId"))
    Run.struct_class = Types::Run

    ScheduleActivityTaskDecisionAttributes.add_member(:activity_type, Shapes::ShapeRef.new(shape: ActivityType, required: true, location_name: "activityType"))
    ScheduleActivityTaskDecisionAttributes.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    ScheduleActivityTaskDecisionAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    ScheduleActivityTaskDecisionAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    ScheduleActivityTaskDecisionAttributes.add_member(:schedule_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "scheduleToCloseTimeout"))
    ScheduleActivityTaskDecisionAttributes.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, location_name: "taskList"))
    ScheduleActivityTaskDecisionAttributes.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    ScheduleActivityTaskDecisionAttributes.add_member(:schedule_to_start_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "scheduleToStartTimeout"))
    ScheduleActivityTaskDecisionAttributes.add_member(:start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "startToCloseTimeout"))
    ScheduleActivityTaskDecisionAttributes.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "heartbeatTimeout"))
    ScheduleActivityTaskDecisionAttributes.struct_class = Types::ScheduleActivityTaskDecisionAttributes

    ScheduleActivityTaskFailedEventAttributes.add_member(:activity_type, Shapes::ShapeRef.new(shape: ActivityType, required: true, location_name: "activityType"))
    ScheduleActivityTaskFailedEventAttributes.add_member(:activity_id, Shapes::ShapeRef.new(shape: ActivityId, required: true, location_name: "activityId"))
    ScheduleActivityTaskFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: ScheduleActivityTaskFailedCause, required: true, location_name: "cause"))
    ScheduleActivityTaskFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    ScheduleActivityTaskFailedEventAttributes.struct_class = Types::ScheduleActivityTaskFailedEventAttributes

    ScheduleLambdaFunctionDecisionAttributes.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location_name: "id"))
    ScheduleLambdaFunctionDecisionAttributes.add_member(:name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "name"))
    ScheduleLambdaFunctionDecisionAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    ScheduleLambdaFunctionDecisionAttributes.add_member(:input, Shapes::ShapeRef.new(shape: FunctionInput, location_name: "input"))
    ScheduleLambdaFunctionDecisionAttributes.add_member(:start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "startToCloseTimeout"))
    ScheduleLambdaFunctionDecisionAttributes.struct_class = Types::ScheduleLambdaFunctionDecisionAttributes

    ScheduleLambdaFunctionFailedEventAttributes.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location_name: "id"))
    ScheduleLambdaFunctionFailedEventAttributes.add_member(:name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "name"))
    ScheduleLambdaFunctionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: ScheduleLambdaFunctionFailedCause, required: true, location_name: "cause"))
    ScheduleLambdaFunctionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    ScheduleLambdaFunctionFailedEventAttributes.struct_class = Types::ScheduleLambdaFunctionFailedEventAttributes

    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:signal_name, Shapes::ShapeRef.new(shape: SignalName, required: true, location_name: "signalName"))
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    SignalExternalWorkflowExecutionDecisionAttributes.struct_class = Types::SignalExternalWorkflowExecutionDecisionAttributes

    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: SignalExternalWorkflowExecutionFailedCause, required: true, location_name: "cause"))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    SignalExternalWorkflowExecutionFailedEventAttributes.struct_class = Types::SignalExternalWorkflowExecutionFailedEventAttributes

    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:signal_name, Shapes::ShapeRef.new(shape: SignalName, required: true, location_name: "signalName"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.struct_class = Types::SignalExternalWorkflowExecutionInitiatedEventAttributes

    SignalWorkflowExecutionInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    SignalWorkflowExecutionInput.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    SignalWorkflowExecutionInput.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    SignalWorkflowExecutionInput.add_member(:signal_name, Shapes::ShapeRef.new(shape: SignalName, required: true, location_name: "signalName"))
    SignalWorkflowExecutionInput.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    SignalWorkflowExecutionInput.struct_class = Types::SignalWorkflowExecutionInput

    StartChildWorkflowExecutionDecisionAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "executionStartToCloseTimeout"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, location_name: "taskList"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "taskStartToCloseTimeout"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, location_name: "childPolicy"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "lambdaRole"))
    StartChildWorkflowExecutionDecisionAttributes.struct_class = Types::StartChildWorkflowExecutionDecisionAttributes

    StartChildWorkflowExecutionFailedEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: StartChildWorkflowExecutionFailedCause, required: true, location_name: "cause"))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:initiated_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "initiatedEventId"))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    StartChildWorkflowExecutionFailedEventAttributes.struct_class = Types::StartChildWorkflowExecutionFailedEventAttributes

    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "executionStartToCloseTimeout"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, required: true, location_name: "childPolicy"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "taskStartToCloseTimeout"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "lambdaRole"))
    StartChildWorkflowExecutionInitiatedEventAttributes.struct_class = Types::StartChildWorkflowExecutionInitiatedEventAttributes

    StartLambdaFunctionFailedEventAttributes.add_member(:scheduled_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "scheduledEventId"))
    StartLambdaFunctionFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: StartLambdaFunctionFailedCause, location_name: "cause"))
    StartLambdaFunctionFailedEventAttributes.add_member(:message, Shapes::ShapeRef.new(shape: CauseMessage, location_name: "message"))
    StartLambdaFunctionFailedEventAttributes.struct_class = Types::StartLambdaFunctionFailedEventAttributes

    StartTimerDecisionAttributes.add_member(:timer_id, Shapes::ShapeRef.new(shape: TimerId, required: true, location_name: "timerId"))
    StartTimerDecisionAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    StartTimerDecisionAttributes.add_member(:start_to_fire_timeout, Shapes::ShapeRef.new(shape: DurationInSeconds, required: true, location_name: "startToFireTimeout"))
    StartTimerDecisionAttributes.struct_class = Types::StartTimerDecisionAttributes

    StartTimerFailedEventAttributes.add_member(:timer_id, Shapes::ShapeRef.new(shape: TimerId, required: true, location_name: "timerId"))
    StartTimerFailedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: StartTimerFailedCause, required: true, location_name: "cause"))
    StartTimerFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    StartTimerFailedEventAttributes.struct_class = Types::StartTimerFailedEventAttributes

    StartWorkflowExecutionInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    StartWorkflowExecutionInput.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    StartWorkflowExecutionInput.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    StartWorkflowExecutionInput.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, location_name: "taskList"))
    StartWorkflowExecutionInput.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    StartWorkflowExecutionInput.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    StartWorkflowExecutionInput.add_member(:execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "executionStartToCloseTimeout"))
    StartWorkflowExecutionInput.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    StartWorkflowExecutionInput.add_member(:task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "taskStartToCloseTimeout"))
    StartWorkflowExecutionInput.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, location_name: "childPolicy"))
    StartWorkflowExecutionInput.add_member(:lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "lambdaRole"))
    StartWorkflowExecutionInput.struct_class = Types::StartWorkflowExecutionInput

    TagFilter.add_member(:tag, Shapes::ShapeRef.new(shape: Tag, required: true, location_name: "tag"))
    TagFilter.struct_class = Types::TagFilter

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TaskList.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    TaskList.struct_class = Types::TaskList

    TerminateWorkflowExecutionInput.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    TerminateWorkflowExecutionInput.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    TerminateWorkflowExecutionInput.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "runId"))
    TerminateWorkflowExecutionInput.add_member(:reason, Shapes::ShapeRef.new(shape: TerminateReason, location_name: "reason"))
    TerminateWorkflowExecutionInput.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    TerminateWorkflowExecutionInput.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, location_name: "childPolicy"))
    TerminateWorkflowExecutionInput.struct_class = Types::TerminateWorkflowExecutionInput

    TimerCanceledEventAttributes.add_member(:timer_id, Shapes::ShapeRef.new(shape: TimerId, required: true, location_name: "timerId"))
    TimerCanceledEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    TimerCanceledEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    TimerCanceledEventAttributes.struct_class = Types::TimerCanceledEventAttributes

    TimerFiredEventAttributes.add_member(:timer_id, Shapes::ShapeRef.new(shape: TimerId, required: true, location_name: "timerId"))
    TimerFiredEventAttributes.add_member(:started_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "startedEventId"))
    TimerFiredEventAttributes.struct_class = Types::TimerFiredEventAttributes

    TimerStartedEventAttributes.add_member(:timer_id, Shapes::ShapeRef.new(shape: TimerId, required: true, location_name: "timerId"))
    TimerStartedEventAttributes.add_member(:control, Shapes::ShapeRef.new(shape: Data, location_name: "control"))
    TimerStartedEventAttributes.add_member(:start_to_fire_timeout, Shapes::ShapeRef.new(shape: DurationInSeconds, required: true, location_name: "startToFireTimeout"))
    TimerStartedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    TimerStartedEventAttributes.struct_class = Types::TimerStartedEventAttributes

    WorkflowExecution.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    WorkflowExecution.add_member(:run_id, Shapes::ShapeRef.new(shape: WorkflowRunId, required: true, location_name: "runId"))
    WorkflowExecution.struct_class = Types::WorkflowExecution

    WorkflowExecutionCancelRequestedEventAttributes.add_member(:external_workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, location_name: "externalWorkflowExecution"))
    WorkflowExecutionCancelRequestedEventAttributes.add_member(:external_initiated_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "externalInitiatedEventId"))
    WorkflowExecutionCancelRequestedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: WorkflowExecutionCancelRequestedCause, location_name: "cause"))
    WorkflowExecutionCancelRequestedEventAttributes.struct_class = Types::WorkflowExecutionCancelRequestedEventAttributes

    WorkflowExecutionCanceledEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    WorkflowExecutionCanceledEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    WorkflowExecutionCanceledEventAttributes.struct_class = Types::WorkflowExecutionCanceledEventAttributes

    WorkflowExecutionCompletedEventAttributes.add_member(:result, Shapes::ShapeRef.new(shape: Data, location_name: "result"))
    WorkflowExecutionCompletedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    WorkflowExecutionCompletedEventAttributes.struct_class = Types::WorkflowExecutionCompletedEventAttributes

    WorkflowExecutionConfiguration.add_member(:task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSeconds, required: true, location_name: "taskStartToCloseTimeout"))
    WorkflowExecutionConfiguration.add_member(:execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSeconds, required: true, location_name: "executionStartToCloseTimeout"))
    WorkflowExecutionConfiguration.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    WorkflowExecutionConfiguration.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    WorkflowExecutionConfiguration.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, required: true, location_name: "childPolicy"))
    WorkflowExecutionConfiguration.add_member(:lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "lambdaRole"))
    WorkflowExecutionConfiguration.struct_class = Types::WorkflowExecutionConfiguration

    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:new_execution_run_id, Shapes::ShapeRef.new(shape: WorkflowRunId, required: true, location_name: "newExecutionRunId"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "executionStartToCloseTimeout"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "taskStartToCloseTimeout"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, required: true, location_name: "childPolicy"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "lambdaRole"))
    WorkflowExecutionContinuedAsNewEventAttributes.struct_class = Types::WorkflowExecutionContinuedAsNewEventAttributes

    WorkflowExecutionCount.add_member(:count, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "count"))
    WorkflowExecutionCount.add_member(:truncated, Shapes::ShapeRef.new(shape: Truncated, location_name: "truncated"))
    WorkflowExecutionCount.struct_class = Types::WorkflowExecutionCount

    WorkflowExecutionDetail.add_member(:execution_info, Shapes::ShapeRef.new(shape: WorkflowExecutionInfo, required: true, location_name: "executionInfo"))
    WorkflowExecutionDetail.add_member(:execution_configuration, Shapes::ShapeRef.new(shape: WorkflowExecutionConfiguration, required: true, location_name: "executionConfiguration"))
    WorkflowExecutionDetail.add_member(:open_counts, Shapes::ShapeRef.new(shape: WorkflowExecutionOpenCounts, required: true, location_name: "openCounts"))
    WorkflowExecutionDetail.add_member(:latest_activity_task_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestActivityTaskTimestamp"))
    WorkflowExecutionDetail.add_member(:latest_execution_context, Shapes::ShapeRef.new(shape: Data, location_name: "latestExecutionContext"))
    WorkflowExecutionDetail.struct_class = Types::WorkflowExecutionDetail

    WorkflowExecutionFailedEventAttributes.add_member(:reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "reason"))
    WorkflowExecutionFailedEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    WorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "decisionTaskCompletedEventId"))
    WorkflowExecutionFailedEventAttributes.struct_class = Types::WorkflowExecutionFailedEventAttributes

    WorkflowExecutionFilter.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "workflowId"))
    WorkflowExecutionFilter.struct_class = Types::WorkflowExecutionFilter

    WorkflowExecutionInfo.add_member(:execution, Shapes::ShapeRef.new(shape: WorkflowExecution, required: true, location_name: "execution"))
    WorkflowExecutionInfo.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    WorkflowExecutionInfo.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTimestamp"))
    WorkflowExecutionInfo.add_member(:close_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "closeTimestamp"))
    WorkflowExecutionInfo.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "executionStatus"))
    WorkflowExecutionInfo.add_member(:close_status, Shapes::ShapeRef.new(shape: CloseStatus, location_name: "closeStatus"))
    WorkflowExecutionInfo.add_member(:parent, Shapes::ShapeRef.new(shape: WorkflowExecution, location_name: "parent"))
    WorkflowExecutionInfo.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    WorkflowExecutionInfo.add_member(:cancel_requested, Shapes::ShapeRef.new(shape: Canceled, location_name: "cancelRequested"))
    WorkflowExecutionInfo.struct_class = Types::WorkflowExecutionInfo

    WorkflowExecutionInfoList.member = Shapes::ShapeRef.new(shape: WorkflowExecutionInfo)

    WorkflowExecutionInfos.add_member(:execution_infos, Shapes::ShapeRef.new(shape: WorkflowExecutionInfoList, required: true, location_name: "executionInfos"))
    WorkflowExecutionInfos.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    WorkflowExecutionInfos.struct_class = Types::WorkflowExecutionInfos

    WorkflowExecutionOpenCounts.add_member(:open_activity_tasks, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "openActivityTasks"))
    WorkflowExecutionOpenCounts.add_member(:open_decision_tasks, Shapes::ShapeRef.new(shape: OpenDecisionTasksCount, required: true, location_name: "openDecisionTasks"))
    WorkflowExecutionOpenCounts.add_member(:open_timers, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "openTimers"))
    WorkflowExecutionOpenCounts.add_member(:open_child_workflow_executions, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "openChildWorkflowExecutions"))
    WorkflowExecutionOpenCounts.add_member(:open_lambda_functions, Shapes::ShapeRef.new(shape: Count, location_name: "openLambdaFunctions"))
    WorkflowExecutionOpenCounts.struct_class = Types::WorkflowExecutionOpenCounts

    WorkflowExecutionSignaledEventAttributes.add_member(:signal_name, Shapes::ShapeRef.new(shape: SignalName, required: true, location_name: "signalName"))
    WorkflowExecutionSignaledEventAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    WorkflowExecutionSignaledEventAttributes.add_member(:external_workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, location_name: "externalWorkflowExecution"))
    WorkflowExecutionSignaledEventAttributes.add_member(:external_initiated_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "externalInitiatedEventId"))
    WorkflowExecutionSignaledEventAttributes.struct_class = Types::WorkflowExecutionSignaledEventAttributes

    WorkflowExecutionStartedEventAttributes.add_member(:input, Shapes::ShapeRef.new(shape: Data, location_name: "input"))
    WorkflowExecutionStartedEventAttributes.add_member(:execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "executionStartToCloseTimeout"))
    WorkflowExecutionStartedEventAttributes.add_member(:task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "taskStartToCloseTimeout"))
    WorkflowExecutionStartedEventAttributes.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, required: true, location_name: "childPolicy"))
    WorkflowExecutionStartedEventAttributes.add_member(:task_list, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "taskList"))
    WorkflowExecutionStartedEventAttributes.add_member(:task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "taskPriority"))
    WorkflowExecutionStartedEventAttributes.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    WorkflowExecutionStartedEventAttributes.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "tagList"))
    WorkflowExecutionStartedEventAttributes.add_member(:continued_execution_run_id, Shapes::ShapeRef.new(shape: WorkflowRunIdOptional, location_name: "continuedExecutionRunId"))
    WorkflowExecutionStartedEventAttributes.add_member(:parent_workflow_execution, Shapes::ShapeRef.new(shape: WorkflowExecution, location_name: "parentWorkflowExecution"))
    WorkflowExecutionStartedEventAttributes.add_member(:parent_initiated_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "parentInitiatedEventId"))
    WorkflowExecutionStartedEventAttributes.add_member(:lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "lambdaRole"))
    WorkflowExecutionStartedEventAttributes.struct_class = Types::WorkflowExecutionStartedEventAttributes

    WorkflowExecutionTerminatedEventAttributes.add_member(:reason, Shapes::ShapeRef.new(shape: TerminateReason, location_name: "reason"))
    WorkflowExecutionTerminatedEventAttributes.add_member(:details, Shapes::ShapeRef.new(shape: Data, location_name: "details"))
    WorkflowExecutionTerminatedEventAttributes.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, required: true, location_name: "childPolicy"))
    WorkflowExecutionTerminatedEventAttributes.add_member(:cause, Shapes::ShapeRef.new(shape: WorkflowExecutionTerminatedCause, location_name: "cause"))
    WorkflowExecutionTerminatedEventAttributes.struct_class = Types::WorkflowExecutionTerminatedEventAttributes

    WorkflowExecutionTimedOutEventAttributes.add_member(:timeout_type, Shapes::ShapeRef.new(shape: WorkflowExecutionTimeoutType, required: true, location_name: "timeoutType"))
    WorkflowExecutionTimedOutEventAttributes.add_member(:child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, required: true, location_name: "childPolicy"))
    WorkflowExecutionTimedOutEventAttributes.struct_class = Types::WorkflowExecutionTimedOutEventAttributes

    WorkflowType.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    WorkflowType.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    WorkflowType.struct_class = Types::WorkflowType

    WorkflowTypeConfiguration.add_member(:default_task_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultTaskStartToCloseTimeout"))
    WorkflowTypeConfiguration.add_member(:default_execution_start_to_close_timeout, Shapes::ShapeRef.new(shape: DurationInSecondsOptional, location_name: "defaultExecutionStartToCloseTimeout"))
    WorkflowTypeConfiguration.add_member(:default_task_list, Shapes::ShapeRef.new(shape: TaskList, location_name: "defaultTaskList"))
    WorkflowTypeConfiguration.add_member(:default_task_priority, Shapes::ShapeRef.new(shape: TaskPriority, location_name: "defaultTaskPriority"))
    WorkflowTypeConfiguration.add_member(:default_child_policy, Shapes::ShapeRef.new(shape: ChildPolicy, location_name: "defaultChildPolicy"))
    WorkflowTypeConfiguration.add_member(:default_lambda_role, Shapes::ShapeRef.new(shape: Arn, location_name: "defaultLambdaRole"))
    WorkflowTypeConfiguration.struct_class = Types::WorkflowTypeConfiguration

    WorkflowTypeDetail.add_member(:type_info, Shapes::ShapeRef.new(shape: WorkflowTypeInfo, required: true, location_name: "typeInfo"))
    WorkflowTypeDetail.add_member(:configuration, Shapes::ShapeRef.new(shape: WorkflowTypeConfiguration, required: true, location_name: "configuration"))
    WorkflowTypeDetail.struct_class = Types::WorkflowTypeDetail

    WorkflowTypeFilter.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    WorkflowTypeFilter.add_member(:version, Shapes::ShapeRef.new(shape: VersionOptional, location_name: "version"))
    WorkflowTypeFilter.struct_class = Types::WorkflowTypeFilter

    WorkflowTypeInfo.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "workflowType"))
    WorkflowTypeInfo.add_member(:status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "status"))
    WorkflowTypeInfo.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    WorkflowTypeInfo.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    WorkflowTypeInfo.add_member(:deprecation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "deprecationDate"))
    WorkflowTypeInfo.struct_class = Types::WorkflowTypeInfo

    WorkflowTypeInfoList.member = Shapes::ShapeRef.new(shape: WorkflowTypeInfo)

    WorkflowTypeInfos.add_member(:type_infos, Shapes::ShapeRef.new(shape: WorkflowTypeInfoList, required: true, location_name: "typeInfos"))
    WorkflowTypeInfos.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextPageToken"))
    WorkflowTypeInfos.struct_class = Types::WorkflowTypeInfos


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-01-25"

      api.metadata = {
        "apiVersion" => "2012-01-25",
        "endpointPrefix" => "swf",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon SWF",
        "serviceFullName" => "Amazon Simple Workflow Service",
        "signatureVersion" => "v4",
        "targetPrefix" => "SimpleWorkflowService",
        "timestampFormat" => "unixTimestamp",
        "uid" => "swf-2012-01-25",
      }

      api.add_operation(:count_closed_workflow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CountClosedWorkflowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CountClosedWorkflowExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: WorkflowExecutionCount)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:count_open_workflow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CountOpenWorkflowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CountOpenWorkflowExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: WorkflowExecutionCount)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:count_pending_activity_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CountPendingActivityTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CountPendingActivityTasksInput)
        o.output = Shapes::ShapeRef.new(shape: PendingTaskCount)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:count_pending_decision_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CountPendingDecisionTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CountPendingDecisionTasksInput)
        o.output = Shapes::ShapeRef.new(shape: PendingTaskCount)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:deprecate_activity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeprecateActivityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeprecateActivityTypeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: TypeDeprecatedFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:deprecate_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeprecateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeprecateDomainInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainDeprecatedFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:deprecate_workflow_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeprecateWorkflowType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeprecateWorkflowTypeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: TypeDeprecatedFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:describe_activity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeActivityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeActivityTypeInput)
        o.output = Shapes::ShapeRef.new(shape: ActivityTypeDetail)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:describe_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainInput)
        o.output = Shapes::ShapeRef.new(shape: DomainDetail)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:describe_workflow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkflowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkflowExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: WorkflowExecutionDetail)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:describe_workflow_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkflowType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkflowTypeInput)
        o.output = Shapes::ShapeRef.new(shape: WorkflowTypeDetail)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:get_workflow_execution_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowExecutionHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowExecutionHistoryInput)
        o.output = Shapes::ShapeRef.new(shape: History)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "maximum_page_size",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:list_activity_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActivityTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListActivityTypesInput)
        o.output = Shapes::ShapeRef.new(shape: ActivityTypeInfos)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "maximum_page_size",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:list_closed_workflow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClosedWorkflowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListClosedWorkflowExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: WorkflowExecutionInfos)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "maximum_page_size",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: DomainInfos)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "maximum_page_size",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:list_open_workflow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpenWorkflowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpenWorkflowExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: WorkflowExecutionInfos)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "maximum_page_size",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:list_workflow_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowTypesInput)
        o.output = Shapes::ShapeRef.new(shape: WorkflowTypeInfos)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "maximum_page_size",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:poll_for_activity_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PollForActivityTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PollForActivityTaskInput)
        o.output = Shapes::ShapeRef.new(shape: ActivityTask)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
      end)

      api.add_operation(:poll_for_decision_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PollForDecisionTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PollForDecisionTaskInput)
        o.output = Shapes::ShapeRef.new(shape: DecisionTask)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "maximum_page_size",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:record_activity_task_heartbeat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RecordActivityTaskHeartbeat"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RecordActivityTaskHeartbeatInput)
        o.output = Shapes::ShapeRef.new(shape: ActivityTaskStatus)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:register_activity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterActivityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterActivityTypeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TypeAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:register_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterDomainInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DomainAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:register_workflow_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterWorkflowType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterWorkflowTypeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TypeAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:request_cancel_workflow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestCancelWorkflowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestCancelWorkflowExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:respond_activity_task_canceled, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RespondActivityTaskCanceled"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RespondActivityTaskCanceledInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:respond_activity_task_completed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RespondActivityTaskCompleted"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RespondActivityTaskCompletedInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:respond_activity_task_failed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RespondActivityTaskFailed"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RespondActivityTaskFailedInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:respond_decision_task_completed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RespondDecisionTaskCompleted"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RespondDecisionTaskCompletedInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:signal_workflow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SignalWorkflowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SignalWorkflowExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)

      api.add_operation(:start_workflow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWorkflowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartWorkflowExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: Run)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: TypeDeprecatedFault)
        o.errors << Shapes::ShapeRef.new(shape: WorkflowExecutionAlreadyStartedFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
        o.errors << Shapes::ShapeRef.new(shape: DefaultUndefinedFault)
      end)

      api.add_operation(:terminate_workflow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateWorkflowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateWorkflowExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceFault)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedFault)
      end)
    end

  end
end
