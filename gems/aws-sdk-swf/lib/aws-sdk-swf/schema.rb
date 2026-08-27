# frozen_string_literal: true

# This is generated code!

module Aws::SWF
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#ActivityId", name: "ActivityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ActivityTaskCancelRequestedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTaskCancelRequestedEventAttributes", name: "ActivityTaskCancelRequestedEventAttributes")
    ActivityTaskCanceledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTaskCanceledEventAttributes", name: "ActivityTaskCanceledEventAttributes")
    ActivityTaskCompletedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTaskCompletedEventAttributes", name: "ActivityTaskCompletedEventAttributes")
    ActivityTaskFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTaskFailedEventAttributes", name: "ActivityTaskFailedEventAttributes")
    ActivityTaskScheduledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTaskScheduledEventAttributes", name: "ActivityTaskScheduledEventAttributes")
    ActivityTaskStartedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTaskStartedEventAttributes", name: "ActivityTaskStartedEventAttributes")
    ActivityTaskTimedOutEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTaskTimedOutEventAttributes", name: "ActivityTaskTimedOutEventAttributes")
    ActivityTaskTimeoutType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#ActivityTaskTimeoutType", name: "ActivityTaskTimeoutType")
    ActivityType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityType", name: "ActivityType")
    ActivityTypeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTypeConfiguration", name: "ActivityTypeConfiguration")
    ActivityTypeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ActivityTypeInfo", name: "ActivityTypeInfo")
    ActivityTypeInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#ActivityTypeInfoList", name: "ActivityTypeInfoList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    CancelTimerDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CancelTimerDecisionAttributes", name: "CancelTimerDecisionAttributes")
    CancelTimerFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#CancelTimerFailedCause", name: "CancelTimerFailedCause")
    CancelTimerFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CancelTimerFailedEventAttributes", name: "CancelTimerFailedEventAttributes")
    CancelWorkflowExecutionDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CancelWorkflowExecutionDecisionAttributes", name: "CancelWorkflowExecutionDecisionAttributes")
    CancelWorkflowExecutionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#CancelWorkflowExecutionFailedCause", name: "CancelWorkflowExecutionFailedCause")
    CancelWorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CancelWorkflowExecutionFailedEventAttributes", name: "CancelWorkflowExecutionFailedEventAttributes")
    Canceled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.swf#Canceled", name: "Canceled", traits: {"smithy.api#default" => false})
    CauseMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#CauseMessage", name: "CauseMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1728}})
    ChildPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#ChildPolicy", name: "ChildPolicy")
    ChildWorkflowExecutionCanceledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ChildWorkflowExecutionCanceledEventAttributes", name: "ChildWorkflowExecutionCanceledEventAttributes")
    ChildWorkflowExecutionCompletedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ChildWorkflowExecutionCompletedEventAttributes", name: "ChildWorkflowExecutionCompletedEventAttributes")
    ChildWorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ChildWorkflowExecutionFailedEventAttributes", name: "ChildWorkflowExecutionFailedEventAttributes")
    ChildWorkflowExecutionStartedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ChildWorkflowExecutionStartedEventAttributes", name: "ChildWorkflowExecutionStartedEventAttributes")
    ChildWorkflowExecutionTerminatedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ChildWorkflowExecutionTerminatedEventAttributes", name: "ChildWorkflowExecutionTerminatedEventAttributes")
    ChildWorkflowExecutionTimedOutEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ChildWorkflowExecutionTimedOutEventAttributes", name: "ChildWorkflowExecutionTimedOutEventAttributes")
    CloseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#CloseStatus", name: "CloseStatus")
    CloseStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CloseStatusFilter", name: "CloseStatusFilter")
    CompleteWorkflowExecutionDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CompleteWorkflowExecutionDecisionAttributes", name: "CompleteWorkflowExecutionDecisionAttributes")
    CompleteWorkflowExecutionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#CompleteWorkflowExecutionFailedCause", name: "CompleteWorkflowExecutionFailedCause")
    CompleteWorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CompleteWorkflowExecutionFailedEventAttributes", name: "CompleteWorkflowExecutionFailedEventAttributes")
    ContinueAsNewWorkflowExecutionDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ContinueAsNewWorkflowExecutionDecisionAttributes", name: "ContinueAsNewWorkflowExecutionDecisionAttributes")
    ContinueAsNewWorkflowExecutionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#ContinueAsNewWorkflowExecutionFailedCause", name: "ContinueAsNewWorkflowExecutionFailedCause")
    ContinueAsNewWorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ContinueAsNewWorkflowExecutionFailedEventAttributes", name: "ContinueAsNewWorkflowExecutionFailedEventAttributes")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.swf#Count", name: "Count", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    CountClosedWorkflowExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CountClosedWorkflowExecutionsInput", name: "CountClosedWorkflowExecutionsInput")
    CountClosedWorkflowExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CountClosedWorkflowExecutionsOutput", name: "CountClosedWorkflowExecutionsOutput")
    CountOpenWorkflowExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CountOpenWorkflowExecutionsInput", name: "CountOpenWorkflowExecutionsInput")
    CountOpenWorkflowExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CountOpenWorkflowExecutionsOutput", name: "CountOpenWorkflowExecutionsOutput")
    CountPendingActivityTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CountPendingActivityTasksInput", name: "CountPendingActivityTasksInput")
    CountPendingActivityTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CountPendingActivityTasksOutput", name: "CountPendingActivityTasksOutput")
    CountPendingDecisionTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CountPendingDecisionTasksInput", name: "CountPendingDecisionTasksInput")
    CountPendingDecisionTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#CountPendingDecisionTasksOutput", name: "CountPendingDecisionTasksOutput")
    Data = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#Data", name: "Data", traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}})
    Decision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#Decision", name: "Decision")
    DecisionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#DecisionList", name: "DecisionList")
    DecisionTaskCompletedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DecisionTaskCompletedEventAttributes", name: "DecisionTaskCompletedEventAttributes")
    DecisionTaskScheduledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DecisionTaskScheduledEventAttributes", name: "DecisionTaskScheduledEventAttributes")
    DecisionTaskStartedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DecisionTaskStartedEventAttributes", name: "DecisionTaskStartedEventAttributes")
    DecisionTaskTimedOutEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DecisionTaskTimedOutEventAttributes", name: "DecisionTaskTimedOutEventAttributes")
    DecisionTaskTimeoutType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#DecisionTaskTimeoutType", name: "DecisionTaskTimeoutType")
    DecisionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#DecisionType", name: "DecisionType")
    DefaultUndefinedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DefaultUndefinedFault", name: "DefaultUndefinedFault", traits: {"smithy.api#error" => "client"})
    DeleteActivityTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DeleteActivityTypeInput", name: "DeleteActivityTypeInput")
    DeleteWorkflowTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DeleteWorkflowTypeInput", name: "DeleteWorkflowTypeInput")
    DeprecateActivityTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DeprecateActivityTypeInput", name: "DeprecateActivityTypeInput")
    DeprecateDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DeprecateDomainInput", name: "DeprecateDomainInput")
    DeprecateWorkflowTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DeprecateWorkflowTypeInput", name: "DeprecateWorkflowTypeInput")
    DescribeActivityTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DescribeActivityTypeInput", name: "DescribeActivityTypeInput")
    DescribeActivityTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DescribeActivityTypeOutput", name: "DescribeActivityTypeOutput")
    DescribeDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DescribeDomainInput", name: "DescribeDomainInput")
    DescribeDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DescribeDomainOutput", name: "DescribeDomainOutput")
    DescribeWorkflowExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DescribeWorkflowExecutionInput", name: "DescribeWorkflowExecutionInput")
    DescribeWorkflowExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DescribeWorkflowExecutionOutput", name: "DescribeWorkflowExecutionOutput")
    DescribeWorkflowTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DescribeWorkflowTypeInput", name: "DescribeWorkflowTypeInput")
    DescribeWorkflowTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DescribeWorkflowTypeOutput", name: "DescribeWorkflowTypeOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DomainAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DomainAlreadyExistsFault", name: "DomainAlreadyExistsFault", traits: {"smithy.api#error" => "client"})
    DomainConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DomainConfiguration", name: "DomainConfiguration")
    DomainDeprecatedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DomainDeprecatedFault", name: "DomainDeprecatedFault", traits: {"smithy.api#error" => "client"})
    DomainInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#DomainInfo", name: "DomainInfo")
    DomainInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#DomainInfoList", name: "DomainInfoList")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DurationInDays = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#DurationInDays", name: "DurationInDays", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    DurationInSeconds = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#DurationInSeconds", name: "DurationInSeconds", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    DurationInSecondsOptional = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#DurationInSecondsOptional", name: "DurationInSecondsOptional", traits: {"smithy.api#length" => {"min" => 0, "max" => 8}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#ErrorMessage", name: "ErrorMessage")
    EventId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.swf#EventId", name: "EventId", traits: {"smithy.api#default" => 0})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#EventType", name: "EventType")
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#ExecutionStatus", name: "ExecutionStatus")
    ExecutionTimeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ExecutionTimeFilter", name: "ExecutionTimeFilter")
    ExternalWorkflowExecutionCancelRequestedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ExternalWorkflowExecutionCancelRequestedEventAttributes", name: "ExternalWorkflowExecutionCancelRequestedEventAttributes")
    ExternalWorkflowExecutionSignaledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ExternalWorkflowExecutionSignaledEventAttributes", name: "ExternalWorkflowExecutionSignaledEventAttributes")
    FailWorkflowExecutionDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#FailWorkflowExecutionDecisionAttributes", name: "FailWorkflowExecutionDecisionAttributes")
    FailWorkflowExecutionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#FailWorkflowExecutionFailedCause", name: "FailWorkflowExecutionFailedCause")
    FailWorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#FailWorkflowExecutionFailedEventAttributes", name: "FailWorkflowExecutionFailedEventAttributes")
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#FailureReason", name: "FailureReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    FunctionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#FunctionId", name: "FunctionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FunctionInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#FunctionInput", name: "FunctionInput", traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}})
    FunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#FunctionName", name: "FunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    GetWorkflowExecutionHistoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#GetWorkflowExecutionHistoryInput", name: "GetWorkflowExecutionHistoryInput")
    GetWorkflowExecutionHistoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#GetWorkflowExecutionHistoryOutput", name: "GetWorkflowExecutionHistoryOutput")
    HistoryEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#HistoryEvent", name: "HistoryEvent")
    HistoryEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#HistoryEventList", name: "HistoryEventList")
    Identity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#Identity", name: "Identity", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    LambdaFunctionCompletedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#LambdaFunctionCompletedEventAttributes", name: "LambdaFunctionCompletedEventAttributes")
    LambdaFunctionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#LambdaFunctionFailedEventAttributes", name: "LambdaFunctionFailedEventAttributes")
    LambdaFunctionScheduledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#LambdaFunctionScheduledEventAttributes", name: "LambdaFunctionScheduledEventAttributes")
    LambdaFunctionStartedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#LambdaFunctionStartedEventAttributes", name: "LambdaFunctionStartedEventAttributes")
    LambdaFunctionTimedOutEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#LambdaFunctionTimedOutEventAttributes", name: "LambdaFunctionTimedOutEventAttributes")
    LambdaFunctionTimeoutType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#LambdaFunctionTimeoutType", name: "LambdaFunctionTimeoutType")
    LimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#LimitExceededFault", name: "LimitExceededFault", traits: {"smithy.api#error" => "client"})
    LimitedData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#LimitedData", name: "LimitedData", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListActivityTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListActivityTypesInput", name: "ListActivityTypesInput")
    ListActivityTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListActivityTypesOutput", name: "ListActivityTypesOutput")
    ListClosedWorkflowExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListClosedWorkflowExecutionsInput", name: "ListClosedWorkflowExecutionsInput")
    ListClosedWorkflowExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListClosedWorkflowExecutionsOutput", name: "ListClosedWorkflowExecutionsOutput")
    ListDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListDomainsInput", name: "ListDomainsInput")
    ListDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListDomainsOutput", name: "ListDomainsOutput")
    ListOpenWorkflowExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListOpenWorkflowExecutionsInput", name: "ListOpenWorkflowExecutionsInput")
    ListOpenWorkflowExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListOpenWorkflowExecutionsOutput", name: "ListOpenWorkflowExecutionsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListWorkflowTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListWorkflowTypesInput", name: "ListWorkflowTypesInput")
    ListWorkflowTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ListWorkflowTypesOutput", name: "ListWorkflowTypesOutput")
    MarkerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#MarkerName", name: "MarkerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MarkerRecordedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#MarkerRecordedEventAttributes", name: "MarkerRecordedEventAttributes")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    OpenDecisionTasksCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.swf#OpenDecisionTasksCount", name: "OpenDecisionTasksCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    OperationNotPermittedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#OperationNotPermittedFault", name: "OperationNotPermittedFault", traits: {"smithy.api#error" => "client"})
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.swf#PageSize", name: "PageSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#PageToken", name: "PageToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    PollForActivityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#PollForActivityTaskInput", name: "PollForActivityTaskInput")
    PollForActivityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#PollForActivityTaskOutput", name: "PollForActivityTaskOutput")
    PollForDecisionTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#PollForDecisionTaskInput", name: "PollForDecisionTaskInput")
    PollForDecisionTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#PollForDecisionTaskOutput", name: "PollForDecisionTaskOutput")
    RecordActivityTaskHeartbeatInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RecordActivityTaskHeartbeatInput", name: "RecordActivityTaskHeartbeatInput")
    RecordActivityTaskHeartbeatOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RecordActivityTaskHeartbeatOutput", name: "RecordActivityTaskHeartbeatOutput")
    RecordMarkerDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RecordMarkerDecisionAttributes", name: "RecordMarkerDecisionAttributes")
    RecordMarkerFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#RecordMarkerFailedCause", name: "RecordMarkerFailedCause")
    RecordMarkerFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RecordMarkerFailedEventAttributes", name: "RecordMarkerFailedEventAttributes")
    RegisterActivityTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RegisterActivityTypeInput", name: "RegisterActivityTypeInput")
    RegisterDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RegisterDomainInput", name: "RegisterDomainInput")
    RegisterWorkflowTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RegisterWorkflowTypeInput", name: "RegisterWorkflowTypeInput")
    RegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#RegistrationStatus", name: "RegistrationStatus")
    RequestCancelActivityTaskDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RequestCancelActivityTaskDecisionAttributes", name: "RequestCancelActivityTaskDecisionAttributes")
    RequestCancelActivityTaskFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#RequestCancelActivityTaskFailedCause", name: "RequestCancelActivityTaskFailedCause")
    RequestCancelActivityTaskFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RequestCancelActivityTaskFailedEventAttributes", name: "RequestCancelActivityTaskFailedEventAttributes")
    RequestCancelExternalWorkflowExecutionDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RequestCancelExternalWorkflowExecutionDecisionAttributes", name: "RequestCancelExternalWorkflowExecutionDecisionAttributes")
    RequestCancelExternalWorkflowExecutionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#RequestCancelExternalWorkflowExecutionFailedCause", name: "RequestCancelExternalWorkflowExecutionFailedCause")
    RequestCancelExternalWorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RequestCancelExternalWorkflowExecutionFailedEventAttributes", name: "RequestCancelExternalWorkflowExecutionFailedEventAttributes")
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RequestCancelExternalWorkflowExecutionInitiatedEventAttributes", name: "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes")
    RequestCancelWorkflowExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RequestCancelWorkflowExecutionInput", name: "RequestCancelWorkflowExecutionInput")
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#ResourceTagKeyList", name: "ResourceTagKeyList")
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#ResourceTagList", name: "ResourceTagList")
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    RespondActivityTaskCanceledInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RespondActivityTaskCanceledInput", name: "RespondActivityTaskCanceledInput")
    RespondActivityTaskCompletedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RespondActivityTaskCompletedInput", name: "RespondActivityTaskCompletedInput")
    RespondActivityTaskFailedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RespondActivityTaskFailedInput", name: "RespondActivityTaskFailedInput")
    RespondDecisionTaskCompletedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#RespondDecisionTaskCompletedInput", name: "RespondDecisionTaskCompletedInput")
    ReverseOrder = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.swf#ReverseOrder", name: "ReverseOrder", traits: {"smithy.api#default" => false})
    ScheduleActivityTaskDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ScheduleActivityTaskDecisionAttributes", name: "ScheduleActivityTaskDecisionAttributes")
    ScheduleActivityTaskFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#ScheduleActivityTaskFailedCause", name: "ScheduleActivityTaskFailedCause")
    ScheduleActivityTaskFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ScheduleActivityTaskFailedEventAttributes", name: "ScheduleActivityTaskFailedEventAttributes")
    ScheduleLambdaFunctionDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ScheduleLambdaFunctionDecisionAttributes", name: "ScheduleLambdaFunctionDecisionAttributes")
    ScheduleLambdaFunctionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#ScheduleLambdaFunctionFailedCause", name: "ScheduleLambdaFunctionFailedCause")
    ScheduleLambdaFunctionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#ScheduleLambdaFunctionFailedEventAttributes", name: "ScheduleLambdaFunctionFailedEventAttributes")
    SignalExternalWorkflowExecutionDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#SignalExternalWorkflowExecutionDecisionAttributes", name: "SignalExternalWorkflowExecutionDecisionAttributes")
    SignalExternalWorkflowExecutionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#SignalExternalWorkflowExecutionFailedCause", name: "SignalExternalWorkflowExecutionFailedCause")
    SignalExternalWorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#SignalExternalWorkflowExecutionFailedEventAttributes", name: "SignalExternalWorkflowExecutionFailedEventAttributes")
    SignalExternalWorkflowExecutionInitiatedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#SignalExternalWorkflowExecutionInitiatedEventAttributes", name: "SignalExternalWorkflowExecutionInitiatedEventAttributes")
    SignalName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#SignalName", name: "SignalName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SignalWorkflowExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#SignalWorkflowExecutionInput", name: "SignalWorkflowExecutionInput")
    StartAtPreviousStartedEvent = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.swf#StartAtPreviousStartedEvent", name: "StartAtPreviousStartedEvent", traits: {"smithy.api#default" => false})
    StartChildWorkflowExecutionDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#StartChildWorkflowExecutionDecisionAttributes", name: "StartChildWorkflowExecutionDecisionAttributes")
    StartChildWorkflowExecutionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#StartChildWorkflowExecutionFailedCause", name: "StartChildWorkflowExecutionFailedCause")
    StartChildWorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#StartChildWorkflowExecutionFailedEventAttributes", name: "StartChildWorkflowExecutionFailedEventAttributes")
    StartChildWorkflowExecutionInitiatedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#StartChildWorkflowExecutionInitiatedEventAttributes", name: "StartChildWorkflowExecutionInitiatedEventAttributes")
    StartLambdaFunctionFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#StartLambdaFunctionFailedCause", name: "StartLambdaFunctionFailedCause")
    StartLambdaFunctionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#StartLambdaFunctionFailedEventAttributes", name: "StartLambdaFunctionFailedEventAttributes")
    StartTimerDecisionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#StartTimerDecisionAttributes", name: "StartTimerDecisionAttributes")
    StartTimerFailedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#StartTimerFailedCause", name: "StartTimerFailedCause")
    StartTimerFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#StartTimerFailedEventAttributes", name: "StartTimerFailedEventAttributes")
    StartWorkflowExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#StartWorkflowExecutionInput", name: "StartWorkflowExecutionInput")
    StartWorkflowExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#StartWorkflowExecutionOutput", name: "StartWorkflowExecutionOutput")
    Tag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#Tag", name: "Tag", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TagFilter", name: "TagFilter")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TagResourceInput", name: "TagResourceInput")
    TaskList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TaskList", name: "TaskList")
    TaskPriority = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#TaskPriority", name: "TaskPriority")
    TaskToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#TaskToken", name: "TaskToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TerminateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#TerminateReason", name: "TerminateReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TerminateWorkflowExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TerminateWorkflowExecutionInput", name: "TerminateWorkflowExecutionInput")
    TimerCanceledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TimerCanceledEventAttributes", name: "TimerCanceledEventAttributes")
    TimerFiredEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TimerFiredEventAttributes", name: "TimerFiredEventAttributes")
    TimerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#TimerId", name: "TimerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TimerStartedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TimerStartedEventAttributes", name: "TimerStartedEventAttributes")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.swf#Timestamp", name: "Timestamp")
    TooManyTagsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TooManyTagsFault", name: "TooManyTagsFault", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Truncated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.swf#Truncated", name: "Truncated", traits: {"smithy.api#default" => false})
    TypeAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TypeAlreadyExistsFault", name: "TypeAlreadyExistsFault", traits: {"smithy.api#error" => "client"})
    TypeDeprecatedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TypeDeprecatedFault", name: "TypeDeprecatedFault", traits: {"smithy.api#error" => "client"})
    TypeNotDeprecatedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#TypeNotDeprecatedFault", name: "TypeNotDeprecatedFault", traits: {"smithy.api#error" => "client"})
    UndeprecateActivityTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#UndeprecateActivityTypeInput", name: "UndeprecateActivityTypeInput")
    UndeprecateDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#UndeprecateDomainInput", name: "UndeprecateDomainInput")
    UndeprecateWorkflowTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#UndeprecateWorkflowTypeInput", name: "UndeprecateWorkflowTypeInput")
    UnknownResourceFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#UnknownResourceFault", name: "UnknownResourceFault", traits: {"smithy.api#error" => "client"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#UntagResourceInput", name: "UntagResourceInput")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    VersionOptional = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#VersionOptional", name: "VersionOptional", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    WorkflowExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecution", name: "WorkflowExecution")
    WorkflowExecutionAlreadyStartedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionAlreadyStartedFault", name: "WorkflowExecutionAlreadyStartedFault", traits: {"smithy.api#error" => "client"})
    WorkflowExecutionCancelRequestedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#WorkflowExecutionCancelRequestedCause", name: "WorkflowExecutionCancelRequestedCause")
    WorkflowExecutionCancelRequestedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionCancelRequestedEventAttributes", name: "WorkflowExecutionCancelRequestedEventAttributes")
    WorkflowExecutionCanceledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionCanceledEventAttributes", name: "WorkflowExecutionCanceledEventAttributes")
    WorkflowExecutionCompletedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionCompletedEventAttributes", name: "WorkflowExecutionCompletedEventAttributes")
    WorkflowExecutionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionConfiguration", name: "WorkflowExecutionConfiguration")
    WorkflowExecutionContinuedAsNewEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionContinuedAsNewEventAttributes", name: "WorkflowExecutionContinuedAsNewEventAttributes")
    WorkflowExecutionFailedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionFailedEventAttributes", name: "WorkflowExecutionFailedEventAttributes")
    WorkflowExecutionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionFilter", name: "WorkflowExecutionFilter")
    WorkflowExecutionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionInfo", name: "WorkflowExecutionInfo")
    WorkflowExecutionInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#WorkflowExecutionInfoList", name: "WorkflowExecutionInfoList")
    WorkflowExecutionOpenCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionOpenCounts", name: "WorkflowExecutionOpenCounts")
    WorkflowExecutionSignaledEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionSignaledEventAttributes", name: "WorkflowExecutionSignaledEventAttributes")
    WorkflowExecutionStartedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionStartedEventAttributes", name: "WorkflowExecutionStartedEventAttributes")
    WorkflowExecutionTerminatedCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#WorkflowExecutionTerminatedCause", name: "WorkflowExecutionTerminatedCause")
    WorkflowExecutionTerminatedEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionTerminatedEventAttributes", name: "WorkflowExecutionTerminatedEventAttributes")
    WorkflowExecutionTimedOutEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowExecutionTimedOutEventAttributes", name: "WorkflowExecutionTimedOutEventAttributes")
    WorkflowExecutionTimeoutType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.swf#WorkflowExecutionTimeoutType", name: "WorkflowExecutionTimeoutType")
    WorkflowId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#WorkflowId", name: "WorkflowId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    WorkflowRunId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#WorkflowRunId", name: "WorkflowRunId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowRunIdOptional = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.swf#WorkflowRunIdOptional", name: "WorkflowRunIdOptional", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    WorkflowType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowType", name: "WorkflowType")
    WorkflowTypeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowTypeConfiguration", name: "WorkflowTypeConfiguration")
    WorkflowTypeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowTypeFilter", name: "WorkflowTypeFilter")
    WorkflowTypeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.swf#WorkflowTypeInfo", name: "WorkflowTypeInfo")
    WorkflowTypeInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.swf#WorkflowTypeInfoList", name: "WorkflowTypeInfoList")

    ActivityTaskCancelRequestedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskCancelRequestedEventAttributes.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    ActivityTaskCancelRequestedEventAttributes.type = Types::ActivityTaskCancelRequestedEventAttributes
    ActivityTaskCanceledEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    ActivityTaskCanceledEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskCanceledEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskCanceledEventAttributes.add_member(:latest_cancel_requested_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "latestCancelRequestedEventId", traits: {"smithy.api#default" => 0}))
    ActivityTaskCanceledEventAttributes.type = Types::ActivityTaskCanceledEventAttributes
    ActivityTaskCompletedEventAttributes.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "result"))
    ActivityTaskCompletedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskCompletedEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskCompletedEventAttributes.type = Types::ActivityTaskCompletedEventAttributes
    ActivityTaskFailedEventAttributes.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "reason"))
    ActivityTaskFailedEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    ActivityTaskFailedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskFailedEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskFailedEventAttributes.type = Types::ActivityTaskFailedEventAttributes
    ActivityTaskScheduledEventAttributes.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    ActivityTaskScheduledEventAttributes.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    ActivityTaskScheduledEventAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    ActivityTaskScheduledEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    ActivityTaskScheduledEventAttributes.add_member(:schedule_to_start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "scheduleToStartTimeout"))
    ActivityTaskScheduledEventAttributes.add_member(:schedule_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "scheduleToCloseTimeout"))
    ActivityTaskScheduledEventAttributes.add_member(:start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "startToCloseTimeout"))
    ActivityTaskScheduledEventAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    ActivityTaskScheduledEventAttributes.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    ActivityTaskScheduledEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskScheduledEventAttributes.add_member(:heartbeat_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "heartbeatTimeout"))
    ActivityTaskScheduledEventAttributes.type = Types::ActivityTaskScheduledEventAttributes
    ActivityTaskStartedEventAttributes.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "identity"))
    ActivityTaskStartedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskStartedEventAttributes.type = Types::ActivityTaskStartedEventAttributes
    ActivityTaskTimedOutEventAttributes.add_member(:timeout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTaskTimeoutType, name: "timeoutType", traits: {"smithy.api#required" => {}}))
    ActivityTaskTimedOutEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskTimedOutEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActivityTaskTimedOutEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitedData, name: "details"))
    ActivityTaskTimedOutEventAttributes.type = Types::ActivityTaskTimedOutEventAttributes
    ActivityTaskTimeoutType.add_member(:start_to_close, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TO_CLOSE", traits: {"smithy.api#enumValue" => "START_TO_CLOSE"}))
    ActivityTaskTimeoutType.add_member(:schedule_to_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULE_TO_START", traits: {"smithy.api#enumValue" => "SCHEDULE_TO_START"}))
    ActivityTaskTimeoutType.add_member(:schedule_to_close, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULE_TO_CLOSE", traits: {"smithy.api#enumValue" => "SCHEDULE_TO_CLOSE"}))
    ActivityTaskTimeoutType.add_member(:heartbeat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEARTBEAT", traits: {"smithy.api#enumValue" => "HEARTBEAT"}))
    ActivityType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ActivityType.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    ActivityType.type = Types::ActivityType
    ActivityTypeConfiguration.add_member(:default_task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskStartToCloseTimeout"))
    ActivityTypeConfiguration.add_member(:default_task_heartbeat_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskHeartbeatTimeout"))
    ActivityTypeConfiguration.add_member(:default_task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "defaultTaskList"))
    ActivityTypeConfiguration.add_member(:default_task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "defaultTaskPriority"))
    ActivityTypeConfiguration.add_member(:default_task_schedule_to_start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskScheduleToStartTimeout"))
    ActivityTypeConfiguration.add_member(:default_task_schedule_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskScheduleToCloseTimeout"))
    ActivityTypeConfiguration.type = Types::ActivityTypeConfiguration
    ActivityTypeInfo.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    ActivityTypeInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ActivityTypeInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ActivityTypeInfo.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    ActivityTypeInfo.add_member(:deprecation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "deprecationDate"))
    ActivityTypeInfo.type = Types::ActivityTypeInfo
    ActivityTypeInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTypeInfo, name: "member")
    CancelTimerDecisionAttributes.add_member(:timer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerId, name: "timerId", traits: {"smithy.api#required" => {}}))
    CancelTimerDecisionAttributes.type = Types::CancelTimerDecisionAttributes
    CancelTimerFailedCause.add_member(:timer_id_unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMER_ID_UNKNOWN", traits: {"smithy.api#enumValue" => "TIMER_ID_UNKNOWN"}))
    CancelTimerFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    CancelTimerFailedEventAttributes.add_member(:timer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerId, name: "timerId", traits: {"smithy.api#required" => {}}))
    CancelTimerFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelTimerFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    CancelTimerFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CancelTimerFailedEventAttributes.type = Types::CancelTimerFailedEventAttributes
    CancelWorkflowExecutionDecisionAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    CancelWorkflowExecutionDecisionAttributes.type = Types::CancelWorkflowExecutionDecisionAttributes
    CancelWorkflowExecutionFailedCause.add_member(:unhandled_decision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHANDLED_DECISION", traits: {"smithy.api#enumValue" => "UNHANDLED_DECISION"}))
    CancelWorkflowExecutionFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    CancelWorkflowExecutionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelWorkflowExecutionFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    CancelWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CancelWorkflowExecutionFailedEventAttributes.type = Types::CancelWorkflowExecutionFailedEventAttributes
    ChildPolicy.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE", traits: {"smithy.api#enumValue" => "TERMINATE"}))
    ChildPolicy.add_member(:request_cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_CANCEL", traits: {"smithy.api#enumValue" => "REQUEST_CANCEL"}))
    ChildPolicy.add_member(:abandon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABANDON", traits: {"smithy.api#enumValue" => "ABANDON"}))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionCanceledEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionCanceledEventAttributes.type = Types::ChildWorkflowExecutionCanceledEventAttributes
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "result"))
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionCompletedEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionCompletedEventAttributes.type = Types::ChildWorkflowExecutionCompletedEventAttributes
    ChildWorkflowExecutionFailedEventAttributes.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "reason"))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionFailedEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionFailedEventAttributes.type = Types::ChildWorkflowExecutionFailedEventAttributes
    ChildWorkflowExecutionStartedEventAttributes.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionStartedEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionStartedEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionStartedEventAttributes.type = Types::ChildWorkflowExecutionStartedEventAttributes
    ChildWorkflowExecutionTerminatedEventAttributes.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionTerminatedEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionTerminatedEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionTerminatedEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionTerminatedEventAttributes.type = Types::ChildWorkflowExecutionTerminatedEventAttributes
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:timeout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionTimeoutType, name: "timeoutType", traits: {"smithy.api#required" => {}}))
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionTimedOutEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChildWorkflowExecutionTimedOutEventAttributes.type = Types::ChildWorkflowExecutionTimedOutEventAttributes
    CloseStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CloseStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CloseStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    CloseStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    CloseStatus.add_member(:continued_as_new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUED_AS_NEW", traits: {"smithy.api#enumValue" => "CONTINUED_AS_NEW"}))
    CloseStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    CloseStatusFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CloseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CloseStatusFilter.type = Types::CloseStatusFilter
    CompleteWorkflowExecutionDecisionAttributes.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "result"))
    CompleteWorkflowExecutionDecisionAttributes.type = Types::CompleteWorkflowExecutionDecisionAttributes
    CompleteWorkflowExecutionFailedCause.add_member(:unhandled_decision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHANDLED_DECISION", traits: {"smithy.api#enumValue" => "UNHANDLED_DECISION"}))
    CompleteWorkflowExecutionFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    CompleteWorkflowExecutionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: CompleteWorkflowExecutionFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    CompleteWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CompleteWorkflowExecutionFailedEventAttributes.type = Types::CompleteWorkflowExecutionFailedEventAttributes
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "executionStartToCloseTimeout"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "taskStartToCloseTimeout"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tagList"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:workflow_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "workflowTypeVersion"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.add_member(:lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lambdaRole"))
    ContinueAsNewWorkflowExecutionDecisionAttributes.type = Types::ContinueAsNewWorkflowExecutionDecisionAttributes
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:unhandled_decision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHANDLED_DECISION", traits: {"smithy.api#enumValue" => "UNHANDLED_DECISION"}))
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:workflow_type_deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKFLOW_TYPE_DEPRECATED", traits: {"smithy.api#enumValue" => "WORKFLOW_TYPE_DEPRECATED"}))
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:workflow_type_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKFLOW_TYPE_DOES_NOT_EXIST", traits: {"smithy.api#enumValue" => "WORKFLOW_TYPE_DOES_NOT_EXIST"}))
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:default_execution_start_to_close_timeout_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"}))
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:default_task_start_to_close_timeout_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"}))
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:default_task_list_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_TASK_LIST_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_TASK_LIST_UNDEFINED"}))
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:default_child_policy_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_CHILD_POLICY_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_CHILD_POLICY_UNDEFINED"}))
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:continue_as_new_workflow_execution_rate_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED", traits: {"smithy.api#enumValue" => "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED"}))
    ContinueAsNewWorkflowExecutionFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    ContinueAsNewWorkflowExecutionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinueAsNewWorkflowExecutionFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    ContinueAsNewWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ContinueAsNewWorkflowExecutionFailedEventAttributes.type = Types::ContinueAsNewWorkflowExecutionFailedEventAttributes
    CountClosedWorkflowExecutionsInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    CountClosedWorkflowExecutionsInput.add_member(:start_time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimeFilter, name: "startTimeFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:close_time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimeFilter, name: "closeTimeFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:execution_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionFilter, name: "executionFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTypeFilter, name: "typeFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:tag_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tagFilter"))
    CountClosedWorkflowExecutionsInput.add_member(:close_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CloseStatusFilter, name: "closeStatusFilter"))
    CountClosedWorkflowExecutionsInput.type = Types::CountClosedWorkflowExecutionsInput
    CountClosedWorkflowExecutionsOutput.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "count", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CountClosedWorkflowExecutionsOutput.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "truncated", traits: {"smithy.api#default" => false}))
    CountClosedWorkflowExecutionsOutput.type = Types::CountClosedWorkflowExecutionsOutput
    CountOpenWorkflowExecutionsInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    CountOpenWorkflowExecutionsInput.add_member(:start_time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimeFilter, name: "startTimeFilter", traits: {"smithy.api#required" => {}}))
    CountOpenWorkflowExecutionsInput.add_member(:type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTypeFilter, name: "typeFilter"))
    CountOpenWorkflowExecutionsInput.add_member(:tag_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tagFilter"))
    CountOpenWorkflowExecutionsInput.add_member(:execution_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionFilter, name: "executionFilter"))
    CountOpenWorkflowExecutionsInput.type = Types::CountOpenWorkflowExecutionsInput
    CountOpenWorkflowExecutionsOutput.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "count", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CountOpenWorkflowExecutionsOutput.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "truncated", traits: {"smithy.api#default" => false}))
    CountOpenWorkflowExecutionsOutput.type = Types::CountOpenWorkflowExecutionsOutput
    CountPendingActivityTasksInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    CountPendingActivityTasksInput.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    CountPendingActivityTasksInput.type = Types::CountPendingActivityTasksInput
    CountPendingActivityTasksOutput.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "count", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CountPendingActivityTasksOutput.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "truncated", traits: {"smithy.api#default" => false}))
    CountPendingActivityTasksOutput.type = Types::CountPendingActivityTasksOutput
    CountPendingDecisionTasksInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    CountPendingDecisionTasksInput.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    CountPendingDecisionTasksInput.type = Types::CountPendingDecisionTasksInput
    CountPendingDecisionTasksOutput.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "count", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CountPendingDecisionTasksOutput.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "truncated", traits: {"smithy.api#default" => false}))
    CountPendingDecisionTasksOutput.type = Types::CountPendingDecisionTasksOutput
    Decision.add_member(:decision_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DecisionType, name: "decisionType", traits: {"smithy.api#required" => {}}))
    Decision.add_member(:schedule_activity_task_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleActivityTaskDecisionAttributes, name: "scheduleActivityTaskDecisionAttributes"))
    Decision.add_member(:request_cancel_activity_task_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCancelActivityTaskDecisionAttributes, name: "requestCancelActivityTaskDecisionAttributes"))
    Decision.add_member(:complete_workflow_execution_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompleteWorkflowExecutionDecisionAttributes, name: "completeWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:fail_workflow_execution_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: FailWorkflowExecutionDecisionAttributes, name: "failWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:cancel_workflow_execution_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelWorkflowExecutionDecisionAttributes, name: "cancelWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:continue_as_new_workflow_execution_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinueAsNewWorkflowExecutionDecisionAttributes, name: "continueAsNewWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:record_marker_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordMarkerDecisionAttributes, name: "recordMarkerDecisionAttributes"))
    Decision.add_member(:start_timer_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTimerDecisionAttributes, name: "startTimerDecisionAttributes"))
    Decision.add_member(:cancel_timer_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelTimerDecisionAttributes, name: "cancelTimerDecisionAttributes"))
    Decision.add_member(:signal_external_workflow_execution_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalExternalWorkflowExecutionDecisionAttributes, name: "signalExternalWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:request_cancel_external_workflow_execution_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCancelExternalWorkflowExecutionDecisionAttributes, name: "requestCancelExternalWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:start_child_workflow_execution_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StartChildWorkflowExecutionDecisionAttributes, name: "startChildWorkflowExecutionDecisionAttributes"))
    Decision.add_member(:schedule_lambda_function_decision_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleLambdaFunctionDecisionAttributes, name: "scheduleLambdaFunctionDecisionAttributes"))
    Decision.type = Types::Decision
    DecisionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Decision, name: "member")
    DecisionTaskCompletedEventAttributes.add_member(:execution_context, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "executionContext"))
    DecisionTaskCompletedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DecisionTaskCompletedEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DecisionTaskCompletedEventAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList"))
    DecisionTaskCompletedEventAttributes.add_member(:task_list_schedule_to_start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "taskListScheduleToStartTimeout"))
    DecisionTaskCompletedEventAttributes.type = Types::DecisionTaskCompletedEventAttributes
    DecisionTaskScheduledEventAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    DecisionTaskScheduledEventAttributes.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    DecisionTaskScheduledEventAttributes.add_member(:start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "startToCloseTimeout"))
    DecisionTaskScheduledEventAttributes.add_member(:schedule_to_start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "scheduleToStartTimeout"))
    DecisionTaskScheduledEventAttributes.type = Types::DecisionTaskScheduledEventAttributes
    DecisionTaskStartedEventAttributes.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "identity"))
    DecisionTaskStartedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DecisionTaskStartedEventAttributes.type = Types::DecisionTaskStartedEventAttributes
    DecisionTaskTimedOutEventAttributes.add_member(:timeout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DecisionTaskTimeoutType, name: "timeoutType", traits: {"smithy.api#required" => {}}))
    DecisionTaskTimedOutEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DecisionTaskTimedOutEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DecisionTaskTimedOutEventAttributes.type = Types::DecisionTaskTimedOutEventAttributes
    DecisionTaskTimeoutType.add_member(:start_to_close, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TO_CLOSE", traits: {"smithy.api#enumValue" => "START_TO_CLOSE"}))
    DecisionTaskTimeoutType.add_member(:schedule_to_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULE_TO_START", traits: {"smithy.api#enumValue" => "SCHEDULE_TO_START"}))
    DecisionType.add_member(:schedule_activity_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ScheduleActivityTask", traits: {"smithy.api#enumValue" => "ScheduleActivityTask"}))
    DecisionType.add_member(:request_cancel_activity_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestCancelActivityTask", traits: {"smithy.api#enumValue" => "RequestCancelActivityTask"}))
    DecisionType.add_member(:complete_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CompleteWorkflowExecution", traits: {"smithy.api#enumValue" => "CompleteWorkflowExecution"}))
    DecisionType.add_member(:fail_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailWorkflowExecution", traits: {"smithy.api#enumValue" => "FailWorkflowExecution"}))
    DecisionType.add_member(:cancel_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CancelWorkflowExecution", traits: {"smithy.api#enumValue" => "CancelWorkflowExecution"}))
    DecisionType.add_member(:continue_as_new_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContinueAsNewWorkflowExecution", traits: {"smithy.api#enumValue" => "ContinueAsNewWorkflowExecution"}))
    DecisionType.add_member(:record_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RecordMarker", traits: {"smithy.api#enumValue" => "RecordMarker"}))
    DecisionType.add_member(:start_timer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartTimer", traits: {"smithy.api#enumValue" => "StartTimer"}))
    DecisionType.add_member(:cancel_timer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CancelTimer", traits: {"smithy.api#enumValue" => "CancelTimer"}))
    DecisionType.add_member(:signal_external_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SignalExternalWorkflowExecution", traits: {"smithy.api#enumValue" => "SignalExternalWorkflowExecution"}))
    DecisionType.add_member(:request_cancel_external_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestCancelExternalWorkflowExecution", traits: {"smithy.api#enumValue" => "RequestCancelExternalWorkflowExecution"}))
    DecisionType.add_member(:start_child_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartChildWorkflowExecution", traits: {"smithy.api#enumValue" => "StartChildWorkflowExecution"}))
    DecisionType.add_member(:schedule_lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ScheduleLambdaFunction", traits: {"smithy.api#enumValue" => "ScheduleLambdaFunction"}))
    DefaultUndefinedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DefaultUndefinedFault.type = Types::DefaultUndefinedFault
    DeleteActivityTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    DeleteActivityTypeInput.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    DeleteActivityTypeInput.type = Types::DeleteActivityTypeInput
    DeleteWorkflowTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    DeleteWorkflowTypeInput.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    DeleteWorkflowTypeInput.type = Types::DeleteWorkflowTypeInput
    DeprecateActivityTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    DeprecateActivityTypeInput.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    DeprecateActivityTypeInput.type = Types::DeprecateActivityTypeInput
    DeprecateDomainInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    DeprecateDomainInput.type = Types::DeprecateDomainInput
    DeprecateWorkflowTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    DeprecateWorkflowTypeInput.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    DeprecateWorkflowTypeInput.type = Types::DeprecateWorkflowTypeInput
    DescribeActivityTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    DescribeActivityTypeInput.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    DescribeActivityTypeInput.type = Types::DescribeActivityTypeInput
    DescribeActivityTypeOutput.add_member(:type_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTypeInfo, name: "typeInfo", traits: {"smithy.api#required" => {}}))
    DescribeActivityTypeOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTypeConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    DescribeActivityTypeOutput.type = Types::DescribeActivityTypeOutput
    DescribeDomainInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    DescribeDomainInput.type = Types::DescribeDomainInput
    DescribeDomainOutput.add_member(:domain_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainInfo, name: "domainInfo", traits: {"smithy.api#required" => {}}))
    DescribeDomainOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    DescribeDomainOutput.type = Types::DescribeDomainOutput
    DescribeWorkflowExecutionInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowExecutionInput.add_member(:execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "execution", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowExecutionInput.type = Types::DescribeWorkflowExecutionInput
    DescribeWorkflowExecutionOutput.add_member(:execution_info, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionInfo, name: "executionInfo", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowExecutionOutput.add_member(:execution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionConfiguration, name: "executionConfiguration", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowExecutionOutput.add_member(:open_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionOpenCounts, name: "openCounts", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowExecutionOutput.add_member(:latest_activity_task_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "latestActivityTaskTimestamp"))
    DescribeWorkflowExecutionOutput.add_member(:latest_execution_context, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "latestExecutionContext"))
    DescribeWorkflowExecutionOutput.type = Types::DescribeWorkflowExecutionOutput
    DescribeWorkflowTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowTypeInput.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowTypeInput.type = Types::DescribeWorkflowTypeInput
    DescribeWorkflowTypeOutput.add_member(:type_info, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTypeInfo, name: "typeInfo", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowTypeOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTypeConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    DescribeWorkflowTypeOutput.type = Types::DescribeWorkflowTypeOutput
    DomainAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DomainAlreadyExistsFault.type = Types::DomainAlreadyExistsFault
    DomainConfiguration.add_member(:workflow_execution_retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInDays, name: "workflowExecutionRetentionPeriodInDays", traits: {"smithy.api#required" => {}}))
    DomainConfiguration.type = Types::DomainConfiguration
    DomainDeprecatedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DomainDeprecatedFault.type = Types::DomainDeprecatedFault
    DomainInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    DomainInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DomainInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DomainInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    DomainInfo.type = Types::DomainInfo
    DomainInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainInfo, name: "member")
    EventType.add_member(:workflow_execution_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionStarted", traits: {"smithy.api#enumValue" => "WorkflowExecutionStarted"}))
    EventType.add_member(:workflow_execution_cancel_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionCancelRequested", traits: {"smithy.api#enumValue" => "WorkflowExecutionCancelRequested"}))
    EventType.add_member(:workflow_execution_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionCompleted", traits: {"smithy.api#enumValue" => "WorkflowExecutionCompleted"}))
    EventType.add_member(:complete_workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CompleteWorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "CompleteWorkflowExecutionFailed"}))
    EventType.add_member(:workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "WorkflowExecutionFailed"}))
    EventType.add_member(:fail_workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailWorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "FailWorkflowExecutionFailed"}))
    EventType.add_member(:workflow_execution_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionTimedOut", traits: {"smithy.api#enumValue" => "WorkflowExecutionTimedOut"}))
    EventType.add_member(:workflow_execution_canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionCanceled", traits: {"smithy.api#enumValue" => "WorkflowExecutionCanceled"}))
    EventType.add_member(:cancel_workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CancelWorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "CancelWorkflowExecutionFailed"}))
    EventType.add_member(:workflow_execution_continued_as_new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionContinuedAsNew", traits: {"smithy.api#enumValue" => "WorkflowExecutionContinuedAsNew"}))
    EventType.add_member(:continue_as_new_workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContinueAsNewWorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "ContinueAsNewWorkflowExecutionFailed"}))
    EventType.add_member(:workflow_execution_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionTerminated", traits: {"smithy.api#enumValue" => "WorkflowExecutionTerminated"}))
    EventType.add_member(:decision_task_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DecisionTaskScheduled", traits: {"smithy.api#enumValue" => "DecisionTaskScheduled"}))
    EventType.add_member(:decision_task_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DecisionTaskStarted", traits: {"smithy.api#enumValue" => "DecisionTaskStarted"}))
    EventType.add_member(:decision_task_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DecisionTaskCompleted", traits: {"smithy.api#enumValue" => "DecisionTaskCompleted"}))
    EventType.add_member(:decision_task_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DecisionTaskTimedOut", traits: {"smithy.api#enumValue" => "DecisionTaskTimedOut"}))
    EventType.add_member(:activity_task_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityTaskScheduled", traits: {"smithy.api#enumValue" => "ActivityTaskScheduled"}))
    EventType.add_member(:schedule_activity_task_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ScheduleActivityTaskFailed", traits: {"smithy.api#enumValue" => "ScheduleActivityTaskFailed"}))
    EventType.add_member(:activity_task_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityTaskStarted", traits: {"smithy.api#enumValue" => "ActivityTaskStarted"}))
    EventType.add_member(:activity_task_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityTaskCompleted", traits: {"smithy.api#enumValue" => "ActivityTaskCompleted"}))
    EventType.add_member(:activity_task_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityTaskFailed", traits: {"smithy.api#enumValue" => "ActivityTaskFailed"}))
    EventType.add_member(:activity_task_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityTaskTimedOut", traits: {"smithy.api#enumValue" => "ActivityTaskTimedOut"}))
    EventType.add_member(:activity_task_canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityTaskCanceled", traits: {"smithy.api#enumValue" => "ActivityTaskCanceled"}))
    EventType.add_member(:activity_task_cancel_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityTaskCancelRequested", traits: {"smithy.api#enumValue" => "ActivityTaskCancelRequested"}))
    EventType.add_member(:request_cancel_activity_task_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestCancelActivityTaskFailed", traits: {"smithy.api#enumValue" => "RequestCancelActivityTaskFailed"}))
    EventType.add_member(:workflow_execution_signaled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkflowExecutionSignaled", traits: {"smithy.api#enumValue" => "WorkflowExecutionSignaled"}))
    EventType.add_member(:marker_recorded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MarkerRecorded", traits: {"smithy.api#enumValue" => "MarkerRecorded"}))
    EventType.add_member(:record_marker_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RecordMarkerFailed", traits: {"smithy.api#enumValue" => "RecordMarkerFailed"}))
    EventType.add_member(:timer_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TimerStarted", traits: {"smithy.api#enumValue" => "TimerStarted"}))
    EventType.add_member(:start_timer_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartTimerFailed", traits: {"smithy.api#enumValue" => "StartTimerFailed"}))
    EventType.add_member(:timer_fired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TimerFired", traits: {"smithy.api#enumValue" => "TimerFired"}))
    EventType.add_member(:timer_canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TimerCanceled", traits: {"smithy.api#enumValue" => "TimerCanceled"}))
    EventType.add_member(:cancel_timer_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CancelTimerFailed", traits: {"smithy.api#enumValue" => "CancelTimerFailed"}))
    EventType.add_member(:start_child_workflow_execution_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartChildWorkflowExecutionInitiated", traits: {"smithy.api#enumValue" => "StartChildWorkflowExecutionInitiated"}))
    EventType.add_member(:start_child_workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartChildWorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "StartChildWorkflowExecutionFailed"}))
    EventType.add_member(:child_workflow_execution_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChildWorkflowExecutionStarted", traits: {"smithy.api#enumValue" => "ChildWorkflowExecutionStarted"}))
    EventType.add_member(:child_workflow_execution_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChildWorkflowExecutionCompleted", traits: {"smithy.api#enumValue" => "ChildWorkflowExecutionCompleted"}))
    EventType.add_member(:child_workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChildWorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "ChildWorkflowExecutionFailed"}))
    EventType.add_member(:child_workflow_execution_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChildWorkflowExecutionTimedOut", traits: {"smithy.api#enumValue" => "ChildWorkflowExecutionTimedOut"}))
    EventType.add_member(:child_workflow_execution_canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChildWorkflowExecutionCanceled", traits: {"smithy.api#enumValue" => "ChildWorkflowExecutionCanceled"}))
    EventType.add_member(:child_workflow_execution_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChildWorkflowExecutionTerminated", traits: {"smithy.api#enumValue" => "ChildWorkflowExecutionTerminated"}))
    EventType.add_member(:signal_external_workflow_execution_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SignalExternalWorkflowExecutionInitiated", traits: {"smithy.api#enumValue" => "SignalExternalWorkflowExecutionInitiated"}))
    EventType.add_member(:signal_external_workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SignalExternalWorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "SignalExternalWorkflowExecutionFailed"}))
    EventType.add_member(:external_workflow_execution_signaled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExternalWorkflowExecutionSignaled", traits: {"smithy.api#enumValue" => "ExternalWorkflowExecutionSignaled"}))
    EventType.add_member(:request_cancel_external_workflow_execution_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestCancelExternalWorkflowExecutionInitiated", traits: {"smithy.api#enumValue" => "RequestCancelExternalWorkflowExecutionInitiated"}))
    EventType.add_member(:request_cancel_external_workflow_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestCancelExternalWorkflowExecutionFailed", traits: {"smithy.api#enumValue" => "RequestCancelExternalWorkflowExecutionFailed"}))
    EventType.add_member(:external_workflow_execution_cancel_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExternalWorkflowExecutionCancelRequested", traits: {"smithy.api#enumValue" => "ExternalWorkflowExecutionCancelRequested"}))
    EventType.add_member(:lambda_function_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionScheduled", traits: {"smithy.api#enumValue" => "LambdaFunctionScheduled"}))
    EventType.add_member(:lambda_function_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionStarted", traits: {"smithy.api#enumValue" => "LambdaFunctionStarted"}))
    EventType.add_member(:lambda_function_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionCompleted", traits: {"smithy.api#enumValue" => "LambdaFunctionCompleted"}))
    EventType.add_member(:lambda_function_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionFailed", traits: {"smithy.api#enumValue" => "LambdaFunctionFailed"}))
    EventType.add_member(:lambda_function_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionTimedOut", traits: {"smithy.api#enumValue" => "LambdaFunctionTimedOut"}))
    EventType.add_member(:schedule_lambda_function_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ScheduleLambdaFunctionFailed", traits: {"smithy.api#enumValue" => "ScheduleLambdaFunctionFailed"}))
    EventType.add_member(:start_lambda_function_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartLambdaFunctionFailed", traits: {"smithy.api#enumValue" => "StartLambdaFunctionFailed"}))
    ExecutionStatus.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    ExecutionStatus.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    ExecutionTimeFilter.add_member(:oldest_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "oldestDate", traits: {"smithy.api#required" => {}}))
    ExecutionTimeFilter.add_member(:latest_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "latestDate"))
    ExecutionTimeFilter.type = Types::ExecutionTimeFilter
    ExternalWorkflowExecutionCancelRequestedEventAttributes.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    ExternalWorkflowExecutionCancelRequestedEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ExternalWorkflowExecutionCancelRequestedEventAttributes.type = Types::ExternalWorkflowExecutionCancelRequestedEventAttributes
    ExternalWorkflowExecutionSignaledEventAttributes.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    ExternalWorkflowExecutionSignaledEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ExternalWorkflowExecutionSignaledEventAttributes.type = Types::ExternalWorkflowExecutionSignaledEventAttributes
    FailWorkflowExecutionDecisionAttributes.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "reason"))
    FailWorkflowExecutionDecisionAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    FailWorkflowExecutionDecisionAttributes.type = Types::FailWorkflowExecutionDecisionAttributes
    FailWorkflowExecutionFailedCause.add_member(:unhandled_decision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHANDLED_DECISION", traits: {"smithy.api#enumValue" => "UNHANDLED_DECISION"}))
    FailWorkflowExecutionFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    FailWorkflowExecutionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: FailWorkflowExecutionFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    FailWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FailWorkflowExecutionFailedEventAttributes.type = Types::FailWorkflowExecutionFailedEventAttributes
    GetWorkflowExecutionHistoryInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    GetWorkflowExecutionHistoryInput.add_member(:execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "execution", traits: {"smithy.api#required" => {}}))
    GetWorkflowExecutionHistoryInput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    GetWorkflowExecutionHistoryInput.add_member(:maximum_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maximumPageSize", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionHistoryInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "reverseOrder", traits: {"smithy.api#default" => false}))
    GetWorkflowExecutionHistoryInput.type = Types::GetWorkflowExecutionHistoryInput
    GetWorkflowExecutionHistoryOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventList, name: "events", traits: {"smithy.api#required" => {}}))
    GetWorkflowExecutionHistoryOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    GetWorkflowExecutionHistoryOutput.type = Types::GetWorkflowExecutionHistoryOutput
    HistoryEvent.add_member(:event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "eventTimestamp", traits: {"smithy.api#required" => {}}))
    HistoryEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    HistoryEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    HistoryEvent.add_member(:workflow_execution_started_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionStartedEventAttributes, name: "workflowExecutionStartedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_completed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionCompletedEventAttributes, name: "workflowExecutionCompletedEventAttributes"))
    HistoryEvent.add_member(:complete_workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompleteWorkflowExecutionFailedEventAttributes, name: "completeWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionFailedEventAttributes, name: "workflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:fail_workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: FailWorkflowExecutionFailedEventAttributes, name: "failWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_timed_out_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionTimedOutEventAttributes, name: "workflowExecutionTimedOutEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_canceled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionCanceledEventAttributes, name: "workflowExecutionCanceledEventAttributes"))
    HistoryEvent.add_member(:cancel_workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelWorkflowExecutionFailedEventAttributes, name: "cancelWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_continued_as_new_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionContinuedAsNewEventAttributes, name: "workflowExecutionContinuedAsNewEventAttributes"))
    HistoryEvent.add_member(:continue_as_new_workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinueAsNewWorkflowExecutionFailedEventAttributes, name: "continueAsNewWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_terminated_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionTerminatedEventAttributes, name: "workflowExecutionTerminatedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_cancel_requested_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionCancelRequestedEventAttributes, name: "workflowExecutionCancelRequestedEventAttributes"))
    HistoryEvent.add_member(:decision_task_scheduled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DecisionTaskScheduledEventAttributes, name: "decisionTaskScheduledEventAttributes"))
    HistoryEvent.add_member(:decision_task_started_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DecisionTaskStartedEventAttributes, name: "decisionTaskStartedEventAttributes"))
    HistoryEvent.add_member(:decision_task_completed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DecisionTaskCompletedEventAttributes, name: "decisionTaskCompletedEventAttributes"))
    HistoryEvent.add_member(:decision_task_timed_out_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DecisionTaskTimedOutEventAttributes, name: "decisionTaskTimedOutEventAttributes"))
    HistoryEvent.add_member(:activity_task_scheduled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTaskScheduledEventAttributes, name: "activityTaskScheduledEventAttributes"))
    HistoryEvent.add_member(:activity_task_started_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTaskStartedEventAttributes, name: "activityTaskStartedEventAttributes"))
    HistoryEvent.add_member(:activity_task_completed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTaskCompletedEventAttributes, name: "activityTaskCompletedEventAttributes"))
    HistoryEvent.add_member(:activity_task_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTaskFailedEventAttributes, name: "activityTaskFailedEventAttributes"))
    HistoryEvent.add_member(:activity_task_timed_out_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTaskTimedOutEventAttributes, name: "activityTaskTimedOutEventAttributes"))
    HistoryEvent.add_member(:activity_task_canceled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTaskCanceledEventAttributes, name: "activityTaskCanceledEventAttributes"))
    HistoryEvent.add_member(:activity_task_cancel_requested_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTaskCancelRequestedEventAttributes, name: "activityTaskCancelRequestedEventAttributes"))
    HistoryEvent.add_member(:workflow_execution_signaled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionSignaledEventAttributes, name: "workflowExecutionSignaledEventAttributes"))
    HistoryEvent.add_member(:marker_recorded_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerRecordedEventAttributes, name: "markerRecordedEventAttributes"))
    HistoryEvent.add_member(:record_marker_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordMarkerFailedEventAttributes, name: "recordMarkerFailedEventAttributes"))
    HistoryEvent.add_member(:timer_started_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerStartedEventAttributes, name: "timerStartedEventAttributes"))
    HistoryEvent.add_member(:timer_fired_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerFiredEventAttributes, name: "timerFiredEventAttributes"))
    HistoryEvent.add_member(:timer_canceled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerCanceledEventAttributes, name: "timerCanceledEventAttributes"))
    HistoryEvent.add_member(:start_child_workflow_execution_initiated_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StartChildWorkflowExecutionInitiatedEventAttributes, name: "startChildWorkflowExecutionInitiatedEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_started_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildWorkflowExecutionStartedEventAttributes, name: "childWorkflowExecutionStartedEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_completed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildWorkflowExecutionCompletedEventAttributes, name: "childWorkflowExecutionCompletedEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildWorkflowExecutionFailedEventAttributes, name: "childWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_timed_out_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildWorkflowExecutionTimedOutEventAttributes, name: "childWorkflowExecutionTimedOutEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_canceled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildWorkflowExecutionCanceledEventAttributes, name: "childWorkflowExecutionCanceledEventAttributes"))
    HistoryEvent.add_member(:child_workflow_execution_terminated_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildWorkflowExecutionTerminatedEventAttributes, name: "childWorkflowExecutionTerminatedEventAttributes"))
    HistoryEvent.add_member(:signal_external_workflow_execution_initiated_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalExternalWorkflowExecutionInitiatedEventAttributes, name: "signalExternalWorkflowExecutionInitiatedEventAttributes"))
    HistoryEvent.add_member(:external_workflow_execution_signaled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalWorkflowExecutionSignaledEventAttributes, name: "externalWorkflowExecutionSignaledEventAttributes"))
    HistoryEvent.add_member(:signal_external_workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalExternalWorkflowExecutionFailedEventAttributes, name: "signalExternalWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:external_workflow_execution_cancel_requested_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalWorkflowExecutionCancelRequestedEventAttributes, name: "externalWorkflowExecutionCancelRequestedEventAttributes"))
    HistoryEvent.add_member(:request_cancel_external_workflow_execution_initiated_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCancelExternalWorkflowExecutionInitiatedEventAttributes, name: "requestCancelExternalWorkflowExecutionInitiatedEventAttributes"))
    HistoryEvent.add_member(:request_cancel_external_workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCancelExternalWorkflowExecutionFailedEventAttributes, name: "requestCancelExternalWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:schedule_activity_task_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleActivityTaskFailedEventAttributes, name: "scheduleActivityTaskFailedEventAttributes"))
    HistoryEvent.add_member(:request_cancel_activity_task_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCancelActivityTaskFailedEventAttributes, name: "requestCancelActivityTaskFailedEventAttributes"))
    HistoryEvent.add_member(:start_timer_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTimerFailedEventAttributes, name: "startTimerFailedEventAttributes"))
    HistoryEvent.add_member(:cancel_timer_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelTimerFailedEventAttributes, name: "cancelTimerFailedEventAttributes"))
    HistoryEvent.add_member(:start_child_workflow_execution_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StartChildWorkflowExecutionFailedEventAttributes, name: "startChildWorkflowExecutionFailedEventAttributes"))
    HistoryEvent.add_member(:lambda_function_scheduled_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionScheduledEventAttributes, name: "lambdaFunctionScheduledEventAttributes"))
    HistoryEvent.add_member(:lambda_function_started_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionStartedEventAttributes, name: "lambdaFunctionStartedEventAttributes"))
    HistoryEvent.add_member(:lambda_function_completed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionCompletedEventAttributes, name: "lambdaFunctionCompletedEventAttributes"))
    HistoryEvent.add_member(:lambda_function_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionFailedEventAttributes, name: "lambdaFunctionFailedEventAttributes"))
    HistoryEvent.add_member(:lambda_function_timed_out_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionTimedOutEventAttributes, name: "lambdaFunctionTimedOutEventAttributes"))
    HistoryEvent.add_member(:schedule_lambda_function_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleLambdaFunctionFailedEventAttributes, name: "scheduleLambdaFunctionFailedEventAttributes"))
    HistoryEvent.add_member(:start_lambda_function_failed_event_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StartLambdaFunctionFailedEventAttributes, name: "startLambdaFunctionFailedEventAttributes"))
    HistoryEvent.type = Types::HistoryEvent
    HistoryEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEvent, name: "member")
    LambdaFunctionCompletedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LambdaFunctionCompletedEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LambdaFunctionCompletedEventAttributes.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "result"))
    LambdaFunctionCompletedEventAttributes.type = Types::LambdaFunctionCompletedEventAttributes
    LambdaFunctionFailedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LambdaFunctionFailedEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LambdaFunctionFailedEventAttributes.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "reason"))
    LambdaFunctionFailedEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    LambdaFunctionFailedEventAttributes.type = Types::LambdaFunctionFailedEventAttributes
    LambdaFunctionScheduledEventAttributes.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionId, name: "id", traits: {"smithy.api#required" => {}}))
    LambdaFunctionScheduledEventAttributes.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "name", traits: {"smithy.api#required" => {}}))
    LambdaFunctionScheduledEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    LambdaFunctionScheduledEventAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionInput, name: "input"))
    LambdaFunctionScheduledEventAttributes.add_member(:start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "startToCloseTimeout"))
    LambdaFunctionScheduledEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LambdaFunctionScheduledEventAttributes.type = Types::LambdaFunctionScheduledEventAttributes
    LambdaFunctionStartedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LambdaFunctionStartedEventAttributes.type = Types::LambdaFunctionStartedEventAttributes
    LambdaFunctionTimedOutEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LambdaFunctionTimedOutEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LambdaFunctionTimedOutEventAttributes.add_member(:timeout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionTimeoutType, name: "timeoutType"))
    LambdaFunctionTimedOutEventAttributes.type = Types::LambdaFunctionTimedOutEventAttributes
    LambdaFunctionTimeoutType.add_member(:start_to_close, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TO_CLOSE", traits: {"smithy.api#enumValue" => "START_TO_CLOSE"}))
    LimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededFault.type = Types::LimitExceededFault
    ListActivityTypesInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    ListActivityTypesInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    ListActivityTypesInput.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "registrationStatus", traits: {"smithy.api#required" => {}}))
    ListActivityTypesInput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListActivityTypesInput.add_member(:maximum_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maximumPageSize", traits: {"smithy.api#default" => 0}))
    ListActivityTypesInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "reverseOrder", traits: {"smithy.api#default" => false}))
    ListActivityTypesInput.type = Types::ListActivityTypesInput
    ListActivityTypesOutput.add_member(:type_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTypeInfoList, name: "typeInfos", traits: {"smithy.api#required" => {}}))
    ListActivityTypesOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListActivityTypesOutput.type = Types::ListActivityTypesOutput
    ListClosedWorkflowExecutionsInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    ListClosedWorkflowExecutionsInput.add_member(:start_time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimeFilter, name: "startTimeFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:close_time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimeFilter, name: "closeTimeFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:execution_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionFilter, name: "executionFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:close_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CloseStatusFilter, name: "closeStatusFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTypeFilter, name: "typeFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:tag_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tagFilter"))
    ListClosedWorkflowExecutionsInput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListClosedWorkflowExecutionsInput.add_member(:maximum_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maximumPageSize", traits: {"smithy.api#default" => 0}))
    ListClosedWorkflowExecutionsInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "reverseOrder", traits: {"smithy.api#default" => false}))
    ListClosedWorkflowExecutionsInput.type = Types::ListClosedWorkflowExecutionsInput
    ListClosedWorkflowExecutionsOutput.add_member(:execution_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionInfoList, name: "executionInfos", traits: {"smithy.api#required" => {}}))
    ListClosedWorkflowExecutionsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListClosedWorkflowExecutionsOutput.type = Types::ListClosedWorkflowExecutionsOutput
    ListDomainsInput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListDomainsInput.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "registrationStatus", traits: {"smithy.api#required" => {}}))
    ListDomainsInput.add_member(:maximum_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maximumPageSize", traits: {"smithy.api#default" => 0}))
    ListDomainsInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "reverseOrder", traits: {"smithy.api#default" => false}))
    ListDomainsInput.type = Types::ListDomainsInput
    ListDomainsOutput.add_member(:domain_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainInfoList, name: "domainInfos", traits: {"smithy.api#required" => {}}))
    ListDomainsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListDomainsOutput.type = Types::ListDomainsOutput
    ListOpenWorkflowExecutionsInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    ListOpenWorkflowExecutionsInput.add_member(:start_time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimeFilter, name: "startTimeFilter", traits: {"smithy.api#required" => {}}))
    ListOpenWorkflowExecutionsInput.add_member(:type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTypeFilter, name: "typeFilter"))
    ListOpenWorkflowExecutionsInput.add_member(:tag_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tagFilter"))
    ListOpenWorkflowExecutionsInput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListOpenWorkflowExecutionsInput.add_member(:maximum_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maximumPageSize", traits: {"smithy.api#default" => 0}))
    ListOpenWorkflowExecutionsInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "reverseOrder", traits: {"smithy.api#default" => false}))
    ListOpenWorkflowExecutionsInput.add_member(:execution_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionFilter, name: "executionFilter"))
    ListOpenWorkflowExecutionsInput.type = Types::ListOpenWorkflowExecutionsInput
    ListOpenWorkflowExecutionsOutput.add_member(:execution_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionInfoList, name: "executionInfos", traits: {"smithy.api#required" => {}}))
    ListOpenWorkflowExecutionsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListOpenWorkflowExecutionsOutput.type = Types::ListOpenWorkflowExecutionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkflowTypesInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    ListWorkflowTypesInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    ListWorkflowTypesInput.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "registrationStatus", traits: {"smithy.api#required" => {}}))
    ListWorkflowTypesInput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListWorkflowTypesInput.add_member(:maximum_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maximumPageSize", traits: {"smithy.api#default" => 0}))
    ListWorkflowTypesInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "reverseOrder", traits: {"smithy.api#default" => false}))
    ListWorkflowTypesInput.type = Types::ListWorkflowTypesInput
    ListWorkflowTypesOutput.add_member(:type_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTypeInfoList, name: "typeInfos", traits: {"smithy.api#required" => {}}))
    ListWorkflowTypesOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    ListWorkflowTypesOutput.type = Types::ListWorkflowTypesOutput
    MarkerRecordedEventAttributes.add_member(:marker_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerName, name: "markerName", traits: {"smithy.api#required" => {}}))
    MarkerRecordedEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    MarkerRecordedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MarkerRecordedEventAttributes.type = Types::MarkerRecordedEventAttributes
    OperationNotPermittedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    OperationNotPermittedFault.type = Types::OperationNotPermittedFault
    PollForActivityTaskInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    PollForActivityTaskInput.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    PollForActivityTaskInput.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "identity"))
    PollForActivityTaskInput.type = Types::PollForActivityTaskInput
    PollForActivityTaskOutput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    PollForActivityTaskOutput.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    PollForActivityTaskOutput.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PollForActivityTaskOutput.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    PollForActivityTaskOutput.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    PollForActivityTaskOutput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    PollForActivityTaskOutput.type = Types::PollForActivityTaskOutput
    PollForDecisionTaskInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    PollForDecisionTaskInput.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    PollForDecisionTaskInput.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "identity"))
    PollForDecisionTaskInput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    PollForDecisionTaskInput.add_member(:maximum_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maximumPageSize", traits: {"smithy.api#default" => 0}))
    PollForDecisionTaskInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "reverseOrder", traits: {"smithy.api#default" => false}))
    PollForDecisionTaskInput.add_member(:start_at_previous_started_event, ::Smithy::Schema::Shapes::MemberShape.new(target: StartAtPreviousStartedEvent, name: "startAtPreviousStartedEvent", traits: {"smithy.api#default" => false}))
    PollForDecisionTaskInput.type = Types::PollForDecisionTaskInput
    PollForDecisionTaskOutput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    PollForDecisionTaskOutput.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PollForDecisionTaskOutput.add_member(:workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "workflowExecution", traits: {"smithy.api#required" => {}}))
    PollForDecisionTaskOutput.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    PollForDecisionTaskOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventList, name: "events", traits: {"smithy.api#required" => {}}))
    PollForDecisionTaskOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextPageToken"))
    PollForDecisionTaskOutput.add_member(:previous_started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "previousStartedEventId", traits: {"smithy.api#default" => 0}))
    PollForDecisionTaskOutput.type = Types::PollForDecisionTaskOutput
    RecordActivityTaskHeartbeatInput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    RecordActivityTaskHeartbeatInput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitedData, name: "details"))
    RecordActivityTaskHeartbeatInput.type = Types::RecordActivityTaskHeartbeatInput
    RecordActivityTaskHeartbeatOutput.add_member(:cancel_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: Canceled, name: "cancelRequested", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RecordActivityTaskHeartbeatOutput.type = Types::RecordActivityTaskHeartbeatOutput
    RecordMarkerDecisionAttributes.add_member(:marker_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerName, name: "markerName", traits: {"smithy.api#required" => {}}))
    RecordMarkerDecisionAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    RecordMarkerDecisionAttributes.type = Types::RecordMarkerDecisionAttributes
    RecordMarkerFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    RecordMarkerFailedEventAttributes.add_member(:marker_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerName, name: "markerName", traits: {"smithy.api#required" => {}}))
    RecordMarkerFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordMarkerFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    RecordMarkerFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RecordMarkerFailedEventAttributes.type = Types::RecordMarkerFailedEventAttributes
    RegisterActivityTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    RegisterActivityTypeInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    RegisterActivityTypeInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    RegisterActivityTypeInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegisterActivityTypeInput.add_member(:default_task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskStartToCloseTimeout"))
    RegisterActivityTypeInput.add_member(:default_task_heartbeat_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskHeartbeatTimeout"))
    RegisterActivityTypeInput.add_member(:default_task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "defaultTaskList"))
    RegisterActivityTypeInput.add_member(:default_task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "defaultTaskPriority"))
    RegisterActivityTypeInput.add_member(:default_task_schedule_to_start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskScheduleToStartTimeout"))
    RegisterActivityTypeInput.add_member(:default_task_schedule_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskScheduleToCloseTimeout"))
    RegisterActivityTypeInput.type = Types::RegisterActivityTypeInput
    RegisterDomainInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    RegisterDomainInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegisterDomainInput.add_member(:workflow_execution_retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInDays, name: "workflowExecutionRetentionPeriodInDays", traits: {"smithy.api#required" => {}}))
    RegisterDomainInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "tags"))
    RegisterDomainInput.type = Types::RegisterDomainInput
    RegisterWorkflowTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    RegisterWorkflowTypeInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    RegisterWorkflowTypeInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    RegisterWorkflowTypeInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegisterWorkflowTypeInput.add_member(:default_task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskStartToCloseTimeout"))
    RegisterWorkflowTypeInput.add_member(:default_execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultExecutionStartToCloseTimeout"))
    RegisterWorkflowTypeInput.add_member(:default_task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "defaultTaskList"))
    RegisterWorkflowTypeInput.add_member(:default_task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "defaultTaskPriority"))
    RegisterWorkflowTypeInput.add_member(:default_child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "defaultChildPolicy"))
    RegisterWorkflowTypeInput.add_member(:default_lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "defaultLambdaRole"))
    RegisterWorkflowTypeInput.type = Types::RegisterWorkflowTypeInput
    RegistrationStatus.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERED", traits: {"smithy.api#enumValue" => "REGISTERED"}))
    RegistrationStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    RequestCancelActivityTaskDecisionAttributes.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    RequestCancelActivityTaskDecisionAttributes.type = Types::RequestCancelActivityTaskDecisionAttributes
    RequestCancelActivityTaskFailedCause.add_member(:activity_id_unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_ID_UNKNOWN", traits: {"smithy.api#enumValue" => "ACTIVITY_ID_UNKNOWN"}))
    RequestCancelActivityTaskFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    RequestCancelActivityTaskFailedEventAttributes.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    RequestCancelActivityTaskFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCancelActivityTaskFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    RequestCancelActivityTaskFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RequestCancelActivityTaskFailedEventAttributes.type = Types::RequestCancelActivityTaskFailedEventAttributes
    RequestCancelExternalWorkflowExecutionDecisionAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    RequestCancelExternalWorkflowExecutionDecisionAttributes.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    RequestCancelExternalWorkflowExecutionDecisionAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    RequestCancelExternalWorkflowExecutionDecisionAttributes.type = Types::RequestCancelExternalWorkflowExecutionDecisionAttributes
    RequestCancelExternalWorkflowExecutionFailedCause.add_member(:unknown_external_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", traits: {"smithy.api#enumValue" => "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"}))
    RequestCancelExternalWorkflowExecutionFailedCause.add_member(:request_cancel_external_workflow_execution_rate_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", traits: {"smithy.api#enumValue" => "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"}))
    RequestCancelExternalWorkflowExecutionFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCancelExternalWorkflowExecutionFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    RequestCancelExternalWorkflowExecutionFailedEventAttributes.type = Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes.type = Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    RequestCancelWorkflowExecutionInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    RequestCancelWorkflowExecutionInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    RequestCancelWorkflowExecutionInput.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    RequestCancelWorkflowExecutionInput.type = Types::RequestCancelWorkflowExecutionInput
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagValue, name: "value"))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "member")
    ResourceTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member")
    RespondActivityTaskCanceledInput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    RespondActivityTaskCanceledInput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    RespondActivityTaskCanceledInput.type = Types::RespondActivityTaskCanceledInput
    RespondActivityTaskCompletedInput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    RespondActivityTaskCompletedInput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "result"))
    RespondActivityTaskCompletedInput.type = Types::RespondActivityTaskCompletedInput
    RespondActivityTaskFailedInput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    RespondActivityTaskFailedInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "reason"))
    RespondActivityTaskFailedInput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    RespondActivityTaskFailedInput.type = Types::RespondActivityTaskFailedInput
    RespondDecisionTaskCompletedInput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    RespondDecisionTaskCompletedInput.add_member(:decisions, ::Smithy::Schema::Shapes::MemberShape.new(target: DecisionList, name: "decisions"))
    RespondDecisionTaskCompletedInput.add_member(:execution_context, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "executionContext"))
    RespondDecisionTaskCompletedInput.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList"))
    RespondDecisionTaskCompletedInput.add_member(:task_list_schedule_to_start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "taskListScheduleToStartTimeout"))
    RespondDecisionTaskCompletedInput.type = Types::RespondDecisionTaskCompletedInput
    ScheduleActivityTaskDecisionAttributes.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    ScheduleActivityTaskDecisionAttributes.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    ScheduleActivityTaskDecisionAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    ScheduleActivityTaskDecisionAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    ScheduleActivityTaskDecisionAttributes.add_member(:schedule_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "scheduleToCloseTimeout"))
    ScheduleActivityTaskDecisionAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList"))
    ScheduleActivityTaskDecisionAttributes.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    ScheduleActivityTaskDecisionAttributes.add_member(:schedule_to_start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "scheduleToStartTimeout"))
    ScheduleActivityTaskDecisionAttributes.add_member(:start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "startToCloseTimeout"))
    ScheduleActivityTaskDecisionAttributes.add_member(:heartbeat_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "heartbeatTimeout"))
    ScheduleActivityTaskDecisionAttributes.type = Types::ScheduleActivityTaskDecisionAttributes
    ScheduleActivityTaskFailedCause.add_member(:activity_type_deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_TYPE_DEPRECATED", traits: {"smithy.api#enumValue" => "ACTIVITY_TYPE_DEPRECATED"}))
    ScheduleActivityTaskFailedCause.add_member(:activity_type_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_TYPE_DOES_NOT_EXIST", traits: {"smithy.api#enumValue" => "ACTIVITY_TYPE_DOES_NOT_EXIST"}))
    ScheduleActivityTaskFailedCause.add_member(:activity_id_already_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_ID_ALREADY_IN_USE", traits: {"smithy.api#enumValue" => "ACTIVITY_ID_ALREADY_IN_USE"}))
    ScheduleActivityTaskFailedCause.add_member(:open_activities_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_ACTIVITIES_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "OPEN_ACTIVITIES_LIMIT_EXCEEDED"}))
    ScheduleActivityTaskFailedCause.add_member(:activity_creation_rate_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVITY_CREATION_RATE_EXCEEDED", traits: {"smithy.api#enumValue" => "ACTIVITY_CREATION_RATE_EXCEEDED"}))
    ScheduleActivityTaskFailedCause.add_member(:default_schedule_to_close_timeout_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED"}))
    ScheduleActivityTaskFailedCause.add_member(:default_task_list_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_TASK_LIST_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_TASK_LIST_UNDEFINED"}))
    ScheduleActivityTaskFailedCause.add_member(:default_schedule_to_start_timeout_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED"}))
    ScheduleActivityTaskFailedCause.add_member(:default_start_to_close_timeout_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED"}))
    ScheduleActivityTaskFailedCause.add_member(:default_heartbeat_timeout_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED"}))
    ScheduleActivityTaskFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    ScheduleActivityTaskFailedEventAttributes.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    ScheduleActivityTaskFailedEventAttributes.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityId, name: "activityId", traits: {"smithy.api#required" => {}}))
    ScheduleActivityTaskFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleActivityTaskFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    ScheduleActivityTaskFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ScheduleActivityTaskFailedEventAttributes.type = Types::ScheduleActivityTaskFailedEventAttributes
    ScheduleLambdaFunctionDecisionAttributes.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionId, name: "id", traits: {"smithy.api#required" => {}}))
    ScheduleLambdaFunctionDecisionAttributes.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "name", traits: {"smithy.api#required" => {}}))
    ScheduleLambdaFunctionDecisionAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    ScheduleLambdaFunctionDecisionAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionInput, name: "input"))
    ScheduleLambdaFunctionDecisionAttributes.add_member(:start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "startToCloseTimeout"))
    ScheduleLambdaFunctionDecisionAttributes.type = Types::ScheduleLambdaFunctionDecisionAttributes
    ScheduleLambdaFunctionFailedCause.add_member(:id_already_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID_ALREADY_IN_USE", traits: {"smithy.api#enumValue" => "ID_ALREADY_IN_USE"}))
    ScheduleLambdaFunctionFailedCause.add_member(:open_lambda_functions_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED"}))
    ScheduleLambdaFunctionFailedCause.add_member(:lambda_function_creation_rate_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED", traits: {"smithy.api#enumValue" => "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED"}))
    ScheduleLambdaFunctionFailedCause.add_member(:lambda_service_not_available_in_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION", traits: {"smithy.api#enumValue" => "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"}))
    ScheduleLambdaFunctionFailedEventAttributes.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionId, name: "id", traits: {"smithy.api#required" => {}}))
    ScheduleLambdaFunctionFailedEventAttributes.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "name", traits: {"smithy.api#required" => {}}))
    ScheduleLambdaFunctionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleLambdaFunctionFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    ScheduleLambdaFunctionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ScheduleLambdaFunctionFailedEventAttributes.type = Types::ScheduleLambdaFunctionFailedEventAttributes
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:signal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalName, name: "signalName", traits: {"smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    SignalExternalWorkflowExecutionDecisionAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    SignalExternalWorkflowExecutionDecisionAttributes.type = Types::SignalExternalWorkflowExecutionDecisionAttributes
    SignalExternalWorkflowExecutionFailedCause.add_member(:unknown_external_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", traits: {"smithy.api#enumValue" => "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"}))
    SignalExternalWorkflowExecutionFailedCause.add_member(:signal_external_workflow_execution_rate_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", traits: {"smithy.api#enumValue" => "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"}))
    SignalExternalWorkflowExecutionFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalExternalWorkflowExecutionFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionFailedEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    SignalExternalWorkflowExecutionFailedEventAttributes.type = Types::SignalExternalWorkflowExecutionFailedEventAttributes
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:signal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalName, name: "signalName", traits: {"smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    SignalExternalWorkflowExecutionInitiatedEventAttributes.type = Types::SignalExternalWorkflowExecutionInitiatedEventAttributes
    SignalWorkflowExecutionInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    SignalWorkflowExecutionInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    SignalWorkflowExecutionInput.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    SignalWorkflowExecutionInput.add_member(:signal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalName, name: "signalName", traits: {"smithy.api#required" => {}}))
    SignalWorkflowExecutionInput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    SignalWorkflowExecutionInput.type = Types::SignalWorkflowExecutionInput
    StartChildWorkflowExecutionDecisionAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "executionStartToCloseTimeout"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "taskStartToCloseTimeout"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tagList"))
    StartChildWorkflowExecutionDecisionAttributes.add_member(:lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lambdaRole"))
    StartChildWorkflowExecutionDecisionAttributes.type = Types::StartChildWorkflowExecutionDecisionAttributes
    StartChildWorkflowExecutionFailedCause.add_member(:workflow_type_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKFLOW_TYPE_DOES_NOT_EXIST", traits: {"smithy.api#enumValue" => "WORKFLOW_TYPE_DOES_NOT_EXIST"}))
    StartChildWorkflowExecutionFailedCause.add_member(:workflow_type_deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKFLOW_TYPE_DEPRECATED", traits: {"smithy.api#enumValue" => "WORKFLOW_TYPE_DEPRECATED"}))
    StartChildWorkflowExecutionFailedCause.add_member(:open_children_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_CHILDREN_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "OPEN_CHILDREN_LIMIT_EXCEEDED"}))
    StartChildWorkflowExecutionFailedCause.add_member(:open_workflows_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_WORKFLOWS_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "OPEN_WORKFLOWS_LIMIT_EXCEEDED"}))
    StartChildWorkflowExecutionFailedCause.add_member(:child_creation_rate_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD_CREATION_RATE_EXCEEDED", traits: {"smithy.api#enumValue" => "CHILD_CREATION_RATE_EXCEEDED"}))
    StartChildWorkflowExecutionFailedCause.add_member(:workflow_already_running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKFLOW_ALREADY_RUNNING", traits: {"smithy.api#enumValue" => "WORKFLOW_ALREADY_RUNNING"}))
    StartChildWorkflowExecutionFailedCause.add_member(:default_execution_start_to_close_timeout_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"}))
    StartChildWorkflowExecutionFailedCause.add_member(:default_task_list_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_TASK_LIST_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_TASK_LIST_UNDEFINED"}))
    StartChildWorkflowExecutionFailedCause.add_member(:default_task_start_to_close_timeout_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"}))
    StartChildWorkflowExecutionFailedCause.add_member(:default_child_policy_undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_CHILD_POLICY_UNDEFINED", traits: {"smithy.api#enumValue" => "DEFAULT_CHILD_POLICY_UNDEFINED"}))
    StartChildWorkflowExecutionFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: StartChildWorkflowExecutionFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "initiatedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    StartChildWorkflowExecutionFailedEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    StartChildWorkflowExecutionFailedEventAttributes.type = Types::StartChildWorkflowExecutionFailedEventAttributes
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "executionStartToCloseTimeout"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy", traits: {"smithy.api#required" => {}}))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "taskStartToCloseTimeout"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tagList"))
    StartChildWorkflowExecutionInitiatedEventAttributes.add_member(:lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lambdaRole"))
    StartChildWorkflowExecutionInitiatedEventAttributes.type = Types::StartChildWorkflowExecutionInitiatedEventAttributes
    StartLambdaFunctionFailedCause.add_member(:assume_role_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSUME_ROLE_FAILED", traits: {"smithy.api#enumValue" => "ASSUME_ROLE_FAILED"}))
    StartLambdaFunctionFailedEventAttributes.add_member(:scheduled_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "scheduledEventId", traits: {"smithy.api#default" => 0}))
    StartLambdaFunctionFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: StartLambdaFunctionFailedCause, name: "cause"))
    StartLambdaFunctionFailedEventAttributes.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: CauseMessage, name: "message"))
    StartLambdaFunctionFailedEventAttributes.type = Types::StartLambdaFunctionFailedEventAttributes
    StartTimerDecisionAttributes.add_member(:timer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerId, name: "timerId", traits: {"smithy.api#required" => {}}))
    StartTimerDecisionAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    StartTimerDecisionAttributes.add_member(:start_to_fire_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "startToFireTimeout", traits: {"smithy.api#required" => {}}))
    StartTimerDecisionAttributes.type = Types::StartTimerDecisionAttributes
    StartTimerFailedCause.add_member(:timer_id_already_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMER_ID_ALREADY_IN_USE", traits: {"smithy.api#enumValue" => "TIMER_ID_ALREADY_IN_USE"}))
    StartTimerFailedCause.add_member(:open_timers_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_TIMERS_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "OPEN_TIMERS_LIMIT_EXCEEDED"}))
    StartTimerFailedCause.add_member(:timer_creation_rate_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMER_CREATION_RATE_EXCEEDED", traits: {"smithy.api#enumValue" => "TIMER_CREATION_RATE_EXCEEDED"}))
    StartTimerFailedCause.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OPERATION_NOT_PERMITTED"}))
    StartTimerFailedEventAttributes.add_member(:timer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerId, name: "timerId", traits: {"smithy.api#required" => {}}))
    StartTimerFailedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTimerFailedCause, name: "cause", traits: {"smithy.api#required" => {}}))
    StartTimerFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    StartTimerFailedEventAttributes.type = Types::StartTimerFailedEventAttributes
    StartWorkflowExecutionInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    StartWorkflowExecutionInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    StartWorkflowExecutionInput.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    StartWorkflowExecutionInput.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList"))
    StartWorkflowExecutionInput.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    StartWorkflowExecutionInput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    StartWorkflowExecutionInput.add_member(:execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "executionStartToCloseTimeout"))
    StartWorkflowExecutionInput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tagList"))
    StartWorkflowExecutionInput.add_member(:task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "taskStartToCloseTimeout"))
    StartWorkflowExecutionInput.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy"))
    StartWorkflowExecutionInput.add_member(:lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lambdaRole"))
    StartWorkflowExecutionInput.type = Types::StartWorkflowExecutionInput
    StartWorkflowExecutionOutput.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunId, name: "runId"))
    StartWorkflowExecutionOutput.type = Types::StartWorkflowExecutionOutput
    TagFilter.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "tag", traits: {"smithy.api#required" => {}}))
    TagFilter.type = Types::TagFilter
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TaskList.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    TaskList.type = Types::TaskList
    TerminateWorkflowExecutionInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    TerminateWorkflowExecutionInput.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    TerminateWorkflowExecutionInput.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "runId"))
    TerminateWorkflowExecutionInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateReason, name: "reason"))
    TerminateWorkflowExecutionInput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    TerminateWorkflowExecutionInput.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy"))
    TerminateWorkflowExecutionInput.type = Types::TerminateWorkflowExecutionInput
    TimerCanceledEventAttributes.add_member(:timer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerId, name: "timerId", traits: {"smithy.api#required" => {}}))
    TimerCanceledEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TimerCanceledEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TimerCanceledEventAttributes.type = Types::TimerCanceledEventAttributes
    TimerFiredEventAttributes.add_member(:timer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerId, name: "timerId", traits: {"smithy.api#required" => {}}))
    TimerFiredEventAttributes.add_member(:started_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "startedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TimerFiredEventAttributes.type = Types::TimerFiredEventAttributes
    TimerStartedEventAttributes.add_member(:timer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerId, name: "timerId", traits: {"smithy.api#required" => {}}))
    TimerStartedEventAttributes.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "control"))
    TimerStartedEventAttributes.add_member(:start_to_fire_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "startToFireTimeout", traits: {"smithy.api#required" => {}}))
    TimerStartedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TimerStartedEventAttributes.type = Types::TimerStartedEventAttributes
    TooManyTagsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyTagsFault.type = Types::TooManyTagsFault
    TypeAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TypeAlreadyExistsFault.type = Types::TypeAlreadyExistsFault
    TypeDeprecatedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TypeDeprecatedFault.type = Types::TypeDeprecatedFault
    TypeNotDeprecatedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TypeNotDeprecatedFault.type = Types::TypeNotDeprecatedFault
    UndeprecateActivityTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    UndeprecateActivityTypeInput.add_member(:activity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "activityType", traits: {"smithy.api#required" => {}}))
    UndeprecateActivityTypeInput.type = Types::UndeprecateActivityTypeInput
    UndeprecateDomainInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    UndeprecateDomainInput.type = Types::UndeprecateDomainInput
    UndeprecateWorkflowTypeInput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    UndeprecateWorkflowTypeInput.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    UndeprecateWorkflowTypeInput.type = Types::UndeprecateWorkflowTypeInput
    UnknownResourceFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    UnknownResourceFault.type = Types::UnknownResourceFault
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    WorkflowExecution.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    WorkflowExecution.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunId, name: "runId", traits: {"smithy.api#required" => {}}))
    WorkflowExecution.type = Types::WorkflowExecution
    WorkflowExecutionAlreadyStartedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    WorkflowExecutionAlreadyStartedFault.type = Types::WorkflowExecutionAlreadyStartedFault
    WorkflowExecutionCancelRequestedCause.add_member(:child_policy_applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD_POLICY_APPLIED", traits: {"smithy.api#enumValue" => "CHILD_POLICY_APPLIED"}))
    WorkflowExecutionCancelRequestedEventAttributes.add_member(:external_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "externalWorkflowExecution"))
    WorkflowExecutionCancelRequestedEventAttributes.add_member(:external_initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "externalInitiatedEventId", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionCancelRequestedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionCancelRequestedCause, name: "cause"))
    WorkflowExecutionCancelRequestedEventAttributes.type = Types::WorkflowExecutionCancelRequestedEventAttributes
    WorkflowExecutionCanceledEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    WorkflowExecutionCanceledEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkflowExecutionCanceledEventAttributes.type = Types::WorkflowExecutionCanceledEventAttributes
    WorkflowExecutionCompletedEventAttributes.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "result"))
    WorkflowExecutionCompletedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkflowExecutionCompletedEventAttributes.type = Types::WorkflowExecutionCompletedEventAttributes
    WorkflowExecutionConfiguration.add_member(:task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "taskStartToCloseTimeout", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionConfiguration.add_member(:execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "executionStartToCloseTimeout", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionConfiguration.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionConfiguration.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    WorkflowExecutionConfiguration.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionConfiguration.add_member(:lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lambdaRole"))
    WorkflowExecutionConfiguration.type = Types::WorkflowExecutionConfiguration
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:new_execution_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunId, name: "newExecutionRunId", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "executionStartToCloseTimeout"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "taskStartToCloseTimeout"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tagList"))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionContinuedAsNewEventAttributes.add_member(:lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lambdaRole"))
    WorkflowExecutionContinuedAsNewEventAttributes.type = Types::WorkflowExecutionContinuedAsNewEventAttributes
    WorkflowExecutionFailedEventAttributes.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "reason"))
    WorkflowExecutionFailedEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    WorkflowExecutionFailedEventAttributes.add_member(:decision_task_completed_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "decisionTaskCompletedEventId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkflowExecutionFailedEventAttributes.type = Types::WorkflowExecutionFailedEventAttributes
    WorkflowExecutionFilter.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, name: "workflowId", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionFilter.type = Types::WorkflowExecutionFilter
    WorkflowExecutionInfo.add_member(:execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "execution", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionInfo.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionInfo.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTimestamp", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionInfo.add_member(:close_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "closeTimestamp"))
    WorkflowExecutionInfo.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "executionStatus", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionInfo.add_member(:close_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CloseStatus, name: "closeStatus"))
    WorkflowExecutionInfo.add_member(:parent, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "parent"))
    WorkflowExecutionInfo.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tagList"))
    WorkflowExecutionInfo.add_member(:cancel_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: Canceled, name: "cancelRequested", traits: {"smithy.api#default" => false}))
    WorkflowExecutionInfo.type = Types::WorkflowExecutionInfo
    WorkflowExecutionInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionInfo, name: "member")
    WorkflowExecutionOpenCounts.add_member(:open_activity_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "openActivityTasks", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkflowExecutionOpenCounts.add_member(:open_decision_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenDecisionTasksCount, name: "openDecisionTasks", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkflowExecutionOpenCounts.add_member(:open_timers, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "openTimers", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkflowExecutionOpenCounts.add_member(:open_child_workflow_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "openChildWorkflowExecutions", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkflowExecutionOpenCounts.add_member(:open_lambda_functions, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "openLambdaFunctions", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionOpenCounts.type = Types::WorkflowExecutionOpenCounts
    WorkflowExecutionSignaledEventAttributes.add_member(:signal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalName, name: "signalName", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionSignaledEventAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    WorkflowExecutionSignaledEventAttributes.add_member(:external_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "externalWorkflowExecution"))
    WorkflowExecutionSignaledEventAttributes.add_member(:external_initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "externalInitiatedEventId", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionSignaledEventAttributes.type = Types::WorkflowExecutionSignaledEventAttributes
    WorkflowExecutionStartedEventAttributes.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "input"))
    WorkflowExecutionStartedEventAttributes.add_member(:execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "executionStartToCloseTimeout"))
    WorkflowExecutionStartedEventAttributes.add_member(:task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "taskStartToCloseTimeout"))
    WorkflowExecutionStartedEventAttributes.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionStartedEventAttributes.add_member(:task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "taskList", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionStartedEventAttributes.add_member(:task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "taskPriority"))
    WorkflowExecutionStartedEventAttributes.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionStartedEventAttributes.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tagList"))
    WorkflowExecutionStartedEventAttributes.add_member(:continued_execution_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRunIdOptional, name: "continuedExecutionRunId"))
    WorkflowExecutionStartedEventAttributes.add_member(:parent_workflow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecution, name: "parentWorkflowExecution"))
    WorkflowExecutionStartedEventAttributes.add_member(:parent_initiated_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "parentInitiatedEventId", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionStartedEventAttributes.add_member(:lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lambdaRole"))
    WorkflowExecutionStartedEventAttributes.type = Types::WorkflowExecutionStartedEventAttributes
    WorkflowExecutionTerminatedCause.add_member(:child_policy_applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD_POLICY_APPLIED", traits: {"smithy.api#enumValue" => "CHILD_POLICY_APPLIED"}))
    WorkflowExecutionTerminatedCause.add_member(:event_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "EVENT_LIMIT_EXCEEDED"}))
    WorkflowExecutionTerminatedCause.add_member(:operator_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATOR_INITIATED", traits: {"smithy.api#enumValue" => "OPERATOR_INITIATED"}))
    WorkflowExecutionTerminatedEventAttributes.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateReason, name: "reason"))
    WorkflowExecutionTerminatedEventAttributes.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "details"))
    WorkflowExecutionTerminatedEventAttributes.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionTerminatedEventAttributes.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionTerminatedCause, name: "cause"))
    WorkflowExecutionTerminatedEventAttributes.type = Types::WorkflowExecutionTerminatedEventAttributes
    WorkflowExecutionTimedOutEventAttributes.add_member(:timeout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionTimeoutType, name: "timeoutType", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionTimedOutEventAttributes.add_member(:child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "childPolicy", traits: {"smithy.api#required" => {}}))
    WorkflowExecutionTimedOutEventAttributes.type = Types::WorkflowExecutionTimedOutEventAttributes
    WorkflowExecutionTimeoutType.add_member(:start_to_close, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TO_CLOSE", traits: {"smithy.api#enumValue" => "START_TO_CLOSE"}))
    WorkflowType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    WorkflowType.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    WorkflowType.type = Types::WorkflowType
    WorkflowTypeConfiguration.add_member(:default_task_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultTaskStartToCloseTimeout"))
    WorkflowTypeConfiguration.add_member(:default_execution_start_to_close_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSecondsOptional, name: "defaultExecutionStartToCloseTimeout"))
    WorkflowTypeConfiguration.add_member(:default_task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "defaultTaskList"))
    WorkflowTypeConfiguration.add_member(:default_task_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPriority, name: "defaultTaskPriority"))
    WorkflowTypeConfiguration.add_member(:default_child_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildPolicy, name: "defaultChildPolicy"))
    WorkflowTypeConfiguration.add_member(:default_lambda_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "defaultLambdaRole"))
    WorkflowTypeConfiguration.type = Types::WorkflowTypeConfiguration
    WorkflowTypeFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    WorkflowTypeFilter.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionOptional, name: "version"))
    WorkflowTypeFilter.type = Types::WorkflowTypeFilter
    WorkflowTypeInfo.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "workflowType", traits: {"smithy.api#required" => {}}))
    WorkflowTypeInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    WorkflowTypeInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    WorkflowTypeInfo.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    WorkflowTypeInfo.add_member(:deprecation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "deprecationDate"))
    WorkflowTypeInfo.type = Types::WorkflowTypeInfo
    WorkflowTypeInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTypeInfo, name: "member")

    SimpleWorkflowService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.swf#SimpleWorkflowService"
      service.name = "SimpleWorkflowService"
      service.version = "2012-01-25"
      service.traits = {"aws.api#service" => {"sdkId" => "SWF", "arnNamespace" => "swf", "cloudFormationName" => "SWF", "cloudTrailEventSource" => "swf.amazonaws.com", "endpointPrefix" => "swf"}, "aws.auth#sigv4" => {"name" => "swf"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Simple Workflow Service", "smithy.api#xmlNamespace" => {"uri" => "http://swf.amazonaws.com/doc/2012-01-25"}}
      service.add_operation(:count_closed_workflow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#CountClosedWorkflowExecutions"
        operation.name = "CountClosedWorkflowExecutions"
        operation.input = CountClosedWorkflowExecutionsInput
        operation.output = CountClosedWorkflowExecutionsOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:count_open_workflow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#CountOpenWorkflowExecutions"
        operation.name = "CountOpenWorkflowExecutions"
        operation.input = CountOpenWorkflowExecutionsInput
        operation.output = CountOpenWorkflowExecutionsOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:count_pending_activity_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#CountPendingActivityTasks"
        operation.name = "CountPendingActivityTasks"
        operation.input = CountPendingActivityTasksInput
        operation.output = CountPendingActivityTasksOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:count_pending_decision_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#CountPendingDecisionTasks"
        operation.name = "CountPendingDecisionTasks"
        operation.input = CountPendingDecisionTasksInput
        operation.output = CountPendingDecisionTasksOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:delete_activity_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DeleteActivityType"
        operation.name = "DeleteActivityType"
        operation.input = DeleteActivityTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeNotDeprecatedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:delete_workflow_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DeleteWorkflowType"
        operation.name = "DeleteWorkflowType"
        operation.input = DeleteWorkflowTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeNotDeprecatedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:deprecate_activity_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DeprecateActivityType"
        operation.name = "DeprecateActivityType"
        operation.input = DeprecateActivityTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeDeprecatedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:deprecate_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DeprecateDomain"
        operation.name = "DeprecateDomain"
        operation.input = DeprecateDomainInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DomainDeprecatedFault
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:deprecate_workflow_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DeprecateWorkflowType"
        operation.name = "DeprecateWorkflowType"
        operation.input = DeprecateWorkflowTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeDeprecatedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:describe_activity_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DescribeActivityType"
        operation.name = "DescribeActivityType"
        operation.input = DescribeActivityTypeInput
        operation.output = DescribeActivityTypeOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:describe_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DescribeDomain"
        operation.name = "DescribeDomain"
        operation.input = DescribeDomainInput
        operation.output = DescribeDomainOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:describe_workflow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DescribeWorkflowExecution"
        operation.name = "DescribeWorkflowExecution"
        operation.input = DescribeWorkflowExecutionInput
        operation.output = DescribeWorkflowExecutionOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:describe_workflow_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#DescribeWorkflowType"
        operation.name = "DescribeWorkflowType"
        operation.input = DescribeWorkflowTypeInput
        operation.output = DescribeWorkflowTypeOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:get_workflow_execution_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#GetWorkflowExecutionHistory"
        operation.name = "GetWorkflowExecutionHistory"
        operation.input = GetWorkflowExecutionHistoryInput
        operation.output = GetWorkflowExecutionHistoryOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
        operation[:paginator] = Paginators::GetWorkflowExecutionHistory.new
      end)
      service.add_operation(:list_activity_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#ListActivityTypes"
        operation.name = "ListActivityTypes"
        operation.input = ListActivityTypesInput
        operation.output = ListActivityTypesOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
        operation[:paginator] = Paginators::ListActivityTypes.new
      end)
      service.add_operation(:list_closed_workflow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#ListClosedWorkflowExecutions"
        operation.name = "ListClosedWorkflowExecutions"
        operation.input = ListClosedWorkflowExecutionsInput
        operation.output = ListClosedWorkflowExecutionsOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
        operation[:paginator] = Paginators::ListClosedWorkflowExecutions.new
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#ListDomains"
        operation.name = "ListDomains"
        operation.input = ListDomainsInput
        operation.output = ListDomainsOutput
        operation.errors << OperationNotPermittedFault
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListDomainsSuccess", "params" => {"registrationStatus" => "REGISTERED"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_open_workflow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#ListOpenWorkflowExecutions"
        operation.name = "ListOpenWorkflowExecutions"
        operation.input = ListOpenWorkflowExecutionsInput
        operation.output = ListOpenWorkflowExecutionsOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
        operation[:paginator] = Paginators::ListOpenWorkflowExecutions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:list_workflow_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#ListWorkflowTypes"
        operation.name = "ListWorkflowTypes"
        operation.input = ListWorkflowTypesInput
        operation.output = ListWorkflowTypesOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
        operation[:paginator] = Paginators::ListWorkflowTypes.new
      end)
      service.add_operation(:poll_for_activity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#PollForActivityTask"
        operation.name = "PollForActivityTask"
        operation.input = PollForActivityTaskInput
        operation.output = PollForActivityTaskOutput
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:poll_for_decision_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#PollForDecisionTask"
        operation.name = "PollForDecisionTask"
        operation.input = PollForDecisionTaskInput
        operation.output = PollForDecisionTaskOutput
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
        operation[:paginator] = Paginators::PollForDecisionTask.new
      end)
      service.add_operation(:record_activity_task_heartbeat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RecordActivityTaskHeartbeat"
        operation.name = "RecordActivityTaskHeartbeat"
        operation.input = RecordActivityTaskHeartbeatInput
        operation.output = RecordActivityTaskHeartbeatOutput
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:register_activity_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RegisterActivityType"
        operation.name = "RegisterActivityType"
        operation.input = RegisterActivityTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeAlreadyExistsFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:register_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RegisterDomain"
        operation.name = "RegisterDomain"
        operation.input = RegisterDomainInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DomainAlreadyExistsFault
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << TooManyTagsFault
        operation.traits = {}
      end)
      service.add_operation(:register_workflow_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RegisterWorkflowType"
        operation.name = "RegisterWorkflowType"
        operation.input = RegisterWorkflowTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeAlreadyExistsFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:request_cancel_workflow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RequestCancelWorkflowExecution"
        operation.name = "RequestCancelWorkflowExecution"
        operation.input = RequestCancelWorkflowExecutionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:respond_activity_task_canceled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RespondActivityTaskCanceled"
        operation.name = "RespondActivityTaskCanceled"
        operation.input = RespondActivityTaskCanceledInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:respond_activity_task_completed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RespondActivityTaskCompleted"
        operation.name = "RespondActivityTaskCompleted"
        operation.input = RespondActivityTaskCompletedInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:respond_activity_task_failed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RespondActivityTaskFailed"
        operation.name = "RespondActivityTaskFailed"
        operation.input = RespondActivityTaskFailedInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:respond_decision_task_completed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#RespondDecisionTaskCompleted"
        operation.name = "RespondDecisionTaskCompleted"
        operation.input = RespondDecisionTaskCompletedInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:signal_workflow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#SignalWorkflowExecution"
        operation.name = "SignalWorkflowExecution"
        operation.input = SignalWorkflowExecutionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:start_workflow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#StartWorkflowExecution"
        operation.name = "StartWorkflowExecution"
        operation.input = StartWorkflowExecutionInput
        operation.output = StartWorkflowExecutionOutput
        operation.errors << DefaultUndefinedFault
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeDeprecatedFault
        operation.errors << UnknownResourceFault
        operation.errors << WorkflowExecutionAlreadyStartedFault
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << TooManyTagsFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:terminate_workflow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#TerminateWorkflowExecution"
        operation.name = "TerminateWorkflowExecution"
        operation.input = TerminateWorkflowExecutionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:undeprecate_activity_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#UndeprecateActivityType"
        operation.name = "UndeprecateActivityType"
        operation.input = UndeprecateActivityTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeAlreadyExistsFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:undeprecate_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#UndeprecateDomain"
        operation.name = "UndeprecateDomain"
        operation.input = UndeprecateDomainInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DomainAlreadyExistsFault
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:undeprecate_workflow_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#UndeprecateWorkflowType"
        operation.name = "UndeprecateWorkflowType"
        operation.input = UndeprecateWorkflowTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << OperationNotPermittedFault
        operation.errors << TypeAlreadyExistsFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.swf#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededFault
        operation.errors << OperationNotPermittedFault
        operation.errors << UnknownResourceFault
        operation.traits = {}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
