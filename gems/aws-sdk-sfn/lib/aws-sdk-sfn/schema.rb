# frozen_string_literal: true

# This is generated code!

module Aws::SFN
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivityAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityAlreadyExists", name: "ActivityAlreadyExists", traits: {"smithy.api#error" => "client"})
    ActivityDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityDoesNotExist", name: "ActivityDoesNotExist", traits: {"smithy.api#error" => "client"})
    ActivityFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityFailedEventDetails", name: "ActivityFailedEventDetails")
    ActivityLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityLimitExceeded", name: "ActivityLimitExceeded", traits: {"smithy.api#error" => "client"})
    ActivityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#ActivityList", name: "ActivityList")
    ActivityListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityListItem", name: "ActivityListItem")
    ActivityScheduleFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityScheduleFailedEventDetails", name: "ActivityScheduleFailedEventDetails")
    ActivityScheduledEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityScheduledEventDetails", name: "ActivityScheduledEventDetails")
    ActivityStartedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityStartedEventDetails", name: "ActivityStartedEventDetails")
    ActivitySucceededEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivitySucceededEventDetails", name: "ActivitySucceededEventDetails")
    ActivityTimedOutEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityTimedOutEventDetails", name: "ActivityTimedOutEventDetails")
    ActivityWorkerLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ActivityWorkerLimitExceeded", name: "ActivityWorkerLimitExceeded", traits: {"smithy.api#error" => "client"})
    AliasDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#AliasDescription", name: "AliasDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AssignedVariables = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sfn#AssignedVariables", name: "AssignedVariables")
    AssignedVariablesDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#AssignedVariablesDetails", name: "AssignedVariablesDetails")
    BilledDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#BilledDuration", name: "BilledDuration", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    BilledMemoryUsed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#BilledMemoryUsed", name: "BilledMemoryUsed", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    BillingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#BillingDetails", name: "BillingDetails")
    CharacterRestrictedName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#CharacterRestrictedName", name: "CharacterRestrictedName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^(?=.*[a-zA-Z_\\-\\.])[a-zA-Z0-9_\\-\\.]+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    CloudWatchEventsExecutionDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#CloudWatchEventsExecutionDataDetails", name: "CloudWatchEventsExecutionDataDetails")
    CloudWatchLogsLogGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#CloudWatchLogsLogGroup", name: "CloudWatchLogsLogGroup")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectorParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#ConnectorParameters", name: "ConnectorParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#sensitive" => {}})
    CreateActivityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#CreateActivityInput", name: "CreateActivityInput")
    CreateActivityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#CreateActivityOutput", name: "CreateActivityOutput")
    CreateStateMachineAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#CreateStateMachineAliasInput", name: "CreateStateMachineAliasInput")
    CreateStateMachineAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#CreateStateMachineAliasOutput", name: "CreateStateMachineAliasOutput")
    CreateStateMachineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#CreateStateMachineInput", name: "CreateStateMachineInput")
    CreateStateMachineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#CreateStateMachineOutput", name: "CreateStateMachineOutput")
    Definition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#Definition", name: "Definition", traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}, "smithy.api#sensitive" => {}})
    DeleteActivityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DeleteActivityInput", name: "DeleteActivityInput")
    DeleteActivityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DeleteActivityOutput", name: "DeleteActivityOutput")
    DeleteStateMachineAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DeleteStateMachineAliasInput", name: "DeleteStateMachineAliasInput")
    DeleteStateMachineAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DeleteStateMachineAliasOutput", name: "DeleteStateMachineAliasOutput")
    DeleteStateMachineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DeleteStateMachineInput", name: "DeleteStateMachineInput")
    DeleteStateMachineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DeleteStateMachineOutput", name: "DeleteStateMachineOutput")
    DeleteStateMachineVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DeleteStateMachineVersionInput", name: "DeleteStateMachineVersionInput")
    DeleteStateMachineVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DeleteStateMachineVersionOutput", name: "DeleteStateMachineVersionOutput")
    DescribeActivityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeActivityInput", name: "DescribeActivityInput")
    DescribeActivityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeActivityOutput", name: "DescribeActivityOutput")
    DescribeExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeExecutionInput", name: "DescribeExecutionInput")
    DescribeExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeExecutionOutput", name: "DescribeExecutionOutput")
    DescribeMapRunInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeMapRunInput", name: "DescribeMapRunInput")
    DescribeMapRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeMapRunOutput", name: "DescribeMapRunOutput")
    DescribeStateMachineAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeStateMachineAliasInput", name: "DescribeStateMachineAliasInput")
    DescribeStateMachineAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeStateMachineAliasOutput", name: "DescribeStateMachineAliasOutput")
    DescribeStateMachineForExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeStateMachineForExecutionInput", name: "DescribeStateMachineForExecutionInput")
    DescribeStateMachineForExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeStateMachineForExecutionOutput", name: "DescribeStateMachineForExecutionOutput")
    DescribeStateMachineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeStateMachineInput", name: "DescribeStateMachineInput")
    DescribeStateMachineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#DescribeStateMachineOutput", name: "DescribeStateMachineOutput")
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#Enabled", name: "Enabled", traits: {"smithy.api#default" => false})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#EncryptionType", name: "EncryptionType")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#ErrorMessage", name: "ErrorMessage")
    EvaluationFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#EvaluationFailedEventDetails", name: "EvaluationFailedEventDetails")
    EvaluationFailureLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#EvaluationFailureLocation", name: "EvaluationFailureLocation", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    EventId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#EventId", name: "EventId", traits: {"smithy.api#default" => 0})
    ExecutionAbortedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionAbortedEventDetails", name: "ExecutionAbortedEventDetails")
    ExecutionAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionAlreadyExists", name: "ExecutionAlreadyExists", traits: {"smithy.api#error" => "client"})
    ExecutionDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionDoesNotExist", name: "ExecutionDoesNotExist", traits: {"smithy.api#error" => "client"})
    ExecutionFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionFailedEventDetails", name: "ExecutionFailedEventDetails")
    ExecutionLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionLimitExceeded", name: "ExecutionLimitExceeded", traits: {"smithy.api#error" => "client"})
    ExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#ExecutionList", name: "ExecutionList")
    ExecutionListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionListItem", name: "ExecutionListItem")
    ExecutionNotRedrivable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionNotRedrivable", name: "ExecutionNotRedrivable", traits: {"smithy.api#error" => "client"})
    ExecutionRedriveFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#ExecutionRedriveFilter", name: "ExecutionRedriveFilter")
    ExecutionRedriveStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#ExecutionRedriveStatus", name: "ExecutionRedriveStatus")
    ExecutionRedrivenEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionRedrivenEventDetails", name: "ExecutionRedrivenEventDetails")
    ExecutionStartedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionStartedEventDetails", name: "ExecutionStartedEventDetails")
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#ExecutionStatus", name: "ExecutionStatus")
    ExecutionSucceededEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionSucceededEventDetails", name: "ExecutionSucceededEventDetails")
    ExecutionTimedOutEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ExecutionTimedOutEventDetails", name: "ExecutionTimedOutEventDetails")
    GetActivityTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#GetActivityTaskInput", name: "GetActivityTaskInput")
    GetActivityTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#GetActivityTaskOutput", name: "GetActivityTaskOutput")
    GetExecutionHistoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#GetExecutionHistoryInput", name: "GetExecutionHistoryInput")
    GetExecutionHistoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#GetExecutionHistoryOutput", name: "GetExecutionHistoryOutput")
    HTTPBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#HTTPBody", name: "HTTPBody")
    HTTPHeaders = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#HTTPHeaders", name: "HTTPHeaders")
    HTTPMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#HTTPMethod", name: "HTTPMethod")
    HTTPProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#HTTPProtocol", name: "HTTPProtocol")
    HTTPStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#HTTPStatusCode", name: "HTTPStatusCode")
    HTTPStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#HTTPStatusMessage", name: "HTTPStatusMessage")
    HistoryEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#HistoryEvent", name: "HistoryEvent")
    HistoryEventExecutionDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#HistoryEventExecutionDataDetails", name: "HistoryEventExecutionDataDetails")
    HistoryEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#HistoryEventList", name: "HistoryEventList")
    HistoryEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#HistoryEventType", name: "HistoryEventType")
    Identity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#Identity", name: "Identity", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    IncludeExecutionData = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#IncludeExecutionData", name: "IncludeExecutionData", traits: {"smithy.api#default" => false})
    IncludeExecutionDataGetExecutionHistory = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#IncludeExecutionDataGetExecutionHistory", name: "IncludeExecutionDataGetExecutionHistory")
    IncludedData = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#IncludedData", name: "IncludedData")
    InspectionData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InspectionData", name: "InspectionData", traits: {"smithy.api#sensitive" => {}})
    InspectionDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InspectionDataRequest", name: "InspectionDataRequest")
    InspectionDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InspectionDataResponse", name: "InspectionDataResponse")
    InspectionLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#InspectionLevel", name: "InspectionLevel")
    InvalidArn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidArn", name: "InvalidArn", traits: {"smithy.api#error" => "client"})
    InvalidDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidDefinition", name: "InvalidDefinition", traits: {"smithy.api#error" => "client"})
    InvalidEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidEncryptionConfiguration", name: "InvalidEncryptionConfiguration", traits: {"smithy.api#error" => "client"})
    InvalidExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidExecutionInput", name: "InvalidExecutionInput", traits: {"smithy.api#error" => "client"})
    InvalidLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidLoggingConfiguration", name: "InvalidLoggingConfiguration", traits: {"smithy.api#error" => "client"})
    InvalidName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidName", name: "InvalidName", traits: {"smithy.api#error" => "client"})
    InvalidOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidOutput", name: "InvalidOutput", traits: {"smithy.api#error" => "client"})
    InvalidToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidToken", name: "InvalidToken", traits: {"smithy.api#error" => "client"})
    InvalidTracingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#InvalidTracingConfiguration", name: "InvalidTracingConfiguration", traits: {"smithy.api#error" => "client"})
    KmsAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#KmsAccessDeniedException", name: "KmsAccessDeniedException", traits: {"smithy.api#error" => "client"})
    KmsDataKeyReusePeriodSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#KmsDataKeyReusePeriodSeconds", name: "KmsDataKeyReusePeriodSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 900}})
    KmsInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#KmsInvalidStateException", name: "KmsInvalidStateException", traits: {"smithy.api#error" => "client"})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#KmsKeyState", name: "KmsKeyState")
    KmsThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#KmsThrottlingException", name: "KmsThrottlingException", traits: {"smithy.api#error" => "client"})
    LambdaFunctionFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#LambdaFunctionFailedEventDetails", name: "LambdaFunctionFailedEventDetails")
    LambdaFunctionScheduleFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#LambdaFunctionScheduleFailedEventDetails", name: "LambdaFunctionScheduleFailedEventDetails")
    LambdaFunctionScheduledEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#LambdaFunctionScheduledEventDetails", name: "LambdaFunctionScheduledEventDetails")
    LambdaFunctionStartFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#LambdaFunctionStartFailedEventDetails", name: "LambdaFunctionStartFailedEventDetails")
    LambdaFunctionSucceededEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#LambdaFunctionSucceededEventDetails", name: "LambdaFunctionSucceededEventDetails")
    LambdaFunctionTimedOutEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#LambdaFunctionTimedOutEventDetails", name: "LambdaFunctionTimedOutEventDetails")
    ListActivitiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListActivitiesInput", name: "ListActivitiesInput")
    ListActivitiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListActivitiesOutput", name: "ListActivitiesOutput")
    ListExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListExecutionsInput", name: "ListExecutionsInput")
    ListExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListExecutionsOutput", name: "ListExecutionsOutput")
    ListExecutionsPageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#ListExecutionsPageToken", name: "ListExecutionsPageToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 3096}})
    ListMapRunsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListMapRunsInput", name: "ListMapRunsInput")
    ListMapRunsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListMapRunsOutput", name: "ListMapRunsOutput")
    ListStateMachineAliasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListStateMachineAliasesInput", name: "ListStateMachineAliasesInput")
    ListStateMachineAliasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListStateMachineAliasesOutput", name: "ListStateMachineAliasesOutput")
    ListStateMachineVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListStateMachineVersionsInput", name: "ListStateMachineVersionsInput")
    ListStateMachineVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListStateMachineVersionsOutput", name: "ListStateMachineVersionsOutput")
    ListStateMachinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListStateMachinesInput", name: "ListStateMachinesInput")
    ListStateMachinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListStateMachinesOutput", name: "ListStateMachinesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    LogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#LogDestination", name: "LogDestination")
    LogDestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#LogDestinationList", name: "LogDestinationList")
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#LogLevel", name: "LogLevel")
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#LoggingConfiguration", name: "LoggingConfiguration")
    LongArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#LongArn", name: "LongArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    LongObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#LongObject", name: "LongObject")
    MapIterationEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MapIterationEventDetails", name: "MapIterationEventDetails")
    MapRunExecutionCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MapRunExecutionCounts", name: "MapRunExecutionCounts")
    MapRunFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MapRunFailedEventDetails", name: "MapRunFailedEventDetails")
    MapRunItemCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MapRunItemCounts", name: "MapRunItemCounts")
    MapRunLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#MapRunLabel", name: "MapRunLabel")
    MapRunList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#MapRunList", name: "MapRunList")
    MapRunListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MapRunListItem", name: "MapRunListItem")
    MapRunRedrivenEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MapRunRedrivenEventDetails", name: "MapRunRedrivenEventDetails")
    MapRunStartedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MapRunStartedEventDetails", name: "MapRunStartedEventDetails")
    MapRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#MapRunStatus", name: "MapRunStatus")
    MapStateStartedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MapStateStartedEventDetails", name: "MapStateStartedEventDetails")
    MaxConcurrency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#MaxConcurrency", name: "MaxConcurrency", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MissingRequiredParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#MissingRequiredParameter", name: "MissingRequiredParameter", traits: {"smithy.api#error" => "client"})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#PageSize", name: "PageSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#PageToken", name: "PageToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Publish = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#Publish", name: "Publish", traits: {"smithy.api#default" => false})
    PublishStateMachineVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#PublishStateMachineVersionInput", name: "PublishStateMachineVersionInput")
    PublishStateMachineVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#PublishStateMachineVersionOutput", name: "PublishStateMachineVersionOutput")
    RedriveCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#RedriveCount", name: "RedriveCount")
    RedriveExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#RedriveExecutionInput", name: "RedriveExecutionInput")
    RedriveExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#RedriveExecutionOutput", name: "RedriveExecutionOutput")
    ResourceNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ResourceNotFound", name: "ResourceNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RevealSecrets = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#RevealSecrets", name: "RevealSecrets", traits: {"smithy.api#default" => false})
    ReverseOrder = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#ReverseOrder", name: "ReverseOrder", traits: {"smithy.api#default" => false})
    RevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#RevisionId", name: "RevisionId")
    RoutingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#RoutingConfigurationList", name: "RoutingConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    RoutingConfigurationListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#RoutingConfigurationListItem", name: "RoutingConfigurationListItem")
    SendTaskFailureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#SendTaskFailureInput", name: "SendTaskFailureInput")
    SendTaskFailureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#SendTaskFailureOutput", name: "SendTaskFailureOutput")
    SendTaskHeartbeatInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#SendTaskHeartbeatInput", name: "SendTaskHeartbeatInput")
    SendTaskHeartbeatOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#SendTaskHeartbeatOutput", name: "SendTaskHeartbeatOutput")
    SendTaskSuccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#SendTaskSuccessInput", name: "SendTaskSuccessInput")
    SendTaskSuccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#SendTaskSuccessOutput", name: "SendTaskSuccessOutput")
    SensitiveCause = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#SensitiveCause", name: "SensitiveCause", traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}, "smithy.api#sensitive" => {}})
    SensitiveData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#SensitiveData", name: "SensitiveData", traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#sensitive" => {}})
    SensitiveDataJobInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#SensitiveDataJobInput", name: "SensitiveDataJobInput", traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#sensitive" => {}})
    SensitiveError = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#SensitiveError", name: "SensitiveError", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StartExecutionInput", name: "StartExecutionInput")
    StartExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StartExecutionOutput", name: "StartExecutionOutput")
    StartSyncExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StartSyncExecutionInput", name: "StartSyncExecutionInput")
    StartSyncExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StartSyncExecutionOutput", name: "StartSyncExecutionOutput")
    StateEnteredEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateEnteredEventDetails", name: "StateEnteredEventDetails")
    StateExitedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateExitedEventDetails", name: "StateExitedEventDetails")
    StateMachineAliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#StateMachineAliasList", name: "StateMachineAliasList")
    StateMachineAliasListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateMachineAliasListItem", name: "StateMachineAliasListItem")
    StateMachineAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateMachineAlreadyExists", name: "StateMachineAlreadyExists", traits: {"smithy.api#error" => "client"})
    StateMachineDeleting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateMachineDeleting", name: "StateMachineDeleting", traits: {"smithy.api#error" => "client"})
    StateMachineDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateMachineDoesNotExist", name: "StateMachineDoesNotExist", traits: {"smithy.api#error" => "client"})
    StateMachineLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateMachineLimitExceeded", name: "StateMachineLimitExceeded", traits: {"smithy.api#error" => "client"})
    StateMachineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#StateMachineList", name: "StateMachineList")
    StateMachineListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateMachineListItem", name: "StateMachineListItem")
    StateMachineStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#StateMachineStatus", name: "StateMachineStatus")
    StateMachineType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#StateMachineType", name: "StateMachineType")
    StateMachineTypeNotSupported = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateMachineTypeNotSupported", name: "StateMachineTypeNotSupported", traits: {"smithy.api#error" => "client"})
    StateMachineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#StateMachineVersionList", name: "StateMachineVersionList")
    StateMachineVersionListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StateMachineVersionListItem", name: "StateMachineVersionListItem")
    StateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#StateName", name: "StateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    StopExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StopExecutionInput", name: "StopExecutionInput")
    StopExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#StopExecutionOutput", name: "StopExecutionOutput")
    SyncExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#SyncExecutionStatus", name: "SyncExecutionStatus")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#TagList", name: "TagList")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskCredentials", name: "TaskCredentials")
    TaskDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskDoesNotExist", name: "TaskDoesNotExist", traits: {"smithy.api#error" => "client"})
    TaskFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskFailedEventDetails", name: "TaskFailedEventDetails")
    TaskScheduledEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskScheduledEventDetails", name: "TaskScheduledEventDetails")
    TaskStartFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskStartFailedEventDetails", name: "TaskStartFailedEventDetails")
    TaskStartedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskStartedEventDetails", name: "TaskStartedEventDetails")
    TaskSubmitFailedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskSubmitFailedEventDetails", name: "TaskSubmitFailedEventDetails")
    TaskSubmittedEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskSubmittedEventDetails", name: "TaskSubmittedEventDetails")
    TaskSucceededEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskSucceededEventDetails", name: "TaskSucceededEventDetails")
    TaskTimedOut = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskTimedOut", name: "TaskTimedOut", traits: {"smithy.api#error" => "client"})
    TaskTimedOutEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TaskTimedOutEventDetails", name: "TaskTimedOutEventDetails")
    TaskToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#TaskToken", name: "TaskToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    TestExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#TestExecutionStatus", name: "TestExecutionStatus")
    TestStateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TestStateInput", name: "TestStateInput")
    TestStateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TestStateOutput", name: "TestStateOutput")
    TimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#TimeoutInSeconds", name: "TimeoutInSeconds", traits: {"smithy.api#default" => 0})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.sfn#Timestamp", name: "Timestamp")
    ToleratedFailureCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#ToleratedFailureCount", name: "ToleratedFailureCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ToleratedFailurePercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.sfn#ToleratedFailurePercentage", name: "ToleratedFailurePercentage", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    TooManyTags = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TooManyTags", name: "TooManyTags", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TraceHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#TraceHeader", name: "TraceHeader", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\p{ASCII}*$"})
    TracingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#TracingConfiguration", name: "TracingConfiguration")
    URL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#URL", name: "URL")
    UnsignedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#UnsignedInteger", name: "UnsignedInteger", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UnsignedLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#UnsignedLong", name: "UnsignedLong", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateMapRunInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#UpdateMapRunInput", name: "UpdateMapRunInput")
    UpdateMapRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#UpdateMapRunOutput", name: "UpdateMapRunOutput")
    UpdateStateMachineAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#UpdateStateMachineAliasInput", name: "UpdateStateMachineAliasInput")
    UpdateStateMachineAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#UpdateStateMachineAliasOutput", name: "UpdateStateMachineAliasOutput")
    UpdateStateMachineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#UpdateStateMachineInput", name: "UpdateStateMachineInput")
    UpdateStateMachineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#UpdateStateMachineOutput", name: "UpdateStateMachineOutput")
    ValidateStateMachineDefinitionCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionCode", name: "ValidateStateMachineDefinitionCode", traits: {"smithy.api#sensitive" => {}})
    ValidateStateMachineDefinitionDiagnostic = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionDiagnostic", name: "ValidateStateMachineDefinitionDiagnostic")
    ValidateStateMachineDefinitionDiagnosticList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionDiagnosticList", name: "ValidateStateMachineDefinitionDiagnosticList")
    ValidateStateMachineDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionInput", name: "ValidateStateMachineDefinitionInput")
    ValidateStateMachineDefinitionLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionLocation", name: "ValidateStateMachineDefinitionLocation", traits: {"smithy.api#sensitive" => {}})
    ValidateStateMachineDefinitionMaxResult = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionMaxResult", name: "ValidateStateMachineDefinitionMaxResult", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ValidateStateMachineDefinitionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionMessage", name: "ValidateStateMachineDefinitionMessage", traits: {"smithy.api#sensitive" => {}})
    ValidateStateMachineDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionOutput", name: "ValidateStateMachineDefinitionOutput")
    ValidateStateMachineDefinitionResultCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionResultCode", name: "ValidateStateMachineDefinitionResultCode")
    ValidateStateMachineDefinitionSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionSeverity", name: "ValidateStateMachineDefinitionSeverity")
    ValidateStateMachineDefinitionTruncated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#ValidateStateMachineDefinitionTruncated", name: "ValidateStateMachineDefinitionTruncated")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sfn#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sfn#ValidationExceptionReason", name: "ValidationExceptionReason")
    VariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#VariableName", name: "VariableName", traits: {"smithy.api#sensitive" => {}})
    VariableNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sfn#VariableNameList", name: "VariableNameList")
    VariableReferences = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sfn#VariableReferences", name: "VariableReferences", traits: {"smithy.api#sensitive" => {}})
    VariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#VariableValue", name: "VariableValue", traits: {"smithy.api#sensitive" => {}})
    VersionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sfn#VersionDescription", name: "VersionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    VersionWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sfn#VersionWeight", name: "VersionWeight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    IncludedDetails = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#includedDetails", name: "IncludedDetails", traits: {"smithy.api#default" => false})
    Truncated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sfn#truncated", name: "Truncated", traits: {"smithy.api#default" => false})

    ActivityAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ActivityAlreadyExists.type = Types::ActivityAlreadyExists
    ActivityDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ActivityDoesNotExist.type = Types::ActivityDoesNotExist
    ActivityFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    ActivityFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    ActivityFailedEventDetails.type = Types::ActivityFailedEventDetails
    ActivityLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ActivityLimitExceeded.type = Types::ActivityLimitExceeded
    ActivityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityListItem, name: "member"))
    ActivityListItem.add_member(:activity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "activityArn", traits: {"smithy.api#required" => {}}))
    ActivityListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ActivityListItem.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    ActivityListItem.type = Types::ActivityListItem
    ActivityScheduleFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    ActivityScheduleFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    ActivityScheduleFailedEventDetails.type = Types::ActivityScheduleFailedEventDetails
    ActivityScheduledEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resource", traits: {"smithy.api#required" => {}}))
    ActivityScheduledEventDetails.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    ActivityScheduledEventDetails.add_member(:input_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "inputDetails"))
    ActivityScheduledEventDetails.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutInSeconds, name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    ActivityScheduledEventDetails.add_member(:heartbeat_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutInSeconds, name: "heartbeatInSeconds", traits: {"smithy.api#default" => nil}))
    ActivityScheduledEventDetails.type = Types::ActivityScheduledEventDetails
    ActivityStartedEventDetails.add_member(:worker_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "workerName"))
    ActivityStartedEventDetails.type = Types::ActivityStartedEventDetails
    ActivitySucceededEventDetails.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    ActivitySucceededEventDetails.add_member(:output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "outputDetails"))
    ActivitySucceededEventDetails.type = Types::ActivitySucceededEventDetails
    ActivityTimedOutEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    ActivityTimedOutEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    ActivityTimedOutEventDetails.type = Types::ActivityTimedOutEventDetails
    ActivityWorkerLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ActivityWorkerLimitExceeded.type = Types::ActivityWorkerLimitExceeded
    AssignedVariables.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableName, name: "key"))
    AssignedVariables.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableValue, name: "value"))
    AssignedVariablesDetails.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "truncated", traits: {"smithy.api#default" => false}))
    AssignedVariablesDetails.type = Types::AssignedVariablesDetails
    BillingDetails.add_member(:billed_memory_used_in_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: BilledMemoryUsed, name: "billedMemoryUsedInMB", traits: {"smithy.api#default" => 0}))
    BillingDetails.add_member(:billed_duration_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BilledDuration, name: "billedDurationInMilliseconds", traits: {"smithy.api#default" => 0}))
    BillingDetails.type = Types::BillingDetails
    CloudWatchEventsExecutionDataDetails.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedDetails, name: "included", traits: {"smithy.api#default" => false}))
    CloudWatchEventsExecutionDataDetails.type = Types::CloudWatchEventsExecutionDataDetails
    CloudWatchLogsLogGroup.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "logGroupArn"))
    CloudWatchLogsLogGroup.type = Types::CloudWatchLogsLogGroup
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateActivityInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateActivityInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateActivityInput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateActivityInput.type = Types::CreateActivityInput
    CreateActivityOutput.add_member(:activity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "activityArn", traits: {"smithy.api#required" => {}}))
    CreateActivityOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    CreateActivityOutput.type = Types::CreateActivityOutput
    CreateStateMachineAliasInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasDescription, name: "description"))
    CreateStateMachineAliasInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CharacterRestrictedName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateStateMachineAliasInput.add_member(:routing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingConfigurationList, name: "routingConfiguration", traits: {"smithy.api#required" => {}}))
    CreateStateMachineAliasInput.type = Types::CreateStateMachineAliasInput
    CreateStateMachineAliasOutput.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineAliasArn", traits: {"smithy.api#required" => {}}))
    CreateStateMachineAliasOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    CreateStateMachineAliasOutput.type = Types::CreateStateMachineAliasOutput
    CreateStateMachineInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateStateMachineInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: Definition, name: "definition", traits: {"smithy.api#required" => {}}))
    CreateStateMachineInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateStateMachineInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineType, name: "type"))
    CreateStateMachineInput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "loggingConfiguration"))
    CreateStateMachineInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateStateMachineInput.add_member(:tracing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfiguration, name: "tracingConfiguration"))
    CreateStateMachineInput.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: Publish, name: "publish", traits: {"smithy.api#default" => false}))
    CreateStateMachineInput.add_member(:version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionDescription, name: "versionDescription"))
    CreateStateMachineInput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateStateMachineInput.type = Types::CreateStateMachineInput
    CreateStateMachineOutput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    CreateStateMachineOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    CreateStateMachineOutput.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineVersionArn"))
    CreateStateMachineOutput.type = Types::CreateStateMachineOutput
    DeleteActivityInput.add_member(:activity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "activityArn", traits: {"smithy.api#required" => {}}))
    DeleteActivityInput.type = Types::DeleteActivityInput
    DeleteActivityOutput.type = Types::DeleteActivityOutput
    DeleteStateMachineAliasInput.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineAliasArn", traits: {"smithy.api#required" => {}}))
    DeleteStateMachineAliasInput.type = Types::DeleteStateMachineAliasInput
    DeleteStateMachineAliasOutput.type = Types::DeleteStateMachineAliasOutput
    DeleteStateMachineInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    DeleteStateMachineInput.type = Types::DeleteStateMachineInput
    DeleteStateMachineOutput.type = Types::DeleteStateMachineOutput
    DeleteStateMachineVersionInput.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "stateMachineVersionArn", traits: {"smithy.api#required" => {}}))
    DeleteStateMachineVersionInput.type = Types::DeleteStateMachineVersionInput
    DeleteStateMachineVersionOutput.type = Types::DeleteStateMachineVersionOutput
    DescribeActivityInput.add_member(:activity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "activityArn", traits: {"smithy.api#required" => {}}))
    DescribeActivityInput.type = Types::DescribeActivityInput
    DescribeActivityOutput.add_member(:activity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "activityArn", traits: {"smithy.api#required" => {}}))
    DescribeActivityOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    DescribeActivityOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    DescribeActivityOutput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    DescribeActivityOutput.type = Types::DescribeActivityOutput
    DescribeExecutionInput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    DescribeExecutionInput.add_member(:included_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedData, name: "includedData"))
    DescribeExecutionInput.type = Types::DescribeExecutionInput
    DescribeExecutionOutput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    DescribeExecutionOutput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    DescribeExecutionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    DescribeExecutionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DescribeExecutionOutput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    DescribeExecutionOutput.add_member(:stop_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stopDate"))
    DescribeExecutionOutput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    DescribeExecutionOutput.add_member(:input_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchEventsExecutionDataDetails, name: "inputDetails"))
    DescribeExecutionOutput.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    DescribeExecutionOutput.add_member(:output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchEventsExecutionDataDetails, name: "outputDetails"))
    DescribeExecutionOutput.add_member(:trace_header, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceHeader, name: "traceHeader"))
    DescribeExecutionOutput.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn"))
    DescribeExecutionOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    DescribeExecutionOutput.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    DescribeExecutionOutput.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineVersionArn"))
    DescribeExecutionOutput.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineAliasArn"))
    DescribeExecutionOutput.add_member(:redrive_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RedriveCount, name: "redriveCount"))
    DescribeExecutionOutput.add_member(:redrive_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "redriveDate"))
    DescribeExecutionOutput.add_member(:redrive_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRedriveStatus, name: "redriveStatus"))
    DescribeExecutionOutput.add_member(:redrive_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "redriveStatusReason"))
    DescribeExecutionOutput.type = Types::DescribeExecutionOutput
    DescribeMapRunInput.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn", traits: {"smithy.api#required" => {}}))
    DescribeMapRunInput.type = Types::DescribeMapRunInput
    DescribeMapRunOutput.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn", traits: {"smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:stop_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stopDate"))
    DescribeMapRunOutput.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "maxConcurrency", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:tolerated_failure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ToleratedFailurePercentage, name: "toleratedFailurePercentage", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:tolerated_failure_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ToleratedFailureCount, name: "toleratedFailureCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:item_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunItemCounts, name: "itemCounts", traits: {"smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:execution_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunExecutionCounts, name: "executionCounts", traits: {"smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:redrive_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RedriveCount, name: "redriveCount"))
    DescribeMapRunOutput.add_member(:redrive_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "redriveDate"))
    DescribeMapRunOutput.type = Types::DescribeMapRunOutput
    DescribeStateMachineAliasInput.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineAliasArn", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineAliasInput.type = Types::DescribeStateMachineAliasInput
    DescribeStateMachineAliasOutput.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineAliasArn"))
    DescribeStateMachineAliasOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    DescribeStateMachineAliasOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasDescription, name: "description"))
    DescribeStateMachineAliasOutput.add_member(:routing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingConfigurationList, name: "routingConfiguration"))
    DescribeStateMachineAliasOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    DescribeStateMachineAliasOutput.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDate"))
    DescribeStateMachineAliasOutput.type = Types::DescribeStateMachineAliasOutput
    DescribeStateMachineForExecutionInput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineForExecutionInput.add_member(:included_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedData, name: "includedData"))
    DescribeStateMachineForExecutionInput.type = Types::DescribeStateMachineForExecutionInput
    DescribeStateMachineForExecutionOutput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: Definition, name: "definition", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDate", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "loggingConfiguration"))
    DescribeStateMachineForExecutionOutput.add_member(:tracing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfiguration, name: "tracingConfiguration"))
    DescribeStateMachineForExecutionOutput.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn"))
    DescribeStateMachineForExecutionOutput.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunLabel, name: "label"))
    DescribeStateMachineForExecutionOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    DescribeStateMachineForExecutionOutput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    DescribeStateMachineForExecutionOutput.add_member(:variable_references, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableReferences, name: "variableReferences"))
    DescribeStateMachineForExecutionOutput.type = Types::DescribeStateMachineForExecutionOutput
    DescribeStateMachineInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineInput.add_member(:included_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedData, name: "includedData"))
    DescribeStateMachineInput.type = Types::DescribeStateMachineInput
    DescribeStateMachineOutput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineStatus, name: "status"))
    DescribeStateMachineOutput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: Definition, name: "definition", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineType, name: "type", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "loggingConfiguration"))
    DescribeStateMachineOutput.add_member(:tracing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfiguration, name: "tracingConfiguration"))
    DescribeStateMachineOutput.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunLabel, name: "label"))
    DescribeStateMachineOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    DescribeStateMachineOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionDescription, name: "description"))
    DescribeStateMachineOutput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    DescribeStateMachineOutput.add_member(:variable_references, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableReferences, name: "variableReferences"))
    DescribeStateMachineOutput.type = Types::DescribeStateMachineOutput
    EncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    EncryptionConfiguration.add_member(:kms_data_key_reuse_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsDataKeyReusePeriodSeconds, name: "kmsDataKeyReusePeriodSeconds"))
    EncryptionConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "type", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionType.add_member(:aws_owned_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KEY"}))
    EncryptionType.add_member(:customer_managed_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_KMS_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    EvaluationFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    EvaluationFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    EvaluationFailedEventDetails.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationFailureLocation, name: "location"))
    EvaluationFailedEventDetails.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: StateName, name: "state", traits: {"smithy.api#required" => {}}))
    EvaluationFailedEventDetails.type = Types::EvaluationFailedEventDetails
    ExecutionAbortedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    ExecutionAbortedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    ExecutionAbortedEventDetails.type = Types::ExecutionAbortedEventDetails
    ExecutionAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExecutionAlreadyExists.type = Types::ExecutionAlreadyExists
    ExecutionDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExecutionDoesNotExist.type = Types::ExecutionDoesNotExist
    ExecutionFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    ExecutionFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    ExecutionFailedEventDetails.type = Types::ExecutionFailedEventDetails
    ExecutionLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExecutionLimitExceeded.type = Types::ExecutionLimitExceeded
    ExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionListItem, name: "member"))
    ExecutionListItem.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    ExecutionListItem.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    ExecutionListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ExecutionListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ExecutionListItem.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    ExecutionListItem.add_member(:stop_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stopDate"))
    ExecutionListItem.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn"))
    ExecutionListItem.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedInteger, name: "itemCount", traits: {"smithy.api#default" => nil}))
    ExecutionListItem.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineVersionArn"))
    ExecutionListItem.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineAliasArn"))
    ExecutionListItem.add_member(:redrive_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RedriveCount, name: "redriveCount"))
    ExecutionListItem.add_member(:redrive_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "redriveDate"))
    ExecutionListItem.type = Types::ExecutionListItem
    ExecutionNotRedrivable.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExecutionNotRedrivable.type = Types::ExecutionNotRedrivable
    ExecutionRedriveFilter.add_member(:redriven, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDRIVEN", traits: {"smithy.api#enumValue" => "REDRIVEN"}))
    ExecutionRedriveFilter.add_member(:not_redriven, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REDRIVEN", traits: {"smithy.api#enumValue" => "NOT_REDRIVEN"}))
    ExecutionRedriveStatus.add_member(:redrivable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDRIVABLE", traits: {"smithy.api#enumValue" => "REDRIVABLE"}))
    ExecutionRedriveStatus.add_member(:not_redrivable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REDRIVABLE", traits: {"smithy.api#enumValue" => "NOT_REDRIVABLE"}))
    ExecutionRedriveStatus.add_member(:redrivable_by_map_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDRIVABLE_BY_MAP_RUN", traits: {"smithy.api#enumValue" => "REDRIVABLE_BY_MAP_RUN"}))
    ExecutionRedrivenEventDetails.add_member(:redrive_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RedriveCount, name: "redriveCount"))
    ExecutionRedrivenEventDetails.type = Types::ExecutionRedrivenEventDetails
    ExecutionStartedEventDetails.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    ExecutionStartedEventDetails.add_member(:input_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "inputDetails"))
    ExecutionStartedEventDetails.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "roleArn"))
    ExecutionStartedEventDetails.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineAliasArn"))
    ExecutionStartedEventDetails.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineVersionArn"))
    ExecutionStartedEventDetails.type = Types::ExecutionStartedEventDetails
    ExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    ExecutionStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    ExecutionStatus.add_member(:pending_redrive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_REDRIVE", traits: {"smithy.api#enumValue" => "PENDING_REDRIVE"}))
    ExecutionSucceededEventDetails.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    ExecutionSucceededEventDetails.add_member(:output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "outputDetails"))
    ExecutionSucceededEventDetails.type = Types::ExecutionSucceededEventDetails
    ExecutionTimedOutEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    ExecutionTimedOutEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    ExecutionTimedOutEventDetails.type = Types::ExecutionTimedOutEventDetails
    GetActivityTaskInput.add_member(:activity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "activityArn", traits: {"smithy.api#required" => {}}))
    GetActivityTaskInput.add_member(:worker_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "workerName"))
    GetActivityTaskInput.type = Types::GetActivityTaskInput
    GetActivityTaskOutput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken"))
    GetActivityTaskOutput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDataJobInput, name: "input"))
    GetActivityTaskOutput.type = Types::GetActivityTaskOutput
    GetExecutionHistoryInput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    GetExecutionHistoryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults", traits: {"smithy.api#default" => 0}))
    GetExecutionHistoryInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "reverseOrder", traits: {"smithy.api#default" => false}))
    GetExecutionHistoryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    GetExecutionHistoryInput.add_member(:include_execution_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeExecutionDataGetExecutionHistory, name: "includeExecutionData"))
    GetExecutionHistoryInput.type = Types::GetExecutionHistoryInput
    GetExecutionHistoryOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventList, name: "events", traits: {"smithy.api#required" => {}}))
    GetExecutionHistoryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    GetExecutionHistoryOutput.type = Types::GetExecutionHistoryOutput
    HistoryEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    HistoryEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventType, name: "type", traits: {"smithy.api#required" => {}}))
    HistoryEvent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "id", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    HistoryEvent.add_member(:previous_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "previousEventId", traits: {"smithy.api#default" => 0}))
    HistoryEvent.add_member(:activity_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityFailedEventDetails, name: "activityFailedEventDetails"))
    HistoryEvent.add_member(:activity_schedule_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityScheduleFailedEventDetails, name: "activityScheduleFailedEventDetails"))
    HistoryEvent.add_member(:activity_scheduled_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityScheduledEventDetails, name: "activityScheduledEventDetails"))
    HistoryEvent.add_member(:activity_started_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStartedEventDetails, name: "activityStartedEventDetails"))
    HistoryEvent.add_member(:activity_succeeded_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivitySucceededEventDetails, name: "activitySucceededEventDetails"))
    HistoryEvent.add_member(:activity_timed_out_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityTimedOutEventDetails, name: "activityTimedOutEventDetails"))
    HistoryEvent.add_member(:task_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFailedEventDetails, name: "taskFailedEventDetails"))
    HistoryEvent.add_member(:task_scheduled_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskScheduledEventDetails, name: "taskScheduledEventDetails"))
    HistoryEvent.add_member(:task_start_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStartFailedEventDetails, name: "taskStartFailedEventDetails"))
    HistoryEvent.add_member(:task_started_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStartedEventDetails, name: "taskStartedEventDetails"))
    HistoryEvent.add_member(:task_submit_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSubmitFailedEventDetails, name: "taskSubmitFailedEventDetails"))
    HistoryEvent.add_member(:task_submitted_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSubmittedEventDetails, name: "taskSubmittedEventDetails"))
    HistoryEvent.add_member(:task_succeeded_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSucceededEventDetails, name: "taskSucceededEventDetails"))
    HistoryEvent.add_member(:task_timed_out_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTimedOutEventDetails, name: "taskTimedOutEventDetails"))
    HistoryEvent.add_member(:execution_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionFailedEventDetails, name: "executionFailedEventDetails"))
    HistoryEvent.add_member(:execution_started_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStartedEventDetails, name: "executionStartedEventDetails"))
    HistoryEvent.add_member(:execution_succeeded_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSucceededEventDetails, name: "executionSucceededEventDetails"))
    HistoryEvent.add_member(:execution_aborted_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionAbortedEventDetails, name: "executionAbortedEventDetails"))
    HistoryEvent.add_member(:execution_timed_out_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimedOutEventDetails, name: "executionTimedOutEventDetails"))
    HistoryEvent.add_member(:execution_redriven_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRedrivenEventDetails, name: "executionRedrivenEventDetails"))
    HistoryEvent.add_member(:map_state_started_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStateStartedEventDetails, name: "mapStateStartedEventDetails"))
    HistoryEvent.add_member(:map_iteration_started_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MapIterationEventDetails, name: "mapIterationStartedEventDetails"))
    HistoryEvent.add_member(:map_iteration_succeeded_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MapIterationEventDetails, name: "mapIterationSucceededEventDetails"))
    HistoryEvent.add_member(:map_iteration_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MapIterationEventDetails, name: "mapIterationFailedEventDetails"))
    HistoryEvent.add_member(:map_iteration_aborted_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MapIterationEventDetails, name: "mapIterationAbortedEventDetails"))
    HistoryEvent.add_member(:lambda_function_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionFailedEventDetails, name: "lambdaFunctionFailedEventDetails"))
    HistoryEvent.add_member(:lambda_function_schedule_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionScheduleFailedEventDetails, name: "lambdaFunctionScheduleFailedEventDetails"))
    HistoryEvent.add_member(:lambda_function_scheduled_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionScheduledEventDetails, name: "lambdaFunctionScheduledEventDetails"))
    HistoryEvent.add_member(:lambda_function_start_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionStartFailedEventDetails, name: "lambdaFunctionStartFailedEventDetails"))
    HistoryEvent.add_member(:lambda_function_succeeded_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionSucceededEventDetails, name: "lambdaFunctionSucceededEventDetails"))
    HistoryEvent.add_member(:lambda_function_timed_out_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionTimedOutEventDetails, name: "lambdaFunctionTimedOutEventDetails"))
    HistoryEvent.add_member(:state_entered_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StateEnteredEventDetails, name: "stateEnteredEventDetails"))
    HistoryEvent.add_member(:state_exited_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StateExitedEventDetails, name: "stateExitedEventDetails"))
    HistoryEvent.add_member(:map_run_started_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunStartedEventDetails, name: "mapRunStartedEventDetails"))
    HistoryEvent.add_member(:map_run_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunFailedEventDetails, name: "mapRunFailedEventDetails"))
    HistoryEvent.add_member(:map_run_redriven_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunRedrivenEventDetails, name: "mapRunRedrivenEventDetails"))
    HistoryEvent.add_member(:evaluation_failed_event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationFailedEventDetails, name: "evaluationFailedEventDetails"))
    HistoryEvent.type = Types::HistoryEvent
    HistoryEventExecutionDataDetails.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "truncated", traits: {"smithy.api#default" => false}))
    HistoryEventExecutionDataDetails.type = Types::HistoryEventExecutionDataDetails
    HistoryEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEvent, name: "member"))
    HistoryEventType.add_member(:activity_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityFailed", traits: {"smithy.api#enumValue" => "ActivityFailed"}))
    HistoryEventType.add_member(:activity_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityScheduled", traits: {"smithy.api#enumValue" => "ActivityScheduled"}))
    HistoryEventType.add_member(:activity_schedule_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityScheduleFailed", traits: {"smithy.api#enumValue" => "ActivityScheduleFailed"}))
    HistoryEventType.add_member(:activity_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityStarted", traits: {"smithy.api#enumValue" => "ActivityStarted"}))
    HistoryEventType.add_member(:activity_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivitySucceeded", traits: {"smithy.api#enumValue" => "ActivitySucceeded"}))
    HistoryEventType.add_member(:activity_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivityTimedOut", traits: {"smithy.api#enumValue" => "ActivityTimedOut"}))
    HistoryEventType.add_member(:choice_state_entered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChoiceStateEntered", traits: {"smithy.api#enumValue" => "ChoiceStateEntered"}))
    HistoryEventType.add_member(:choice_state_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChoiceStateExited", traits: {"smithy.api#enumValue" => "ChoiceStateExited"}))
    HistoryEventType.add_member(:execution_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionAborted", traits: {"smithy.api#enumValue" => "ExecutionAborted"}))
    HistoryEventType.add_member(:execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionFailed", traits: {"smithy.api#enumValue" => "ExecutionFailed"}))
    HistoryEventType.add_member(:execution_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionStarted", traits: {"smithy.api#enumValue" => "ExecutionStarted"}))
    HistoryEventType.add_member(:execution_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionSucceeded", traits: {"smithy.api#enumValue" => "ExecutionSucceeded"}))
    HistoryEventType.add_member(:execution_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionTimedOut", traits: {"smithy.api#enumValue" => "ExecutionTimedOut"}))
    HistoryEventType.add_member(:fail_state_entered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailStateEntered", traits: {"smithy.api#enumValue" => "FailStateEntered"}))
    HistoryEventType.add_member(:lambda_function_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionFailed", traits: {"smithy.api#enumValue" => "LambdaFunctionFailed"}))
    HistoryEventType.add_member(:lambda_function_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionScheduled", traits: {"smithy.api#enumValue" => "LambdaFunctionScheduled"}))
    HistoryEventType.add_member(:lambda_function_schedule_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionScheduleFailed", traits: {"smithy.api#enumValue" => "LambdaFunctionScheduleFailed"}))
    HistoryEventType.add_member(:lambda_function_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionStarted", traits: {"smithy.api#enumValue" => "LambdaFunctionStarted"}))
    HistoryEventType.add_member(:lambda_function_start_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionStartFailed", traits: {"smithy.api#enumValue" => "LambdaFunctionStartFailed"}))
    HistoryEventType.add_member(:lambda_function_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionSucceeded", traits: {"smithy.api#enumValue" => "LambdaFunctionSucceeded"}))
    HistoryEventType.add_member(:lambda_function_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionTimedOut", traits: {"smithy.api#enumValue" => "LambdaFunctionTimedOut"}))
    HistoryEventType.add_member(:map_iteration_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapIterationAborted", traits: {"smithy.api#enumValue" => "MapIterationAborted"}))
    HistoryEventType.add_member(:map_iteration_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapIterationFailed", traits: {"smithy.api#enumValue" => "MapIterationFailed"}))
    HistoryEventType.add_member(:map_iteration_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapIterationStarted", traits: {"smithy.api#enumValue" => "MapIterationStarted"}))
    HistoryEventType.add_member(:map_iteration_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapIterationSucceeded", traits: {"smithy.api#enumValue" => "MapIterationSucceeded"}))
    HistoryEventType.add_member(:map_state_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapStateAborted", traits: {"smithy.api#enumValue" => "MapStateAborted"}))
    HistoryEventType.add_member(:map_state_entered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapStateEntered", traits: {"smithy.api#enumValue" => "MapStateEntered"}))
    HistoryEventType.add_member(:map_state_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapStateExited", traits: {"smithy.api#enumValue" => "MapStateExited"}))
    HistoryEventType.add_member(:map_state_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapStateFailed", traits: {"smithy.api#enumValue" => "MapStateFailed"}))
    HistoryEventType.add_member(:map_state_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapStateStarted", traits: {"smithy.api#enumValue" => "MapStateStarted"}))
    HistoryEventType.add_member(:map_state_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapStateSucceeded", traits: {"smithy.api#enumValue" => "MapStateSucceeded"}))
    HistoryEventType.add_member(:parallel_state_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParallelStateAborted", traits: {"smithy.api#enumValue" => "ParallelStateAborted"}))
    HistoryEventType.add_member(:parallel_state_entered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParallelStateEntered", traits: {"smithy.api#enumValue" => "ParallelStateEntered"}))
    HistoryEventType.add_member(:parallel_state_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParallelStateExited", traits: {"smithy.api#enumValue" => "ParallelStateExited"}))
    HistoryEventType.add_member(:parallel_state_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParallelStateFailed", traits: {"smithy.api#enumValue" => "ParallelStateFailed"}))
    HistoryEventType.add_member(:parallel_state_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParallelStateStarted", traits: {"smithy.api#enumValue" => "ParallelStateStarted"}))
    HistoryEventType.add_member(:parallel_state_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParallelStateSucceeded", traits: {"smithy.api#enumValue" => "ParallelStateSucceeded"}))
    HistoryEventType.add_member(:pass_state_entered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PassStateEntered", traits: {"smithy.api#enumValue" => "PassStateEntered"}))
    HistoryEventType.add_member(:pass_state_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PassStateExited", traits: {"smithy.api#enumValue" => "PassStateExited"}))
    HistoryEventType.add_member(:succeed_state_entered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SucceedStateEntered", traits: {"smithy.api#enumValue" => "SucceedStateEntered"}))
    HistoryEventType.add_member(:succeed_state_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SucceedStateExited", traits: {"smithy.api#enumValue" => "SucceedStateExited"}))
    HistoryEventType.add_member(:task_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskFailed", traits: {"smithy.api#enumValue" => "TaskFailed"}))
    HistoryEventType.add_member(:task_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskScheduled", traits: {"smithy.api#enumValue" => "TaskScheduled"}))
    HistoryEventType.add_member(:task_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskStarted", traits: {"smithy.api#enumValue" => "TaskStarted"}))
    HistoryEventType.add_member(:task_start_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskStartFailed", traits: {"smithy.api#enumValue" => "TaskStartFailed"}))
    HistoryEventType.add_member(:task_state_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskStateAborted", traits: {"smithy.api#enumValue" => "TaskStateAborted"}))
    HistoryEventType.add_member(:task_state_entered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskStateEntered", traits: {"smithy.api#enumValue" => "TaskStateEntered"}))
    HistoryEventType.add_member(:task_state_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskStateExited", traits: {"smithy.api#enumValue" => "TaskStateExited"}))
    HistoryEventType.add_member(:task_submit_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskSubmitFailed", traits: {"smithy.api#enumValue" => "TaskSubmitFailed"}))
    HistoryEventType.add_member(:task_submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskSubmitted", traits: {"smithy.api#enumValue" => "TaskSubmitted"}))
    HistoryEventType.add_member(:task_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskSucceeded", traits: {"smithy.api#enumValue" => "TaskSucceeded"}))
    HistoryEventType.add_member(:task_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TaskTimedOut", traits: {"smithy.api#enumValue" => "TaskTimedOut"}))
    HistoryEventType.add_member(:wait_state_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitStateAborted", traits: {"smithy.api#enumValue" => "WaitStateAborted"}))
    HistoryEventType.add_member(:wait_state_entered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitStateEntered", traits: {"smithy.api#enumValue" => "WaitStateEntered"}))
    HistoryEventType.add_member(:wait_state_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitStateExited", traits: {"smithy.api#enumValue" => "WaitStateExited"}))
    HistoryEventType.add_member(:map_run_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapRunAborted", traits: {"smithy.api#enumValue" => "MapRunAborted"}))
    HistoryEventType.add_member(:map_run_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapRunFailed", traits: {"smithy.api#enumValue" => "MapRunFailed"}))
    HistoryEventType.add_member(:map_run_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapRunStarted", traits: {"smithy.api#enumValue" => "MapRunStarted"}))
    HistoryEventType.add_member(:map_run_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapRunSucceeded", traits: {"smithy.api#enumValue" => "MapRunSucceeded"}))
    HistoryEventType.add_member(:execution_redriven, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionRedriven", traits: {"smithy.api#enumValue" => "ExecutionRedriven"}))
    HistoryEventType.add_member(:map_run_redriven, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MapRunRedriven", traits: {"smithy.api#enumValue" => "MapRunRedriven"}))
    HistoryEventType.add_member(:evaluation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EvaluationFailed", traits: {"smithy.api#enumValue" => "EvaluationFailed"}))
    IncludedData.add_member(:all_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_DATA", traits: {"smithy.api#enumValue" => "ALL_DATA"}))
    IncludedData.add_member(:metadata_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METADATA_ONLY", traits: {"smithy.api#enumValue" => "METADATA_ONLY"}))
    InspectionData.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    InspectionData.add_member(:after_arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "afterArguments"))
    InspectionData.add_member(:after_input_path, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "afterInputPath"))
    InspectionData.add_member(:after_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "afterParameters"))
    InspectionData.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "result"))
    InspectionData.add_member(:after_result_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "afterResultSelector"))
    InspectionData.add_member(:after_result_path, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "afterResultPath"))
    InspectionData.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: InspectionDataRequest, name: "request"))
    InspectionData.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: InspectionDataResponse, name: "response"))
    InspectionData.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "variables"))
    InspectionData.type = Types::InspectionData
    InspectionDataRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPProtocol, name: "protocol"))
    InspectionDataRequest.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPMethod, name: "method"))
    InspectionDataRequest.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "url"))
    InspectionDataRequest.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPHeaders, name: "headers"))
    InspectionDataRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPBody, name: "body"))
    InspectionDataRequest.type = Types::InspectionDataRequest
    InspectionDataResponse.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPProtocol, name: "protocol"))
    InspectionDataResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPStatusCode, name: "statusCode"))
    InspectionDataResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPStatusMessage, name: "statusMessage"))
    InspectionDataResponse.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPHeaders, name: "headers"))
    InspectionDataResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: HTTPBody, name: "body"))
    InspectionDataResponse.type = Types::InspectionDataResponse
    InspectionLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    InspectionLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    InspectionLevel.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACE", traits: {"smithy.api#enumValue" => "TRACE"}))
    InvalidArn.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidArn.type = Types::InvalidArn
    InvalidDefinition.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidDefinition.type = Types::InvalidDefinition
    InvalidEncryptionConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidEncryptionConfiguration.type = Types::InvalidEncryptionConfiguration
    InvalidExecutionInput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidExecutionInput.type = Types::InvalidExecutionInput
    InvalidLoggingConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidLoggingConfiguration.type = Types::InvalidLoggingConfiguration
    InvalidName.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidName.type = Types::InvalidName
    InvalidOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidOutput.type = Types::InvalidOutput
    InvalidToken.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidToken.type = Types::InvalidToken
    InvalidTracingConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidTracingConfiguration.type = Types::InvalidTracingConfiguration
    KmsAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KmsAccessDeniedException.type = Types::KmsAccessDeniedException
    KmsInvalidStateException.add_member(:kms_key_state, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyState, name: "kmsKeyState"))
    KmsInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KmsInvalidStateException.type = Types::KmsInvalidStateException
    KmsKeyState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    KmsKeyState.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    KmsKeyState.add_member(:pending_import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_IMPORT", traits: {"smithy.api#enumValue" => "PENDING_IMPORT"}))
    KmsKeyState.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    KmsKeyState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    KmsThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KmsThrottlingException.type = Types::KmsThrottlingException
    LambdaFunctionFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    LambdaFunctionFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    LambdaFunctionFailedEventDetails.type = Types::LambdaFunctionFailedEventDetails
    LambdaFunctionScheduleFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    LambdaFunctionScheduleFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    LambdaFunctionScheduleFailedEventDetails.type = Types::LambdaFunctionScheduleFailedEventDetails
    LambdaFunctionScheduledEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resource", traits: {"smithy.api#required" => {}}))
    LambdaFunctionScheduledEventDetails.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    LambdaFunctionScheduledEventDetails.add_member(:input_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "inputDetails"))
    LambdaFunctionScheduledEventDetails.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutInSeconds, name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    LambdaFunctionScheduledEventDetails.add_member(:task_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskCredentials, name: "taskCredentials"))
    LambdaFunctionScheduledEventDetails.type = Types::LambdaFunctionScheduledEventDetails
    LambdaFunctionStartFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    LambdaFunctionStartFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    LambdaFunctionStartFailedEventDetails.type = Types::LambdaFunctionStartFailedEventDetails
    LambdaFunctionSucceededEventDetails.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    LambdaFunctionSucceededEventDetails.add_member(:output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "outputDetails"))
    LambdaFunctionSucceededEventDetails.type = Types::LambdaFunctionSucceededEventDetails
    LambdaFunctionTimedOutEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    LambdaFunctionTimedOutEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    LambdaFunctionTimedOutEventDetails.type = Types::LambdaFunctionTimedOutEventDetails
    ListActivitiesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListActivitiesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListActivitiesInput.type = Types::ListActivitiesInput
    ListActivitiesOutput.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityList, name: "activities", traits: {"smithy.api#required" => {}}))
    ListActivitiesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListActivitiesOutput.type = Types::ListActivitiesOutput
    ListExecutionsInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn"))
    ListExecutionsInput.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "statusFilter"))
    ListExecutionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListExecutionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ListExecutionsPageToken, name: "nextToken"))
    ListExecutionsInput.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn"))
    ListExecutionsInput.add_member(:redrive_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRedriveFilter, name: "redriveFilter"))
    ListExecutionsInput.type = Types::ListExecutionsInput
    ListExecutionsOutput.add_member(:executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionList, name: "executions", traits: {"smithy.api#required" => {}}))
    ListExecutionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ListExecutionsPageToken, name: "nextToken"))
    ListExecutionsOutput.type = Types::ListExecutionsOutput
    ListMapRunsInput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    ListMapRunsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListMapRunsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListMapRunsInput.type = Types::ListMapRunsInput
    ListMapRunsOutput.add_member(:map_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunList, name: "mapRuns", traits: {"smithy.api#required" => {}}))
    ListMapRunsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListMapRunsOutput.type = Types::ListMapRunsOutput
    ListStateMachineAliasesInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    ListStateMachineAliasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListStateMachineAliasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListStateMachineAliasesInput.type = Types::ListStateMachineAliasesInput
    ListStateMachineAliasesOutput.add_member(:state_machine_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineAliasList, name: "stateMachineAliases", traits: {"smithy.api#required" => {}}))
    ListStateMachineAliasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListStateMachineAliasesOutput.type = Types::ListStateMachineAliasesOutput
    ListStateMachineVersionsInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    ListStateMachineVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListStateMachineVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListStateMachineVersionsInput.type = Types::ListStateMachineVersionsInput
    ListStateMachineVersionsOutput.add_member(:state_machine_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineVersionList, name: "stateMachineVersions", traits: {"smithy.api#required" => {}}))
    ListStateMachineVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListStateMachineVersionsOutput.type = Types::ListStateMachineVersionsOutput
    ListStateMachinesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListStateMachinesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListStateMachinesInput.type = Types::ListStateMachinesInput
    ListStateMachinesOutput.add_member(:state_machines, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineList, name: "stateMachines", traits: {"smithy.api#required" => {}}))
    ListStateMachinesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListStateMachinesOutput.type = Types::ListStateMachinesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogDestination.add_member(:cloud_watch_logs_log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsLogGroup, name: "cloudWatchLogsLogGroup"))
    LogDestination.type = Types::LogDestination
    LogDestinationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestination, name: "member"))
    LogLevel.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:fatal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FATAL", traits: {"smithy.api#enumValue" => "FATAL"}))
    LogLevel.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    LoggingConfiguration.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "level"))
    LoggingConfiguration.add_member(:include_execution_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeExecutionData, name: "includeExecutionData", traits: {"smithy.api#default" => false}))
    LoggingConfiguration.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationList, name: "destinations"))
    LoggingConfiguration.type = Types::LoggingConfiguration
    MapIterationEventDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    MapIterationEventDetails.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedInteger, name: "index", traits: {"smithy.api#default" => 0}))
    MapIterationEventDetails.type = Types::MapIterationEventDetails
    MapRunExecutionCounts.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "pending", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "running", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "succeeded", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "failed", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "timedOut", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "aborted", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "total", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:results_written, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "resultsWritten", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:failures_not_redrivable, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "failuresNotRedrivable"))
    MapRunExecutionCounts.add_member(:pending_redrive, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "pendingRedrive"))
    MapRunExecutionCounts.type = Types::MapRunExecutionCounts
    MapRunFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    MapRunFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    MapRunFailedEventDetails.type = Types::MapRunFailedEventDetails
    MapRunItemCounts.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "pending", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "running", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "succeeded", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "failed", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "timedOut", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "aborted", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "total", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:results_written, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedLong, name: "resultsWritten", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:failures_not_redrivable, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "failuresNotRedrivable"))
    MapRunItemCounts.add_member(:pending_redrive, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "pendingRedrive"))
    MapRunItemCounts.type = Types::MapRunItemCounts
    MapRunList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MapRunListItem, name: "member"))
    MapRunListItem.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    MapRunListItem.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn", traits: {"smithy.api#required" => {}}))
    MapRunListItem.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    MapRunListItem.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    MapRunListItem.add_member(:stop_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stopDate"))
    MapRunListItem.type = Types::MapRunListItem
    MapRunRedrivenEventDetails.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn"))
    MapRunRedrivenEventDetails.add_member(:redrive_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RedriveCount, name: "redriveCount"))
    MapRunRedrivenEventDetails.type = Types::MapRunRedrivenEventDetails
    MapRunStartedEventDetails.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn"))
    MapRunStartedEventDetails.type = Types::MapRunStartedEventDetails
    MapRunStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    MapRunStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    MapRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MapRunStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    MapStateStartedEventDetails.add_member(:length, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsignedInteger, name: "length", traits: {"smithy.api#default" => 0}))
    MapStateStartedEventDetails.type = Types::MapStateStartedEventDetails
    MissingRequiredParameter.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MissingRequiredParameter.type = Types::MissingRequiredParameter
    PublishStateMachineVersionInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    PublishStateMachineVersionInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    PublishStateMachineVersionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionDescription, name: "description"))
    PublishStateMachineVersionInput.type = Types::PublishStateMachineVersionInput
    PublishStateMachineVersionOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    PublishStateMachineVersionOutput.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineVersionArn", traits: {"smithy.api#required" => {}}))
    PublishStateMachineVersionOutput.type = Types::PublishStateMachineVersionOutput
    RedriveExecutionInput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    RedriveExecutionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RedriveExecutionInput.type = Types::RedriveExecutionInput
    RedriveExecutionOutput.add_member(:redrive_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "redriveDate", traits: {"smithy.api#required" => {}}))
    RedriveExecutionOutput.type = Types::RedriveExecutionOutput
    ResourceNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFound.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceName"))
    ResourceNotFound.type = Types::ResourceNotFound
    RoutingConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingConfigurationListItem, name: "member"))
    RoutingConfigurationListItem.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineVersionArn", traits: {"smithy.api#required" => {}}))
    RoutingConfigurationListItem.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionWeight, name: "weight", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RoutingConfigurationListItem.type = Types::RoutingConfigurationListItem
    SendTaskFailureInput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    SendTaskFailureInput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    SendTaskFailureInput.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    SendTaskFailureInput.type = Types::SendTaskFailureInput
    SendTaskFailureOutput.type = Types::SendTaskFailureOutput
    SendTaskHeartbeatInput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    SendTaskHeartbeatInput.type = Types::SendTaskHeartbeatInput
    SendTaskHeartbeatOutput.type = Types::SendTaskHeartbeatOutput
    SendTaskSuccessInput.add_member(:task_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskToken, name: "taskToken", traits: {"smithy.api#required" => {}}))
    SendTaskSuccessInput.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output", traits: {"smithy.api#required" => {}}))
    SendTaskSuccessInput.type = Types::SendTaskSuccessInput
    SendTaskSuccessOutput.type = Types::SendTaskSuccessOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartExecutionInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    StartExecutionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    StartExecutionInput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    StartExecutionInput.add_member(:trace_header, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceHeader, name: "traceHeader"))
    StartExecutionInput.type = Types::StartExecutionInput
    StartExecutionOutput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    StartExecutionOutput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    StartExecutionOutput.type = Types::StartExecutionOutput
    StartSyncExecutionInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    StartSyncExecutionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    StartSyncExecutionInput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    StartSyncExecutionInput.add_member(:trace_header, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceHeader, name: "traceHeader"))
    StartSyncExecutionInput.add_member(:included_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedData, name: "includedData"))
    StartSyncExecutionInput.type = Types::StartSyncExecutionInput
    StartSyncExecutionOutput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    StartSyncExecutionOutput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn"))
    StartSyncExecutionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    StartSyncExecutionOutput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    StartSyncExecutionOutput.add_member(:stop_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stopDate", traits: {"smithy.api#required" => {}}))
    StartSyncExecutionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StartSyncExecutionOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    StartSyncExecutionOutput.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    StartSyncExecutionOutput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    StartSyncExecutionOutput.add_member(:input_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchEventsExecutionDataDetails, name: "inputDetails"))
    StartSyncExecutionOutput.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    StartSyncExecutionOutput.add_member(:output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchEventsExecutionDataDetails, name: "outputDetails"))
    StartSyncExecutionOutput.add_member(:trace_header, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceHeader, name: "traceHeader"))
    StartSyncExecutionOutput.add_member(:billing_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingDetails, name: "billingDetails"))
    StartSyncExecutionOutput.type = Types::StartSyncExecutionOutput
    StateEnteredEventDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    StateEnteredEventDetails.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    StateEnteredEventDetails.add_member(:input_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "inputDetails"))
    StateEnteredEventDetails.type = Types::StateEnteredEventDetails
    StateExitedEventDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    StateExitedEventDetails.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    StateExitedEventDetails.add_member(:output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "outputDetails"))
    StateExitedEventDetails.add_member(:assigned_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedVariables, name: "assignedVariables"))
    StateExitedEventDetails.add_member(:assigned_variables_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignedVariablesDetails, name: "assignedVariablesDetails"))
    StateExitedEventDetails.type = Types::StateExitedEventDetails
    StateMachineAliasList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineAliasListItem, name: "member"))
    StateMachineAliasListItem.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "stateMachineAliasArn", traits: {"smithy.api#required" => {}}))
    StateMachineAliasListItem.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    StateMachineAliasListItem.type = Types::StateMachineAliasListItem
    StateMachineAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    StateMachineAlreadyExists.type = Types::StateMachineAlreadyExists
    StateMachineDeleting.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    StateMachineDeleting.type = Types::StateMachineDeleting
    StateMachineDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    StateMachineDoesNotExist.type = Types::StateMachineDoesNotExist
    StateMachineLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    StateMachineLimitExceeded.type = Types::StateMachineLimitExceeded
    StateMachineList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineListItem, name: "member"))
    StateMachineListItem.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    StateMachineListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    StateMachineListItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineType, name: "type", traits: {"smithy.api#required" => {}}))
    StateMachineListItem.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    StateMachineListItem.type = Types::StateMachineListItem
    StateMachineStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StateMachineStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    StateMachineType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    StateMachineType.add_member(:express, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPRESS", traits: {"smithy.api#enumValue" => "EXPRESS"}))
    StateMachineTypeNotSupported.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    StateMachineTypeNotSupported.type = Types::StateMachineTypeNotSupported
    StateMachineVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineVersionListItem, name: "member"))
    StateMachineVersionListItem.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "stateMachineVersionArn", traits: {"smithy.api#required" => {}}))
    StateMachineVersionListItem.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    StateMachineVersionListItem.type = Types::StateMachineVersionListItem
    StopExecutionInput.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "executionArn", traits: {"smithy.api#required" => {}}))
    StopExecutionInput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    StopExecutionInput.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    StopExecutionInput.type = Types::StopExecutionInput
    StopExecutionOutput.add_member(:stop_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stopDate", traits: {"smithy.api#required" => {}}))
    StopExecutionOutput.type = Types::StopExecutionOutput
    SyncExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    SyncExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SyncExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TaskCredentials.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "roleArn"))
    TaskCredentials.type = Types::TaskCredentials
    TaskDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TaskDoesNotExist.type = Types::TaskDoesNotExist
    TaskFailedEventDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TaskFailedEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resource", traits: {"smithy.api#required" => {}}))
    TaskFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    TaskFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    TaskFailedEventDetails.type = Types::TaskFailedEventDetails
    TaskScheduledEventDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TaskScheduledEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resource", traits: {"smithy.api#required" => {}}))
    TaskScheduledEventDetails.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "region", traits: {"smithy.api#required" => {}}))
    TaskScheduledEventDetails.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorParameters, name: "parameters", traits: {"smithy.api#required" => {}}))
    TaskScheduledEventDetails.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutInSeconds, name: "timeoutInSeconds", traits: {"smithy.api#default" => nil}))
    TaskScheduledEventDetails.add_member(:heartbeat_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutInSeconds, name: "heartbeatInSeconds", traits: {"smithy.api#default" => nil}))
    TaskScheduledEventDetails.add_member(:task_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskCredentials, name: "taskCredentials"))
    TaskScheduledEventDetails.type = Types::TaskScheduledEventDetails
    TaskStartFailedEventDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TaskStartFailedEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resource", traits: {"smithy.api#required" => {}}))
    TaskStartFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    TaskStartFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    TaskStartFailedEventDetails.type = Types::TaskStartFailedEventDetails
    TaskStartedEventDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TaskStartedEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resource", traits: {"smithy.api#required" => {}}))
    TaskStartedEventDetails.type = Types::TaskStartedEventDetails
    TaskSubmitFailedEventDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TaskSubmitFailedEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resource", traits: {"smithy.api#required" => {}}))
    TaskSubmitFailedEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    TaskSubmitFailedEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    TaskSubmitFailedEventDetails.type = Types::TaskSubmitFailedEventDetails
    TaskSubmittedEventDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TaskSubmittedEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resource", traits: {"smithy.api#required" => {}}))
    TaskSubmittedEventDetails.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    TaskSubmittedEventDetails.add_member(:output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "outputDetails"))
    TaskSubmittedEventDetails.type = Types::TaskSubmittedEventDetails
    TaskSucceededEventDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TaskSucceededEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resource", traits: {"smithy.api#required" => {}}))
    TaskSucceededEventDetails.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    TaskSucceededEventDetails.add_member(:output_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HistoryEventExecutionDataDetails, name: "outputDetails"))
    TaskSucceededEventDetails.type = Types::TaskSucceededEventDetails
    TaskTimedOut.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TaskTimedOut.type = Types::TaskTimedOut
    TaskTimedOutEventDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TaskTimedOutEventDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "resource", traits: {"smithy.api#required" => {}}))
    TaskTimedOutEventDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    TaskTimedOutEventDetails.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    TaskTimedOutEventDetails.type = Types::TaskTimedOutEventDetails
    TestExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TestExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TestExecutionStatus.add_member(:retriable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRIABLE", traits: {"smithy.api#enumValue" => "RETRIABLE"}))
    TestExecutionStatus.add_member(:caught_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAUGHT_ERROR", traits: {"smithy.api#enumValue" => "CAUGHT_ERROR"}))
    TestStateInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: Definition, name: "definition", traits: {"smithy.api#required" => {}}))
    TestStateInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "roleArn"))
    TestStateInput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "input"))
    TestStateInput.add_member(:inspection_level, ::Smithy::Schema::Shapes::MemberShape.new(target: InspectionLevel, name: "inspectionLevel"))
    TestStateInput.add_member(:reveal_secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: RevealSecrets, name: "revealSecrets", traits: {"smithy.api#default" => false}))
    TestStateInput.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "variables"))
    TestStateInput.type = Types::TestStateInput
    TestStateOutput.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveData, name: "output"))
    TestStateOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveError, name: "error"))
    TestStateOutput.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveCause, name: "cause"))
    TestStateOutput.add_member(:inspection_data, ::Smithy::Schema::Shapes::MemberShape.new(target: InspectionData, name: "inspectionData"))
    TestStateOutput.add_member(:next_state, ::Smithy::Schema::Shapes::MemberShape.new(target: StateName, name: "nextState"))
    TestStateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestExecutionStatus, name: "status"))
    TestStateOutput.type = Types::TestStateOutput
    TooManyTags.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyTags.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceName"))
    TooManyTags.type = Types::TooManyTags
    TracingConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "enabled", traits: {"smithy.api#default" => false}))
    TracingConfiguration.type = Types::TracingConfiguration
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateMapRunInput.add_member(:map_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "mapRunArn", traits: {"smithy.api#required" => {}}))
    UpdateMapRunInput.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "maxConcurrency", traits: {"smithy.api#default" => nil}))
    UpdateMapRunInput.add_member(:tolerated_failure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ToleratedFailurePercentage, name: "toleratedFailurePercentage", traits: {"smithy.api#default" => nil}))
    UpdateMapRunInput.add_member(:tolerated_failure_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ToleratedFailureCount, name: "toleratedFailureCount", traits: {"smithy.api#default" => nil}))
    UpdateMapRunInput.type = Types::UpdateMapRunInput
    UpdateMapRunOutput.type = Types::UpdateMapRunOutput
    UpdateStateMachineAliasInput.add_member(:state_machine_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineAliasArn", traits: {"smithy.api#required" => {}}))
    UpdateStateMachineAliasInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasDescription, name: "description"))
    UpdateStateMachineAliasInput.add_member(:routing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingConfigurationList, name: "routingConfiguration"))
    UpdateStateMachineAliasInput.type = Types::UpdateStateMachineAliasInput
    UpdateStateMachineAliasOutput.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDate", traits: {"smithy.api#required" => {}}))
    UpdateStateMachineAliasOutput.type = Types::UpdateStateMachineAliasOutput
    UpdateStateMachineInput.add_member(:state_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineArn", traits: {"smithy.api#required" => {}}))
    UpdateStateMachineInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: Definition, name: "definition"))
    UpdateStateMachineInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "roleArn"))
    UpdateStateMachineInput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "loggingConfiguration"))
    UpdateStateMachineInput.add_member(:tracing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfiguration, name: "tracingConfiguration"))
    UpdateStateMachineInput.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: Publish, name: "publish", traits: {"smithy.api#default" => false}))
    UpdateStateMachineInput.add_member(:version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionDescription, name: "versionDescription"))
    UpdateStateMachineInput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    UpdateStateMachineInput.type = Types::UpdateStateMachineInput
    UpdateStateMachineOutput.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDate", traits: {"smithy.api#required" => {}}))
    UpdateStateMachineOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    UpdateStateMachineOutput.add_member(:state_machine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "stateMachineVersionArn"))
    UpdateStateMachineOutput.type = Types::UpdateStateMachineOutput
    ValidateStateMachineDefinitionDiagnostic.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionSeverity, name: "severity", traits: {"smithy.api#required" => {}}))
    ValidateStateMachineDefinitionDiagnostic.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionCode, name: "code", traits: {"smithy.api#required" => {}}))
    ValidateStateMachineDefinitionDiagnostic.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidateStateMachineDefinitionDiagnostic.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionLocation, name: "location"))
    ValidateStateMachineDefinitionDiagnostic.type = Types::ValidateStateMachineDefinitionDiagnostic
    ValidateStateMachineDefinitionDiagnosticList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionDiagnostic, name: "member"))
    ValidateStateMachineDefinitionInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: Definition, name: "definition", traits: {"smithy.api#required" => {}}))
    ValidateStateMachineDefinitionInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: StateMachineType, name: "type"))
    ValidateStateMachineDefinitionInput.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionSeverity, name: "severity"))
    ValidateStateMachineDefinitionInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionMaxResult, name: "maxResults", traits: {"smithy.api#default" => 0}))
    ValidateStateMachineDefinitionInput.type = Types::ValidateStateMachineDefinitionInput
    ValidateStateMachineDefinitionOutput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionResultCode, name: "result", traits: {"smithy.api#required" => {}}))
    ValidateStateMachineDefinitionOutput.add_member(:diagnostics, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionDiagnosticList, name: "diagnostics", traits: {"smithy.api#required" => {}}))
    ValidateStateMachineDefinitionOutput.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateStateMachineDefinitionTruncated, name: "truncated"))
    ValidateStateMachineDefinitionOutput.type = Types::ValidateStateMachineDefinitionOutput
    ValidateStateMachineDefinitionResultCode.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    ValidateStateMachineDefinitionResultCode.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    ValidateStateMachineDefinitionSeverity.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ValidateStateMachineDefinitionSeverity.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:api_does_not_support_labeled_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_DOES_NOT_SUPPORT_LABELED_ARNS", traits: {"smithy.api#enumValue" => "API_DOES_NOT_SUPPORT_LABELED_ARNS"}))
    ValidationExceptionReason.add_member(:missing_required_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_REQUIRED_PARAMETER", traits: {"smithy.api#enumValue" => "MISSING_REQUIRED_PARAMETER"}))
    ValidationExceptionReason.add_member(:cannot_update_completed_map_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_UPDATE_COMPLETED_MAP_RUN", traits: {"smithy.api#enumValue" => "CANNOT_UPDATE_COMPLETED_MAP_RUN"}))
    ValidationExceptionReason.add_member(:invalid_routing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ROUTING_CONFIGURATION", traits: {"smithy.api#enumValue" => "INVALID_ROUTING_CONFIGURATION"}))
    VariableNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableName, name: "member"))
    VariableReferences.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StateName, name: "key"))
    VariableReferences.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableNameList, name: "value"))

    AWSStepFunctions = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sfn#AWSStepFunctions"
      service.name = "AWSStepFunctions"
      service.version = "2016-11-23"
      service.traits = {"aws.api#service" => {"sdkId" => "SFN", "arnNamespace" => "states", "cloudFormationName" => "StepFunctions", "cloudTrailEventSource" => "states.amazonaws.com", "docId" => "states-2016-11-23", "endpointPrefix" => "states"}, "aws.auth#sigv4" => {"name" => "states"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Step Functions", "smithy.api#xmlNamespace" => {"uri" => "http://swf.amazonaws.com/doc/2015-07-20/"}}
      service.add_operation(:create_activity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#CreateActivity"
        operation.name = "CreateActivity"
        operation.input = CreateActivityInput
        operation.output = CreateActivityOutput
        operation.errors << ActivityAlreadyExists
        operation.errors << ActivityLimitExceeded
        operation.errors << InvalidEncryptionConfiguration
        operation.errors << InvalidName
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsThrottlingException
        operation.errors << TooManyTags
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_state_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#CreateStateMachine"
        operation.name = "CreateStateMachine"
        operation.input = CreateStateMachineInput
        operation.output = CreateStateMachineOutput
        operation.errors << ConflictException
        operation.errors << InvalidArn
        operation.errors << InvalidDefinition
        operation.errors << InvalidEncryptionConfiguration
        operation.errors << InvalidLoggingConfiguration
        operation.errors << InvalidName
        operation.errors << InvalidTracingConfiguration
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsThrottlingException
        operation.errors << StateMachineAlreadyExists
        operation.errors << StateMachineDeleting
        operation.errors << StateMachineLimitExceeded
        operation.errors << StateMachineTypeNotSupported
        operation.errors << TooManyTags
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_state_machine_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#CreateStateMachineAlias"
        operation.name = "CreateStateMachineAlias"
        operation.input = CreateStateMachineAliasInput
        operation.output = CreateStateMachineAliasOutput
        operation.errors << ConflictException
        operation.errors << InvalidArn
        operation.errors << InvalidName
        operation.errors << ResourceNotFound
        operation.errors << ServiceQuotaExceededException
        operation.errors << StateMachineDeleting
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_activity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DeleteActivity"
        operation.name = "DeleteActivity"
        operation.input = DeleteActivityInput
        operation.output = DeleteActivityOutput
        operation.errors << InvalidArn
        operation.traits = {}
      end)
      service.add_operation(:delete_state_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DeleteStateMachine"
        operation.name = "DeleteStateMachine"
        operation.input = DeleteStateMachineInput
        operation.output = DeleteStateMachineOutput
        operation.errors << InvalidArn
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_state_machine_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DeleteStateMachineAlias"
        operation.name = "DeleteStateMachineAlias"
        operation.input = DeleteStateMachineAliasInput
        operation.output = DeleteStateMachineAliasOutput
        operation.errors << ConflictException
        operation.errors << InvalidArn
        operation.errors << ResourceNotFound
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_state_machine_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DeleteStateMachineVersion"
        operation.name = "DeleteStateMachineVersion"
        operation.input = DeleteStateMachineVersionInput
        operation.output = DeleteStateMachineVersionOutput
        operation.errors << ConflictException
        operation.errors << InvalidArn
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_activity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeActivity"
        operation.name = "DescribeActivity"
        operation.input = DescribeActivityInput
        operation.output = DescribeActivityOutput
        operation.errors << ActivityDoesNotExist
        operation.errors << InvalidArn
        operation.traits = {}
      end)
      service.add_operation(:describe_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeExecution"
        operation.name = "DescribeExecution"
        operation.input = DescribeExecutionInput
        operation.output = DescribeExecutionOutput
        operation.errors << ExecutionDoesNotExist
        operation.errors << InvalidArn
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_map_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeMapRun"
        operation.name = "DescribeMapRun"
        operation.input = DescribeMapRunInput
        operation.output = DescribeMapRunOutput
        operation.errors << InvalidArn
        operation.errors << ResourceNotFound
        operation.traits = {}
      end)
      service.add_operation(:describe_state_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeStateMachine"
        operation.name = "DescribeStateMachine"
        operation.input = DescribeStateMachineInput
        operation.output = DescribeStateMachineOutput
        operation.errors << InvalidArn
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.errors << StateMachineDoesNotExist
        operation.traits = {}
      end)
      service.add_operation(:describe_state_machine_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeStateMachineAlias"
        operation.name = "DescribeStateMachineAlias"
        operation.input = DescribeStateMachineAliasInput
        operation.output = DescribeStateMachineAliasOutput
        operation.errors << InvalidArn
        operation.errors << ResourceNotFound
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_state_machine_for_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeStateMachineForExecution"
        operation.name = "DescribeStateMachineForExecution"
        operation.input = DescribeStateMachineForExecutionInput
        operation.output = DescribeStateMachineForExecutionOutput
        operation.errors << ExecutionDoesNotExist
        operation.errors << InvalidArn
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_activity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#GetActivityTask"
        operation.name = "GetActivityTask"
        operation.input = GetActivityTaskInput
        operation.output = GetActivityTaskOutput
        operation.errors << ActivityDoesNotExist
        operation.errors << ActivityWorkerLimitExceeded
        operation.errors << InvalidArn
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_execution_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#GetExecutionHistory"
        operation.name = "GetExecutionHistory"
        operation.input = GetExecutionHistoryInput
        operation.output = GetExecutionHistoryOutput
        operation.errors << ExecutionDoesNotExist
        operation.errors << InvalidArn
        operation.errors << InvalidToken
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::GetExecutionHistory.new
      end)
      service.add_operation(:list_activities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListActivities"
        operation.name = "ListActivities"
        operation.input = ListActivitiesInput
        operation.output = ListActivitiesOutput
        operation.errors << InvalidToken
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListActivitiesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListActivities.new
      end)
      service.add_operation(:list_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = ListExecutionsInput
        operation.output = ListExecutionsOutput
        operation.errors << InvalidArn
        operation.errors << InvalidToken
        operation.errors << ResourceNotFound
        operation.errors << StateMachineDoesNotExist
        operation.errors << StateMachineTypeNotSupported
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_map_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListMapRuns"
        operation.name = "ListMapRuns"
        operation.input = ListMapRunsInput
        operation.output = ListMapRunsOutput
        operation.errors << ExecutionDoesNotExist
        operation.errors << InvalidArn
        operation.errors << InvalidToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListMapRuns.new
      end)
      service.add_operation(:list_state_machine_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListStateMachineAliases"
        operation.name = "ListStateMachineAliases"
        operation.input = ListStateMachineAliasesInput
        operation.output = ListStateMachineAliasesOutput
        operation.errors << InvalidArn
        operation.errors << InvalidToken
        operation.errors << ResourceNotFound
        operation.errors << StateMachineDeleting
        operation.errors << StateMachineDoesNotExist
        operation.traits = {}
      end)
      service.add_operation(:list_state_machine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListStateMachineVersions"
        operation.name = "ListStateMachineVersions"
        operation.input = ListStateMachineVersionsInput
        operation.output = ListStateMachineVersionsOutput
        operation.errors << InvalidArn
        operation.errors << InvalidToken
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_state_machines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListStateMachines"
        operation.name = "ListStateMachines"
        operation.input = ListStateMachinesInput
        operation.output = ListStateMachinesOutput
        operation.errors << InvalidToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListStateMachines.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InvalidArn
        operation.errors << ResourceNotFound
        operation.traits = {}
      end)
      service.add_operation(:publish_state_machine_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#PublishStateMachineVersion"
        operation.name = "PublishStateMachineVersion"
        operation.input = PublishStateMachineVersionInput
        operation.output = PublishStateMachineVersionOutput
        operation.errors << ConflictException
        operation.errors << InvalidArn
        operation.errors << ServiceQuotaExceededException
        operation.errors << StateMachineDeleting
        operation.errors << StateMachineDoesNotExist
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:redrive_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#RedriveExecution"
        operation.name = "RedriveExecution"
        operation.input = RedriveExecutionInput
        operation.output = RedriveExecutionOutput
        operation.errors << ExecutionDoesNotExist
        operation.errors << ExecutionLimitExceeded
        operation.errors << ExecutionNotRedrivable
        operation.errors << InvalidArn
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_task_failure, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#SendTaskFailure"
        operation.name = "SendTaskFailure"
        operation.input = SendTaskFailureInput
        operation.output = SendTaskFailureOutput
        operation.errors << InvalidToken
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.errors << TaskDoesNotExist
        operation.errors << TaskTimedOut
        operation.traits = {}
      end)
      service.add_operation(:send_task_heartbeat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#SendTaskHeartbeat"
        operation.name = "SendTaskHeartbeat"
        operation.input = SendTaskHeartbeatInput
        operation.output = SendTaskHeartbeatOutput
        operation.errors << InvalidToken
        operation.errors << TaskDoesNotExist
        operation.errors << TaskTimedOut
        operation.traits = {}
      end)
      service.add_operation(:send_task_success, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#SendTaskSuccess"
        operation.name = "SendTaskSuccess"
        operation.input = SendTaskSuccessInput
        operation.output = SendTaskSuccessOutput
        operation.errors << InvalidOutput
        operation.errors << InvalidToken
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.errors << TaskDoesNotExist
        operation.errors << TaskTimedOut
        operation.traits = {}
      end)
      service.add_operation(:start_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#StartExecution"
        operation.name = "StartExecution"
        operation.input = StartExecutionInput
        operation.output = StartExecutionOutput
        operation.errors << ExecutionAlreadyExists
        operation.errors << ExecutionLimitExceeded
        operation.errors << InvalidArn
        operation.errors << InvalidExecutionInput
        operation.errors << InvalidName
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.errors << StateMachineDeleting
        operation.errors << StateMachineDoesNotExist
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_sync_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#StartSyncExecution"
        operation.name = "StartSyncExecution"
        operation.input = StartSyncExecutionInput
        operation.output = StartSyncExecutionOutput
        operation.errors << InvalidArn
        operation.errors << InvalidExecutionInput
        operation.errors << InvalidName
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.errors << StateMachineDeleting
        operation.errors << StateMachineDoesNotExist
        operation.errors << StateMachineTypeNotSupported
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "sync-"}}
      end)
      service.add_operation(:stop_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#StopExecution"
        operation.name = "StopExecution"
        operation.input = StopExecutionInput
        operation.output = StopExecutionOutput
        operation.errors << ExecutionDoesNotExist
        operation.errors << InvalidArn
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsInvalidStateException
        operation.errors << KmsThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InvalidArn
        operation.errors << ResourceNotFound
        operation.errors << TooManyTags
        operation.traits = {}
      end)
      service.add_operation(:test_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#TestState"
        operation.name = "TestState"
        operation.input = TestStateInput
        operation.output = TestStateOutput
        operation.errors << InvalidArn
        operation.errors << InvalidDefinition
        operation.errors << InvalidExecutionInput
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "sync-"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InvalidArn
        operation.errors << ResourceNotFound
        operation.traits = {}
      end)
      service.add_operation(:update_map_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#UpdateMapRun"
        operation.name = "UpdateMapRun"
        operation.input = UpdateMapRunInput
        operation.output = UpdateMapRunOutput
        operation.errors << InvalidArn
        operation.errors << ResourceNotFound
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_state_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#UpdateStateMachine"
        operation.name = "UpdateStateMachine"
        operation.input = UpdateStateMachineInput
        operation.output = UpdateStateMachineOutput
        operation.errors << ConflictException
        operation.errors << InvalidArn
        operation.errors << InvalidDefinition
        operation.errors << InvalidEncryptionConfiguration
        operation.errors << InvalidLoggingConfiguration
        operation.errors << InvalidTracingConfiguration
        operation.errors << KmsAccessDeniedException
        operation.errors << KmsThrottlingException
        operation.errors << MissingRequiredParameter
        operation.errors << ServiceQuotaExceededException
        operation.errors << StateMachineDeleting
        operation.errors << StateMachineDoesNotExist
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_state_machine_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#UpdateStateMachineAlias"
        operation.name = "UpdateStateMachineAlias"
        operation.input = UpdateStateMachineAliasInput
        operation.output = UpdateStateMachineAliasOutput
        operation.errors << ConflictException
        operation.errors << InvalidArn
        operation.errors << ResourceNotFound
        operation.errors << StateMachineDeleting
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:validate_state_machine_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ValidateStateMachineDefinition"
        operation.name = "ValidateStateMachineDefinition"
        operation.input = ValidateStateMachineDefinitionInput
        operation.output = ValidateStateMachineDefinitionOutput
        operation.errors << ValidationException
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
