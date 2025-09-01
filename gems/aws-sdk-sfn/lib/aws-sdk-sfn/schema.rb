# frozen_string_literal: true

# This is generated code!

module Aws::SFN
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivityAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityAlreadyExists', name: 'ActivityAlreadyExists', traits: {"smithy.api#error" => "client"})
    ActivityDoesNotExist = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityDoesNotExist', name: 'ActivityDoesNotExist', traits: {"smithy.api#error" => "client"})
    ActivityFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityFailedEventDetails', name: 'ActivityFailedEventDetails')
    ActivityLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityLimitExceeded', name: 'ActivityLimitExceeded', traits: {"smithy.api#error" => "client"})
    ActivityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#ActivityList', name: 'ActivityList')
    ActivityListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityListItem', name: 'ActivityListItem')
    ActivityScheduleFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityScheduleFailedEventDetails', name: 'ActivityScheduleFailedEventDetails')
    ActivityScheduledEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityScheduledEventDetails', name: 'ActivityScheduledEventDetails')
    ActivityStartedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityStartedEventDetails', name: 'ActivityStartedEventDetails')
    ActivitySucceededEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivitySucceededEventDetails', name: 'ActivitySucceededEventDetails')
    ActivityTimedOutEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityTimedOutEventDetails', name: 'ActivityTimedOutEventDetails')
    ActivityWorkerLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ActivityWorkerLimitExceeded', name: 'ActivityWorkerLimitExceeded', traits: {"smithy.api#error" => "client"})
    AliasDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#AliasDescription', name: 'AliasDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AssignedVariables = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sfn#AssignedVariables', name: 'AssignedVariables')
    AssignedVariablesDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#AssignedVariablesDetails', name: 'AssignedVariablesDetails')
    BilledDuration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#BilledDuration', name: 'BilledDuration', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    BilledMemoryUsed = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#BilledMemoryUsed', name: 'BilledMemoryUsed', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    BillingDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#BillingDetails', name: 'BillingDetails')
    CharacterRestrictedName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#CharacterRestrictedName', name: 'CharacterRestrictedName', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^(?=.*[a-zA-Z_\\-\\.])[a-zA-Z0-9_\\-\\.]+$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    CloudWatchEventsExecutionDataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#CloudWatchEventsExecutionDataDetails', name: 'CloudWatchEventsExecutionDataDetails')
    CloudWatchLogsLogGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#CloudWatchLogsLogGroup', name: 'CloudWatchLogsLogGroup')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectorParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#ConnectorParameters', name: 'ConnectorParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#sensitive" => {}})
    CreateActivityInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#CreateActivityInput', name: 'CreateActivityInput')
    CreateActivityOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#CreateActivityOutput', name: 'CreateActivityOutput')
    CreateStateMachineAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#CreateStateMachineAliasInput', name: 'CreateStateMachineAliasInput')
    CreateStateMachineAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#CreateStateMachineAliasOutput', name: 'CreateStateMachineAliasOutput')
    CreateStateMachineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#CreateStateMachineInput', name: 'CreateStateMachineInput')
    CreateStateMachineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#CreateStateMachineOutput', name: 'CreateStateMachineOutput')
    Definition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#Definition', name: 'Definition', traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}, "smithy.api#sensitive" => {}})
    DeleteActivityInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DeleteActivityInput', name: 'DeleteActivityInput')
    DeleteActivityOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DeleteActivityOutput', name: 'DeleteActivityOutput')
    DeleteStateMachineAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DeleteStateMachineAliasInput', name: 'DeleteStateMachineAliasInput')
    DeleteStateMachineAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DeleteStateMachineAliasOutput', name: 'DeleteStateMachineAliasOutput')
    DeleteStateMachineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DeleteStateMachineInput', name: 'DeleteStateMachineInput')
    DeleteStateMachineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DeleteStateMachineOutput', name: 'DeleteStateMachineOutput')
    DeleteStateMachineVersionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DeleteStateMachineVersionInput', name: 'DeleteStateMachineVersionInput')
    DeleteStateMachineVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DeleteStateMachineVersionOutput', name: 'DeleteStateMachineVersionOutput')
    DescribeActivityInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeActivityInput', name: 'DescribeActivityInput')
    DescribeActivityOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeActivityOutput', name: 'DescribeActivityOutput')
    DescribeExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeExecutionInput', name: 'DescribeExecutionInput')
    DescribeExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeExecutionOutput', name: 'DescribeExecutionOutput')
    DescribeMapRunInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeMapRunInput', name: 'DescribeMapRunInput')
    DescribeMapRunOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeMapRunOutput', name: 'DescribeMapRunOutput')
    DescribeStateMachineAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeStateMachineAliasInput', name: 'DescribeStateMachineAliasInput')
    DescribeStateMachineAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeStateMachineAliasOutput', name: 'DescribeStateMachineAliasOutput')
    DescribeStateMachineForExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeStateMachineForExecutionInput', name: 'DescribeStateMachineForExecutionInput')
    DescribeStateMachineForExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeStateMachineForExecutionOutput', name: 'DescribeStateMachineForExecutionOutput')
    DescribeStateMachineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeStateMachineInput', name: 'DescribeStateMachineInput')
    DescribeStateMachineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#DescribeStateMachineOutput', name: 'DescribeStateMachineOutput')
    Enabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#Enabled', name: 'Enabled', traits: {"smithy.api#default" => false})
    EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#EncryptionConfiguration', name: 'EncryptionConfiguration')
    EncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#EncryptionType', name: 'EncryptionType')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#ErrorMessage', name: 'ErrorMessage')
    EvaluationFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#EvaluationFailedEventDetails', name: 'EvaluationFailedEventDetails')
    EvaluationFailureLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#EvaluationFailureLocation', name: 'EvaluationFailureLocation', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    EventId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#EventId', name: 'EventId', traits: {"smithy.api#default" => 0})
    ExecutionAbortedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionAbortedEventDetails', name: 'ExecutionAbortedEventDetails')
    ExecutionAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionAlreadyExists', name: 'ExecutionAlreadyExists', traits: {"smithy.api#error" => "client"})
    ExecutionDoesNotExist = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionDoesNotExist', name: 'ExecutionDoesNotExist', traits: {"smithy.api#error" => "client"})
    ExecutionFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionFailedEventDetails', name: 'ExecutionFailedEventDetails')
    ExecutionLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionLimitExceeded', name: 'ExecutionLimitExceeded', traits: {"smithy.api#error" => "client"})
    ExecutionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#ExecutionList', name: 'ExecutionList')
    ExecutionListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionListItem', name: 'ExecutionListItem')
    ExecutionNotRedrivable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionNotRedrivable', name: 'ExecutionNotRedrivable', traits: {"smithy.api#error" => "client"})
    ExecutionRedriveFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#ExecutionRedriveFilter', name: 'ExecutionRedriveFilter')
    ExecutionRedriveStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#ExecutionRedriveStatus', name: 'ExecutionRedriveStatus')
    ExecutionRedrivenEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionRedrivenEventDetails', name: 'ExecutionRedrivenEventDetails')
    ExecutionStartedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionStartedEventDetails', name: 'ExecutionStartedEventDetails')
    ExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#ExecutionStatus', name: 'ExecutionStatus')
    ExecutionSucceededEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionSucceededEventDetails', name: 'ExecutionSucceededEventDetails')
    ExecutionTimedOutEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ExecutionTimedOutEventDetails', name: 'ExecutionTimedOutEventDetails')
    GetActivityTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#GetActivityTaskInput', name: 'GetActivityTaskInput')
    GetActivityTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#GetActivityTaskOutput', name: 'GetActivityTaskOutput')
    GetExecutionHistoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#GetExecutionHistoryInput', name: 'GetExecutionHistoryInput')
    GetExecutionHistoryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#GetExecutionHistoryOutput', name: 'GetExecutionHistoryOutput')
    HTTPBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#HTTPBody', name: 'HTTPBody')
    HTTPHeaders = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#HTTPHeaders', name: 'HTTPHeaders')
    HTTPMethod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#HTTPMethod', name: 'HTTPMethod')
    HTTPProtocol = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#HTTPProtocol', name: 'HTTPProtocol')
    HTTPStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#HTTPStatusCode', name: 'HTTPStatusCode')
    HTTPStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#HTTPStatusMessage', name: 'HTTPStatusMessage')
    HistoryEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#HistoryEvent', name: 'HistoryEvent')
    HistoryEventExecutionDataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#HistoryEventExecutionDataDetails', name: 'HistoryEventExecutionDataDetails')
    HistoryEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#HistoryEventList', name: 'HistoryEventList')
    HistoryEventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#HistoryEventType', name: 'HistoryEventType')
    Identity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#Identity', name: 'Identity', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    IncludeExecutionData = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#IncludeExecutionData', name: 'IncludeExecutionData', traits: {"smithy.api#default" => false})
    IncludeExecutionDataGetExecutionHistory = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#IncludeExecutionDataGetExecutionHistory', name: 'IncludeExecutionDataGetExecutionHistory')
    IncludedData = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#IncludedData', name: 'IncludedData')
    InspectionData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InspectionData', name: 'InspectionData', traits: {"smithy.api#sensitive" => {}})
    InspectionDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InspectionDataRequest', name: 'InspectionDataRequest')
    InspectionDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InspectionDataResponse', name: 'InspectionDataResponse')
    InspectionLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#InspectionLevel', name: 'InspectionLevel')
    InvalidArn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidArn', name: 'InvalidArn', traits: {"smithy.api#error" => "client"})
    InvalidDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidDefinition', name: 'InvalidDefinition', traits: {"smithy.api#error" => "client"})
    InvalidEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidEncryptionConfiguration', name: 'InvalidEncryptionConfiguration', traits: {"smithy.api#error" => "client"})
    InvalidExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidExecutionInput', name: 'InvalidExecutionInput', traits: {"smithy.api#error" => "client"})
    InvalidLoggingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidLoggingConfiguration', name: 'InvalidLoggingConfiguration', traits: {"smithy.api#error" => "client"})
    InvalidName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidName', name: 'InvalidName', traits: {"smithy.api#error" => "client"})
    InvalidOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidOutput', name: 'InvalidOutput', traits: {"smithy.api#error" => "client"})
    InvalidToken = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidToken', name: 'InvalidToken', traits: {"smithy.api#error" => "client"})
    InvalidTracingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#InvalidTracingConfiguration', name: 'InvalidTracingConfiguration', traits: {"smithy.api#error" => "client"})
    KmsAccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#KmsAccessDeniedException', name: 'KmsAccessDeniedException', traits: {"smithy.api#error" => "client"})
    KmsDataKeyReusePeriodSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#KmsDataKeyReusePeriodSeconds', name: 'KmsDataKeyReusePeriodSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 900}})
    KmsInvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#KmsInvalidStateException', name: 'KmsInvalidStateException', traits: {"smithy.api#error" => "client"})
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#KmsKeyState', name: 'KmsKeyState')
    KmsThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#KmsThrottlingException', name: 'KmsThrottlingException', traits: {"smithy.api#error" => "client"})
    LambdaFunctionFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#LambdaFunctionFailedEventDetails', name: 'LambdaFunctionFailedEventDetails')
    LambdaFunctionScheduleFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#LambdaFunctionScheduleFailedEventDetails', name: 'LambdaFunctionScheduleFailedEventDetails')
    LambdaFunctionScheduledEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#LambdaFunctionScheduledEventDetails', name: 'LambdaFunctionScheduledEventDetails')
    LambdaFunctionStartFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#LambdaFunctionStartFailedEventDetails', name: 'LambdaFunctionStartFailedEventDetails')
    LambdaFunctionSucceededEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#LambdaFunctionSucceededEventDetails', name: 'LambdaFunctionSucceededEventDetails')
    LambdaFunctionTimedOutEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#LambdaFunctionTimedOutEventDetails', name: 'LambdaFunctionTimedOutEventDetails')
    ListActivitiesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListActivitiesInput', name: 'ListActivitiesInput')
    ListActivitiesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListActivitiesOutput', name: 'ListActivitiesOutput')
    ListExecutionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListExecutionsInput', name: 'ListExecutionsInput')
    ListExecutionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListExecutionsOutput', name: 'ListExecutionsOutput')
    ListExecutionsPageToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#ListExecutionsPageToken', name: 'ListExecutionsPageToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 3096}})
    ListMapRunsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListMapRunsInput', name: 'ListMapRunsInput')
    ListMapRunsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListMapRunsOutput', name: 'ListMapRunsOutput')
    ListStateMachineAliasesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListStateMachineAliasesInput', name: 'ListStateMachineAliasesInput')
    ListStateMachineAliasesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListStateMachineAliasesOutput', name: 'ListStateMachineAliasesOutput')
    ListStateMachineVersionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListStateMachineVersionsInput', name: 'ListStateMachineVersionsInput')
    ListStateMachineVersionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListStateMachineVersionsOutput', name: 'ListStateMachineVersionsOutput')
    ListStateMachinesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListStateMachinesInput', name: 'ListStateMachinesInput')
    ListStateMachinesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListStateMachinesOutput', name: 'ListStateMachinesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LogDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#LogDestination', name: 'LogDestination')
    LogDestinationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#LogDestinationList', name: 'LogDestinationList')
    LogLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#LogLevel', name: 'LogLevel')
    LoggingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#LoggingConfiguration', name: 'LoggingConfiguration')
    LongArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#LongArn', name: 'LongArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    LongObject = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#LongObject', name: 'LongObject')
    MapIterationEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MapIterationEventDetails', name: 'MapIterationEventDetails')
    MapRunExecutionCounts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MapRunExecutionCounts', name: 'MapRunExecutionCounts')
    MapRunFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MapRunFailedEventDetails', name: 'MapRunFailedEventDetails')
    MapRunItemCounts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MapRunItemCounts', name: 'MapRunItemCounts')
    MapRunLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#MapRunLabel', name: 'MapRunLabel')
    MapRunList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#MapRunList', name: 'MapRunList')
    MapRunListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MapRunListItem', name: 'MapRunListItem')
    MapRunRedrivenEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MapRunRedrivenEventDetails', name: 'MapRunRedrivenEventDetails')
    MapRunStartedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MapRunStartedEventDetails', name: 'MapRunStartedEventDetails')
    MapRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#MapRunStatus', name: 'MapRunStatus')
    MapStateStartedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MapStateStartedEventDetails', name: 'MapStateStartedEventDetails')
    MaxConcurrency = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#MaxConcurrency', name: 'MaxConcurrency', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MissingRequiredParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#MissingRequiredParameter', name: 'MissingRequiredParameter', traits: {"smithy.api#error" => "client"})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#PageSize', name: 'PageSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    PageToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#PageToken', name: 'PageToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Publish = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#Publish', name: 'Publish', traits: {"smithy.api#default" => false})
    PublishStateMachineVersionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#PublishStateMachineVersionInput', name: 'PublishStateMachineVersionInput')
    PublishStateMachineVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#PublishStateMachineVersionOutput', name: 'PublishStateMachineVersionOutput')
    RedriveCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#RedriveCount', name: 'RedriveCount')
    RedriveExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#RedriveExecutionInput', name: 'RedriveExecutionInput')
    RedriveExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#RedriveExecutionOutput', name: 'RedriveExecutionOutput')
    ResourceNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ResourceNotFound', name: 'ResourceNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RevealSecrets = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#RevealSecrets', name: 'RevealSecrets', traits: {"smithy.api#default" => false})
    ReverseOrder = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#ReverseOrder', name: 'ReverseOrder', traits: {"smithy.api#default" => false})
    RevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#RevisionId', name: 'RevisionId')
    RoutingConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#RoutingConfigurationList', name: 'RoutingConfigurationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    RoutingConfigurationListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#RoutingConfigurationListItem', name: 'RoutingConfigurationListItem')
    SendTaskFailureInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#SendTaskFailureInput', name: 'SendTaskFailureInput')
    SendTaskFailureOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#SendTaskFailureOutput', name: 'SendTaskFailureOutput')
    SendTaskHeartbeatInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#SendTaskHeartbeatInput', name: 'SendTaskHeartbeatInput')
    SendTaskHeartbeatOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#SendTaskHeartbeatOutput', name: 'SendTaskHeartbeatOutput')
    SendTaskSuccessInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#SendTaskSuccessInput', name: 'SendTaskSuccessInput')
    SendTaskSuccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#SendTaskSuccessOutput', name: 'SendTaskSuccessOutput')
    SensitiveCause = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#SensitiveCause', name: 'SensitiveCause', traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}, "smithy.api#sensitive" => {}})
    SensitiveData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#SensitiveData', name: 'SensitiveData', traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#sensitive" => {}})
    SensitiveDataJobInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#SensitiveDataJobInput', name: 'SensitiveDataJobInput', traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#sensitive" => {}})
    SensitiveError = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#SensitiveError', name: 'SensitiveError', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StartExecutionInput', name: 'StartExecutionInput')
    StartExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StartExecutionOutput', name: 'StartExecutionOutput')
    StartSyncExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StartSyncExecutionInput', name: 'StartSyncExecutionInput')
    StartSyncExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StartSyncExecutionOutput', name: 'StartSyncExecutionOutput')
    StateEnteredEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateEnteredEventDetails', name: 'StateEnteredEventDetails')
    StateExitedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateExitedEventDetails', name: 'StateExitedEventDetails')
    StateMachineAliasList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#StateMachineAliasList', name: 'StateMachineAliasList')
    StateMachineAliasListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateMachineAliasListItem', name: 'StateMachineAliasListItem')
    StateMachineAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateMachineAlreadyExists', name: 'StateMachineAlreadyExists', traits: {"smithy.api#error" => "client"})
    StateMachineDeleting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateMachineDeleting', name: 'StateMachineDeleting', traits: {"smithy.api#error" => "client"})
    StateMachineDoesNotExist = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateMachineDoesNotExist', name: 'StateMachineDoesNotExist', traits: {"smithy.api#error" => "client"})
    StateMachineLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateMachineLimitExceeded', name: 'StateMachineLimitExceeded', traits: {"smithy.api#error" => "client"})
    StateMachineList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#StateMachineList', name: 'StateMachineList')
    StateMachineListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateMachineListItem', name: 'StateMachineListItem')
    StateMachineStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#StateMachineStatus', name: 'StateMachineStatus')
    StateMachineType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#StateMachineType', name: 'StateMachineType')
    StateMachineTypeNotSupported = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateMachineTypeNotSupported', name: 'StateMachineTypeNotSupported', traits: {"smithy.api#error" => "client"})
    StateMachineVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#StateMachineVersionList', name: 'StateMachineVersionList')
    StateMachineVersionListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StateMachineVersionListItem', name: 'StateMachineVersionListItem')
    StateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#StateName', name: 'StateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    StopExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StopExecutionInput', name: 'StopExecutionInput')
    StopExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#StopExecutionOutput', name: 'StopExecutionOutput')
    SyncExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#SyncExecutionStatus', name: 'SyncExecutionStatus')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#TagList', name: 'TagList')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskCredentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskCredentials', name: 'TaskCredentials')
    TaskDoesNotExist = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskDoesNotExist', name: 'TaskDoesNotExist', traits: {"smithy.api#error" => "client"})
    TaskFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskFailedEventDetails', name: 'TaskFailedEventDetails')
    TaskScheduledEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskScheduledEventDetails', name: 'TaskScheduledEventDetails')
    TaskStartFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskStartFailedEventDetails', name: 'TaskStartFailedEventDetails')
    TaskStartedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskStartedEventDetails', name: 'TaskStartedEventDetails')
    TaskSubmitFailedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskSubmitFailedEventDetails', name: 'TaskSubmitFailedEventDetails')
    TaskSubmittedEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskSubmittedEventDetails', name: 'TaskSubmittedEventDetails')
    TaskSucceededEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskSucceededEventDetails', name: 'TaskSucceededEventDetails')
    TaskTimedOut = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskTimedOut', name: 'TaskTimedOut', traits: {"smithy.api#error" => "client"})
    TaskTimedOutEventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TaskTimedOutEventDetails', name: 'TaskTimedOutEventDetails')
    TaskToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#TaskToken', name: 'TaskToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    TestExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#TestExecutionStatus', name: 'TestExecutionStatus')
    TestStateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TestStateInput', name: 'TestStateInput')
    TestStateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TestStateOutput', name: 'TestStateOutput')
    TimeoutInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#TimeoutInSeconds', name: 'TimeoutInSeconds', traits: {"smithy.api#default" => 0})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.sfn#Timestamp', name: 'Timestamp')
    ToleratedFailureCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#ToleratedFailureCount', name: 'ToleratedFailureCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ToleratedFailurePercentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.sfn#ToleratedFailurePercentage', name: 'ToleratedFailurePercentage', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    TooManyTags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TooManyTags', name: 'TooManyTags', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TraceHeader = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#TraceHeader', name: 'TraceHeader', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\p{ASCII}*$"})
    TracingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#TracingConfiguration', name: 'TracingConfiguration')
    URL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#URL', name: 'URL')
    UnsignedInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#UnsignedInteger', name: 'UnsignedInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UnsignedLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#UnsignedLong', name: 'UnsignedLong', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateMapRunInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#UpdateMapRunInput', name: 'UpdateMapRunInput')
    UpdateMapRunOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#UpdateMapRunOutput', name: 'UpdateMapRunOutput')
    UpdateStateMachineAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#UpdateStateMachineAliasInput', name: 'UpdateStateMachineAliasInput')
    UpdateStateMachineAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#UpdateStateMachineAliasOutput', name: 'UpdateStateMachineAliasOutput')
    UpdateStateMachineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#UpdateStateMachineInput', name: 'UpdateStateMachineInput')
    UpdateStateMachineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#UpdateStateMachineOutput', name: 'UpdateStateMachineOutput')
    ValidateStateMachineDefinitionCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionCode', name: 'ValidateStateMachineDefinitionCode', traits: {"smithy.api#sensitive" => {}})
    ValidateStateMachineDefinitionDiagnostic = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionDiagnostic', name: 'ValidateStateMachineDefinitionDiagnostic')
    ValidateStateMachineDefinitionDiagnosticList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionDiagnosticList', name: 'ValidateStateMachineDefinitionDiagnosticList')
    ValidateStateMachineDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionInput', name: 'ValidateStateMachineDefinitionInput')
    ValidateStateMachineDefinitionLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionLocation', name: 'ValidateStateMachineDefinitionLocation', traits: {"smithy.api#sensitive" => {}})
    ValidateStateMachineDefinitionMaxResult = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionMaxResult', name: 'ValidateStateMachineDefinitionMaxResult', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ValidateStateMachineDefinitionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionMessage', name: 'ValidateStateMachineDefinitionMessage', traits: {"smithy.api#sensitive" => {}})
    ValidateStateMachineDefinitionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionOutput', name: 'ValidateStateMachineDefinitionOutput')
    ValidateStateMachineDefinitionResultCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionResultCode', name: 'ValidateStateMachineDefinitionResultCode')
    ValidateStateMachineDefinitionSeverity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionSeverity', name: 'ValidateStateMachineDefinitionSeverity')
    ValidateStateMachineDefinitionTruncated = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#ValidateStateMachineDefinitionTruncated', name: 'ValidateStateMachineDefinitionTruncated')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sfn#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sfn#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#VariableName', name: 'VariableName', traits: {"smithy.api#sensitive" => {}})
    VariableNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sfn#VariableNameList', name: 'VariableNameList')
    VariableReferences = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sfn#VariableReferences', name: 'VariableReferences', traits: {"smithy.api#sensitive" => {}})
    VariableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#VariableValue', name: 'VariableValue', traits: {"smithy.api#sensitive" => {}})
    VersionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sfn#VersionDescription', name: 'VersionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    VersionWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sfn#VersionWeight', name: 'VersionWeight', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    IncludedDetails = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#includedDetails', name: 'IncludedDetails', traits: {"smithy.api#default" => false})
    Truncated = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sfn#truncated', name: 'Truncated', traits: {"smithy.api#default" => false})

    ActivityAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ActivityAlreadyExists.type = Types::ActivityAlreadyExists
    ActivityDoesNotExist.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ActivityDoesNotExist.type = Types::ActivityDoesNotExist
    ActivityFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    ActivityFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    ActivityFailedEventDetails.type = Types::ActivityFailedEventDetails
    ActivityLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ActivityLimitExceeded.type = Types::ActivityLimitExceeded
    ActivityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityListItem)
    ActivityListItem.add_member(:activity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'activityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the activity.</p>", "smithy.api#required" => {}}))
    ActivityListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the activity.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>", "smithy.api#required" => {}}))
    ActivityListItem.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the activity is created.</p>", "smithy.api#required" => {}}))
    ActivityListItem.type = Types::ActivityListItem
    ActivityScheduleFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    ActivityScheduleFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    ActivityScheduleFailedEventDetails.type = Types::ActivityScheduleFailedEventDetails
    ActivityScheduledEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scheduled activity.</p>", "smithy.api#required" => {}}))
    ActivityScheduledEventDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The JSON data input to the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    ActivityScheduledEventDetails.add_member(:input_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'inputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the input for an execution history event.</p>"}))
    ActivityScheduledEventDetails.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: 'timeoutInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum allowed duration of the activity task.</p>"}))
    ActivityScheduledEventDetails.add_member(:heartbeat_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: 'heartbeatInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum allowed duration between two heartbeats for the activity task.</p>"}))
    ActivityScheduledEventDetails.type = Types::ActivityScheduledEventDetails
    ActivityStartedEventDetails.add_member(:worker_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'workerName', traits: {"smithy.api#documentation" => "<p>The name of the worker that the task is assigned to. These names are provided by the\n      workers when calling <a>GetActivityTask</a>.</p>"}))
    ActivityStartedEventDetails.type = Types::ActivityStartedEventDetails
    ActivitySucceededEventDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The JSON data output by the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    ActivitySucceededEventDetails.add_member(:output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'outputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the output of an execution history event.</p>"}))
    ActivitySucceededEventDetails.type = Types::ActivitySucceededEventDetails
    ActivityTimedOutEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    ActivityTimedOutEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the timeout.</p>"}))
    ActivityTimedOutEventDetails.type = Types::ActivityTimedOutEventDetails
    ActivityWorkerLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ActivityWorkerLimitExceeded.type = Types::ActivityWorkerLimitExceeded
    AssignedVariables.key = Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName)
    AssignedVariables.value = Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue)
    AssignedVariablesDetails.add_member(:truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Truncated, location_name: 'truncated', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether assigned variables were truncated in the response. Always <code>false</code>\n    for API calls. In CloudWatch logs, the value will be true if the data is truncated due to size limits.</p>"}))
    AssignedVariablesDetails.type = Types::AssignedVariablesDetails
    BillingDetails.add_member(:billed_memory_used_in_mb, Smithy::Schema::Shapes::ShapeRef.new(shape: BilledMemoryUsed, location_name: 'billedMemoryUsedInMB', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Billed memory consumption of your workflow, in MB.</p>"}))
    BillingDetails.add_member(:billed_duration_in_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: BilledDuration, location_name: 'billedDurationInMilliseconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Billed duration of your workflow, in milliseconds.</p>"}))
    BillingDetails.type = Types::BillingDetails
    CloudWatchEventsExecutionDataDetails.add_member(:included, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedDetails, location_name: 'included', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether input or output was included in the response. Always <code>true</code>\n      for API calls. </p>"}))
    CloudWatchEventsExecutionDataDetails.type = Types::CloudWatchEventsExecutionDataDetails
    CloudWatchLogsLogGroup.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the the CloudWatch log group to which you want your logs emitted to. The ARN\n      must end with <code>:*</code>\n         </p>"}))
    CloudWatchLogsLogGroup.type = Types::CloudWatchLogsLogGroup
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateActivityInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the activity to create. This name must be unique for your Amazon Web Services account and region for 90 days. For more information,\n    see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions\">\n    Limits Related to State Machine Executions</a> in the <i>Step Functions Developer Guide</i>.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>", "smithy.api#required" => {}}))
    CreateActivityInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags to add to a resource.</p>\n         <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using\n      Cost Allocation Tags</a> in the <i>Amazon Web Services Billing and Cost Management User\n        Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM\n          Tags</a>.</p>\n         <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>"}))
    CreateActivityInput.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Settings to configure server-side encryption.</p>"}))
    CreateActivityInput.type = Types::CreateActivityInput
    CreateActivityOutput.add_member(:activity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'activityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the created activity.</p>", "smithy.api#required" => {}}))
    CreateActivityOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the activity is created.</p>", "smithy.api#required" => {}}))
    CreateActivityOutput.type = Types::CreateActivityOutput
    CreateStateMachineAliasInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the state machine alias.</p>"}))
    CreateStateMachineAliasInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterRestrictedName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state machine alias.</p>\n         <p>To avoid conflict with version ARNs, don't use an integer in the name of the alias.</p>", "smithy.api#required" => {}}))
    CreateStateMachineAliasInput.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfigurationList, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>The routing configuration of a state machine alias. The routing configuration shifts\n      execution traffic between two state machine versions. <code>routingConfiguration</code>\n      contains an array of <code>RoutingConfig</code> objects that specify up to two state machine\n      versions. Step Functions then randomly choses which version to run an execution with based\n      on the weight assigned to each <code>RoutingConfig</code>.</p>", "smithy.api#required" => {}}))
    CreateStateMachineAliasInput.type = Types::CreateStateMachineAliasInput
    CreateStateMachineAliasOutput.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the created state machine alias.</p>", "smithy.api#required" => {}}))
    CreateStateMachineAliasOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the state machine alias was created.</p>", "smithy.api#required" => {}}))
    CreateStateMachineAliasOutput.type = Types::CreateStateMachineAliasOutput
    CreateStateMachineInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state machine. </p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>", "smithy.api#required" => {}}))
    CreateStateMachineInput.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>", "smithy.api#required" => {}}))
    CreateStateMachineInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>", "smithy.api#required" => {}}))
    CreateStateMachineInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Determines whether a Standard or Express state machine is created. The default is\n        <code>STANDARD</code>. You cannot update the <code>type</code> of a state machine once it\n      has been created.</p>"}))
    CreateStateMachineInput.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'loggingConfiguration', traits: {"smithy.api#documentation" => "<p>Defines what execution history events are logged and where they are logged.</p>\n         <note>\n            <p>By default, the <code>level</code> is set to <code>OFF</code>. For more information see\n          <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html\">Log\n          Levels</a> in the Step Functions User Guide.</p>\n         </note>"}))
    CreateStateMachineInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags to be added when creating a state machine.</p>\n         <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using\n      Cost Allocation Tags</a> in the <i>Amazon Web Services Billing and Cost Management User\n        Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM\n          Tags</a>.</p>\n         <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>"}))
    CreateStateMachineInput.add_member(:tracing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: 'tracingConfiguration', traits: {"smithy.api#documentation" => "<p>Selects whether X-Ray tracing is enabled.</p>"}))
    CreateStateMachineInput.add_member(:publish, Smithy::Schema::Shapes::ShapeRef.new(shape: Publish, location_name: 'publish', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>true</code> to publish the first version of the state machine during creation. The default is <code>false</code>.</p>"}))
    CreateStateMachineInput.add_member(:version_description, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDescription, location_name: 'versionDescription', traits: {"smithy.api#documentation" => "<p>Sets description about the state machine version. You can only set the description if the <code>publish</code> parameter is set to <code>true</code>. Otherwise, if you set <code>versionDescription</code>, but <code>publish</code> to <code>false</code>, this API action throws <code>ValidationException</code>.</p>"}))
    CreateStateMachineInput.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Settings to configure server-side encryption.</p>"}))
    CreateStateMachineInput.type = Types::CreateStateMachineInput
    CreateStateMachineOutput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the created state machine.</p>", "smithy.api#required" => {}}))
    CreateStateMachineOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the state machine is created.</p>", "smithy.api#required" => {}}))
    CreateStateMachineOutput.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the created state machine version. If you do not set the <code>publish</code> parameter to <code>true</code>, this field returns null value.</p>"}))
    CreateStateMachineOutput.type = Types::CreateStateMachineOutput
    DeleteActivityInput.add_member(:activity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'activityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the activity to delete.</p>", "smithy.api#required" => {}}))
    DeleteActivityInput.type = Types::DeleteActivityInput
    DeleteActivityOutput.type = Types::DeleteActivityOutput
    DeleteStateMachineAliasInput.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine alias to delete.</p>", "smithy.api#required" => {}}))
    DeleteStateMachineAliasInput.type = Types::DeleteStateMachineAliasInput
    DeleteStateMachineAliasOutput.type = Types::DeleteStateMachineAliasOutput
    DeleteStateMachineInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine to delete.</p>", "smithy.api#required" => {}}))
    DeleteStateMachineInput.type = Types::DeleteStateMachineInput
    DeleteStateMachineOutput.type = Types::DeleteStateMachineOutput
    DeleteStateMachineVersionInput.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine version to delete.</p>", "smithy.api#required" => {}}))
    DeleteStateMachineVersionInput.type = Types::DeleteStateMachineVersionInput
    DeleteStateMachineVersionOutput.type = Types::DeleteStateMachineVersionOutput
    DescribeActivityInput.add_member(:activity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'activityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the activity to describe.</p>", "smithy.api#required" => {}}))
    DescribeActivityInput.type = Types::DescribeActivityInput
    DescribeActivityOutput.add_member(:activity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'activityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the activity.</p>", "smithy.api#required" => {}}))
    DescribeActivityOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the activity.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>", "smithy.api#required" => {}}))
    DescribeActivityOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the activity is created.</p>", "smithy.api#required" => {}}))
    DescribeActivityOutput.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for configured server-side encryption.</p>"}))
    DescribeActivityOutput.type = Types::DescribeActivityOutput
    DescribeExecutionInput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the execution to describe.</p>", "smithy.api#required" => {}}))
    DescribeExecutionInput.add_member(:included_data, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedData, location_name: 'includedData', traits: {"smithy.api#documentation" => "<p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call DescribeStateMachine API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>"}))
    DescribeExecutionInput.type = Types::DescribeExecutionInput
    DescribeExecutionOutput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the execution.</p>", "smithy.api#required" => {}}))
    DescribeExecutionOutput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the executed stated machine.</p>", "smithy.api#required" => {}}))
    DescribeExecutionOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the execution.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>"}))
    DescribeExecutionOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the execution.</p>", "smithy.api#required" => {}}))
    DescribeExecutionOutput.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The date the execution is started.</p>", "smithy.api#required" => {}}))
    DescribeExecutionOutput.add_member(:stop_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stopDate', traits: {"smithy.api#documentation" => "<p>If the execution ended, the date the execution stopped.</p>"}))
    DescribeExecutionOutput.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    DescribeExecutionOutput.add_member(:input_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventsExecutionDataDetails, location_name: 'inputDetails'))
    DescribeExecutionOutput.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>\n         <note>\n            <p>This field is set only if the execution succeeds. If the execution fails, this field is\n        null.</p>\n         </note>"}))
    DescribeExecutionOutput.add_member(:output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventsExecutionDataDetails, location_name: 'outputDetails'))
    DescribeExecutionOutput.add_member(:trace_header, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceHeader, location_name: 'traceHeader', traits: {"smithy.api#documentation" => "<p>The X-Ray trace header that was passed to the execution.</p>\n         <note>\n            <p>\n                For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.\n            </p>\n         </note>"}))
    DescribeExecutionOutput.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies a Map Run, which dispatched this execution.</p>"}))
    DescribeExecutionOutput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error string if the state machine execution failed.</p>"}))
    DescribeExecutionOutput.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>The cause string if the state machine execution failed.</p>"}))
    DescribeExecutionOutput.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine version associated with the execution. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>\n         <p>If you start an execution from a <code>StartExecution</code> request without specifying a\n      state machine version or alias ARN, Step Functions returns a null value.</p>"}))
    DescribeExecutionOutput.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine alias associated with the execution. The alias ARN is a combination of state machine ARN and the alias name separated by a colon (:). For example, <code>stateMachineARN:PROD</code>.</p>\n         <p>If you start an execution from a <code>StartExecution</code> request with a\n      state machine version ARN, this field will be null.</p>"}))
    DescribeExecutionOutput.add_member(:redrive_count, Smithy::Schema::Shapes::ShapeRef.new(shape: RedriveCount, location_name: 'redriveCount', traits: {"smithy.api#documentation" => "<p>The number of times you've redriven an execution. If you have not yet redriven an execution, the <code>redriveCount</code> is 0. This count is only updated if you successfully redrive an execution.</p>"}))
    DescribeExecutionOutput.add_member(:redrive_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'redriveDate', traits: {"smithy.api#documentation" => "<p>The date the execution was last redriven. If you have not yet redriven an execution, the <code>redriveDate</code> is null.</p>\n         <p>The <code>redriveDate</code> is unavailable if you redrive a Map Run that starts child workflow executions of type <code>EXPRESS</code>.</p>"}))
    DescribeExecutionOutput.add_member(:redrive_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRedriveStatus, location_name: 'redriveStatus', traits: {"smithy.api#documentation" => "<p>Indicates whether or not an execution can be redriven at a given point in time.</p>\n         <ul>\n            <li>\n               <p>For executions of type <code>STANDARD</code>, <code>redriveStatus</code> is <code>NOT_REDRIVABLE</code> if calling the <a>RedriveExecution</a> API action would return the <code>ExecutionNotRedrivable</code> error.</p>\n            </li>\n            <li>\n               <p>For a Distributed Map that includes child workflows of type <code>STANDARD</code>, <code>redriveStatus</code> indicates whether or not the Map Run can redrive child workflow executions.</p>\n            </li>\n            <li>\n               <p>For a Distributed Map that includes child workflows of type <code>EXPRESS</code>, <code>redriveStatus</code> indicates whether or not the Map Run can redrive child workflow executions.</p>\n               <p>You can redrive failed or timed out <code>EXPRESS</code> workflows <i>only if</i> they're a part of a Map Run. When you <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html\">redrive</a> the Map Run, these workflows are restarted using the <a>StartExecution</a> API action.</p>\n            </li>\n         </ul>"}))
    DescribeExecutionOutput.add_member(:redrive_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'redriveStatusReason', traits: {"smithy.api#documentation" => "<p>When <code>redriveStatus</code> is <code>NOT_REDRIVABLE</code>, <code>redriveStatusReason</code> specifies the reason why an execution cannot be redriven.</p>\n         <ul>\n            <li>\n               <p>For executions of type <code>STANDARD</code>, or for a Distributed Map that includes child workflows of type <code>STANDARD</code>, <code>redriveStatusReason</code> can include one of the following reasons:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>State machine is in DELETING status</code>.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>Execution is RUNNING and cannot be redriven</code>.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>Execution is SUCCEEDED and cannot be redriven</code>.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>Execution was started before the launch of RedriveExecution</code>.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>Execution history event limit exceeded</code>.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>Execution has exceeded the max execution time</code>.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>Execution redrivable period exceeded</code>.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For a Distributed Map that includes child workflows of type <code>EXPRESS</code>, <code>redriveStatusReason</code> is only returned if the child workflows are not redrivable. This happens when the child workflow executions have completed successfully.</p>\n            </li>\n         </ul>"}))
    DescribeExecutionOutput.type = Types::DescribeExecutionOutput
    DescribeMapRunInput.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies a Map Run.</p>", "smithy.api#required" => {}}))
    DescribeMapRunInput.type = Types::DescribeMapRunInput
    DescribeMapRunOutput.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies a Map Run.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the execution in which the Map Run was started.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the Map Run.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The date when the Map Run was started.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:stop_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stopDate', traits: {"smithy.api#documentation" => "<p>The date when the Map Run was stopped.</p>"}))
    DescribeMapRunOutput.add_member(:max_concurrency, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: 'maxConcurrency', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of child workflow executions configured to run in parallel for the Map Run at the same time.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:tolerated_failure_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ToleratedFailurePercentage, location_name: 'toleratedFailurePercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum percentage of failed child workflow executions before the Map Run fails.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:tolerated_failure_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ToleratedFailureCount, location_name: 'toleratedFailureCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of failed child workflow executions before the Map Run fails.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:item_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunItemCounts, location_name: 'itemCounts', traits: {"smithy.api#documentation" => "<p>A JSON object that contains information about the total number of items, and the item count for each processing status, such as <code>pending</code> and <code>failed</code>.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:execution_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunExecutionCounts, location_name: 'executionCounts', traits: {"smithy.api#documentation" => "<p>A JSON object that contains information about the total number of child workflow executions for the Map Run, and the count of child workflow executions for each status, such as <code>failed</code> and <code>succeeded</code>.</p>", "smithy.api#required" => {}}))
    DescribeMapRunOutput.add_member(:redrive_count, Smithy::Schema::Shapes::ShapeRef.new(shape: RedriveCount, location_name: 'redriveCount', traits: {"smithy.api#documentation" => "<p>The number of times you've redriven a Map Run. If you have not yet redriven a Map Run, the <code>redriveCount</code> is 0. This count is only updated if you successfully redrive a Map Run.</p>"}))
    DescribeMapRunOutput.add_member(:redrive_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'redriveDate', traits: {"smithy.api#documentation" => "<p>The date a Map Run was last redriven. If you have not yet redriven a Map Run, the <code>redriveDate</code> is null.</p>"}))
    DescribeMapRunOutput.type = Types::DescribeMapRunOutput
    DescribeStateMachineAliasInput.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine alias.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineAliasInput.type = Types::DescribeStateMachineAliasInput
    DescribeStateMachineAliasOutput.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine alias.</p>"}))
    DescribeStateMachineAliasOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state machine alias.</p>"}))
    DescribeStateMachineAliasOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the alias.</p>"}))
    DescribeStateMachineAliasOutput.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfigurationList, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>The routing configuration of the alias.</p>"}))
    DescribeStateMachineAliasOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the state machine alias was created.</p>"}))
    DescribeStateMachineAliasOutput.add_member(:update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updateDate', traits: {"smithy.api#documentation" => "<p>The date the state machine alias was last updated.</p>\n         <p>For a newly created state machine, this is the same as the creation date.</p>"}))
    DescribeStateMachineAliasOutput.type = Types::DescribeStateMachineAliasOutput
    DescribeStateMachineForExecutionInput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the execution you want state machine information for.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineForExecutionInput.add_member(:included_data, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedData, location_name: 'includedData', traits: {"smithy.api#documentation" => "<p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>"}))
    DescribeStateMachineForExecutionInput.type = Types::DescribeStateMachineForExecutionInput
    DescribeStateMachineForExecutionOutput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine associated with the execution.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state machine associated with the execution.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role of the State Machine for the execution. </p>", "smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updateDate', traits: {"smithy.api#documentation" => "<p>The date and time the state machine associated with an execution was updated. For a newly\n      created state machine, this is the creation date.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineForExecutionOutput.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'loggingConfiguration'))
    DescribeStateMachineForExecutionOutput.add_member(:tracing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: 'tracingConfiguration', traits: {"smithy.api#documentation" => "<p>Selects whether X-Ray tracing is enabled.</p>"}))
    DescribeStateMachineForExecutionOutput.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Map Run that started the child workflow execution. This field is returned only if the <code>executionArn</code> is a child workflow execution that was started by a Distributed Map state.</p>"}))
    DescribeStateMachineForExecutionOutput.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunLabel, location_name: 'label', traits: {"smithy.api#documentation" => "<p>A user-defined or an auto-generated string that identifies a <code>Map</code> state. This field is returned only if the <code>executionArn</code> is a child workflow execution that was started by a Distributed Map state.</p>"}))
    DescribeStateMachineForExecutionOutput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision identifier for the state machine. The first revision ID when you create the state machine is null.</p>\n         <p>Use the state machine <code>revisionId</code> parameter to compare the revision of a state machine with the configuration of the state machine used for executions without performing a diff of the properties, such as <code>definition</code> and <code>roleArn</code>.</p>"}))
    DescribeStateMachineForExecutionOutput.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Settings to configure server-side encryption. </p>"}))
    DescribeStateMachineForExecutionOutput.add_member(:variable_references, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableReferences, location_name: 'variableReferences', traits: {"smithy.api#documentation" => "<p>A map of <b>state name</b> to a list of variables referenced by that state. States that do not use variable references will not be shown in the response.</p>"}))
    DescribeStateMachineForExecutionOutput.type = Types::DescribeStateMachineForExecutionOutput
    DescribeStateMachineInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine for which you want the information.</p>\n         <p>If you specify a state machine version ARN, this API returns details about that version. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineInput.add_member(:included_data, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedData, location_name: 'includedData', traits: {"smithy.api#documentation" => "<p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>\n         <note>\n            <p>\n            When calling a labelled ARN for an encrypted state machine, the <code>includedData = METADATA_ONLY</code> parameter will not apply because Step Functions needs to decrypt the entire state machine definition to get the Distributed Map state’s definition. In this case, the API caller needs to have <code>kms:Decrypt</code> permission.\n        </p>\n         </note>"}))
    DescribeStateMachineInput.type = Types::DescribeStateMachineInput
    DescribeStateMachineOutput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the state machine.</p>\n         <p>If you specified a state machine version ARN in your request, the API returns the version ARN. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state machine.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the state machine.</p>"}))
    DescribeStateMachineOutput.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>\n         <p>If called with <code>includedData = METADATA_ONLY</code>, the returned definition will be <code>{}</code>.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role used when creating this state machine. (The IAM role\n      maintains security by granting Step Functions access to Amazon Web Services resources.)</p>", "smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The <code>type</code> of the state machine (<code>STANDARD</code> or\n      <code>EXPRESS</code>).</p>", "smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the state machine is created.</p>\n         <p>For a state machine version, <code>creationDate</code> is the date the version was created.</p>", "smithy.api#required" => {}}))
    DescribeStateMachineOutput.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'loggingConfiguration'))
    DescribeStateMachineOutput.add_member(:tracing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: 'tracingConfiguration', traits: {"smithy.api#documentation" => "<p>Selects whether X-Ray tracing is enabled.</p>"}))
    DescribeStateMachineOutput.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunLabel, location_name: 'label', traits: {"smithy.api#documentation" => "<p>A user-defined or an auto-generated string that identifies a <code>Map</code> state. This parameter is present only if the <code>stateMachineArn</code> specified in input is a qualified state machine ARN.</p>"}))
    DescribeStateMachineOutput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision identifier for the state machine.</p>\n         <p>Use the <code>revisionId</code> parameter to compare between versions of a state machine\n      configuration used for executions without performing a diff of the properties, such as\n        <code>definition</code> and <code>roleArn</code>.</p>"}))
    DescribeStateMachineOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the state machine version.</p>"}))
    DescribeStateMachineOutput.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Settings to configure server-side encryption. </p>"}))
    DescribeStateMachineOutput.add_member(:variable_references, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableReferences, location_name: 'variableReferences', traits: {"smithy.api#documentation" => "<p>A map of <b>state name</b> to a list of variables referenced by that state. States that do not use variable references will not be shown in the response.</p>"}))
    DescribeStateMachineOutput.type = Types::DescribeStateMachineOutput
    EncryptionConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>An alias, alias ARN, key ID, or key ARN of a symmetric encryption KMS key to encrypt data. To specify a KMS key in a different Amazon Web Services  account, you must use the key ARN or alias ARN.</p>"}))
    EncryptionConfiguration.add_member(:kms_data_key_reuse_period_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDataKeyReusePeriodSeconds, location_name: 'kmsDataKeyReusePeriodSeconds', traits: {"smithy.api#documentation" => "<p>Maximum duration that Step Functions will reuse data keys. When the period expires, Step Functions will call <code>GenerateDataKey</code>. Only applies to customer managed keys.</p>"}))
    EncryptionConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Encryption type</p>", "smithy.api#required" => {}}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionType.add_member(:aws_owned_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_OWNED_KEY', traits: {"smithy.api#enumValue" => "AWS_OWNED_KEY"}))
    EncryptionType.add_member(:customer_managed_kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_MANAGED_KMS_KEY', traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    EvaluationFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    EvaluationFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    EvaluationFailedEventDetails.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationFailureLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the field in the state in which the evaluation error occurred.</p>"}))
    EvaluationFailedEventDetails.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The name of the state in which the evaluation error occurred.</p>", "smithy.api#required" => {}}))
    EvaluationFailedEventDetails.type = Types::EvaluationFailedEventDetails
    ExecutionAbortedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    ExecutionAbortedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    ExecutionAbortedEventDetails.type = Types::ExecutionAbortedEventDetails
    ExecutionAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ExecutionAlreadyExists.type = Types::ExecutionAlreadyExists
    ExecutionDoesNotExist.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ExecutionDoesNotExist.type = Types::ExecutionDoesNotExist
    ExecutionFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    ExecutionFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    ExecutionFailedEventDetails.type = Types::ExecutionFailedEventDetails
    ExecutionLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ExecutionLimitExceeded.type = Types::ExecutionLimitExceeded
    ExecutionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionListItem)
    ExecutionListItem.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the execution.</p>", "smithy.api#required" => {}}))
    ExecutionListItem.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine that ran the execution.</p>", "smithy.api#required" => {}}))
    ExecutionListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the execution.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>", "smithy.api#required" => {}}))
    ExecutionListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the execution.</p>", "smithy.api#required" => {}}))
    ExecutionListItem.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The date the execution started.</p>", "smithy.api#required" => {}}))
    ExecutionListItem.add_member(:stop_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stopDate', traits: {"smithy.api#documentation" => "<p>If the execution already ended, the date the execution stopped.</p>"}))
    ExecutionListItem.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a Map Run. This field is returned only if <code>mapRunArn</code> was specified in the <code>ListExecutions</code> API action. If <code>stateMachineArn</code> was specified in <code>ListExecutions</code>, the <code>mapRunArn</code> isn't returned.</p>"}))
    ExecutionListItem.add_member(:item_count, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedInteger, location_name: 'itemCount', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The total number of items processed in a child workflow execution. This field is returned only if <code>mapRunArn</code> was specified in the <code>ListExecutions</code> API action. If <code>stateMachineArn</code> was specified in <code>ListExecutions</code>, the <code>itemCount</code> field isn't returned.</p>"}))
    ExecutionListItem.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine version associated with the execution.</p>\n         <p>If the state machine execution was started with an unqualified ARN, it returns null.</p>\n         <p>If the execution was started using a <code>stateMachineAliasArn</code>, both the <code>stateMachineAliasArn</code> and <code>stateMachineVersionArn</code> parameters contain the respective values.</p>"}))
    ExecutionListItem.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine alias used to start an execution.</p>\n         <p>If the state machine execution was started with an unqualified ARN or a version ARN, it returns null.</p>"}))
    ExecutionListItem.add_member(:redrive_count, Smithy::Schema::Shapes::ShapeRef.new(shape: RedriveCount, location_name: 'redriveCount', traits: {"smithy.api#documentation" => "<p>The number of times you've redriven an execution. If you have not yet redriven an execution, the <code>redriveCount</code> is 0. This count is only updated when you successfully redrive an execution.</p>"}))
    ExecutionListItem.add_member(:redrive_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'redriveDate', traits: {"smithy.api#documentation" => "<p>The date the execution was last redriven.</p>"}))
    ExecutionListItem.type = Types::ExecutionListItem
    ExecutionNotRedrivable.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ExecutionNotRedrivable.type = Types::ExecutionNotRedrivable
    ExecutionRedriveFilter.add_member(:redriven, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDRIVEN', traits: {"smithy.api#enumValue" => "REDRIVEN"}))
    ExecutionRedriveFilter.add_member(:not_redriven, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_REDRIVEN', traits: {"smithy.api#enumValue" => "NOT_REDRIVEN"}))
    ExecutionRedriveStatus.add_member(:redrivable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDRIVABLE', traits: {"smithy.api#enumValue" => "REDRIVABLE"}))
    ExecutionRedriveStatus.add_member(:not_redrivable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_REDRIVABLE', traits: {"smithy.api#enumValue" => "NOT_REDRIVABLE"}))
    ExecutionRedriveStatus.add_member(:redrivable_by_map_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDRIVABLE_BY_MAP_RUN', traits: {"smithy.api#enumValue" => "REDRIVABLE_BY_MAP_RUN"}))
    ExecutionRedrivenEventDetails.add_member(:redrive_count, Smithy::Schema::Shapes::ShapeRef.new(shape: RedriveCount, location_name: 'redriveCount', traits: {"smithy.api#documentation" => "<p>The number of times you've redriven an execution. If you have not yet redriven an execution, the <code>redriveCount</code> is 0. This count is not updated for redrives that failed to start or are pending to be redriven.</p>"}))
    ExecutionRedrivenEventDetails.type = Types::ExecutionRedrivenEventDetails
    ExecutionStartedEventDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The JSON data input to the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    ExecutionStartedEventDetails.add_member(:input_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'inputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the input for an execution history event.</p>"}))
    ExecutionStartedEventDetails.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role used for executing Lambda tasks.</p>"}))
    ExecutionStartedEventDetails.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies a state machine alias used for starting the state machine execution.</p>"}))
    ExecutionStartedEventDetails.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies a state machine version used for starting the state machine execution.</p>"}))
    ExecutionStartedEventDetails.type = Types::ExecutionStartedEventDetails
    ExecutionStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutionStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    ExecutionStatus.add_member(:aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    ExecutionStatus.add_member(:pending_redrive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_REDRIVE', traits: {"smithy.api#enumValue" => "PENDING_REDRIVE"}))
    ExecutionSucceededEventDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The JSON data output by the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    ExecutionSucceededEventDetails.add_member(:output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'outputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the output of an execution history event.</p>"}))
    ExecutionSucceededEventDetails.type = Types::ExecutionSucceededEventDetails
    ExecutionTimedOutEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    ExecutionTimedOutEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the timeout.</p>"}))
    ExecutionTimedOutEventDetails.type = Types::ExecutionTimedOutEventDetails
    GetActivityTaskInput.add_member(:activity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'activityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task\n      using <a>CreateActivity</a>.)</p>", "smithy.api#required" => {}}))
    GetActivityTaskInput.add_member(:worker_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'workerName', traits: {"smithy.api#documentation" => "<p>You can provide an arbitrary name in order to identify the worker that the task is\n      assigned to. This name is used when it is logged in the execution history.</p>"}))
    GetActivityTaskInput.type = Types::GetActivityTaskInput
    GetActivityTaskOutput.add_member(:task_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskToken, location_name: 'taskToken', traits: {"smithy.api#documentation" => "<p>A token that identifies the scheduled task. This token must be copied and included in\n      subsequent calls to <a>SendTaskHeartbeat</a>, <a>SendTaskSuccess</a> or\n        <a>SendTaskFailure</a> in order to report the progress or completion of the\n      task.</p>"}))
    GetActivityTaskOutput.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataJobInput, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The string that contains the JSON input data for the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    GetActivityTaskOutput.type = Types::GetActivityTaskOutput
    GetExecutionHistoryInput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the execution.</p>", "smithy.api#required" => {}}))
    GetExecutionHistoryInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.\n    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>\n         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"}))
    GetExecutionHistoryInput.add_member(:reverse_order, Smithy::Schema::Shapes::ShapeRef.new(shape: ReverseOrder, location_name: 'reverseOrder', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Lists events in descending order of their <code>timeStamp</code>.</p>"}))
    GetExecutionHistoryInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    GetExecutionHistoryInput.add_member(:include_execution_data, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeExecutionDataGetExecutionHistory, location_name: 'includeExecutionData', traits: {"smithy.api#documentation" => "<p>You can select whether execution data (input or output of a history event) is returned.\n      The default is <code>true</code>.</p>"}))
    GetExecutionHistoryInput.type = Types::GetExecutionHistoryInput
    GetExecutionHistoryOutput.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The list of events that occurred in the execution.</p>", "smithy.api#required" => {}}))
    GetExecutionHistoryOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    GetExecutionHistoryOutput.type = Types::GetExecutionHistoryOutput
    HistoryEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The date and time the event occurred.</p>", "smithy.api#required" => {}}))
    HistoryEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the event.</p>", "smithy.api#required" => {}}))
    HistoryEvent.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'id', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The id of the event. Events are numbered sequentially, starting at one.</p>", "smithy.api#required" => {}}))
    HistoryEvent.add_member(:previous_event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'previousEventId', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The id of the previous event.</p>"}))
    HistoryEvent.add_member(:activity_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityFailedEventDetails, location_name: 'activityFailedEventDetails'))
    HistoryEvent.add_member(:activity_schedule_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityScheduleFailedEventDetails, location_name: 'activityScheduleFailedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about an activity schedule event that failed during an execution.</p>"}))
    HistoryEvent.add_member(:activity_scheduled_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityScheduledEventDetails, location_name: 'activityScheduledEventDetails'))
    HistoryEvent.add_member(:activity_started_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStartedEventDetails, location_name: 'activityStartedEventDetails'))
    HistoryEvent.add_member(:activity_succeeded_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivitySucceededEventDetails, location_name: 'activitySucceededEventDetails'))
    HistoryEvent.add_member(:activity_timed_out_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityTimedOutEventDetails, location_name: 'activityTimedOutEventDetails'))
    HistoryEvent.add_member(:task_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFailedEventDetails, location_name: 'taskFailedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the failure of a task.</p>"}))
    HistoryEvent.add_member(:task_scheduled_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskScheduledEventDetails, location_name: 'taskScheduledEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a task that was scheduled.</p>"}))
    HistoryEvent.add_member(:task_start_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStartFailedEventDetails, location_name: 'taskStartFailedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a task that failed to start.</p>"}))
    HistoryEvent.add_member(:task_started_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStartedEventDetails, location_name: 'taskStartedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a task that was started.</p>"}))
    HistoryEvent.add_member(:task_submit_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSubmitFailedEventDetails, location_name: 'taskSubmitFailedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a task that where the submit failed.</p>"}))
    HistoryEvent.add_member(:task_submitted_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSubmittedEventDetails, location_name: 'taskSubmittedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a submitted task.</p>"}))
    HistoryEvent.add_member(:task_succeeded_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSucceededEventDetails, location_name: 'taskSucceededEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a task that succeeded.</p>"}))
    HistoryEvent.add_member(:task_timed_out_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimedOutEventDetails, location_name: 'taskTimedOutEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a task that timed out.</p>"}))
    HistoryEvent.add_member(:execution_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionFailedEventDetails, location_name: 'executionFailedEventDetails'))
    HistoryEvent.add_member(:execution_started_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStartedEventDetails, location_name: 'executionStartedEventDetails'))
    HistoryEvent.add_member(:execution_succeeded_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSucceededEventDetails, location_name: 'executionSucceededEventDetails'))
    HistoryEvent.add_member(:execution_aborted_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionAbortedEventDetails, location_name: 'executionAbortedEventDetails'))
    HistoryEvent.add_member(:execution_timed_out_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTimedOutEventDetails, location_name: 'executionTimedOutEventDetails'))
    HistoryEvent.add_member(:execution_redriven_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRedrivenEventDetails, location_name: 'executionRedrivenEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the redrive attempt of an execution.</p>"}))
    HistoryEvent.add_member(:map_state_started_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MapStateStartedEventDetails, location_name: 'mapStateStartedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about Map state that was started.</p>"}))
    HistoryEvent.add_member(:map_iteration_started_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MapIterationEventDetails, location_name: 'mapIterationStartedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about an iteration of a Map state that was started.</p>"}))
    HistoryEvent.add_member(:map_iteration_succeeded_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MapIterationEventDetails, location_name: 'mapIterationSucceededEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about an iteration of a Map state that succeeded.</p>"}))
    HistoryEvent.add_member(:map_iteration_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MapIterationEventDetails, location_name: 'mapIterationFailedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about an iteration of a Map state that failed.</p>"}))
    HistoryEvent.add_member(:map_iteration_aborted_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MapIterationEventDetails, location_name: 'mapIterationAbortedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about an iteration of a Map state that was aborted.</p>"}))
    HistoryEvent.add_member(:lambda_function_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionFailedEventDetails, location_name: 'lambdaFunctionFailedEventDetails'))
    HistoryEvent.add_member(:lambda_function_schedule_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionScheduleFailedEventDetails, location_name: 'lambdaFunctionScheduleFailedEventDetails'))
    HistoryEvent.add_member(:lambda_function_scheduled_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionScheduledEventDetails, location_name: 'lambdaFunctionScheduledEventDetails'))
    HistoryEvent.add_member(:lambda_function_start_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionStartFailedEventDetails, location_name: 'lambdaFunctionStartFailedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a lambda function that failed to start during an execution.</p>"}))
    HistoryEvent.add_member(:lambda_function_succeeded_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionSucceededEventDetails, location_name: 'lambdaFunctionSucceededEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about a Lambda function that terminated successfully during an\n      execution.</p>"}))
    HistoryEvent.add_member(:lambda_function_timed_out_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionTimedOutEventDetails, location_name: 'lambdaFunctionTimedOutEventDetails'))
    HistoryEvent.add_member(:state_entered_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: StateEnteredEventDetails, location_name: 'stateEnteredEventDetails'))
    HistoryEvent.add_member(:state_exited_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: StateExitedEventDetails, location_name: 'stateExitedEventDetails'))
    HistoryEvent.add_member(:map_run_started_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunStartedEventDetails, location_name: 'mapRunStartedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details, such as <code>mapRunArn</code>, and the start date and time of a Map Run. <code>mapRunArn</code> is the Amazon Resource Name (ARN) of the Map Run that was started.</p>"}))
    HistoryEvent.add_member(:map_run_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunFailedEventDetails, location_name: 'mapRunFailedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains error and cause details about a Map Run that failed.</p>"}))
    HistoryEvent.add_member(:map_run_redriven_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunRedrivenEventDetails, location_name: 'mapRunRedrivenEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the redrive attempt of a Map Run.</p>"}))
    HistoryEvent.add_member(:evaluation_failed_event_details, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationFailedEventDetails, location_name: 'evaluationFailedEventDetails', traits: {"smithy.api#documentation" => "<p>Contains details about an evaluation failure that occurred while processing a state.</p>"}))
    HistoryEvent.type = Types::HistoryEvent
    HistoryEventExecutionDataDetails.add_member(:truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Truncated, location_name: 'truncated', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether input or output was truncated in the response. Always <code>false</code>\n      for API calls. In CloudWatch logs, the value will be true if the data is truncated due to size limits.</p>"}))
    HistoryEventExecutionDataDetails.type = Types::HistoryEventExecutionDataDetails
    HistoryEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEvent)
    HistoryEventType.add_member(:activity_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivityFailed', traits: {"smithy.api#enumValue" => "ActivityFailed"}))
    HistoryEventType.add_member(:activity_scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivityScheduled', traits: {"smithy.api#enumValue" => "ActivityScheduled"}))
    HistoryEventType.add_member(:activity_schedule_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivityScheduleFailed', traits: {"smithy.api#enumValue" => "ActivityScheduleFailed"}))
    HistoryEventType.add_member(:activity_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivityStarted', traits: {"smithy.api#enumValue" => "ActivityStarted"}))
    HistoryEventType.add_member(:activity_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivitySucceeded', traits: {"smithy.api#enumValue" => "ActivitySucceeded"}))
    HistoryEventType.add_member(:activity_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivityTimedOut', traits: {"smithy.api#enumValue" => "ActivityTimedOut"}))
    HistoryEventType.add_member(:choice_state_entered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChoiceStateEntered', traits: {"smithy.api#enumValue" => "ChoiceStateEntered"}))
    HistoryEventType.add_member(:choice_state_exited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChoiceStateExited', traits: {"smithy.api#enumValue" => "ChoiceStateExited"}))
    HistoryEventType.add_member(:execution_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecutionAborted', traits: {"smithy.api#enumValue" => "ExecutionAborted"}))
    HistoryEventType.add_member(:execution_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecutionFailed', traits: {"smithy.api#enumValue" => "ExecutionFailed"}))
    HistoryEventType.add_member(:execution_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecutionStarted', traits: {"smithy.api#enumValue" => "ExecutionStarted"}))
    HistoryEventType.add_member(:execution_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecutionSucceeded', traits: {"smithy.api#enumValue" => "ExecutionSucceeded"}))
    HistoryEventType.add_member(:execution_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecutionTimedOut', traits: {"smithy.api#enumValue" => "ExecutionTimedOut"}))
    HistoryEventType.add_member(:fail_state_entered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FailStateEntered', traits: {"smithy.api#enumValue" => "FailStateEntered"}))
    HistoryEventType.add_member(:lambda_function_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaFunctionFailed', traits: {"smithy.api#enumValue" => "LambdaFunctionFailed"}))
    HistoryEventType.add_member(:lambda_function_scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaFunctionScheduled', traits: {"smithy.api#enumValue" => "LambdaFunctionScheduled"}))
    HistoryEventType.add_member(:lambda_function_schedule_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaFunctionScheduleFailed', traits: {"smithy.api#enumValue" => "LambdaFunctionScheduleFailed"}))
    HistoryEventType.add_member(:lambda_function_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaFunctionStarted', traits: {"smithy.api#enumValue" => "LambdaFunctionStarted"}))
    HistoryEventType.add_member(:lambda_function_start_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaFunctionStartFailed', traits: {"smithy.api#enumValue" => "LambdaFunctionStartFailed"}))
    HistoryEventType.add_member(:lambda_function_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaFunctionSucceeded', traits: {"smithy.api#enumValue" => "LambdaFunctionSucceeded"}))
    HistoryEventType.add_member(:lambda_function_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaFunctionTimedOut', traits: {"smithy.api#enumValue" => "LambdaFunctionTimedOut"}))
    HistoryEventType.add_member(:map_iteration_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapIterationAborted', traits: {"smithy.api#enumValue" => "MapIterationAborted"}))
    HistoryEventType.add_member(:map_iteration_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapIterationFailed', traits: {"smithy.api#enumValue" => "MapIterationFailed"}))
    HistoryEventType.add_member(:map_iteration_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapIterationStarted', traits: {"smithy.api#enumValue" => "MapIterationStarted"}))
    HistoryEventType.add_member(:map_iteration_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapIterationSucceeded', traits: {"smithy.api#enumValue" => "MapIterationSucceeded"}))
    HistoryEventType.add_member(:map_state_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapStateAborted', traits: {"smithy.api#enumValue" => "MapStateAborted"}))
    HistoryEventType.add_member(:map_state_entered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapStateEntered', traits: {"smithy.api#enumValue" => "MapStateEntered"}))
    HistoryEventType.add_member(:map_state_exited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapStateExited', traits: {"smithy.api#enumValue" => "MapStateExited"}))
    HistoryEventType.add_member(:map_state_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapStateFailed', traits: {"smithy.api#enumValue" => "MapStateFailed"}))
    HistoryEventType.add_member(:map_state_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapStateStarted', traits: {"smithy.api#enumValue" => "MapStateStarted"}))
    HistoryEventType.add_member(:map_state_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapStateSucceeded', traits: {"smithy.api#enumValue" => "MapStateSucceeded"}))
    HistoryEventType.add_member(:parallel_state_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ParallelStateAborted', traits: {"smithy.api#enumValue" => "ParallelStateAborted"}))
    HistoryEventType.add_member(:parallel_state_entered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ParallelStateEntered', traits: {"smithy.api#enumValue" => "ParallelStateEntered"}))
    HistoryEventType.add_member(:parallel_state_exited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ParallelStateExited', traits: {"smithy.api#enumValue" => "ParallelStateExited"}))
    HistoryEventType.add_member(:parallel_state_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ParallelStateFailed', traits: {"smithy.api#enumValue" => "ParallelStateFailed"}))
    HistoryEventType.add_member(:parallel_state_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ParallelStateStarted', traits: {"smithy.api#enumValue" => "ParallelStateStarted"}))
    HistoryEventType.add_member(:parallel_state_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ParallelStateSucceeded', traits: {"smithy.api#enumValue" => "ParallelStateSucceeded"}))
    HistoryEventType.add_member(:pass_state_entered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PassStateEntered', traits: {"smithy.api#enumValue" => "PassStateEntered"}))
    HistoryEventType.add_member(:pass_state_exited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PassStateExited', traits: {"smithy.api#enumValue" => "PassStateExited"}))
    HistoryEventType.add_member(:succeed_state_entered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SucceedStateEntered', traits: {"smithy.api#enumValue" => "SucceedStateEntered"}))
    HistoryEventType.add_member(:succeed_state_exited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SucceedStateExited', traits: {"smithy.api#enumValue" => "SucceedStateExited"}))
    HistoryEventType.add_member(:task_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskFailed', traits: {"smithy.api#enumValue" => "TaskFailed"}))
    HistoryEventType.add_member(:task_scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskScheduled', traits: {"smithy.api#enumValue" => "TaskScheduled"}))
    HistoryEventType.add_member(:task_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskStarted', traits: {"smithy.api#enumValue" => "TaskStarted"}))
    HistoryEventType.add_member(:task_start_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskStartFailed', traits: {"smithy.api#enumValue" => "TaskStartFailed"}))
    HistoryEventType.add_member(:task_state_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskStateAborted', traits: {"smithy.api#enumValue" => "TaskStateAborted"}))
    HistoryEventType.add_member(:task_state_entered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskStateEntered', traits: {"smithy.api#enumValue" => "TaskStateEntered"}))
    HistoryEventType.add_member(:task_state_exited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskStateExited', traits: {"smithy.api#enumValue" => "TaskStateExited"}))
    HistoryEventType.add_member(:task_submit_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskSubmitFailed', traits: {"smithy.api#enumValue" => "TaskSubmitFailed"}))
    HistoryEventType.add_member(:task_submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskSubmitted', traits: {"smithy.api#enumValue" => "TaskSubmitted"}))
    HistoryEventType.add_member(:task_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskSucceeded', traits: {"smithy.api#enumValue" => "TaskSucceeded"}))
    HistoryEventType.add_member(:task_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TaskTimedOut', traits: {"smithy.api#enumValue" => "TaskTimedOut"}))
    HistoryEventType.add_member(:wait_state_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WaitStateAborted', traits: {"smithy.api#enumValue" => "WaitStateAborted"}))
    HistoryEventType.add_member(:wait_state_entered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WaitStateEntered', traits: {"smithy.api#enumValue" => "WaitStateEntered"}))
    HistoryEventType.add_member(:wait_state_exited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WaitStateExited', traits: {"smithy.api#enumValue" => "WaitStateExited"}))
    HistoryEventType.add_member(:map_run_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapRunAborted', traits: {"smithy.api#enumValue" => "MapRunAborted"}))
    HistoryEventType.add_member(:map_run_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapRunFailed', traits: {"smithy.api#enumValue" => "MapRunFailed"}))
    HistoryEventType.add_member(:map_run_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapRunStarted', traits: {"smithy.api#enumValue" => "MapRunStarted"}))
    HistoryEventType.add_member(:map_run_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapRunSucceeded', traits: {"smithy.api#enumValue" => "MapRunSucceeded"}))
    HistoryEventType.add_member(:execution_redriven, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecutionRedriven', traits: {"smithy.api#enumValue" => "ExecutionRedriven"}))
    HistoryEventType.add_member(:map_run_redriven, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MapRunRedriven', traits: {"smithy.api#enumValue" => "MapRunRedriven"}))
    HistoryEventType.add_member(:evaluation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EvaluationFailed', traits: {"smithy.api#enumValue" => "EvaluationFailed"}))
    IncludedData.add_member(:all_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_DATA', traits: {"smithy.api#enumValue" => "ALL_DATA"}))
    IncludedData.add_member(:metadata_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METADATA_ONLY', traits: {"smithy.api#enumValue" => "METADATA_ONLY"}))
    InspectionData.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The raw state input.</p>"}))
    InspectionData.add_member(:after_arguments, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'afterArguments', traits: {"smithy.api#documentation" => "<p>The input after Step Functions applies an Arguments filter. This event will only be present when QueryLanguage for the state machine or individual states is set to JSONata. For more info, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/data-transform.html\">Transforming data with Step Functions</a>.</p>"}))
    InspectionData.add_member(:after_input_path, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'afterInputPath', traits: {"smithy.api#documentation" => "<p>The input after Step Functions applies the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-inputpath-params.html#input-output-inputpath\">InputPath</a> filter. Not populated when QueryLanguage is JSONata.</p>"}))
    InspectionData.add_member(:after_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'afterParameters', traits: {"smithy.api#documentation" => "<p>The effective input after Step Functions applies the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-inputpath-params.html#input-output-parameters\">Parameters</a> filter. Not populated when QueryLanguage is JSONata.</p>"}))
    InspectionData.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The state's raw result.</p>"}))
    InspectionData.add_member(:after_result_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'afterResultSelector', traits: {"smithy.api#documentation" => "<p>The effective result after Step Functions applies the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-inputpath-params.html#input-output-resultselector\">ResultSelector</a> filter. Not populated when QueryLanguage is JSONata.</p>"}))
    InspectionData.add_member(:after_result_path, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'afterResultPath', traits: {"smithy.api#documentation" => "<p>The effective result combined with the raw state input after Step Functions applies the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-resultpath.html\">ResultPath</a> filter. Not populated when QueryLanguage is JSONata.</p>"}))
    InspectionData.add_member(:request, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectionDataRequest, location_name: 'request', traits: {"smithy.api#documentation" => "<p>The raw HTTP request that is sent when you test an HTTP Task.</p>"}))
    InspectionData.add_member(:response, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectionDataResponse, location_name: 'response', traits: {"smithy.api#documentation" => "<p>The raw HTTP response that is returned when you test an HTTP Task.</p>"}))
    InspectionData.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>JSON string that contains the set of workflow variables after execution of the state. The set will include variables assigned in the state and variables set up as test state input.</p>"}))
    InspectionData.type = Types::InspectionData
    InspectionDataRequest.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol used to make the HTTP request.</p>"}))
    InspectionDataRequest.add_member(:method, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPMethod, location_name: 'method', traits: {"smithy.api#documentation" => "<p>The HTTP method used for the HTTP request.</p>"}))
    InspectionDataRequest.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: URL, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The API endpoint used for the HTTP request.</p>"}))
    InspectionDataRequest.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPHeaders, location_name: 'headers', traits: {"smithy.api#documentation" => "<p>The request headers associated with the HTTP request.</p>"}))
    InspectionDataRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPBody, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The request body for the HTTP request.</p>"}))
    InspectionDataRequest.type = Types::InspectionDataRequest
    InspectionDataResponse.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol used to return the HTTP response.</p>"}))
    InspectionDataResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The HTTP response status code for the HTTP response.</p>"}))
    InspectionDataResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the HTTP status code.</p>"}))
    InspectionDataResponse.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPHeaders, location_name: 'headers', traits: {"smithy.api#documentation" => "<p>The response headers associated with the HTTP response.</p>"}))
    InspectionDataResponse.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: HTTPBody, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The HTTP response returned.</p>"}))
    InspectionDataResponse.type = Types::InspectionDataResponse
    InspectionLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    InspectionLevel.add_member(:debug, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    InspectionLevel.add_member(:trace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACE', traits: {"smithy.api#enumValue" => "TRACE"}))
    InvalidArn.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidArn.type = Types::InvalidArn
    InvalidDefinition.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidDefinition.type = Types::InvalidDefinition
    InvalidEncryptionConfiguration.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidEncryptionConfiguration.type = Types::InvalidEncryptionConfiguration
    InvalidExecutionInput.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidExecutionInput.type = Types::InvalidExecutionInput
    InvalidLoggingConfiguration.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidLoggingConfiguration.type = Types::InvalidLoggingConfiguration
    InvalidName.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidName.type = Types::InvalidName
    InvalidOutput.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidOutput.type = Types::InvalidOutput
    InvalidToken.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidToken.type = Types::InvalidToken
    InvalidTracingConfiguration.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidTracingConfiguration.type = Types::InvalidTracingConfiguration
    KmsAccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    KmsAccessDeniedException.type = Types::KmsAccessDeniedException
    KmsInvalidStateException.add_member(:kms_key_state, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyState, location_name: 'kmsKeyState', traits: {"smithy.api#documentation" => "<p>Current status of the KMS; key. For example: <code>DISABLED</code>, <code>PENDING_DELETION</code>, <code>PENDING_IMPORT</code>, <code>UNAVAILABLE</code>, <code>CREATING</code>.</p>"}))
    KmsInvalidStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    KmsInvalidStateException.type = Types::KmsInvalidStateException
    KmsKeyState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    KmsKeyState.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETION', traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    KmsKeyState.add_member(:pending_import, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_IMPORT', traits: {"smithy.api#enumValue" => "PENDING_IMPORT"}))
    KmsKeyState.add_member(:unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAVAILABLE', traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    KmsKeyState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    KmsThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    KmsThrottlingException.type = Types::KmsThrottlingException
    LambdaFunctionFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    LambdaFunctionFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    LambdaFunctionFailedEventDetails.type = Types::LambdaFunctionFailedEventDetails
    LambdaFunctionScheduleFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    LambdaFunctionScheduleFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    LambdaFunctionScheduleFailedEventDetails.type = Types::LambdaFunctionScheduleFailedEventDetails
    LambdaFunctionScheduledEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the scheduled Lambda function.</p>", "smithy.api#required" => {}}))
    LambdaFunctionScheduledEventDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The JSON data input to the Lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    LambdaFunctionScheduledEventDetails.add_member(:input_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'inputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about input for an execution history event.</p>"}))
    LambdaFunctionScheduledEventDetails.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: 'timeoutInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum allowed duration of the Lambda function.</p>"}))
    LambdaFunctionScheduledEventDetails.add_member(:task_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskCredentials, location_name: 'taskCredentials', traits: {"smithy.api#documentation" => "<p>The credentials that Step Functions uses for the task.</p>"}))
    LambdaFunctionScheduledEventDetails.type = Types::LambdaFunctionScheduledEventDetails
    LambdaFunctionStartFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    LambdaFunctionStartFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    LambdaFunctionStartFailedEventDetails.type = Types::LambdaFunctionStartFailedEventDetails
    LambdaFunctionSucceededEventDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The JSON data output by the Lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    LambdaFunctionSucceededEventDetails.add_member(:output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'outputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the output of an execution history event.</p>"}))
    LambdaFunctionSucceededEventDetails.type = Types::LambdaFunctionSucceededEventDetails
    LambdaFunctionTimedOutEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    LambdaFunctionTimedOutEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the timeout.</p>"}))
    LambdaFunctionTimedOutEventDetails.type = Types::LambdaFunctionTimedOutEventDetails
    ListActivitiesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.\n    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>\n         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"}))
    ListActivitiesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListActivitiesInput.type = Types::ListActivitiesInput
    ListActivitiesOutput.add_member(:activities, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityList, location_name: 'activities', traits: {"smithy.api#documentation" => "<p>The list of activities.</p>", "smithy.api#required" => {}}))
    ListActivitiesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListActivitiesOutput.type = Types::ListActivitiesOutput
    ListExecutionsInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>\n         <p>You can specify either a <code>mapRunArn</code> or a <code>stateMachineArn</code>, but not both.</p>\n         <p>You can also return a list of executions associated with a specific <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html\">alias</a> or <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html\">version</a>, by specifying an alias ARN or a version ARN in the <code>stateMachineArn</code> parameter.</p>"}))
    ListExecutionsInput.add_member(:status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'statusFilter', traits: {"smithy.api#documentation" => "<p>If specified, only list the executions whose current execution status matches the given\n      filter.</p>\n         <p>If you provide a <code>PENDING_REDRIVE</code> statusFilter, you must specify <code>mapRunArn</code>. \n      For more information, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html#redrive-child-workflow-behavior\">Child workflow execution redrive behaviour</a>\n      in the <i>Step Functions Developer Guide</i>.\n    </p>\n         <p>If you provide a stateMachineArn and a <code>PENDING_REDRIVE</code> statusFilter, the API returns a validation exception.</p>"}))
    ListExecutionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.\n    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>\n         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"}))
    ListExecutionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsPageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListExecutionsInput.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Map Run that started the child workflow executions. If the <code>mapRunArn</code> field is specified, a list of all of the child workflow executions started by a Map Run is returned. For more information, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html\">Examining Map Run</a> in the <i>Step Functions Developer Guide</i>.</p>\n         <p>You can specify either a <code>mapRunArn</code> or a <code>stateMachineArn</code>, but not both.</p>"}))
    ListExecutionsInput.add_member(:redrive_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRedriveFilter, location_name: 'redriveFilter', traits: {"smithy.api#documentation" => "<p>Sets a filter to list executions based on whether or not they have been redriven.</p>\n         <p>For a Distributed Map, <code>redriveFilter</code> sets a filter to list child workflow executions based on whether or not they have been redriven.</p>\n         <p>If you do not provide a <code>redriveFilter</code>, Step Functions returns a list of both redriven and non-redriven executions.</p>\n         <p>If you provide a state machine ARN in <code>redriveFilter</code>, the API returns a validation exception.</p>"}))
    ListExecutionsInput.type = Types::ListExecutionsInput
    ListExecutionsOutput.add_member(:executions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionList, location_name: 'executions', traits: {"smithy.api#documentation" => "<p>The list of matching executions.</p>", "smithy.api#required" => {}}))
    ListExecutionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsPageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListExecutionsOutput.type = Types::ListExecutionsOutput
    ListMapRunsInput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the execution for which the Map Runs must be listed.</p>", "smithy.api#required" => {}}))
    ListMapRunsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.\n    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>\n         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"}))
    ListMapRunsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListMapRunsInput.type = Types::ListMapRunsInput
    ListMapRunsOutput.add_member(:map_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunList, location_name: 'mapRuns', traits: {"smithy.api#documentation" => "<p>An array that lists information related to a Map Run, such as the Amazon Resource Name (ARN) of the Map Run and the ARN of the state machine that started the Map Run.</p>", "smithy.api#required" => {}}))
    ListMapRunsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListMapRunsOutput.type = Types::ListMapRunsOutput
    ListStateMachineAliasesInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine for which you want to list aliases.</p>\n         <p>If you specify a state machine version ARN, this API returns a list of aliases for that version.</p>", "smithy.api#required" => {}}))
    ListStateMachineAliasesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListStateMachineAliasesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.\n    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>\n         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"}))
    ListStateMachineAliasesInput.type = Types::ListStateMachineAliasesInput
    ListStateMachineAliasesOutput.add_member(:state_machine_aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineAliasList, location_name: 'stateMachineAliases', traits: {"smithy.api#documentation" => "<p>Aliases for the state machine.</p>", "smithy.api#required" => {}}))
    ListStateMachineAliasesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListStateMachineAliasesOutput.type = Types::ListStateMachineAliasesOutput
    ListStateMachineVersionsInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine.</p>", "smithy.api#required" => {}}))
    ListStateMachineVersionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListStateMachineVersionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.\n    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>\n         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"}))
    ListStateMachineVersionsInput.type = Types::ListStateMachineVersionsInput
    ListStateMachineVersionsOutput.add_member(:state_machine_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineVersionList, location_name: 'stateMachineVersions', traits: {"smithy.api#documentation" => "<p>Versions for the state machine.</p>", "smithy.api#required" => {}}))
    ListStateMachineVersionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListStateMachineVersionsOutput.type = Types::ListStateMachineVersionsOutput
    ListStateMachinesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.\n    The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>\n         <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"}))
    ListStateMachinesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListStateMachinesInput.type = Types::ListStateMachinesInput
    ListStateMachinesOutput.add_member(:state_machines, Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineList, location_name: 'stateMachines', traits: {"smithy.api#required" => {}}))
    ListStateMachinesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.\n    Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"}))
    ListStateMachinesOutput.type = Types::ListStateMachinesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array of tags associated with the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogDestination.add_member(:cloud_watch_logs_log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroup, location_name: 'cloudWatchLogsLogGroup', traits: {"smithy.api#documentation" => "<p>An object describing a CloudWatch log group. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html\">AWS::Logs::LogGroup</a> in the CloudFormation User Guide.</p>"}))
    LogDestination.type = Types::LogDestination
    LogDestinationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestination)
    LogLevel.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    LogLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:fatal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FATAL', traits: {"smithy.api#enumValue" => "FATAL"}))
    LogLevel.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    LoggingConfiguration.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>Defines which category of execution history events are logged.</p>"}))
    LoggingConfiguration.add_member(:include_execution_data, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeExecutionData, location_name: 'includeExecutionData', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Determines whether execution data is included in your log. When set to <code>false</code>,\n      data is excluded.</p>"}))
    LoggingConfiguration.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationList, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>An array of objects that describes where your execution history events will be logged.\n      Limited to size 1. Required, if your log level is not set to <code>OFF</code>.</p>"}))
    LoggingConfiguration.type = Types::LoggingConfiguration
    MapIterationEventDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the iteration’s parent Map state.</p>"}))
    MapIterationEventDetails.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedInteger, location_name: 'index', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The index of the array belonging to the Map state iteration.</p>"}))
    MapIterationEventDetails.type = Types::MapIterationEventDetails
    MapRunExecutionCounts.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'pending', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of child workflow executions that were started by a Map Run, but haven't started executing yet. </p>", "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'running', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of child workflow executions that were started by a Map Run and are currently in-progress.</p>", "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'succeeded', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of child workflow executions that were started by a Map Run and have completed successfully.</p>", "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'failed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of child workflow executions that were started by a Map Run, but have failed.</p>", "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'timedOut', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of child workflow executions that were started by a Map Run and have timed out.</p>", "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'aborted', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of child workflow executions that were started by a Map Run and were running, but were either stopped by the user or by Step Functions because the Map Run failed. </p>", "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'total', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of child workflow executions that were started by a Map Run.</p>", "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:results_written, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'resultsWritten', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Returns the count of child workflow executions whose results were written by <code>ResultWriter</code>. For more information, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-resultwriter.html\">ResultWriter</a> in the <i>Step Functions Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    MapRunExecutionCounts.add_member(:failures_not_redrivable, Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: 'failuresNotRedrivable', traits: {"smithy.api#documentation" => "<p>The number of <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> child workflow executions that cannot be redriven because their execution status is terminal. For example, child workflows with an execution status of <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> and a <code>redriveStatus</code> of <code>NOT_REDRIVABLE</code>.</p>"}))
    MapRunExecutionCounts.add_member(:pending_redrive, Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: 'pendingRedrive', traits: {"smithy.api#documentation" => "<p>The number of unsuccessful child workflow executions currently waiting to be redriven. The status of these child workflow executions could be <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> in the original execution attempt or a previous redrive attempt.</p>"}))
    MapRunExecutionCounts.type = Types::MapRunExecutionCounts
    MapRunFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the Map Run failure.</p>"}))
    MapRunFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    MapRunFailedEventDetails.type = Types::MapRunFailedEventDetails
    MapRunItemCounts.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'pending', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items to process in child workflow executions that haven't started running yet.</p>", "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'running', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items being processed in child workflow executions that are currently in-progress.</p>", "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'succeeded', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items processed in child workflow executions that have completed successfully.</p>", "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'failed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items processed in child workflow executions that have failed.</p>", "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'timedOut', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items processed in child workflow executions that have timed out.</p>", "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'aborted', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items processed in child workflow executions that were either stopped by the user or by Step Functions, because the Map Run failed.</p>", "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'total', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items processed in all the child workflow executions started by a Map Run.</p>", "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:results_written, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLong, location_name: 'resultsWritten', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Returns the count of items whose results were written by <code>ResultWriter</code>. For more information, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-resultwriter.html\">ResultWriter</a> in the <i>Step Functions Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    MapRunItemCounts.add_member(:failures_not_redrivable, Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: 'failuresNotRedrivable', traits: {"smithy.api#documentation" => "<p>The number of <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> items in child workflow executions that cannot be redriven because the execution status of those child workflows is terminal. For example, child workflows with an execution status of <code>FAILED</code>, <code>ABORTED</code>, or <code>TIMED_OUT</code> and a <code>redriveStatus</code> of <code>NOT_REDRIVABLE</code>.</p>"}))
    MapRunItemCounts.add_member(:pending_redrive, Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: 'pendingRedrive', traits: {"smithy.api#documentation" => "<p>The number of unsuccessful items in child workflow executions currently waiting to be redriven.</p>"}))
    MapRunItemCounts.type = Types::MapRunItemCounts
    MapRunList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MapRunListItem)
    MapRunListItem.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The <code>executionArn</code> of the execution from which the Map Run was started.</p>", "smithy.api#required" => {}}))
    MapRunListItem.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Map Run.</p>", "smithy.api#required" => {}}))
    MapRunListItem.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the executed state machine.</p>", "smithy.api#required" => {}}))
    MapRunListItem.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The date on which the Map Run started.</p>", "smithy.api#required" => {}}))
    MapRunListItem.add_member(:stop_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stopDate', traits: {"smithy.api#documentation" => "<p>The date on which the Map Run stopped.</p>"}))
    MapRunListItem.type = Types::MapRunListItem
    MapRunRedrivenEventDetails.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a Map Run that was redriven.</p>"}))
    MapRunRedrivenEventDetails.add_member(:redrive_count, Smithy::Schema::Shapes::ShapeRef.new(shape: RedriveCount, location_name: 'redriveCount', traits: {"smithy.api#documentation" => "<p>The number of times the Map Run has been redriven at this point in the execution's history including this event. The redrive count for a redriven Map Run is always greater than 0.</p>"}))
    MapRunRedrivenEventDetails.type = Types::MapRunRedrivenEventDetails
    MapRunStartedEventDetails.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a Map Run that was started.</p>"}))
    MapRunStartedEventDetails.type = Types::MapRunStartedEventDetails
    MapRunStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    MapRunStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    MapRunStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MapRunStatus.add_member(:aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    MapStateStartedEventDetails.add_member(:length, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedInteger, location_name: 'length', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the array for Map state iterations.</p>"}))
    MapStateStartedEventDetails.type = Types::MapStateStartedEventDetails
    MissingRequiredParameter.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MissingRequiredParameter.type = Types::MissingRequiredParameter
    PublishStateMachineVersionInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine.</p>", "smithy.api#required" => {}}))
    PublishStateMachineVersionInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>Only publish the state machine version if the current state machine's revision ID matches the specified ID.</p>\n         <p>Use this option to avoid publishing a version if the state machine changed since you last\n      updated it. If the specified revision ID doesn't match the state machine's current revision\n      ID, the API returns <code>ConflictException</code>.</p>\n         <note>\n            <p>To specify an initial revision ID for a state machine with no revision ID assigned,\n        specify the string <code>INITIAL</code> for the <code>revisionId</code> parameter. For\n        example, you can specify a <code>revisionID</code> of <code>INITIAL</code> when you create a\n        state machine using the <a>CreateStateMachine</a> API action.</p>\n         </note>"}))
    PublishStateMachineVersionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description of the state machine version.</p>"}))
    PublishStateMachineVersionInput.type = Types::PublishStateMachineVersionInput
    PublishStateMachineVersionOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the version was created.</p>", "smithy.api#required" => {}}))
    PublishStateMachineVersionOutput.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) (ARN) that identifies the state machine version.</p>", "smithy.api#required" => {}}))
    PublishStateMachineVersionOutput.type = Types::PublishStateMachineVersionOutput
    RedriveExecutionInput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the execution to be redriven.</p>", "smithy.api#required" => {}}))
    RedriveExecutionInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency. The API will return idempotent responses for the last 10 client tokens used to successfully redrive the execution. These client tokens are valid for up to 15 minutes after they are first used.</p>", "smithy.api#idempotencyToken" => {}}))
    RedriveExecutionInput.type = Types::RedriveExecutionInput
    RedriveExecutionOutput.add_member(:redrive_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'redriveDate', traits: {"smithy.api#documentation" => "<p>The date the execution was last redriven.</p>", "smithy.api#required" => {}}))
    RedriveExecutionOutput.type = Types::RedriveExecutionOutput
    ResourceNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFound.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceName'))
    ResourceNotFound.type = Types::ResourceNotFound
    RoutingConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfigurationListItem)
    RoutingConfigurationListItem.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies one or two state machine versions defined in the routing configuration.</p>\n         <p>If you specify the ARN of a second version, it must belong to the same state machine as the first version.</p>", "smithy.api#required" => {}}))
    RoutingConfigurationListItem.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionWeight, location_name: 'weight', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage of traffic you want to route to a state machine version. The sum of the\n      weights in the routing configuration must be equal to 100.</p>", "smithy.api#required" => {}}))
    RoutingConfigurationListItem.type = Types::RoutingConfigurationListItem
    SendTaskFailureInput.add_member(:task_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskToken, location_name: 'taskToken', traits: {"smithy.api#documentation" => "<p>The token that represents this task. Task tokens are generated by Step Functions when\n      tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a\n      workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>", "smithy.api#required" => {}}))
    SendTaskFailureInput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    SendTaskFailureInput.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    SendTaskFailureInput.type = Types::SendTaskFailureInput
    SendTaskFailureOutput.type = Types::SendTaskFailureOutput
    SendTaskHeartbeatInput.add_member(:task_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskToken, location_name: 'taskToken', traits: {"smithy.api#documentation" => "<p>The token that represents this task. Task tokens are generated by Step Functions when\n      tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a\n      workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>", "smithy.api#required" => {}}))
    SendTaskHeartbeatInput.type = Types::SendTaskHeartbeatInput
    SendTaskHeartbeatOutput.type = Types::SendTaskHeartbeatOutput
    SendTaskSuccessInput.add_member(:task_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskToken, location_name: 'taskToken', traits: {"smithy.api#documentation" => "<p>The token that represents this task. Task tokens are generated by Step Functions when\n      tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a\n      workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>", "smithy.api#required" => {}}))
    SendTaskSuccessInput.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>", "smithy.api#required" => {}}))
    SendTaskSuccessInput.type = Types::SendTaskSuccessInput
    SendTaskSuccessOutput.type = Types::SendTaskSuccessOutput
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartExecutionInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine to execute.</p>\n         <p>The <code>stateMachineArn</code> parameter accepts one of the following inputs:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>An unqualified state machine ARN</b> – Refers to a state machine ARN that isn't qualified with a version or alias ARN. The following is an example of an unqualified state machine ARN.</p>\n               <p>\n                  <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine></code>\n               </p>\n               <p>Step Functions doesn't associate state machine executions that you start with an unqualified ARN with a version. This is true even if that version uses the same revision that the execution used.</p>\n            </li>\n            <li>\n               <p>\n                  <b>A state machine version ARN</b> – Refers to a version ARN, which is a combination of state machine ARN and the version number separated by a colon (:). The following is an example of the ARN for version 10. </p>\n               <p>\n                  <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>:10</code>\n               </p>\n               <p>Step Functions doesn't associate executions that you start with a version ARN with any aliases that point to that version.</p>\n            </li>\n            <li>\n               <p>\n                  <b>A state machine alias ARN</b> – Refers to an alias ARN, which is a combination of state machine ARN and the alias name separated by a colon (:). The following is an example of the ARN for an alias named <code>PROD</code>.</p>\n               <p>\n                  <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD></code>\n               </p>\n               <p>Step Functions associates executions\n          that you start with an alias ARN with that alias and the state machine version used for\n          that execution.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    StartExecutionInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Optional name of the execution. This name must be unique for your Amazon Web Services account, Region, and state machine for 90 days. For more information,\n    see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions\">\n    Limits Related to State Machine Executions</a> in the <i>Step Functions Developer Guide</i>.</p>\n         <p>If you don't provide a name for the execution, Step Functions automatically generates a universally unique identifier (UUID) as the execution name.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>"}))
    StartExecutionInput.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The string that contains the JSON input data for the execution, for example:</p>\n         <p>\n            <code>\"{\\\"first_name\\\" : \\\"Alejandro\\\"}\"</code>\n         </p>\n         <note>\n            <p>If you don't include any JSON input data, you still must include the two braces, for\n        example: <code>\"{}\"</code>\n            </p>\n         </note>\n         <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    StartExecutionInput.add_member(:trace_header, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceHeader, location_name: 'traceHeader', traits: {"smithy.api#documentation" => "<p>Passes the X-Ray trace header. The trace header can also be passed in the request\n      payload.</p>\n         <note>\n            <p>\n                For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.\n            </p>\n         </note>"}))
    StartExecutionInput.type = Types::StartExecutionInput
    StartExecutionOutput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the execution.</p>", "smithy.api#required" => {}}))
    StartExecutionOutput.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The date the execution is started.</p>", "smithy.api#required" => {}}))
    StartExecutionOutput.type = Types::StartExecutionOutput
    StartSyncExecutionInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine to execute.</p>", "smithy.api#required" => {}}))
    StartSyncExecutionInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the execution.</p>"}))
    StartSyncExecutionInput.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The string that contains the JSON input data for the execution, for example:</p>\n         <p>\n            <code>\"{\\\"first_name\\\" : \\\"Alejandro\\\"}\"</code>\n         </p>\n         <note>\n            <p>If you don't include any JSON input data, you still must include the two braces, for\n        example: <code>\"{}\"</code>\n            </p>\n         </note>\n         <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    StartSyncExecutionInput.add_member(:trace_header, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceHeader, location_name: 'traceHeader', traits: {"smithy.api#documentation" => "<p>Passes the X-Ray trace header. The trace header can also be passed in the request\n      payload.</p>\n         <note>\n            <p>\n                For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.\n            </p>\n         </note>"}))
    StartSyncExecutionInput.add_member(:included_data, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedData, location_name: 'includedData', traits: {"smithy.api#documentation" => "<p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>"}))
    StartSyncExecutionInput.type = Types::StartSyncExecutionInput
    StartSyncExecutionOutput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the execution.</p>", "smithy.api#required" => {}}))
    StartSyncExecutionOutput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the state machine.</p>"}))
    StartSyncExecutionOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the execution.</p>"}))
    StartSyncExecutionOutput.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The date the execution is started.</p>", "smithy.api#required" => {}}))
    StartSyncExecutionOutput.add_member(:stop_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stopDate', traits: {"smithy.api#documentation" => "<p>If the execution has already ended, the date the execution stopped.</p>", "smithy.api#required" => {}}))
    StartSyncExecutionOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the execution.</p>", "smithy.api#required" => {}}))
    StartSyncExecutionOutput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    StartSyncExecutionOutput.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    StartSyncExecutionOutput.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    StartSyncExecutionOutput.add_member(:input_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventsExecutionDataDetails, location_name: 'inputDetails'))
    StartSyncExecutionOutput.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>\n         <note>\n            <p>This field is set only if the execution succeeds. If the execution fails, this field is\n        null.</p>\n         </note>"}))
    StartSyncExecutionOutput.add_member(:output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchEventsExecutionDataDetails, location_name: 'outputDetails'))
    StartSyncExecutionOutput.add_member(:trace_header, Smithy::Schema::Shapes::ShapeRef.new(shape: TraceHeader, location_name: 'traceHeader', traits: {"smithy.api#documentation" => "<p>The X-Ray trace header that was passed to the execution.</p>\n         <note>\n            <p>\n                For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.\n            </p>\n         </note>"}))
    StartSyncExecutionOutput.add_member(:billing_details, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingDetails, location_name: 'billingDetails', traits: {"smithy.api#documentation" => "<p>An object that describes workflow billing details, including billed duration and memory\n      use.</p>"}))
    StartSyncExecutionOutput.type = Types::StartSyncExecutionOutput
    StateEnteredEventDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state.</p>", "smithy.api#required" => {}}))
    StateEnteredEventDetails.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>The string that contains the JSON input data for the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    StateEnteredEventDetails.add_member(:input_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'inputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the input for an execution history event.</p>"}))
    StateEnteredEventDetails.type = Types::StateEnteredEventDetails
    StateExitedEventDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>", "smithy.api#required" => {}}))
    StateExitedEventDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The JSON output data of the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    StateExitedEventDetails.add_member(:output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'outputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the output of an execution history event.</p>"}))
    StateExitedEventDetails.add_member(:assigned_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedVariables, location_name: 'assignedVariables', traits: {"smithy.api#documentation" => "<p>Map of variable name and value as a serialized JSON representation.</p>"}))
    StateExitedEventDetails.add_member(:assigned_variables_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignedVariablesDetails, location_name: 'assignedVariablesDetails', traits: {"smithy.api#documentation" => "<p>Provides details about input or output in an execution history event.</p>"}))
    StateExitedEventDetails.type = Types::StateExitedEventDetails
    StateMachineAliasList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineAliasListItem)
    StateMachineAliasListItem.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies a state machine alias. The alias ARN is a combination of state machine ARN and the alias name separated by a colon (:). For example, <code>stateMachineARN:PROD</code>.</p>", "smithy.api#required" => {}}))
    StateMachineAliasListItem.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date of a state machine alias.</p>", "smithy.api#required" => {}}))
    StateMachineAliasListItem.type = Types::StateMachineAliasListItem
    StateMachineAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    StateMachineAlreadyExists.type = Types::StateMachineAlreadyExists
    StateMachineDeleting.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    StateMachineDeleting.type = Types::StateMachineDeleting
    StateMachineDoesNotExist.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    StateMachineDoesNotExist.type = Types::StateMachineDoesNotExist
    StateMachineLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    StateMachineLimitExceeded.type = Types::StateMachineLimitExceeded
    StateMachineList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineListItem)
    StateMachineListItem.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the state machine.</p>", "smithy.api#required" => {}}))
    StateMachineListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state machine.</p>\n         <p>A name must <i>not</i> contain:</p>\n         <ul>\n            <li>\n               <p>white space</p>\n            </li>\n            <li>\n               <p>brackets <code>< > { } [ ]</code>\n               </p>\n            </li>\n            <li>\n               <p>wildcard characters <code>? *</code>\n               </p>\n            </li>\n            <li>\n               <p>special characters <code>\" # % \\ ^ | ~ ` $ & , ; : /</code>\n               </p>\n            </li>\n            <li>\n               <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>\n            </li>\n            <li>\n               <p>surrogates (<code>U+D800-DFFF</code>)</p>\n            </li>\n            <li>\n               <p>invalid characters (<code> U+10FFFF</code>)</p>\n            </li>\n         </ul>\n         <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>", "smithy.api#required" => {}}))
    StateMachineListItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    StateMachineListItem.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the state machine is created.</p>", "smithy.api#required" => {}}))
    StateMachineListItem.type = Types::StateMachineListItem
    StateMachineStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StateMachineStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    StateMachineType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    StateMachineType.add_member(:express, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPRESS', traits: {"smithy.api#enumValue" => "EXPRESS"}))
    StateMachineTypeNotSupported.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    StateMachineTypeNotSupported.type = Types::StateMachineTypeNotSupported
    StateMachineVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineVersionListItem)
    StateMachineVersionListItem.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies a state machine version. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>", "smithy.api#required" => {}}))
    StateMachineVersionListItem.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date of a state machine version.</p>", "smithy.api#required" => {}}))
    StateMachineVersionListItem.type = Types::StateMachineVersionListItem
    StopExecutionInput.add_member(:execution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'executionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the execution to stop.</p>", "smithy.api#required" => {}}))
    StopExecutionInput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    StopExecutionInput.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    StopExecutionInput.type = Types::StopExecutionInput
    StopExecutionOutput.add_member(:stop_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stopDate', traits: {"smithy.api#documentation" => "<p>The date the execution is stopped.</p>", "smithy.api#required" => {}}))
    StopExecutionOutput.type = Types::StopExecutionOutput
    SyncExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    SyncExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SyncExecutionStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of a tag.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of a tag.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags to add to a resource.</p>\n         <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TaskCredentials.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role that Step Functions assumes for the task. The role can allow cross-account access to resources.</p>"}))
    TaskCredentials.type = Types::TaskCredentials
    TaskDoesNotExist.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TaskDoesNotExist.type = Types::TaskDoesNotExist
    TaskFailedEventDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The service name of the resource in a task state.</p>", "smithy.api#required" => {}}))
    TaskFailedEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The action of the resource called by a task state.</p>", "smithy.api#required" => {}}))
    TaskFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    TaskFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    TaskFailedEventDetails.type = Types::TaskFailedEventDetails
    TaskScheduledEventDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The service name of the resource in a task state.</p>", "smithy.api#required" => {}}))
    TaskScheduledEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The action of the resource called by a task state.</p>", "smithy.api#required" => {}}))
    TaskScheduledEventDetails.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The region of the scheduled task</p>", "smithy.api#required" => {}}))
    TaskScheduledEventDetails.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The JSON data passed to the resource referenced in a task state.\n      Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>", "smithy.api#required" => {}}))
    TaskScheduledEventDetails.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: 'timeoutInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum allowed duration of the task.</p>"}))
    TaskScheduledEventDetails.add_member(:heartbeat_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: 'heartbeatInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum allowed duration between two heartbeats for the task.</p>"}))
    TaskScheduledEventDetails.add_member(:task_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskCredentials, location_name: 'taskCredentials', traits: {"smithy.api#documentation" => "<p>The credentials that Step Functions uses for the task.</p>"}))
    TaskScheduledEventDetails.type = Types::TaskScheduledEventDetails
    TaskStartFailedEventDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The service name of the resource in a task state.</p>", "smithy.api#required" => {}}))
    TaskStartFailedEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The action of the resource called by a task state.</p>", "smithy.api#required" => {}}))
    TaskStartFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    TaskStartFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    TaskStartFailedEventDetails.type = Types::TaskStartFailedEventDetails
    TaskStartedEventDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The service name of the resource in a task state.</p>", "smithy.api#required" => {}}))
    TaskStartedEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The action of the resource called by a task state.</p>", "smithy.api#required" => {}}))
    TaskStartedEventDetails.type = Types::TaskStartedEventDetails
    TaskSubmitFailedEventDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The service name of the resource in a task state.</p>", "smithy.api#required" => {}}))
    TaskSubmitFailedEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The action of the resource called by a task state.</p>", "smithy.api#required" => {}}))
    TaskSubmitFailedEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    TaskSubmitFailedEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    TaskSubmitFailedEventDetails.type = Types::TaskSubmitFailedEventDetails
    TaskSubmittedEventDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The service name of the resource in a task state.</p>", "smithy.api#required" => {}}))
    TaskSubmittedEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The action of the resource called by a task state.</p>", "smithy.api#required" => {}}))
    TaskSubmittedEventDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    TaskSubmittedEventDetails.add_member(:output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'outputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the output of an execution history event.</p>"}))
    TaskSubmittedEventDetails.type = Types::TaskSubmittedEventDetails
    TaskSucceededEventDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The service name of the resource in a task state.</p>", "smithy.api#required" => {}}))
    TaskSucceededEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The action of the resource called by a task state.</p>", "smithy.api#required" => {}}))
    TaskSucceededEventDetails.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The full JSON response from a resource when a task has succeeded. This response becomes\n      the output of the related task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    TaskSucceededEventDetails.add_member(:output_details, Smithy::Schema::Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: 'outputDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the output of an execution history event.</p>"}))
    TaskSucceededEventDetails.type = Types::TaskSucceededEventDetails
    TaskTimedOut.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TaskTimedOut.type = Types::TaskTimedOut
    TaskTimedOutEventDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The service name of the resource in a task state.</p>", "smithy.api#required" => {}}))
    TaskTimedOutEventDetails.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The action of the resource called by a task state.</p>", "smithy.api#required" => {}}))
    TaskTimedOutEventDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error code of the failure.</p>"}))
    TaskTimedOutEventDetails.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A more detailed explanation of the cause of the failure.</p>"}))
    TaskTimedOutEventDetails.type = Types::TaskTimedOutEventDetails
    TestExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TestExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TestExecutionStatus.add_member(:retriable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRIABLE', traits: {"smithy.api#enumValue" => "RETRIABLE"}))
    TestExecutionStatus.add_member(:caught_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAUGHT_ERROR', traits: {"smithy.api#enumValue" => "CAUGHT_ERROR"}))
    TestStateInput.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a> (ASL) definition of the state.</p>", "smithy.api#required" => {}}))
    TestStateInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the execution role with the required IAM permissions for the state.</p>"}))
    TestStateInput.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'input', traits: {"smithy.api#documentation" => "<p>A string that contains the JSON input data for the state.</p>"}))
    TestStateInput.add_member(:inspection_level, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectionLevel, location_name: 'inspectionLevel', traits: {"smithy.api#documentation" => "<p>Determines the values to return when a state is tested. You can specify one of the following types:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INFO</code>: Shows the final state output. By default, Step Functions sets <code>inspectionLevel</code> to <code>INFO</code> if you don't specify a level.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DEBUG</code>: Shows the final state output along with the input and output data processing result.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TRACE</code>: Shows the HTTP request and response for an HTTP Task. This level also shows the final state output along with the input and output data processing result.</p>\n            </li>\n         </ul>\n         <p>Each of these levels also provide information about the status of the state execution and the next state to transition to.</p>"}))
    TestStateInput.add_member(:reveal_secrets, Smithy::Schema::Shapes::ShapeRef.new(shape: RevealSecrets, location_name: 'revealSecrets', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether or not to include secret information in the test result. For HTTP Tasks, a secret includes the data that an EventBridge connection adds to modify the HTTP request headers, query parameters, and body. Step Functions doesn't omit any information included in the state definition or the HTTP response.</p>\n         <p>If you set <code>revealSecrets</code> to <code>true</code>, you must make sure that the IAM user that calls the <code>TestState</code> API has permission for the <code>states:RevealSecrets</code> action. For an example of IAM policy that sets the <code>states:RevealSecrets</code> permission, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-permissions\">IAM permissions to test a state</a>. Without this permission, Step Functions throws an access denied error.</p>\n         <p>By default, <code>revealSecrets</code> is set to <code>false</code>.</p>"}))
    TestStateInput.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>JSON object literal that sets variables used in the state under test. Object keys are the variable names and values are the variable values.</p>"}))
    TestStateInput.type = Types::TestStateInput
    TestStateOutput.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The JSON output data of the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"}))
    TestStateOutput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error returned when the execution of a state fails.</p>"}))
    TestStateOutput.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveCause, location_name: 'cause', traits: {"smithy.api#documentation" => "<p>A detailed explanation of the cause for the error when the execution of a state fails.</p>"}))
    TestStateOutput.add_member(:inspection_data, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectionData, location_name: 'inspectionData', traits: {"smithy.api#documentation" => "<p>Returns additional details about the state's execution, including its input and output data processing flow, and HTTP request and response information. The <code>inspectionLevel</code> request parameter specifies which details are returned.</p>"}))
    TestStateOutput.add_member(:next_state, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'nextState', traits: {"smithy.api#documentation" => "<p>The name of the next state to transition to. If you haven't defined a next state in your definition or if the execution of the state fails, this field doesn't contain a value.</p>"}))
    TestStateOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TestExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The execution status of the state.</p>"}))
    TestStateOutput.type = Types::TestStateOutput
    TooManyTags.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTags.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceName'))
    TooManyTags.type = Types::TooManyTags
    TracingConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to <code>true</code>, X-Ray tracing is enabled.</p>"}))
    TracingConfiguration.type = Types::TracingConfiguration
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The list of tags to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateMapRunInput.add_member(:map_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'mapRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a Map Run.</p>", "smithy.api#required" => {}}))
    UpdateMapRunInput.add_member(:max_concurrency, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: 'maxConcurrency', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of child workflow executions that can be specified to run in parallel for the Map Run at the same time.</p>"}))
    UpdateMapRunInput.add_member(:tolerated_failure_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ToleratedFailurePercentage, location_name: 'toleratedFailurePercentage', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum percentage of failed items before the Map Run fails.</p>"}))
    UpdateMapRunInput.add_member(:tolerated_failure_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ToleratedFailureCount, location_name: 'toleratedFailureCount', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of failed items before the Map Run fails.</p>"}))
    UpdateMapRunInput.type = Types::UpdateMapRunInput
    UpdateMapRunOutput.type = Types::UpdateMapRunOutput
    UpdateStateMachineAliasInput.add_member(:state_machine_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineAliasArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine alias.</p>", "smithy.api#required" => {}}))
    UpdateStateMachineAliasInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the state machine alias.</p>"}))
    UpdateStateMachineAliasInput.add_member(:routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingConfigurationList, location_name: 'routingConfiguration', traits: {"smithy.api#documentation" => "<p>The routing configuration of the state machine alias.</p>\n         <p>An array of <code>RoutingConfig</code> objects that specifies up to two state machine versions that the alias starts executions for.</p>"}))
    UpdateStateMachineAliasInput.type = Types::UpdateStateMachineAliasInput
    UpdateStateMachineAliasOutput.add_member(:update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updateDate', traits: {"smithy.api#documentation" => "<p>The date and time the state machine alias was updated.</p>", "smithy.api#required" => {}}))
    UpdateStateMachineAliasOutput.type = Types::UpdateStateMachineAliasOutput
    UpdateStateMachineInput.add_member(:state_machine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state machine.</p>", "smithy.api#required" => {}}))
    UpdateStateMachineInput.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"}))
    UpdateStateMachineInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role of the state machine.</p>"}))
    UpdateStateMachineInput.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'loggingConfiguration', traits: {"smithy.api#documentation" => "<p>Use the <code>LoggingConfiguration</code> data type to set CloudWatch Logs\n      options.</p>"}))
    UpdateStateMachineInput.add_member(:tracing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: 'tracingConfiguration', traits: {"smithy.api#documentation" => "<p>Selects whether X-Ray tracing is enabled.</p>"}))
    UpdateStateMachineInput.add_member(:publish, Smithy::Schema::Shapes::ShapeRef.new(shape: Publish, location_name: 'publish', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the state machine version is published. The default is\n        <code>false</code>. To publish a version after updating the state machine, set\n        <code>publish</code> to <code>true</code>.</p>"}))
    UpdateStateMachineInput.add_member(:version_description, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDescription, location_name: 'versionDescription', traits: {"smithy.api#documentation" => "<p>An optional description of the state machine version to publish.</p>\n         <p>You can only specify the <code>versionDescription</code> parameter if you've set <code>publish</code> to <code>true</code>.</p>"}))
    UpdateStateMachineInput.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Settings to configure server-side encryption. </p>"}))
    UpdateStateMachineInput.type = Types::UpdateStateMachineInput
    UpdateStateMachineOutput.add_member(:update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updateDate', traits: {"smithy.api#documentation" => "<p>The date and time the state machine was updated.</p>", "smithy.api#required" => {}}))
    UpdateStateMachineOutput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision identifier for the updated state machine.</p>"}))
    UpdateStateMachineOutput.add_member(:state_machine_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'stateMachineVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the published state machine version.</p>\n         <p>If the <code>publish</code> parameter isn't set to <code>true</code>, this field returns null.</p>"}))
    UpdateStateMachineOutput.type = Types::UpdateStateMachineOutput
    ValidateStateMachineDefinitionDiagnostic.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionSeverity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>A value of <code>ERROR</code> means that you cannot create or update a state machine with this definition.</p>\n         <p>\n            <code>WARNING</code> level diagnostics alert you to potential issues, but they will not prevent you from creating or updating your state machine.</p>", "smithy.api#required" => {}}))
    ValidateStateMachineDefinitionDiagnostic.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Identifying code for the diagnostic.</p>", "smithy.api#required" => {}}))
    ValidateStateMachineDefinitionDiagnostic.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Message describing the diagnostic condition.</p>", "smithy.api#required" => {}}))
    ValidateStateMachineDefinitionDiagnostic.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Location of the issue in the state machine, if available.</p>\n         <p>For errors specific to a field, the location could be in the format: <code>/States/<StateName>/<FieldName></code>, for example: <code>/States/FailState/ErrorPath</code>.</p>"}))
    ValidateStateMachineDefinitionDiagnostic.type = Types::ValidateStateMachineDefinitionDiagnostic
    ValidateStateMachineDefinitionDiagnosticList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionDiagnostic)
    ValidateStateMachineDefinitionInput.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The Amazon States Language definition of the state machine. For more information, see\n            <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a> (ASL).</p>", "smithy.api#required" => {}}))
    ValidateStateMachineDefinitionInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The target type of state machine for this definition. The default is <code>STANDARD</code>.</p>"}))
    ValidateStateMachineDefinitionInput.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionSeverity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>Minimum level of diagnostics to return. <code>ERROR</code> returns only <code>ERROR</code> diagnostics, whereas <code>WARNING</code> returns both <code>WARNING</code> and <code>ERROR</code> diagnostics. The default is <code>ERROR</code>. </p>"}))
    ValidateStateMachineDefinitionInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionMaxResult, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of diagnostics that are returned per call. The default and maximum value is 100. Setting the value to 0 will also use the default of 100.</p>\n         <p>If the number of diagnostics returned in the response exceeds <code>maxResults</code>, the value of the <code>truncated</code> field in the response will be set to <code>true</code>.</p>"}))
    ValidateStateMachineDefinitionInput.type = Types::ValidateStateMachineDefinitionInput
    ValidateStateMachineDefinitionOutput.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionResultCode, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The result value will be <code>OK</code> when no syntax errors are found, or\n                <code>FAIL</code> if the workflow definition does not pass verification.</p>", "smithy.api#required" => {}}))
    ValidateStateMachineDefinitionOutput.add_member(:diagnostics, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionDiagnosticList, location_name: 'diagnostics', traits: {"smithy.api#documentation" => "<p>An array of diagnostic errors and warnings found during validation of the state machine definition. Since <b>warnings</b> do not prevent deploying your workflow definition, the <b>result</b> value could be <code>OK</code> even when warning diagnostics are present in the response.</p>", "smithy.api#required" => {}}))
    ValidateStateMachineDefinitionOutput.add_member(:truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionTruncated, location_name: 'truncated', traits: {"smithy.api#documentation" => "<p>The result value will be <code>true</code> if the number of diagnostics found in the workflow definition exceeds <code>maxResults</code>. When all diagnostics results are returned, the value will be <code>false</code>.</p>"}))
    ValidateStateMachineDefinitionOutput.type = Types::ValidateStateMachineDefinitionOutput
    ValidateStateMachineDefinitionResultCode.add_member(:ok, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OK', traits: {"smithy.api#enumValue" => "OK"}))
    ValidateStateMachineDefinitionResultCode.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "FAIL"}))
    ValidateStateMachineDefinitionSeverity.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ValidateStateMachineDefinitionSeverity.add_member(:warning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING', traits: {"smithy.api#enumValue" => "WARNING"}))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The input does not satisfy the constraints specified by an Amazon Web Services service.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:api_does_not_support_labeled_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_DOES_NOT_SUPPORT_LABELED_ARNS', traits: {"smithy.api#enumValue" => "API_DOES_NOT_SUPPORT_LABELED_ARNS"}))
    ValidationExceptionReason.add_member(:missing_required_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_REQUIRED_PARAMETER', traits: {"smithy.api#enumValue" => "MISSING_REQUIRED_PARAMETER"}))
    ValidationExceptionReason.add_member(:cannot_update_completed_map_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_UPDATE_COMPLETED_MAP_RUN', traits: {"smithy.api#enumValue" => "CANNOT_UPDATE_COMPLETED_MAP_RUN"}))
    ValidationExceptionReason.add_member(:invalid_routing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ROUTING_CONFIGURATION', traits: {"smithy.api#enumValue" => "INVALID_ROUTING_CONFIGURATION"}))
    VariableNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName)
    VariableReferences.key = Smithy::Schema::Shapes::ShapeRef.new(shape: StateName)
    VariableReferences.value = Smithy::Schema::Shapes::ShapeRef.new(shape: VariableNameList)

    AWSStepFunctions = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sfn#AWSStepFunctions"
      service.name = "AWSStepFunctions"
      service.version = "2016-11-23"
      service.traits = {"aws.api#service" => {"sdkId" => "SFN", "arnNamespace" => "states", "cloudFormationName" => "StepFunctions", "cloudTrailEventSource" => "states.amazonaws.com", "docId" => "states-2016-11-23", "endpointPrefix" => "states"}, "aws.auth#sigv4" => {"name" => "states"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Step Functions", "smithy.api#xmlNamespace" => {"uri" => "http://swf.amazonaws.com/doc/2015-07-20/"}}
      service.add_operation(:create_activity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#CreateActivity"
        operation.name = "CreateActivity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateActivityInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateActivityOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncryptionConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidName)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTags)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_state_machine, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#CreateStateMachine"
        operation.name = "CreateStateMachine"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStateMachineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStateMachineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDefinition)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncryptionConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoggingConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidName)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTracingConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDeleting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineTypeNotSupported)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTags)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_state_machine_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#CreateStateMachineAlias"
        operation.name = "CreateStateMachineAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStateMachineAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStateMachineAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidName)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDeleting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_activity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DeleteActivity"
        operation.name = "DeleteActivity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteActivityInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteActivityOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.traits = {}
      end)
      service.add_operation(:delete_state_machine, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DeleteStateMachine"
        operation.name = "DeleteStateMachine"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStateMachineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStateMachineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_state_machine_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DeleteStateMachineAlias"
        operation.name = "DeleteStateMachineAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStateMachineAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStateMachineAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_state_machine_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DeleteStateMachineVersion"
        operation.name = "DeleteStateMachineVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStateMachineVersionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStateMachineVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_activity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeActivity"
        operation.name = "DescribeActivity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeActivityInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeActivityOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.traits = {}
      end)
      service.add_operation(:describe_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeExecution"
        operation.name = "DescribeExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_map_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeMapRun"
        operation.name = "DescribeMapRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMapRunInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMapRunOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.traits = {}
      end)
      service.add_operation(:describe_state_machine, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeStateMachine"
        operation.name = "DescribeStateMachine"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStateMachineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStateMachineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        operation.traits = {}
      end)
      service.add_operation(:describe_state_machine_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeStateMachineAlias"
        operation.name = "DescribeStateMachineAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStateMachineAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStateMachineAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_state_machine_for_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#DescribeStateMachineForExecution"
        operation.name = "DescribeStateMachineForExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStateMachineForExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStateMachineForExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_activity_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#GetActivityTask"
        operation.name = "GetActivityTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetActivityTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetActivityTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityWorkerLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_execution_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#GetExecutionHistory"
        operation.name = "GetExecutionHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExecutionHistoryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExecutionHistoryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetExecutionHistory.new
      end)
      service.add_operation(:list_activities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListActivities"
        operation.name = "ListActivities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActivitiesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActivitiesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListActivitiesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListActivities.new
      end)
      service.add_operation(:list_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineTypeNotSupported)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_map_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListMapRuns"
        operation.name = "ListMapRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMapRunsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMapRunsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.traits = {}
        operation[:paginator] = Paginators::ListMapRuns.new
      end)
      service.add_operation(:list_state_machine_aliases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListStateMachineAliases"
        operation.name = "ListStateMachineAliases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateMachineAliasesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateMachineAliasesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDeleting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        operation.traits = {}
      end)
      service.add_operation(:list_state_machine_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListStateMachineVersions"
        operation.name = "ListStateMachineVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateMachineVersionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateMachineVersionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_state_machines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListStateMachines"
        operation.name = "ListStateMachines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateMachinesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateMachinesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.traits = {}
        operation[:paginator] = Paginators::ListStateMachines.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.traits = {}
      end)
      service.add_operation(:publish_state_machine_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#PublishStateMachineVersion"
        operation.name = "PublishStateMachineVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishStateMachineVersionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishStateMachineVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDeleting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:redrive_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#RedriveExecution"
        operation.name = "RedriveExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RedriveExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RedriveExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNotRedrivable)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_task_failure, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#SendTaskFailure"
        operation.name = "SendTaskFailure"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTaskFailureInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTaskFailureOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimedOut)
        operation.traits = {}
      end)
      service.add_operation(:send_task_heartbeat, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#SendTaskHeartbeat"
        operation.name = "SendTaskHeartbeat"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTaskHeartbeatInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTaskHeartbeatOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimedOut)
        operation.traits = {}
      end)
      service.add_operation(:send_task_success, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#SendTaskSuccess"
        operation.name = "SendTaskSuccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTaskSuccessInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTaskSuccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidToken)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimedOut)
        operation.traits = {}
      end)
      service.add_operation(:start_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#StartExecution"
        operation.name = "StartExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidExecutionInput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidName)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDeleting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_sync_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#StartSyncExecution"
        operation.name = "StartSyncExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSyncExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSyncExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidExecutionInput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidName)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDeleting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineTypeNotSupported)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "sync-"}}
      end)
      service.add_operation(:stop_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#StopExecution"
        operation.name = "StopExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTags)
        operation.traits = {}
      end)
      service.add_operation(:test_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#TestState"
        operation.name = "TestState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestStateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestStateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDefinition)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidExecutionInput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "sync-"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.traits = {}
      end)
      service.add_operation(:update_map_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#UpdateMapRun"
        operation.name = "UpdateMapRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMapRunInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMapRunOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_state_machine, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#UpdateStateMachine"
        operation.name = "UpdateStateMachine"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStateMachineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStateMachineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDefinition)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEncryptionConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoggingConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTracingConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameter)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDeleting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_state_machine_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#UpdateStateMachineAlias"
        operation.name = "UpdateStateMachineAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStateMachineAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStateMachineAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArn)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StateMachineDeleting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:validate_state_machine_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sfn#ValidateStateMachineDefinition"
        operation.name = "ValidateStateMachineDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
