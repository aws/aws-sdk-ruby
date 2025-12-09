# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::States
  # @api private
  module ClientApi

    include Seahorse::Model

    ActivityAlreadyExists = Shapes::StructureShape.new(name: 'ActivityAlreadyExists')
    ActivityDoesNotExist = Shapes::StructureShape.new(name: 'ActivityDoesNotExist')
    ActivityFailedEventDetails = Shapes::StructureShape.new(name: 'ActivityFailedEventDetails')
    ActivityLimitExceeded = Shapes::StructureShape.new(name: 'ActivityLimitExceeded')
    ActivityList = Shapes::ListShape.new(name: 'ActivityList')
    ActivityListItem = Shapes::StructureShape.new(name: 'ActivityListItem')
    ActivityScheduleFailedEventDetails = Shapes::StructureShape.new(name: 'ActivityScheduleFailedEventDetails')
    ActivityScheduledEventDetails = Shapes::StructureShape.new(name: 'ActivityScheduledEventDetails')
    ActivityStartedEventDetails = Shapes::StructureShape.new(name: 'ActivityStartedEventDetails')
    ActivitySucceededEventDetails = Shapes::StructureShape.new(name: 'ActivitySucceededEventDetails')
    ActivityTimedOutEventDetails = Shapes::StructureShape.new(name: 'ActivityTimedOutEventDetails')
    ActivityWorkerLimitExceeded = Shapes::StructureShape.new(name: 'ActivityWorkerLimitExceeded')
    AliasDescription = Shapes::StringShape.new(name: 'AliasDescription')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssignedVariables = Shapes::MapShape.new(name: 'AssignedVariables')
    AssignedVariablesDetails = Shapes::StructureShape.new(name: 'AssignedVariablesDetails')
    BilledDuration = Shapes::IntegerShape.new(name: 'BilledDuration')
    BilledMemoryUsed = Shapes::IntegerShape.new(name: 'BilledMemoryUsed')
    BillingDetails = Shapes::StructureShape.new(name: 'BillingDetails')
    CharacterRestrictedName = Shapes::StringShape.new(name: 'CharacterRestrictedName')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchEventsExecutionDataDetails = Shapes::StructureShape.new(name: 'CloudWatchEventsExecutionDataDetails')
    CloudWatchLogsLogGroup = Shapes::StructureShape.new(name: 'CloudWatchLogsLogGroup')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectorParameters = Shapes::StringShape.new(name: 'ConnectorParameters')
    CreateActivityInput = Shapes::StructureShape.new(name: 'CreateActivityInput')
    CreateActivityOutput = Shapes::StructureShape.new(name: 'CreateActivityOutput')
    CreateStateMachineAliasInput = Shapes::StructureShape.new(name: 'CreateStateMachineAliasInput')
    CreateStateMachineAliasOutput = Shapes::StructureShape.new(name: 'CreateStateMachineAliasOutput')
    CreateStateMachineInput = Shapes::StructureShape.new(name: 'CreateStateMachineInput')
    CreateStateMachineOutput = Shapes::StructureShape.new(name: 'CreateStateMachineOutput')
    Definition = Shapes::StringShape.new(name: 'Definition')
    DeleteActivityInput = Shapes::StructureShape.new(name: 'DeleteActivityInput')
    DeleteActivityOutput = Shapes::StructureShape.new(name: 'DeleteActivityOutput')
    DeleteStateMachineAliasInput = Shapes::StructureShape.new(name: 'DeleteStateMachineAliasInput')
    DeleteStateMachineAliasOutput = Shapes::StructureShape.new(name: 'DeleteStateMachineAliasOutput')
    DeleteStateMachineInput = Shapes::StructureShape.new(name: 'DeleteStateMachineInput')
    DeleteStateMachineOutput = Shapes::StructureShape.new(name: 'DeleteStateMachineOutput')
    DeleteStateMachineVersionInput = Shapes::StructureShape.new(name: 'DeleteStateMachineVersionInput')
    DeleteStateMachineVersionOutput = Shapes::StructureShape.new(name: 'DeleteStateMachineVersionOutput')
    DescribeActivityInput = Shapes::StructureShape.new(name: 'DescribeActivityInput')
    DescribeActivityOutput = Shapes::StructureShape.new(name: 'DescribeActivityOutput')
    DescribeExecutionInput = Shapes::StructureShape.new(name: 'DescribeExecutionInput')
    DescribeExecutionOutput = Shapes::StructureShape.new(name: 'DescribeExecutionOutput')
    DescribeMapRunInput = Shapes::StructureShape.new(name: 'DescribeMapRunInput')
    DescribeMapRunOutput = Shapes::StructureShape.new(name: 'DescribeMapRunOutput')
    DescribeStateMachineAliasInput = Shapes::StructureShape.new(name: 'DescribeStateMachineAliasInput')
    DescribeStateMachineAliasOutput = Shapes::StructureShape.new(name: 'DescribeStateMachineAliasOutput')
    DescribeStateMachineForExecutionInput = Shapes::StructureShape.new(name: 'DescribeStateMachineForExecutionInput')
    DescribeStateMachineForExecutionOutput = Shapes::StructureShape.new(name: 'DescribeStateMachineForExecutionOutput')
    DescribeStateMachineInput = Shapes::StructureShape.new(name: 'DescribeStateMachineInput')
    DescribeStateMachineOutput = Shapes::StructureShape.new(name: 'DescribeStateMachineOutput')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluationFailedEventDetails = Shapes::StructureShape.new(name: 'EvaluationFailedEventDetails')
    EvaluationFailureLocation = Shapes::StringShape.new(name: 'EvaluationFailureLocation')
    EventId = Shapes::IntegerShape.new(name: 'EventId')
    ExceptionHandlerIndex = Shapes::IntegerShape.new(name: 'ExceptionHandlerIndex')
    ExecutionAbortedEventDetails = Shapes::StructureShape.new(name: 'ExecutionAbortedEventDetails')
    ExecutionAlreadyExists = Shapes::StructureShape.new(name: 'ExecutionAlreadyExists')
    ExecutionDoesNotExist = Shapes::StructureShape.new(name: 'ExecutionDoesNotExist')
    ExecutionFailedEventDetails = Shapes::StructureShape.new(name: 'ExecutionFailedEventDetails')
    ExecutionLimitExceeded = Shapes::StructureShape.new(name: 'ExecutionLimitExceeded')
    ExecutionList = Shapes::ListShape.new(name: 'ExecutionList')
    ExecutionListItem = Shapes::StructureShape.new(name: 'ExecutionListItem')
    ExecutionNotRedrivable = Shapes::StructureShape.new(name: 'ExecutionNotRedrivable')
    ExecutionRedriveFilter = Shapes::StringShape.new(name: 'ExecutionRedriveFilter')
    ExecutionRedriveStatus = Shapes::StringShape.new(name: 'ExecutionRedriveStatus')
    ExecutionRedrivenEventDetails = Shapes::StructureShape.new(name: 'ExecutionRedrivenEventDetails')
    ExecutionStartedEventDetails = Shapes::StructureShape.new(name: 'ExecutionStartedEventDetails')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExecutionSucceededEventDetails = Shapes::StructureShape.new(name: 'ExecutionSucceededEventDetails')
    ExecutionTimedOutEventDetails = Shapes::StructureShape.new(name: 'ExecutionTimedOutEventDetails')
    GetActivityTaskInput = Shapes::StructureShape.new(name: 'GetActivityTaskInput')
    GetActivityTaskOutput = Shapes::StructureShape.new(name: 'GetActivityTaskOutput')
    GetExecutionHistoryInput = Shapes::StructureShape.new(name: 'GetExecutionHistoryInput')
    GetExecutionHistoryOutput = Shapes::StructureShape.new(name: 'GetExecutionHistoryOutput')
    HTTPBody = Shapes::StringShape.new(name: 'HTTPBody')
    HTTPHeaders = Shapes::StringShape.new(name: 'HTTPHeaders')
    HTTPMethod = Shapes::StringShape.new(name: 'HTTPMethod')
    HTTPProtocol = Shapes::StringShape.new(name: 'HTTPProtocol')
    HTTPStatusCode = Shapes::StringShape.new(name: 'HTTPStatusCode')
    HTTPStatusMessage = Shapes::StringShape.new(name: 'HTTPStatusMessage')
    HistoryEvent = Shapes::StructureShape.new(name: 'HistoryEvent')
    HistoryEventExecutionDataDetails = Shapes::StructureShape.new(name: 'HistoryEventExecutionDataDetails')
    HistoryEventList = Shapes::ListShape.new(name: 'HistoryEventList')
    HistoryEventType = Shapes::StringShape.new(name: 'HistoryEventType')
    Identity = Shapes::StringShape.new(name: 'Identity')
    IncludeExecutionData = Shapes::BooleanShape.new(name: 'IncludeExecutionData')
    IncludeExecutionDataGetExecutionHistory = Shapes::BooleanShape.new(name: 'IncludeExecutionDataGetExecutionHistory')
    IncludedData = Shapes::StringShape.new(name: 'IncludedData')
    InspectionData = Shapes::StructureShape.new(name: 'InspectionData')
    InspectionDataRequest = Shapes::StructureShape.new(name: 'InspectionDataRequest')
    InspectionDataResponse = Shapes::StructureShape.new(name: 'InspectionDataResponse')
    InspectionErrorDetails = Shapes::StructureShape.new(name: 'InspectionErrorDetails')
    InspectionLevel = Shapes::StringShape.new(name: 'InspectionLevel')
    InspectionMaxConcurrency = Shapes::IntegerShape.new(name: 'InspectionMaxConcurrency')
    InspectionToleratedFailureCount = Shapes::IntegerShape.new(name: 'InspectionToleratedFailureCount')
    InspectionToleratedFailurePercentage = Shapes::FloatShape.new(name: 'InspectionToleratedFailurePercentage')
    InvalidArn = Shapes::StructureShape.new(name: 'InvalidArn')
    InvalidDefinition = Shapes::StructureShape.new(name: 'InvalidDefinition')
    InvalidEncryptionConfiguration = Shapes::StructureShape.new(name: 'InvalidEncryptionConfiguration')
    InvalidExecutionInput = Shapes::StructureShape.new(name: 'InvalidExecutionInput')
    InvalidLoggingConfiguration = Shapes::StructureShape.new(name: 'InvalidLoggingConfiguration')
    InvalidName = Shapes::StructureShape.new(name: 'InvalidName')
    InvalidOutput = Shapes::StructureShape.new(name: 'InvalidOutput')
    InvalidToken = Shapes::StructureShape.new(name: 'InvalidToken')
    InvalidTracingConfiguration = Shapes::StructureShape.new(name: 'InvalidTracingConfiguration')
    KmsAccessDeniedException = Shapes::StructureShape.new(name: 'KmsAccessDeniedException')
    KmsDataKeyReusePeriodSeconds = Shapes::IntegerShape.new(name: 'KmsDataKeyReusePeriodSeconds')
    KmsInvalidStateException = Shapes::StructureShape.new(name: 'KmsInvalidStateException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    KmsKeyState = Shapes::StringShape.new(name: 'KmsKeyState')
    KmsThrottlingException = Shapes::StructureShape.new(name: 'KmsThrottlingException')
    LambdaFunctionFailedEventDetails = Shapes::StructureShape.new(name: 'LambdaFunctionFailedEventDetails')
    LambdaFunctionScheduleFailedEventDetails = Shapes::StructureShape.new(name: 'LambdaFunctionScheduleFailedEventDetails')
    LambdaFunctionScheduledEventDetails = Shapes::StructureShape.new(name: 'LambdaFunctionScheduledEventDetails')
    LambdaFunctionStartFailedEventDetails = Shapes::StructureShape.new(name: 'LambdaFunctionStartFailedEventDetails')
    LambdaFunctionSucceededEventDetails = Shapes::StructureShape.new(name: 'LambdaFunctionSucceededEventDetails')
    LambdaFunctionTimedOutEventDetails = Shapes::StructureShape.new(name: 'LambdaFunctionTimedOutEventDetails')
    ListActivitiesInput = Shapes::StructureShape.new(name: 'ListActivitiesInput')
    ListActivitiesOutput = Shapes::StructureShape.new(name: 'ListActivitiesOutput')
    ListExecutionsInput = Shapes::StructureShape.new(name: 'ListExecutionsInput')
    ListExecutionsOutput = Shapes::StructureShape.new(name: 'ListExecutionsOutput')
    ListExecutionsPageToken = Shapes::StringShape.new(name: 'ListExecutionsPageToken')
    ListMapRunsInput = Shapes::StructureShape.new(name: 'ListMapRunsInput')
    ListMapRunsOutput = Shapes::StructureShape.new(name: 'ListMapRunsOutput')
    ListStateMachineAliasesInput = Shapes::StructureShape.new(name: 'ListStateMachineAliasesInput')
    ListStateMachineAliasesOutput = Shapes::StructureShape.new(name: 'ListStateMachineAliasesOutput')
    ListStateMachineVersionsInput = Shapes::StructureShape.new(name: 'ListStateMachineVersionsInput')
    ListStateMachineVersionsOutput = Shapes::StructureShape.new(name: 'ListStateMachineVersionsOutput')
    ListStateMachinesInput = Shapes::StructureShape.new(name: 'ListStateMachinesInput')
    ListStateMachinesOutput = Shapes::StructureShape.new(name: 'ListStateMachinesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    LogDestination = Shapes::StructureShape.new(name: 'LogDestination')
    LogDestinationList = Shapes::ListShape.new(name: 'LogDestinationList')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    LongArn = Shapes::StringShape.new(name: 'LongArn')
    LongObject = Shapes::IntegerShape.new(name: 'LongObject')
    MapIterationEventDetails = Shapes::StructureShape.new(name: 'MapIterationEventDetails')
    MapIterationFailureCount = Shapes::IntegerShape.new(name: 'MapIterationFailureCount')
    MapRunExecutionCounts = Shapes::StructureShape.new(name: 'MapRunExecutionCounts')
    MapRunFailedEventDetails = Shapes::StructureShape.new(name: 'MapRunFailedEventDetails')
    MapRunItemCounts = Shapes::StructureShape.new(name: 'MapRunItemCounts')
    MapRunLabel = Shapes::StringShape.new(name: 'MapRunLabel')
    MapRunList = Shapes::ListShape.new(name: 'MapRunList')
    MapRunListItem = Shapes::StructureShape.new(name: 'MapRunListItem')
    MapRunRedrivenEventDetails = Shapes::StructureShape.new(name: 'MapRunRedrivenEventDetails')
    MapRunStartedEventDetails = Shapes::StructureShape.new(name: 'MapRunStartedEventDetails')
    MapRunStatus = Shapes::StringShape.new(name: 'MapRunStatus')
    MapStateStartedEventDetails = Shapes::StructureShape.new(name: 'MapStateStartedEventDetails')
    MaxConcurrency = Shapes::IntegerShape.new(name: 'MaxConcurrency')
    MissingRequiredParameter = Shapes::StructureShape.new(name: 'MissingRequiredParameter')
    MockErrorOutput = Shapes::StructureShape.new(name: 'MockErrorOutput')
    MockInput = Shapes::StructureShape.new(name: 'MockInput')
    MockResponseValidationMode = Shapes::StringShape.new(name: 'MockResponseValidationMode')
    Name = Shapes::StringShape.new(name: 'Name')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    Publish = Shapes::BooleanShape.new(name: 'Publish')
    PublishStateMachineVersionInput = Shapes::StructureShape.new(name: 'PublishStateMachineVersionInput')
    PublishStateMachineVersionOutput = Shapes::StructureShape.new(name: 'PublishStateMachineVersionOutput')
    RedriveCount = Shapes::IntegerShape.new(name: 'RedriveCount')
    RedriveExecutionInput = Shapes::StructureShape.new(name: 'RedriveExecutionInput')
    RedriveExecutionOutput = Shapes::StructureShape.new(name: 'RedriveExecutionOutput')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    RetrierRetryCount = Shapes::IntegerShape.new(name: 'RetrierRetryCount')
    RetryBackoffIntervalSeconds = Shapes::IntegerShape.new(name: 'RetryBackoffIntervalSeconds')
    RevealSecrets = Shapes::BooleanShape.new(name: 'RevealSecrets')
    ReverseOrder = Shapes::BooleanShape.new(name: 'ReverseOrder')
    RevisionId = Shapes::StringShape.new(name: 'RevisionId')
    RoutingConfigurationList = Shapes::ListShape.new(name: 'RoutingConfigurationList')
    RoutingConfigurationListItem = Shapes::StructureShape.new(name: 'RoutingConfigurationListItem')
    SendTaskFailureInput = Shapes::StructureShape.new(name: 'SendTaskFailureInput')
    SendTaskFailureOutput = Shapes::StructureShape.new(name: 'SendTaskFailureOutput')
    SendTaskHeartbeatInput = Shapes::StructureShape.new(name: 'SendTaskHeartbeatInput')
    SendTaskHeartbeatOutput = Shapes::StructureShape.new(name: 'SendTaskHeartbeatOutput')
    SendTaskSuccessInput = Shapes::StructureShape.new(name: 'SendTaskSuccessInput')
    SendTaskSuccessOutput = Shapes::StructureShape.new(name: 'SendTaskSuccessOutput')
    SensitiveCause = Shapes::StringShape.new(name: 'SensitiveCause')
    SensitiveData = Shapes::StringShape.new(name: 'SensitiveData')
    SensitiveDataJobInput = Shapes::StringShape.new(name: 'SensitiveDataJobInput')
    SensitiveError = Shapes::StringShape.new(name: 'SensitiveError')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartExecutionInput = Shapes::StructureShape.new(name: 'StartExecutionInput')
    StartExecutionOutput = Shapes::StructureShape.new(name: 'StartExecutionOutput')
    StartSyncExecutionInput = Shapes::StructureShape.new(name: 'StartSyncExecutionInput')
    StartSyncExecutionOutput = Shapes::StructureShape.new(name: 'StartSyncExecutionOutput')
    StateEnteredEventDetails = Shapes::StructureShape.new(name: 'StateEnteredEventDetails')
    StateExitedEventDetails = Shapes::StructureShape.new(name: 'StateExitedEventDetails')
    StateMachineAliasList = Shapes::ListShape.new(name: 'StateMachineAliasList')
    StateMachineAliasListItem = Shapes::StructureShape.new(name: 'StateMachineAliasListItem')
    StateMachineAlreadyExists = Shapes::StructureShape.new(name: 'StateMachineAlreadyExists')
    StateMachineDeleting = Shapes::StructureShape.new(name: 'StateMachineDeleting')
    StateMachineDoesNotExist = Shapes::StructureShape.new(name: 'StateMachineDoesNotExist')
    StateMachineLimitExceeded = Shapes::StructureShape.new(name: 'StateMachineLimitExceeded')
    StateMachineList = Shapes::ListShape.new(name: 'StateMachineList')
    StateMachineListItem = Shapes::StructureShape.new(name: 'StateMachineListItem')
    StateMachineStatus = Shapes::StringShape.new(name: 'StateMachineStatus')
    StateMachineType = Shapes::StringShape.new(name: 'StateMachineType')
    StateMachineTypeNotSupported = Shapes::StructureShape.new(name: 'StateMachineTypeNotSupported')
    StateMachineVersionList = Shapes::ListShape.new(name: 'StateMachineVersionList')
    StateMachineVersionListItem = Shapes::StructureShape.new(name: 'StateMachineVersionListItem')
    StateName = Shapes::StringShape.new(name: 'StateName')
    StopExecutionInput = Shapes::StructureShape.new(name: 'StopExecutionInput')
    StopExecutionOutput = Shapes::StructureShape.new(name: 'StopExecutionOutput')
    SyncExecutionStatus = Shapes::StringShape.new(name: 'SyncExecutionStatus')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaskCredentials = Shapes::StructureShape.new(name: 'TaskCredentials')
    TaskDoesNotExist = Shapes::StructureShape.new(name: 'TaskDoesNotExist')
    TaskFailedEventDetails = Shapes::StructureShape.new(name: 'TaskFailedEventDetails')
    TaskScheduledEventDetails = Shapes::StructureShape.new(name: 'TaskScheduledEventDetails')
    TaskStartFailedEventDetails = Shapes::StructureShape.new(name: 'TaskStartFailedEventDetails')
    TaskStartedEventDetails = Shapes::StructureShape.new(name: 'TaskStartedEventDetails')
    TaskSubmitFailedEventDetails = Shapes::StructureShape.new(name: 'TaskSubmitFailedEventDetails')
    TaskSubmittedEventDetails = Shapes::StructureShape.new(name: 'TaskSubmittedEventDetails')
    TaskSucceededEventDetails = Shapes::StructureShape.new(name: 'TaskSucceededEventDetails')
    TaskTimedOut = Shapes::StructureShape.new(name: 'TaskTimedOut')
    TaskTimedOutEventDetails = Shapes::StructureShape.new(name: 'TaskTimedOutEventDetails')
    TaskToken = Shapes::StringShape.new(name: 'TaskToken')
    TestExecutionStatus = Shapes::StringShape.new(name: 'TestExecutionStatus')
    TestStateConfiguration = Shapes::StructureShape.new(name: 'TestStateConfiguration')
    TestStateInput = Shapes::StructureShape.new(name: 'TestStateInput')
    TestStateOutput = Shapes::StructureShape.new(name: 'TestStateOutput')
    TestStateStateName = Shapes::StringShape.new(name: 'TestStateStateName')
    TimeoutInSeconds = Shapes::IntegerShape.new(name: 'TimeoutInSeconds')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ToleratedFailureCount = Shapes::IntegerShape.new(name: 'ToleratedFailureCount')
    ToleratedFailurePercentage = Shapes::FloatShape.new(name: 'ToleratedFailurePercentage')
    TooManyTags = Shapes::StructureShape.new(name: 'TooManyTags')
    TraceHeader = Shapes::StringShape.new(name: 'TraceHeader')
    TracingConfiguration = Shapes::StructureShape.new(name: 'TracingConfiguration')
    URL = Shapes::StringShape.new(name: 'URL')
    UnsignedInteger = Shapes::IntegerShape.new(name: 'UnsignedInteger')
    UnsignedLong = Shapes::IntegerShape.new(name: 'UnsignedLong')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateMapRunInput = Shapes::StructureShape.new(name: 'UpdateMapRunInput')
    UpdateMapRunOutput = Shapes::StructureShape.new(name: 'UpdateMapRunOutput')
    UpdateStateMachineAliasInput = Shapes::StructureShape.new(name: 'UpdateStateMachineAliasInput')
    UpdateStateMachineAliasOutput = Shapes::StructureShape.new(name: 'UpdateStateMachineAliasOutput')
    UpdateStateMachineInput = Shapes::StructureShape.new(name: 'UpdateStateMachineInput')
    UpdateStateMachineOutput = Shapes::StructureShape.new(name: 'UpdateStateMachineOutput')
    ValidateStateMachineDefinitionCode = Shapes::StringShape.new(name: 'ValidateStateMachineDefinitionCode')
    ValidateStateMachineDefinitionDiagnostic = Shapes::StructureShape.new(name: 'ValidateStateMachineDefinitionDiagnostic')
    ValidateStateMachineDefinitionDiagnosticList = Shapes::ListShape.new(name: 'ValidateStateMachineDefinitionDiagnosticList')
    ValidateStateMachineDefinitionInput = Shapes::StructureShape.new(name: 'ValidateStateMachineDefinitionInput')
    ValidateStateMachineDefinitionLocation = Shapes::StringShape.new(name: 'ValidateStateMachineDefinitionLocation')
    ValidateStateMachineDefinitionMaxResult = Shapes::IntegerShape.new(name: 'ValidateStateMachineDefinitionMaxResult')
    ValidateStateMachineDefinitionMessage = Shapes::StringShape.new(name: 'ValidateStateMachineDefinitionMessage')
    ValidateStateMachineDefinitionOutput = Shapes::StructureShape.new(name: 'ValidateStateMachineDefinitionOutput')
    ValidateStateMachineDefinitionResultCode = Shapes::StringShape.new(name: 'ValidateStateMachineDefinitionResultCode')
    ValidateStateMachineDefinitionSeverity = Shapes::StringShape.new(name: 'ValidateStateMachineDefinitionSeverity')
    ValidateStateMachineDefinitionTruncated = Shapes::BooleanShape.new(name: 'ValidateStateMachineDefinitionTruncated')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    VariableNameList = Shapes::ListShape.new(name: 'VariableNameList')
    VariableReferences = Shapes::MapShape.new(name: 'VariableReferences')
    VariableValue = Shapes::StringShape.new(name: 'VariableValue')
    VersionDescription = Shapes::StringShape.new(name: 'VersionDescription')
    VersionWeight = Shapes::IntegerShape.new(name: 'VersionWeight')
    includedDetails = Shapes::BooleanShape.new(name: 'includedDetails')
    truncated = Shapes::BooleanShape.new(name: 'truncated')

    ActivityAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ActivityAlreadyExists.struct_class = Types::ActivityAlreadyExists

    ActivityDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ActivityDoesNotExist.struct_class = Types::ActivityDoesNotExist

    ActivityFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    ActivityFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    ActivityFailedEventDetails.struct_class = Types::ActivityFailedEventDetails

    ActivityLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ActivityLimitExceeded.struct_class = Types::ActivityLimitExceeded

    ActivityList.member = Shapes::ShapeRef.new(shape: ActivityListItem)

    ActivityListItem.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    ActivityListItem.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ActivityListItem.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    ActivityListItem.struct_class = Types::ActivityListItem

    ActivityScheduleFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    ActivityScheduleFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    ActivityScheduleFailedEventDetails.struct_class = Types::ActivityScheduleFailedEventDetails

    ActivityScheduledEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resource"))
    ActivityScheduledEventDetails.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    ActivityScheduledEventDetails.add_member(:input_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "inputDetails"))
    ActivityScheduledEventDetails.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "timeoutInSeconds", metadata: {"box" => true}))
    ActivityScheduledEventDetails.add_member(:heartbeat_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "heartbeatInSeconds", metadata: {"box" => true}))
    ActivityScheduledEventDetails.struct_class = Types::ActivityScheduledEventDetails

    ActivityStartedEventDetails.add_member(:worker_name, Shapes::ShapeRef.new(shape: Identity, location_name: "workerName"))
    ActivityStartedEventDetails.struct_class = Types::ActivityStartedEventDetails

    ActivitySucceededEventDetails.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    ActivitySucceededEventDetails.add_member(:output_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "outputDetails"))
    ActivitySucceededEventDetails.struct_class = Types::ActivitySucceededEventDetails

    ActivityTimedOutEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    ActivityTimedOutEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    ActivityTimedOutEventDetails.struct_class = Types::ActivityTimedOutEventDetails

    ActivityWorkerLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ActivityWorkerLimitExceeded.struct_class = Types::ActivityWorkerLimitExceeded

    AssignedVariables.key = Shapes::ShapeRef.new(shape: VariableName)
    AssignedVariables.value = Shapes::ShapeRef.new(shape: VariableValue)

    AssignedVariablesDetails.add_member(:truncated, Shapes::ShapeRef.new(shape: truncated, location_name: "truncated"))
    AssignedVariablesDetails.struct_class = Types::AssignedVariablesDetails

    BillingDetails.add_member(:billed_memory_used_in_mb, Shapes::ShapeRef.new(shape: BilledMemoryUsed, location_name: "billedMemoryUsedInMB"))
    BillingDetails.add_member(:billed_duration_in_milliseconds, Shapes::ShapeRef.new(shape: BilledDuration, location_name: "billedDurationInMilliseconds"))
    BillingDetails.struct_class = Types::BillingDetails

    CloudWatchEventsExecutionDataDetails.add_member(:included, Shapes::ShapeRef.new(shape: includedDetails, location_name: "included"))
    CloudWatchEventsExecutionDataDetails.struct_class = Types::CloudWatchEventsExecutionDataDetails

    CloudWatchLogsLogGroup.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "logGroupArn"))
    CloudWatchLogsLogGroup.struct_class = Types::CloudWatchLogsLogGroup

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateActivityInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateActivityInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateActivityInput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateActivityInput.struct_class = Types::CreateActivityInput

    CreateActivityOutput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    CreateActivityOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    CreateActivityOutput.struct_class = Types::CreateActivityOutput

    CreateStateMachineAliasInput.add_member(:description, Shapes::ShapeRef.new(shape: AliasDescription, location_name: "description"))
    CreateStateMachineAliasInput.add_member(:name, Shapes::ShapeRef.new(shape: CharacterRestrictedName, required: true, location_name: "name"))
    CreateStateMachineAliasInput.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: RoutingConfigurationList, required: true, location_name: "routingConfiguration"))
    CreateStateMachineAliasInput.struct_class = Types::CreateStateMachineAliasInput

    CreateStateMachineAliasOutput.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineAliasArn"))
    CreateStateMachineAliasOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    CreateStateMachineAliasOutput.struct_class = Types::CreateStateMachineAliasOutput

    CreateStateMachineInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateStateMachineInput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    CreateStateMachineInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    CreateStateMachineInput.add_member(:type, Shapes::ShapeRef.new(shape: StateMachineType, location_name: "type"))
    CreateStateMachineInput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    CreateStateMachineInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateStateMachineInput.add_member(:tracing_configuration, Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: "tracingConfiguration"))
    CreateStateMachineInput.add_member(:publish, Shapes::ShapeRef.new(shape: Publish, location_name: "publish"))
    CreateStateMachineInput.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "versionDescription"))
    CreateStateMachineInput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateStateMachineInput.struct_class = Types::CreateStateMachineInput

    CreateStateMachineOutput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    CreateStateMachineOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    CreateStateMachineOutput.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineVersionArn"))
    CreateStateMachineOutput.struct_class = Types::CreateStateMachineOutput

    DeleteActivityInput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    DeleteActivityInput.struct_class = Types::DeleteActivityInput

    DeleteActivityOutput.struct_class = Types::DeleteActivityOutput

    DeleteStateMachineAliasInput.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineAliasArn"))
    DeleteStateMachineAliasInput.struct_class = Types::DeleteStateMachineAliasInput

    DeleteStateMachineAliasOutput.struct_class = Types::DeleteStateMachineAliasOutput

    DeleteStateMachineInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    DeleteStateMachineInput.struct_class = Types::DeleteStateMachineInput

    DeleteStateMachineOutput.struct_class = Types::DeleteStateMachineOutput

    DeleteStateMachineVersionInput.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: LongArn, required: true, location_name: "stateMachineVersionArn"))
    DeleteStateMachineVersionInput.struct_class = Types::DeleteStateMachineVersionInput

    DeleteStateMachineVersionOutput.struct_class = Types::DeleteStateMachineVersionOutput

    DescribeActivityInput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    DescribeActivityInput.struct_class = Types::DescribeActivityInput

    DescribeActivityOutput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    DescribeActivityOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DescribeActivityOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    DescribeActivityOutput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    DescribeActivityOutput.struct_class = Types::DescribeActivityOutput

    DescribeExecutionInput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    DescribeExecutionInput.add_member(:included_data, Shapes::ShapeRef.new(shape: IncludedData, location_name: "includedData"))
    DescribeExecutionInput.struct_class = Types::DescribeExecutionInput

    DescribeExecutionOutput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    DescribeExecutionOutput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    DescribeExecutionOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DescribeExecutionOutput.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "status"))
    DescribeExecutionOutput.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    DescribeExecutionOutput.add_member(:stop_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stopDate"))
    DescribeExecutionOutput.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    DescribeExecutionOutput.add_member(:input_details, Shapes::ShapeRef.new(shape: CloudWatchEventsExecutionDataDetails, location_name: "inputDetails"))
    DescribeExecutionOutput.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    DescribeExecutionOutput.add_member(:output_details, Shapes::ShapeRef.new(shape: CloudWatchEventsExecutionDataDetails, location_name: "outputDetails"))
    DescribeExecutionOutput.add_member(:trace_header, Shapes::ShapeRef.new(shape: TraceHeader, location_name: "traceHeader"))
    DescribeExecutionOutput.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, location_name: "mapRunArn"))
    DescribeExecutionOutput.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    DescribeExecutionOutput.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    DescribeExecutionOutput.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineVersionArn"))
    DescribeExecutionOutput.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineAliasArn"))
    DescribeExecutionOutput.add_member(:redrive_count, Shapes::ShapeRef.new(shape: RedriveCount, location_name: "redriveCount"))
    DescribeExecutionOutput.add_member(:redrive_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "redriveDate"))
    DescribeExecutionOutput.add_member(:redrive_status, Shapes::ShapeRef.new(shape: ExecutionRedriveStatus, location_name: "redriveStatus"))
    DescribeExecutionOutput.add_member(:redrive_status_reason, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "redriveStatusReason"))
    DescribeExecutionOutput.struct_class = Types::DescribeExecutionOutput

    DescribeMapRunInput.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, required: true, location_name: "mapRunArn"))
    DescribeMapRunInput.struct_class = Types::DescribeMapRunInput

    DescribeMapRunOutput.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, required: true, location_name: "mapRunArn"))
    DescribeMapRunOutput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    DescribeMapRunOutput.add_member(:status, Shapes::ShapeRef.new(shape: MapRunStatus, required: true, location_name: "status"))
    DescribeMapRunOutput.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    DescribeMapRunOutput.add_member(:stop_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stopDate"))
    DescribeMapRunOutput.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, required: true, location_name: "maxConcurrency"))
    DescribeMapRunOutput.add_member(:tolerated_failure_percentage, Shapes::ShapeRef.new(shape: ToleratedFailurePercentage, required: true, location_name: "toleratedFailurePercentage"))
    DescribeMapRunOutput.add_member(:tolerated_failure_count, Shapes::ShapeRef.new(shape: ToleratedFailureCount, required: true, location_name: "toleratedFailureCount"))
    DescribeMapRunOutput.add_member(:item_counts, Shapes::ShapeRef.new(shape: MapRunItemCounts, required: true, location_name: "itemCounts"))
    DescribeMapRunOutput.add_member(:execution_counts, Shapes::ShapeRef.new(shape: MapRunExecutionCounts, required: true, location_name: "executionCounts"))
    DescribeMapRunOutput.add_member(:redrive_count, Shapes::ShapeRef.new(shape: RedriveCount, location_name: "redriveCount"))
    DescribeMapRunOutput.add_member(:redrive_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "redriveDate"))
    DescribeMapRunOutput.struct_class = Types::DescribeMapRunOutput

    DescribeStateMachineAliasInput.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineAliasArn"))
    DescribeStateMachineAliasInput.struct_class = Types::DescribeStateMachineAliasInput

    DescribeStateMachineAliasOutput.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineAliasArn"))
    DescribeStateMachineAliasOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DescribeStateMachineAliasOutput.add_member(:description, Shapes::ShapeRef.new(shape: AliasDescription, location_name: "description"))
    DescribeStateMachineAliasOutput.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: RoutingConfigurationList, location_name: "routingConfiguration"))
    DescribeStateMachineAliasOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    DescribeStateMachineAliasOutput.add_member(:update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDate"))
    DescribeStateMachineAliasOutput.struct_class = Types::DescribeStateMachineAliasOutput

    DescribeStateMachineForExecutionInput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    DescribeStateMachineForExecutionInput.add_member(:included_data, Shapes::ShapeRef.new(shape: IncludedData, location_name: "includedData"))
    DescribeStateMachineForExecutionInput.struct_class = Types::DescribeStateMachineForExecutionInput

    DescribeStateMachineForExecutionOutput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    DescribeStateMachineForExecutionOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DescribeStateMachineForExecutionOutput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    DescribeStateMachineForExecutionOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    DescribeStateMachineForExecutionOutput.add_member(:update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDate"))
    DescribeStateMachineForExecutionOutput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    DescribeStateMachineForExecutionOutput.add_member(:tracing_configuration, Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: "tracingConfiguration"))
    DescribeStateMachineForExecutionOutput.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, location_name: "mapRunArn"))
    DescribeStateMachineForExecutionOutput.add_member(:label, Shapes::ShapeRef.new(shape: MapRunLabel, location_name: "label"))
    DescribeStateMachineForExecutionOutput.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    DescribeStateMachineForExecutionOutput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    DescribeStateMachineForExecutionOutput.add_member(:variable_references, Shapes::ShapeRef.new(shape: VariableReferences, location_name: "variableReferences"))
    DescribeStateMachineForExecutionOutput.struct_class = Types::DescribeStateMachineForExecutionOutput

    DescribeStateMachineInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    DescribeStateMachineInput.add_member(:included_data, Shapes::ShapeRef.new(shape: IncludedData, location_name: "includedData"))
    DescribeStateMachineInput.struct_class = Types::DescribeStateMachineInput

    DescribeStateMachineOutput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    DescribeStateMachineOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DescribeStateMachineOutput.add_member(:status, Shapes::ShapeRef.new(shape: StateMachineStatus, location_name: "status"))
    DescribeStateMachineOutput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    DescribeStateMachineOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    DescribeStateMachineOutput.add_member(:type, Shapes::ShapeRef.new(shape: StateMachineType, required: true, location_name: "type"))
    DescribeStateMachineOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    DescribeStateMachineOutput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    DescribeStateMachineOutput.add_member(:tracing_configuration, Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: "tracingConfiguration"))
    DescribeStateMachineOutput.add_member(:label, Shapes::ShapeRef.new(shape: MapRunLabel, location_name: "label"))
    DescribeStateMachineOutput.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    DescribeStateMachineOutput.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "description"))
    DescribeStateMachineOutput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    DescribeStateMachineOutput.add_member(:variable_references, Shapes::ShapeRef.new(shape: VariableReferences, location_name: "variableReferences"))
    DescribeStateMachineOutput.struct_class = Types::DescribeStateMachineOutput

    EncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    EncryptionConfiguration.add_member(:kms_data_key_reuse_period_seconds, Shapes::ShapeRef.new(shape: KmsDataKeyReusePeriodSeconds, location_name: "kmsDataKeyReusePeriodSeconds", metadata: {"box" => true}))
    EncryptionConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "type"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    EvaluationFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    EvaluationFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    EvaluationFailedEventDetails.add_member(:location, Shapes::ShapeRef.new(shape: EvaluationFailureLocation, location_name: "location"))
    EvaluationFailedEventDetails.add_member(:state, Shapes::ShapeRef.new(shape: StateName, required: true, location_name: "state"))
    EvaluationFailedEventDetails.struct_class = Types::EvaluationFailedEventDetails

    ExecutionAbortedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    ExecutionAbortedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    ExecutionAbortedEventDetails.struct_class = Types::ExecutionAbortedEventDetails

    ExecutionAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExecutionAlreadyExists.struct_class = Types::ExecutionAlreadyExists

    ExecutionDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExecutionDoesNotExist.struct_class = Types::ExecutionDoesNotExist

    ExecutionFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    ExecutionFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    ExecutionFailedEventDetails.struct_class = Types::ExecutionFailedEventDetails

    ExecutionLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExecutionLimitExceeded.struct_class = Types::ExecutionLimitExceeded

    ExecutionList.member = Shapes::ShapeRef.new(shape: ExecutionListItem)

    ExecutionListItem.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    ExecutionListItem.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    ExecutionListItem.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ExecutionListItem.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "status"))
    ExecutionListItem.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    ExecutionListItem.add_member(:stop_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stopDate"))
    ExecutionListItem.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, location_name: "mapRunArn"))
    ExecutionListItem.add_member(:item_count, Shapes::ShapeRef.new(shape: UnsignedInteger, location_name: "itemCount", metadata: {"box" => true}))
    ExecutionListItem.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineVersionArn"))
    ExecutionListItem.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineAliasArn"))
    ExecutionListItem.add_member(:redrive_count, Shapes::ShapeRef.new(shape: RedriveCount, location_name: "redriveCount", metadata: {"box" => true}))
    ExecutionListItem.add_member(:redrive_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "redriveDate"))
    ExecutionListItem.struct_class = Types::ExecutionListItem

    ExecutionNotRedrivable.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExecutionNotRedrivable.struct_class = Types::ExecutionNotRedrivable

    ExecutionRedrivenEventDetails.add_member(:redrive_count, Shapes::ShapeRef.new(shape: RedriveCount, location_name: "redriveCount"))
    ExecutionRedrivenEventDetails.struct_class = Types::ExecutionRedrivenEventDetails

    ExecutionStartedEventDetails.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    ExecutionStartedEventDetails.add_member(:input_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "inputDetails"))
    ExecutionStartedEventDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    ExecutionStartedEventDetails.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineAliasArn"))
    ExecutionStartedEventDetails.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineVersionArn"))
    ExecutionStartedEventDetails.struct_class = Types::ExecutionStartedEventDetails

    ExecutionSucceededEventDetails.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    ExecutionSucceededEventDetails.add_member(:output_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "outputDetails"))
    ExecutionSucceededEventDetails.struct_class = Types::ExecutionSucceededEventDetails

    ExecutionTimedOutEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    ExecutionTimedOutEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    ExecutionTimedOutEventDetails.struct_class = Types::ExecutionTimedOutEventDetails

    GetActivityTaskInput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    GetActivityTaskInput.add_member(:worker_name, Shapes::ShapeRef.new(shape: Name, location_name: "workerName"))
    GetActivityTaskInput.struct_class = Types::GetActivityTaskInput

    GetActivityTaskOutput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, location_name: "taskToken"))
    GetActivityTaskOutput.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveDataJobInput, location_name: "input"))
    GetActivityTaskOutput.struct_class = Types::GetActivityTaskOutput

    GetExecutionHistoryInput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    GetExecutionHistoryInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    GetExecutionHistoryInput.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location_name: "reverseOrder"))
    GetExecutionHistoryInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    GetExecutionHistoryInput.add_member(:include_execution_data, Shapes::ShapeRef.new(shape: IncludeExecutionDataGetExecutionHistory, location_name: "includeExecutionData"))
    GetExecutionHistoryInput.struct_class = Types::GetExecutionHistoryInput

    GetExecutionHistoryOutput.add_member(:events, Shapes::ShapeRef.new(shape: HistoryEventList, required: true, location_name: "events"))
    GetExecutionHistoryOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    GetExecutionHistoryOutput.struct_class = Types::GetExecutionHistoryOutput

    HistoryEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    HistoryEvent.add_member(:type, Shapes::ShapeRef.new(shape: HistoryEventType, required: true, location_name: "type"))
    HistoryEvent.add_member(:id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "id"))
    HistoryEvent.add_member(:previous_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "previousEventId"))
    HistoryEvent.add_member(:activity_failed_event_details, Shapes::ShapeRef.new(shape: ActivityFailedEventDetails, location_name: "activityFailedEventDetails"))
    HistoryEvent.add_member(:activity_schedule_failed_event_details, Shapes::ShapeRef.new(shape: ActivityScheduleFailedEventDetails, location_name: "activityScheduleFailedEventDetails"))
    HistoryEvent.add_member(:activity_scheduled_event_details, Shapes::ShapeRef.new(shape: ActivityScheduledEventDetails, location_name: "activityScheduledEventDetails"))
    HistoryEvent.add_member(:activity_started_event_details, Shapes::ShapeRef.new(shape: ActivityStartedEventDetails, location_name: "activityStartedEventDetails"))
    HistoryEvent.add_member(:activity_succeeded_event_details, Shapes::ShapeRef.new(shape: ActivitySucceededEventDetails, location_name: "activitySucceededEventDetails"))
    HistoryEvent.add_member(:activity_timed_out_event_details, Shapes::ShapeRef.new(shape: ActivityTimedOutEventDetails, location_name: "activityTimedOutEventDetails"))
    HistoryEvent.add_member(:task_failed_event_details, Shapes::ShapeRef.new(shape: TaskFailedEventDetails, location_name: "taskFailedEventDetails"))
    HistoryEvent.add_member(:task_scheduled_event_details, Shapes::ShapeRef.new(shape: TaskScheduledEventDetails, location_name: "taskScheduledEventDetails"))
    HistoryEvent.add_member(:task_start_failed_event_details, Shapes::ShapeRef.new(shape: TaskStartFailedEventDetails, location_name: "taskStartFailedEventDetails"))
    HistoryEvent.add_member(:task_started_event_details, Shapes::ShapeRef.new(shape: TaskStartedEventDetails, location_name: "taskStartedEventDetails"))
    HistoryEvent.add_member(:task_submit_failed_event_details, Shapes::ShapeRef.new(shape: TaskSubmitFailedEventDetails, location_name: "taskSubmitFailedEventDetails"))
    HistoryEvent.add_member(:task_submitted_event_details, Shapes::ShapeRef.new(shape: TaskSubmittedEventDetails, location_name: "taskSubmittedEventDetails"))
    HistoryEvent.add_member(:task_succeeded_event_details, Shapes::ShapeRef.new(shape: TaskSucceededEventDetails, location_name: "taskSucceededEventDetails"))
    HistoryEvent.add_member(:task_timed_out_event_details, Shapes::ShapeRef.new(shape: TaskTimedOutEventDetails, location_name: "taskTimedOutEventDetails"))
    HistoryEvent.add_member(:execution_failed_event_details, Shapes::ShapeRef.new(shape: ExecutionFailedEventDetails, location_name: "executionFailedEventDetails"))
    HistoryEvent.add_member(:execution_started_event_details, Shapes::ShapeRef.new(shape: ExecutionStartedEventDetails, location_name: "executionStartedEventDetails"))
    HistoryEvent.add_member(:execution_succeeded_event_details, Shapes::ShapeRef.new(shape: ExecutionSucceededEventDetails, location_name: "executionSucceededEventDetails"))
    HistoryEvent.add_member(:execution_aborted_event_details, Shapes::ShapeRef.new(shape: ExecutionAbortedEventDetails, location_name: "executionAbortedEventDetails"))
    HistoryEvent.add_member(:execution_timed_out_event_details, Shapes::ShapeRef.new(shape: ExecutionTimedOutEventDetails, location_name: "executionTimedOutEventDetails"))
    HistoryEvent.add_member(:execution_redriven_event_details, Shapes::ShapeRef.new(shape: ExecutionRedrivenEventDetails, location_name: "executionRedrivenEventDetails"))
    HistoryEvent.add_member(:map_state_started_event_details, Shapes::ShapeRef.new(shape: MapStateStartedEventDetails, location_name: "mapStateStartedEventDetails"))
    HistoryEvent.add_member(:map_iteration_started_event_details, Shapes::ShapeRef.new(shape: MapIterationEventDetails, location_name: "mapIterationStartedEventDetails"))
    HistoryEvent.add_member(:map_iteration_succeeded_event_details, Shapes::ShapeRef.new(shape: MapIterationEventDetails, location_name: "mapIterationSucceededEventDetails"))
    HistoryEvent.add_member(:map_iteration_failed_event_details, Shapes::ShapeRef.new(shape: MapIterationEventDetails, location_name: "mapIterationFailedEventDetails"))
    HistoryEvent.add_member(:map_iteration_aborted_event_details, Shapes::ShapeRef.new(shape: MapIterationEventDetails, location_name: "mapIterationAbortedEventDetails"))
    HistoryEvent.add_member(:lambda_function_failed_event_details, Shapes::ShapeRef.new(shape: LambdaFunctionFailedEventDetails, location_name: "lambdaFunctionFailedEventDetails"))
    HistoryEvent.add_member(:lambda_function_schedule_failed_event_details, Shapes::ShapeRef.new(shape: LambdaFunctionScheduleFailedEventDetails, location_name: "lambdaFunctionScheduleFailedEventDetails"))
    HistoryEvent.add_member(:lambda_function_scheduled_event_details, Shapes::ShapeRef.new(shape: LambdaFunctionScheduledEventDetails, location_name: "lambdaFunctionScheduledEventDetails"))
    HistoryEvent.add_member(:lambda_function_start_failed_event_details, Shapes::ShapeRef.new(shape: LambdaFunctionStartFailedEventDetails, location_name: "lambdaFunctionStartFailedEventDetails"))
    HistoryEvent.add_member(:lambda_function_succeeded_event_details, Shapes::ShapeRef.new(shape: LambdaFunctionSucceededEventDetails, location_name: "lambdaFunctionSucceededEventDetails"))
    HistoryEvent.add_member(:lambda_function_timed_out_event_details, Shapes::ShapeRef.new(shape: LambdaFunctionTimedOutEventDetails, location_name: "lambdaFunctionTimedOutEventDetails"))
    HistoryEvent.add_member(:state_entered_event_details, Shapes::ShapeRef.new(shape: StateEnteredEventDetails, location_name: "stateEnteredEventDetails"))
    HistoryEvent.add_member(:state_exited_event_details, Shapes::ShapeRef.new(shape: StateExitedEventDetails, location_name: "stateExitedEventDetails"))
    HistoryEvent.add_member(:map_run_started_event_details, Shapes::ShapeRef.new(shape: MapRunStartedEventDetails, location_name: "mapRunStartedEventDetails"))
    HistoryEvent.add_member(:map_run_failed_event_details, Shapes::ShapeRef.new(shape: MapRunFailedEventDetails, location_name: "mapRunFailedEventDetails"))
    HistoryEvent.add_member(:map_run_redriven_event_details, Shapes::ShapeRef.new(shape: MapRunRedrivenEventDetails, location_name: "mapRunRedrivenEventDetails"))
    HistoryEvent.add_member(:evaluation_failed_event_details, Shapes::ShapeRef.new(shape: EvaluationFailedEventDetails, location_name: "evaluationFailedEventDetails"))
    HistoryEvent.struct_class = Types::HistoryEvent

    HistoryEventExecutionDataDetails.add_member(:truncated, Shapes::ShapeRef.new(shape: truncated, location_name: "truncated"))
    HistoryEventExecutionDataDetails.struct_class = Types::HistoryEventExecutionDataDetails

    HistoryEventList.member = Shapes::ShapeRef.new(shape: HistoryEvent)

    InspectionData.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    InspectionData.add_member(:after_arguments, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterArguments"))
    InspectionData.add_member(:after_input_path, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterInputPath"))
    InspectionData.add_member(:after_parameters, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterParameters"))
    InspectionData.add_member(:result, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "result"))
    InspectionData.add_member(:after_result_selector, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterResultSelector"))
    InspectionData.add_member(:after_result_path, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterResultPath"))
    InspectionData.add_member(:request, Shapes::ShapeRef.new(shape: InspectionDataRequest, location_name: "request"))
    InspectionData.add_member(:response, Shapes::ShapeRef.new(shape: InspectionDataResponse, location_name: "response"))
    InspectionData.add_member(:variables, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "variables"))
    InspectionData.add_member(:error_details, Shapes::ShapeRef.new(shape: InspectionErrorDetails, location_name: "errorDetails"))
    InspectionData.add_member(:after_items_path, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterItemsPath"))
    InspectionData.add_member(:after_item_selector, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterItemSelector"))
    InspectionData.add_member(:after_item_batcher, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterItemBatcher"))
    InspectionData.add_member(:after_items_pointer, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "afterItemsPointer"))
    InspectionData.add_member(:tolerated_failure_count, Shapes::ShapeRef.new(shape: InspectionToleratedFailureCount, location_name: "toleratedFailureCount", metadata: {"box" => true}))
    InspectionData.add_member(:tolerated_failure_percentage, Shapes::ShapeRef.new(shape: InspectionToleratedFailurePercentage, location_name: "toleratedFailurePercentage", metadata: {"box" => true}))
    InspectionData.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: InspectionMaxConcurrency, location_name: "maxConcurrency", metadata: {"box" => true}))
    InspectionData.struct_class = Types::InspectionData

    InspectionDataRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: HTTPProtocol, location_name: "protocol"))
    InspectionDataRequest.add_member(:method, Shapes::ShapeRef.new(shape: HTTPMethod, location_name: "method"))
    InspectionDataRequest.add_member(:url, Shapes::ShapeRef.new(shape: URL, location_name: "url"))
    InspectionDataRequest.add_member(:headers, Shapes::ShapeRef.new(shape: HTTPHeaders, location_name: "headers"))
    InspectionDataRequest.add_member(:body, Shapes::ShapeRef.new(shape: HTTPBody, location_name: "body"))
    InspectionDataRequest.struct_class = Types::InspectionDataRequest

    InspectionDataResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: HTTPProtocol, location_name: "protocol"))
    InspectionDataResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: HTTPStatusCode, location_name: "statusCode"))
    InspectionDataResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: HTTPStatusMessage, location_name: "statusMessage"))
    InspectionDataResponse.add_member(:headers, Shapes::ShapeRef.new(shape: HTTPHeaders, location_name: "headers"))
    InspectionDataResponse.add_member(:body, Shapes::ShapeRef.new(shape: HTTPBody, location_name: "body"))
    InspectionDataResponse.struct_class = Types::InspectionDataResponse

    InspectionErrorDetails.add_member(:catch_index, Shapes::ShapeRef.new(shape: ExceptionHandlerIndex, location_name: "catchIndex", metadata: {"box" => true}))
    InspectionErrorDetails.add_member(:retry_index, Shapes::ShapeRef.new(shape: ExceptionHandlerIndex, location_name: "retryIndex", metadata: {"box" => true}))
    InspectionErrorDetails.add_member(:retry_backoff_interval_seconds, Shapes::ShapeRef.new(shape: RetryBackoffIntervalSeconds, location_name: "retryBackoffIntervalSeconds", metadata: {"box" => true}))
    InspectionErrorDetails.struct_class = Types::InspectionErrorDetails

    InvalidArn.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidArn.struct_class = Types::InvalidArn

    InvalidDefinition.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidDefinition.struct_class = Types::InvalidDefinition

    InvalidEncryptionConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidEncryptionConfiguration.struct_class = Types::InvalidEncryptionConfiguration

    InvalidExecutionInput.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidExecutionInput.struct_class = Types::InvalidExecutionInput

    InvalidLoggingConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidLoggingConfiguration.struct_class = Types::InvalidLoggingConfiguration

    InvalidName.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidName.struct_class = Types::InvalidName

    InvalidOutput.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidOutput.struct_class = Types::InvalidOutput

    InvalidToken.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidToken.struct_class = Types::InvalidToken

    InvalidTracingConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidTracingConfiguration.struct_class = Types::InvalidTracingConfiguration

    KmsAccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KmsAccessDeniedException.struct_class = Types::KmsAccessDeniedException

    KmsInvalidStateException.add_member(:kms_key_state, Shapes::ShapeRef.new(shape: KmsKeyState, location_name: "kmsKeyState"))
    KmsInvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KmsInvalidStateException.struct_class = Types::KmsInvalidStateException

    KmsThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KmsThrottlingException.struct_class = Types::KmsThrottlingException

    LambdaFunctionFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    LambdaFunctionFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    LambdaFunctionFailedEventDetails.struct_class = Types::LambdaFunctionFailedEventDetails

    LambdaFunctionScheduleFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    LambdaFunctionScheduleFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    LambdaFunctionScheduleFailedEventDetails.struct_class = Types::LambdaFunctionScheduleFailedEventDetails

    LambdaFunctionScheduledEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resource"))
    LambdaFunctionScheduledEventDetails.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    LambdaFunctionScheduledEventDetails.add_member(:input_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "inputDetails"))
    LambdaFunctionScheduledEventDetails.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "timeoutInSeconds", metadata: {"box" => true}))
    LambdaFunctionScheduledEventDetails.add_member(:task_credentials, Shapes::ShapeRef.new(shape: TaskCredentials, location_name: "taskCredentials"))
    LambdaFunctionScheduledEventDetails.struct_class = Types::LambdaFunctionScheduledEventDetails

    LambdaFunctionStartFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    LambdaFunctionStartFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    LambdaFunctionStartFailedEventDetails.struct_class = Types::LambdaFunctionStartFailedEventDetails

    LambdaFunctionSucceededEventDetails.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    LambdaFunctionSucceededEventDetails.add_member(:output_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "outputDetails"))
    LambdaFunctionSucceededEventDetails.struct_class = Types::LambdaFunctionSucceededEventDetails

    LambdaFunctionTimedOutEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    LambdaFunctionTimedOutEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    LambdaFunctionTimedOutEventDetails.struct_class = Types::LambdaFunctionTimedOutEventDetails

    ListActivitiesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListActivitiesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListActivitiesInput.struct_class = Types::ListActivitiesInput

    ListActivitiesOutput.add_member(:activities, Shapes::ShapeRef.new(shape: ActivityList, required: true, location_name: "activities"))
    ListActivitiesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListActivitiesOutput.struct_class = Types::ListActivitiesOutput

    ListExecutionsInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineArn"))
    ListExecutionsInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "statusFilter"))
    ListExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListExecutionsPageToken, location_name: "nextToken"))
    ListExecutionsInput.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, location_name: "mapRunArn"))
    ListExecutionsInput.add_member(:redrive_filter, Shapes::ShapeRef.new(shape: ExecutionRedriveFilter, location_name: "redriveFilter"))
    ListExecutionsInput.struct_class = Types::ListExecutionsInput

    ListExecutionsOutput.add_member(:executions, Shapes::ShapeRef.new(shape: ExecutionList, required: true, location_name: "executions"))
    ListExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListExecutionsPageToken, location_name: "nextToken"))
    ListExecutionsOutput.struct_class = Types::ListExecutionsOutput

    ListMapRunsInput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    ListMapRunsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListMapRunsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListMapRunsInput.struct_class = Types::ListMapRunsInput

    ListMapRunsOutput.add_member(:map_runs, Shapes::ShapeRef.new(shape: MapRunList, required: true, location_name: "mapRuns"))
    ListMapRunsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListMapRunsOutput.struct_class = Types::ListMapRunsOutput

    ListStateMachineAliasesInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    ListStateMachineAliasesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListStateMachineAliasesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListStateMachineAliasesInput.struct_class = Types::ListStateMachineAliasesInput

    ListStateMachineAliasesOutput.add_member(:state_machine_aliases, Shapes::ShapeRef.new(shape: StateMachineAliasList, required: true, location_name: "stateMachineAliases"))
    ListStateMachineAliasesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListStateMachineAliasesOutput.struct_class = Types::ListStateMachineAliasesOutput

    ListStateMachineVersionsInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    ListStateMachineVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListStateMachineVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListStateMachineVersionsInput.struct_class = Types::ListStateMachineVersionsInput

    ListStateMachineVersionsOutput.add_member(:state_machine_versions, Shapes::ShapeRef.new(shape: StateMachineVersionList, required: true, location_name: "stateMachineVersions"))
    ListStateMachineVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListStateMachineVersionsOutput.struct_class = Types::ListStateMachineVersionsOutput

    ListStateMachinesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListStateMachinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListStateMachinesInput.struct_class = Types::ListStateMachinesInput

    ListStateMachinesOutput.add_member(:state_machines, Shapes::ShapeRef.new(shape: StateMachineList, required: true, location_name: "stateMachines"))
    ListStateMachinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListStateMachinesOutput.struct_class = Types::ListStateMachinesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    LogDestination.add_member(:cloud_watch_logs_log_group, Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroup, location_name: "cloudWatchLogsLogGroup"))
    LogDestination.struct_class = Types::LogDestination

    LogDestinationList.member = Shapes::ShapeRef.new(shape: LogDestination)

    LoggingConfiguration.add_member(:level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "level"))
    LoggingConfiguration.add_member(:include_execution_data, Shapes::ShapeRef.new(shape: IncludeExecutionData, location_name: "includeExecutionData"))
    LoggingConfiguration.add_member(:destinations, Shapes::ShapeRef.new(shape: LogDestinationList, location_name: "destinations"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    MapIterationEventDetails.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    MapIterationEventDetails.add_member(:index, Shapes::ShapeRef.new(shape: UnsignedInteger, location_name: "index"))
    MapIterationEventDetails.struct_class = Types::MapIterationEventDetails

    MapRunExecutionCounts.add_member(:pending, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "pending"))
    MapRunExecutionCounts.add_member(:running, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "running"))
    MapRunExecutionCounts.add_member(:succeeded, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "succeeded"))
    MapRunExecutionCounts.add_member(:failed, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "failed"))
    MapRunExecutionCounts.add_member(:timed_out, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "timedOut"))
    MapRunExecutionCounts.add_member(:aborted, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "aborted"))
    MapRunExecutionCounts.add_member(:total, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "total"))
    MapRunExecutionCounts.add_member(:results_written, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "resultsWritten"))
    MapRunExecutionCounts.add_member(:failures_not_redrivable, Shapes::ShapeRef.new(shape: LongObject, location_name: "failuresNotRedrivable"))
    MapRunExecutionCounts.add_member(:pending_redrive, Shapes::ShapeRef.new(shape: LongObject, location_name: "pendingRedrive"))
    MapRunExecutionCounts.struct_class = Types::MapRunExecutionCounts

    MapRunFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    MapRunFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    MapRunFailedEventDetails.struct_class = Types::MapRunFailedEventDetails

    MapRunItemCounts.add_member(:pending, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "pending"))
    MapRunItemCounts.add_member(:running, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "running"))
    MapRunItemCounts.add_member(:succeeded, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "succeeded"))
    MapRunItemCounts.add_member(:failed, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "failed"))
    MapRunItemCounts.add_member(:timed_out, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "timedOut"))
    MapRunItemCounts.add_member(:aborted, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "aborted"))
    MapRunItemCounts.add_member(:total, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "total"))
    MapRunItemCounts.add_member(:results_written, Shapes::ShapeRef.new(shape: UnsignedLong, required: true, location_name: "resultsWritten"))
    MapRunItemCounts.add_member(:failures_not_redrivable, Shapes::ShapeRef.new(shape: LongObject, location_name: "failuresNotRedrivable"))
    MapRunItemCounts.add_member(:pending_redrive, Shapes::ShapeRef.new(shape: LongObject, location_name: "pendingRedrive"))
    MapRunItemCounts.struct_class = Types::MapRunItemCounts

    MapRunList.member = Shapes::ShapeRef.new(shape: MapRunListItem)

    MapRunListItem.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    MapRunListItem.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, required: true, location_name: "mapRunArn"))
    MapRunListItem.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    MapRunListItem.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    MapRunListItem.add_member(:stop_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stopDate"))
    MapRunListItem.struct_class = Types::MapRunListItem

    MapRunRedrivenEventDetails.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, location_name: "mapRunArn"))
    MapRunRedrivenEventDetails.add_member(:redrive_count, Shapes::ShapeRef.new(shape: RedriveCount, location_name: "redriveCount"))
    MapRunRedrivenEventDetails.struct_class = Types::MapRunRedrivenEventDetails

    MapRunStartedEventDetails.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, location_name: "mapRunArn"))
    MapRunStartedEventDetails.struct_class = Types::MapRunStartedEventDetails

    MapStateStartedEventDetails.add_member(:length, Shapes::ShapeRef.new(shape: UnsignedInteger, location_name: "length"))
    MapStateStartedEventDetails.struct_class = Types::MapStateStartedEventDetails

    MissingRequiredParameter.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    MissingRequiredParameter.struct_class = Types::MissingRequiredParameter

    MockErrorOutput.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    MockErrorOutput.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    MockErrorOutput.struct_class = Types::MockErrorOutput

    MockInput.add_member(:result, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "result"))
    MockInput.add_member(:error_output, Shapes::ShapeRef.new(shape: MockErrorOutput, location_name: "errorOutput"))
    MockInput.add_member(:field_validation_mode, Shapes::ShapeRef.new(shape: MockResponseValidationMode, location_name: "fieldValidationMode"))
    MockInput.struct_class = Types::MockInput

    PublishStateMachineVersionInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    PublishStateMachineVersionInput.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    PublishStateMachineVersionInput.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "description"))
    PublishStateMachineVersionInput.struct_class = Types::PublishStateMachineVersionInput

    PublishStateMachineVersionOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    PublishStateMachineVersionOutput.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineVersionArn"))
    PublishStateMachineVersionOutput.struct_class = Types::PublishStateMachineVersionOutput

    RedriveExecutionInput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    RedriveExecutionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    RedriveExecutionInput.struct_class = Types::RedriveExecutionInput

    RedriveExecutionOutput.add_member(:redrive_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "redriveDate"))
    RedriveExecutionOutput.struct_class = Types::RedriveExecutionOutput

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFound.add_member(:resource_name, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceName"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    RoutingConfigurationList.member = Shapes::ShapeRef.new(shape: RoutingConfigurationListItem)

    RoutingConfigurationListItem.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineVersionArn"))
    RoutingConfigurationListItem.add_member(:weight, Shapes::ShapeRef.new(shape: VersionWeight, required: true, location_name: "weight"))
    RoutingConfigurationListItem.struct_class = Types::RoutingConfigurationListItem

    SendTaskFailureInput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    SendTaskFailureInput.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    SendTaskFailureInput.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    SendTaskFailureInput.struct_class = Types::SendTaskFailureInput

    SendTaskFailureOutput.struct_class = Types::SendTaskFailureOutput

    SendTaskHeartbeatInput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    SendTaskHeartbeatInput.struct_class = Types::SendTaskHeartbeatInput

    SendTaskHeartbeatOutput.struct_class = Types::SendTaskHeartbeatOutput

    SendTaskSuccessInput.add_member(:task_token, Shapes::ShapeRef.new(shape: TaskToken, required: true, location_name: "taskToken"))
    SendTaskSuccessInput.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, required: true, location_name: "output"))
    SendTaskSuccessInput.struct_class = Types::SendTaskSuccessInput

    SendTaskSuccessOutput.struct_class = Types::SendTaskSuccessOutput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartExecutionInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    StartExecutionInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartExecutionInput.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    StartExecutionInput.add_member(:trace_header, Shapes::ShapeRef.new(shape: TraceHeader, location_name: "traceHeader"))
    StartExecutionInput.struct_class = Types::StartExecutionInput

    StartExecutionOutput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    StartExecutionOutput.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    StartExecutionOutput.struct_class = Types::StartExecutionOutput

    StartSyncExecutionInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    StartSyncExecutionInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartSyncExecutionInput.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    StartSyncExecutionInput.add_member(:trace_header, Shapes::ShapeRef.new(shape: TraceHeader, location_name: "traceHeader"))
    StartSyncExecutionInput.add_member(:included_data, Shapes::ShapeRef.new(shape: IncludedData, location_name: "includedData"))
    StartSyncExecutionInput.struct_class = Types::StartSyncExecutionInput

    StartSyncExecutionOutput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    StartSyncExecutionOutput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineArn"))
    StartSyncExecutionOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartSyncExecutionOutput.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    StartSyncExecutionOutput.add_member(:stop_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "stopDate"))
    StartSyncExecutionOutput.add_member(:status, Shapes::ShapeRef.new(shape: SyncExecutionStatus, required: true, location_name: "status"))
    StartSyncExecutionOutput.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    StartSyncExecutionOutput.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    StartSyncExecutionOutput.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    StartSyncExecutionOutput.add_member(:input_details, Shapes::ShapeRef.new(shape: CloudWatchEventsExecutionDataDetails, location_name: "inputDetails"))
    StartSyncExecutionOutput.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    StartSyncExecutionOutput.add_member(:output_details, Shapes::ShapeRef.new(shape: CloudWatchEventsExecutionDataDetails, location_name: "outputDetails"))
    StartSyncExecutionOutput.add_member(:trace_header, Shapes::ShapeRef.new(shape: TraceHeader, location_name: "traceHeader"))
    StartSyncExecutionOutput.add_member(:billing_details, Shapes::ShapeRef.new(shape: BillingDetails, location_name: "billingDetails"))
    StartSyncExecutionOutput.struct_class = Types::StartSyncExecutionOutput

    StateEnteredEventDetails.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    StateEnteredEventDetails.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    StateEnteredEventDetails.add_member(:input_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "inputDetails"))
    StateEnteredEventDetails.struct_class = Types::StateEnteredEventDetails

    StateExitedEventDetails.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    StateExitedEventDetails.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    StateExitedEventDetails.add_member(:output_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "outputDetails"))
    StateExitedEventDetails.add_member(:assigned_variables, Shapes::ShapeRef.new(shape: AssignedVariables, location_name: "assignedVariables"))
    StateExitedEventDetails.add_member(:assigned_variables_details, Shapes::ShapeRef.new(shape: AssignedVariablesDetails, location_name: "assignedVariablesDetails"))
    StateExitedEventDetails.struct_class = Types::StateExitedEventDetails

    StateMachineAliasList.member = Shapes::ShapeRef.new(shape: StateMachineAliasListItem)

    StateMachineAliasListItem.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: LongArn, required: true, location_name: "stateMachineAliasArn"))
    StateMachineAliasListItem.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    StateMachineAliasListItem.struct_class = Types::StateMachineAliasListItem

    StateMachineAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    StateMachineAlreadyExists.struct_class = Types::StateMachineAlreadyExists

    StateMachineDeleting.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    StateMachineDeleting.struct_class = Types::StateMachineDeleting

    StateMachineDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    StateMachineDoesNotExist.struct_class = Types::StateMachineDoesNotExist

    StateMachineLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    StateMachineLimitExceeded.struct_class = Types::StateMachineLimitExceeded

    StateMachineList.member = Shapes::ShapeRef.new(shape: StateMachineListItem)

    StateMachineListItem.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    StateMachineListItem.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    StateMachineListItem.add_member(:type, Shapes::ShapeRef.new(shape: StateMachineType, required: true, location_name: "type"))
    StateMachineListItem.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    StateMachineListItem.struct_class = Types::StateMachineListItem

    StateMachineTypeNotSupported.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    StateMachineTypeNotSupported.struct_class = Types::StateMachineTypeNotSupported

    StateMachineVersionList.member = Shapes::ShapeRef.new(shape: StateMachineVersionListItem)

    StateMachineVersionListItem.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: LongArn, required: true, location_name: "stateMachineVersionArn"))
    StateMachineVersionListItem.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    StateMachineVersionListItem.struct_class = Types::StateMachineVersionListItem

    StopExecutionInput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    StopExecutionInput.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    StopExecutionInput.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    StopExecutionInput.struct_class = Types::StopExecutionInput

    StopExecutionOutput.add_member(:stop_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "stopDate"))
    StopExecutionOutput.struct_class = Types::StopExecutionOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TaskCredentials.add_member(:role_arn, Shapes::ShapeRef.new(shape: LongArn, location_name: "roleArn"))
    TaskCredentials.struct_class = Types::TaskCredentials

    TaskDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TaskDoesNotExist.struct_class = Types::TaskDoesNotExist

    TaskFailedEventDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resourceType"))
    TaskFailedEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resource"))
    TaskFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    TaskFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    TaskFailedEventDetails.struct_class = Types::TaskFailedEventDetails

    TaskScheduledEventDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resourceType"))
    TaskScheduledEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resource"))
    TaskScheduledEventDetails.add_member(:region, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "region"))
    TaskScheduledEventDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ConnectorParameters, required: true, location_name: "parameters"))
    TaskScheduledEventDetails.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "timeoutInSeconds", metadata: {"box" => true}))
    TaskScheduledEventDetails.add_member(:heartbeat_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "heartbeatInSeconds", metadata: {"box" => true}))
    TaskScheduledEventDetails.add_member(:task_credentials, Shapes::ShapeRef.new(shape: TaskCredentials, location_name: "taskCredentials"))
    TaskScheduledEventDetails.struct_class = Types::TaskScheduledEventDetails

    TaskStartFailedEventDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resourceType"))
    TaskStartFailedEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resource"))
    TaskStartFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    TaskStartFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    TaskStartFailedEventDetails.struct_class = Types::TaskStartFailedEventDetails

    TaskStartedEventDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resourceType"))
    TaskStartedEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resource"))
    TaskStartedEventDetails.struct_class = Types::TaskStartedEventDetails

    TaskSubmitFailedEventDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resourceType"))
    TaskSubmitFailedEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resource"))
    TaskSubmitFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    TaskSubmitFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    TaskSubmitFailedEventDetails.struct_class = Types::TaskSubmitFailedEventDetails

    TaskSubmittedEventDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resourceType"))
    TaskSubmittedEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resource"))
    TaskSubmittedEventDetails.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    TaskSubmittedEventDetails.add_member(:output_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "outputDetails"))
    TaskSubmittedEventDetails.struct_class = Types::TaskSubmittedEventDetails

    TaskSucceededEventDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resourceType"))
    TaskSucceededEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resource"))
    TaskSucceededEventDetails.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    TaskSucceededEventDetails.add_member(:output_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "outputDetails"))
    TaskSucceededEventDetails.struct_class = Types::TaskSucceededEventDetails

    TaskTimedOut.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TaskTimedOut.struct_class = Types::TaskTimedOut

    TaskTimedOutEventDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resourceType"))
    TaskTimedOutEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "resource"))
    TaskTimedOutEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    TaskTimedOutEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    TaskTimedOutEventDetails.struct_class = Types::TaskTimedOutEventDetails

    TestStateConfiguration.add_member(:retrier_retry_count, Shapes::ShapeRef.new(shape: RetrierRetryCount, location_name: "retrierRetryCount", metadata: {"box" => true}))
    TestStateConfiguration.add_member(:error_caused_by_state, Shapes::ShapeRef.new(shape: TestStateStateName, location_name: "errorCausedByState"))
    TestStateConfiguration.add_member(:map_iteration_failure_count, Shapes::ShapeRef.new(shape: MapIterationFailureCount, location_name: "mapIterationFailureCount", metadata: {"box" => true}))
    TestStateConfiguration.add_member(:map_item_reader_data, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "mapItemReaderData"))
    TestStateConfiguration.struct_class = Types::TestStateConfiguration

    TestStateInput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    TestStateInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    TestStateInput.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    TestStateInput.add_member(:inspection_level, Shapes::ShapeRef.new(shape: InspectionLevel, location_name: "inspectionLevel"))
    TestStateInput.add_member(:reveal_secrets, Shapes::ShapeRef.new(shape: RevealSecrets, location_name: "revealSecrets"))
    TestStateInput.add_member(:variables, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "variables"))
    TestStateInput.add_member(:state_name, Shapes::ShapeRef.new(shape: TestStateStateName, location_name: "stateName"))
    TestStateInput.add_member(:mock, Shapes::ShapeRef.new(shape: MockInput, location_name: "mock"))
    TestStateInput.add_member(:context, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "context"))
    TestStateInput.add_member(:state_configuration, Shapes::ShapeRef.new(shape: TestStateConfiguration, location_name: "stateConfiguration"))
    TestStateInput.struct_class = Types::TestStateInput

    TestStateOutput.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    TestStateOutput.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    TestStateOutput.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    TestStateOutput.add_member(:inspection_data, Shapes::ShapeRef.new(shape: InspectionData, location_name: "inspectionData"))
    TestStateOutput.add_member(:next_state, Shapes::ShapeRef.new(shape: StateName, location_name: "nextState"))
    TestStateOutput.add_member(:status, Shapes::ShapeRef.new(shape: TestExecutionStatus, location_name: "status"))
    TestStateOutput.struct_class = Types::TestStateOutput

    TooManyTags.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TooManyTags.add_member(:resource_name, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceName"))
    TooManyTags.struct_class = Types::TooManyTags

    TracingConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "enabled"))
    TracingConfiguration.struct_class = Types::TracingConfiguration

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateMapRunInput.add_member(:map_run_arn, Shapes::ShapeRef.new(shape: LongArn, required: true, location_name: "mapRunArn"))
    UpdateMapRunInput.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "maxConcurrency", metadata: {"box" => true}))
    UpdateMapRunInput.add_member(:tolerated_failure_percentage, Shapes::ShapeRef.new(shape: ToleratedFailurePercentage, location_name: "toleratedFailurePercentage", metadata: {"box" => true}))
    UpdateMapRunInput.add_member(:tolerated_failure_count, Shapes::ShapeRef.new(shape: ToleratedFailureCount, location_name: "toleratedFailureCount", metadata: {"box" => true}))
    UpdateMapRunInput.struct_class = Types::UpdateMapRunInput

    UpdateMapRunOutput.struct_class = Types::UpdateMapRunOutput

    UpdateStateMachineAliasInput.add_member(:state_machine_alias_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineAliasArn"))
    UpdateStateMachineAliasInput.add_member(:description, Shapes::ShapeRef.new(shape: AliasDescription, location_name: "description"))
    UpdateStateMachineAliasInput.add_member(:routing_configuration, Shapes::ShapeRef.new(shape: RoutingConfigurationList, location_name: "routingConfiguration"))
    UpdateStateMachineAliasInput.struct_class = Types::UpdateStateMachineAliasInput

    UpdateStateMachineAliasOutput.add_member(:update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDate"))
    UpdateStateMachineAliasOutput.struct_class = Types::UpdateStateMachineAliasOutput

    UpdateStateMachineInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    UpdateStateMachineInput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, location_name: "definition"))
    UpdateStateMachineInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    UpdateStateMachineInput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    UpdateStateMachineInput.add_member(:tracing_configuration, Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: "tracingConfiguration"))
    UpdateStateMachineInput.add_member(:publish, Shapes::ShapeRef.new(shape: Publish, location_name: "publish"))
    UpdateStateMachineInput.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "versionDescription"))
    UpdateStateMachineInput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    UpdateStateMachineInput.struct_class = Types::UpdateStateMachineInput

    UpdateStateMachineOutput.add_member(:update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDate"))
    UpdateStateMachineOutput.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    UpdateStateMachineOutput.add_member(:state_machine_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "stateMachineVersionArn"))
    UpdateStateMachineOutput.struct_class = Types::UpdateStateMachineOutput

    ValidateStateMachineDefinitionDiagnostic.add_member(:severity, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionSeverity, required: true, location_name: "severity"))
    ValidateStateMachineDefinitionDiagnostic.add_member(:code, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionCode, required: true, location_name: "code"))
    ValidateStateMachineDefinitionDiagnostic.add_member(:message, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionMessage, required: true, location_name: "message"))
    ValidateStateMachineDefinitionDiagnostic.add_member(:location, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionLocation, location_name: "location"))
    ValidateStateMachineDefinitionDiagnostic.struct_class = Types::ValidateStateMachineDefinitionDiagnostic

    ValidateStateMachineDefinitionDiagnosticList.member = Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionDiagnostic)

    ValidateStateMachineDefinitionInput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    ValidateStateMachineDefinitionInput.add_member(:type, Shapes::ShapeRef.new(shape: StateMachineType, location_name: "type"))
    ValidateStateMachineDefinitionInput.add_member(:severity, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionSeverity, location_name: "severity"))
    ValidateStateMachineDefinitionInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionMaxResult, location_name: "maxResults"))
    ValidateStateMachineDefinitionInput.struct_class = Types::ValidateStateMachineDefinitionInput

    ValidateStateMachineDefinitionOutput.add_member(:result, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionResultCode, required: true, location_name: "result"))
    ValidateStateMachineDefinitionOutput.add_member(:diagnostics, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionDiagnosticList, required: true, location_name: "diagnostics"))
    ValidateStateMachineDefinitionOutput.add_member(:truncated, Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionTruncated, location_name: "truncated"))
    ValidateStateMachineDefinitionOutput.struct_class = Types::ValidateStateMachineDefinitionOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    VariableNameList.member = Shapes::ShapeRef.new(shape: VariableName)

    VariableReferences.key = Shapes::ShapeRef.new(shape: StateName)
    VariableReferences.value = Shapes::ShapeRef.new(shape: VariableNameList)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-11-23"

      api.metadata = {
        "apiVersion" => "2016-11-23",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "states",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "AWS SFN",
        "serviceFullName" => "AWS Step Functions",
        "serviceId" => "SFN",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSStepFunctions",
        "uid" => "states-2016-11-23",
      }

      api.add_operation(:create_activity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateActivity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateActivityInput)
        o.output = Shapes::ShapeRef.new(shape: CreateActivityOutput)
        o.errors << Shapes::ShapeRef.new(shape: ActivityLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ActivityAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidName)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTags)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncryptionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:create_state_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStateMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStateMachineInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStateMachineOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefinition)
        o.errors << Shapes::ShapeRef.new(shape: InvalidName)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoggingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTracingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDeleting)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTags)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncryptionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:create_state_machine_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStateMachineAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStateMachineAliasInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStateMachineAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidName)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDeleting)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_activity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteActivity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteActivityInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteActivityOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
      end)

      api.add_operation(:delete_state_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStateMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStateMachineInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteStateMachineOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_state_machine_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStateMachineAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStateMachineAliasInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteStateMachineAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_state_machine_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStateMachineVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStateMachineVersionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteStateMachineVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_activity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeActivity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeActivityInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeActivityOutput)
        o.errors << Shapes::ShapeRef.new(shape: ActivityDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
      end)

      api.add_operation(:describe_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:describe_map_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMapRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMapRunInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMapRunOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
      end)

      api.add_operation(:describe_state_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStateMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStateMachineInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStateMachineOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:describe_state_machine_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStateMachineAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStateMachineAliasInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStateMachineAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_state_machine_for_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStateMachineForExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStateMachineForExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStateMachineForExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:get_activity_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetActivityTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetActivityTaskInput)
        o.output = Shapes::ShapeRef.new(shape: GetActivityTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ActivityDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: ActivityWorkerLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:get_execution_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExecutionHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExecutionHistoryInput)
        o.output = Shapes::ShapeRef.new(shape: GetExecutionHistoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_activities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActivities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListActivitiesInput)
        o.output = Shapes::ShapeRef.new(shape: ListActivitiesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListExecutionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_map_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMapRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMapRunsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMapRunsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_state_machine_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStateMachineAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStateMachineAliasesInput)
        o.output = Shapes::ShapeRef.new(shape: ListStateMachineAliasesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDeleting)
      end)

      api.add_operation(:list_state_machine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStateMachineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStateMachineVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStateMachineVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
      end)

      api.add_operation(:list_state_machines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStateMachines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStateMachinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListStateMachinesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:publish_state_machine_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishStateMachineVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PublishStateMachineVersionInput)
        o.output = Shapes::ShapeRef.new(shape: PublishStateMachineVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDeleting)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
      end)

      api.add_operation(:redrive_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedriveExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RedriveExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: RedriveExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionNotRedrivable)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:send_task_failure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendTaskFailure"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendTaskFailureInput)
        o.output = Shapes::ShapeRef.new(shape: SendTaskFailureOutput)
        o.errors << Shapes::ShapeRef.new(shape: TaskDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o.errors << Shapes::ShapeRef.new(shape: TaskTimedOut)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:send_task_heartbeat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendTaskHeartbeat"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendTaskHeartbeatInput)
        o.output = Shapes::ShapeRef.new(shape: SendTaskHeartbeatOutput)
        o.errors << Shapes::ShapeRef.new(shape: TaskDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o.errors << Shapes::ShapeRef.new(shape: TaskTimedOut)
      end)

      api.add_operation(:send_task_success, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendTaskSuccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendTaskSuccessInput)
        o.output = Shapes::ShapeRef.new(shape: SendTaskSuccessOutput)
        o.errors << Shapes::ShapeRef.new(shape: TaskDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o.errors << Shapes::ShapeRef.new(shape: TaskTimedOut)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:start_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StartExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExecutionInput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidName)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDeleting)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:start_sync_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSyncExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "sync-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartSyncExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StartSyncExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExecutionInput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidName)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDeleting)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:stop_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StopExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTags)
      end)

      api.add_operation(:test_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "sync-",
        }
        o.input = Shapes::ShapeRef.new(shape: TestStateInput)
        o.output = Shapes::ShapeRef.new(shape: TestStateOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefinition)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExecutionInput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_map_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMapRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMapRunInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMapRunOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_state_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStateMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStateMachineInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateStateMachineOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefinition)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoggingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTracingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameter)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDeleting)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncryptionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottlingException)
      end)

      api.add_operation(:update_state_machine_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStateMachineAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStateMachineAliasInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateStateMachineAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDeleting)
      end)

      api.add_operation(:validate_state_machine_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateStateMachineDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateStateMachineDefinitionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
