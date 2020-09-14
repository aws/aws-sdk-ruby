# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::States
  # @api private
  module ClientApi

    include Seahorse::Model

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
    Arn = Shapes::StringShape.new(name: 'Arn')
    CloudWatchEventsExecutionDataDetails = Shapes::StructureShape.new(name: 'CloudWatchEventsExecutionDataDetails')
    CloudWatchLogsLogGroup = Shapes::StructureShape.new(name: 'CloudWatchLogsLogGroup')
    ConnectorParameters = Shapes::StringShape.new(name: 'ConnectorParameters')
    CreateActivityInput = Shapes::StructureShape.new(name: 'CreateActivityInput')
    CreateActivityOutput = Shapes::StructureShape.new(name: 'CreateActivityOutput')
    CreateStateMachineInput = Shapes::StructureShape.new(name: 'CreateStateMachineInput')
    CreateStateMachineOutput = Shapes::StructureShape.new(name: 'CreateStateMachineOutput')
    Definition = Shapes::StringShape.new(name: 'Definition')
    DeleteActivityInput = Shapes::StructureShape.new(name: 'DeleteActivityInput')
    DeleteActivityOutput = Shapes::StructureShape.new(name: 'DeleteActivityOutput')
    DeleteStateMachineInput = Shapes::StructureShape.new(name: 'DeleteStateMachineInput')
    DeleteStateMachineOutput = Shapes::StructureShape.new(name: 'DeleteStateMachineOutput')
    DescribeActivityInput = Shapes::StructureShape.new(name: 'DescribeActivityInput')
    DescribeActivityOutput = Shapes::StructureShape.new(name: 'DescribeActivityOutput')
    DescribeExecutionInput = Shapes::StructureShape.new(name: 'DescribeExecutionInput')
    DescribeExecutionOutput = Shapes::StructureShape.new(name: 'DescribeExecutionOutput')
    DescribeStateMachineForExecutionInput = Shapes::StructureShape.new(name: 'DescribeStateMachineForExecutionInput')
    DescribeStateMachineForExecutionOutput = Shapes::StructureShape.new(name: 'DescribeStateMachineForExecutionOutput')
    DescribeStateMachineInput = Shapes::StructureShape.new(name: 'DescribeStateMachineInput')
    DescribeStateMachineOutput = Shapes::StructureShape.new(name: 'DescribeStateMachineOutput')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventId = Shapes::IntegerShape.new(name: 'EventId')
    ExecutionAbortedEventDetails = Shapes::StructureShape.new(name: 'ExecutionAbortedEventDetails')
    ExecutionAlreadyExists = Shapes::StructureShape.new(name: 'ExecutionAlreadyExists')
    ExecutionDoesNotExist = Shapes::StructureShape.new(name: 'ExecutionDoesNotExist')
    ExecutionFailedEventDetails = Shapes::StructureShape.new(name: 'ExecutionFailedEventDetails')
    ExecutionLimitExceeded = Shapes::StructureShape.new(name: 'ExecutionLimitExceeded')
    ExecutionList = Shapes::ListShape.new(name: 'ExecutionList')
    ExecutionListItem = Shapes::StructureShape.new(name: 'ExecutionListItem')
    ExecutionStartedEventDetails = Shapes::StructureShape.new(name: 'ExecutionStartedEventDetails')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExecutionSucceededEventDetails = Shapes::StructureShape.new(name: 'ExecutionSucceededEventDetails')
    ExecutionTimedOutEventDetails = Shapes::StructureShape.new(name: 'ExecutionTimedOutEventDetails')
    GetActivityTaskInput = Shapes::StructureShape.new(name: 'GetActivityTaskInput')
    GetActivityTaskOutput = Shapes::StructureShape.new(name: 'GetActivityTaskOutput')
    GetExecutionHistoryInput = Shapes::StructureShape.new(name: 'GetExecutionHistoryInput')
    GetExecutionHistoryOutput = Shapes::StructureShape.new(name: 'GetExecutionHistoryOutput')
    HistoryEvent = Shapes::StructureShape.new(name: 'HistoryEvent')
    HistoryEventExecutionDataDetails = Shapes::StructureShape.new(name: 'HistoryEventExecutionDataDetails')
    HistoryEventList = Shapes::ListShape.new(name: 'HistoryEventList')
    HistoryEventType = Shapes::StringShape.new(name: 'HistoryEventType')
    Identity = Shapes::StringShape.new(name: 'Identity')
    IncludeExecutionData = Shapes::BooleanShape.new(name: 'IncludeExecutionData')
    IncludeExecutionDataGetExecutionHistory = Shapes::BooleanShape.new(name: 'IncludeExecutionDataGetExecutionHistory')
    InvalidArn = Shapes::StructureShape.new(name: 'InvalidArn')
    InvalidDefinition = Shapes::StructureShape.new(name: 'InvalidDefinition')
    InvalidExecutionInput = Shapes::StructureShape.new(name: 'InvalidExecutionInput')
    InvalidLoggingConfiguration = Shapes::StructureShape.new(name: 'InvalidLoggingConfiguration')
    InvalidName = Shapes::StructureShape.new(name: 'InvalidName')
    InvalidOutput = Shapes::StructureShape.new(name: 'InvalidOutput')
    InvalidToken = Shapes::StructureShape.new(name: 'InvalidToken')
    InvalidTracingConfiguration = Shapes::StructureShape.new(name: 'InvalidTracingConfiguration')
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
    ListStateMachinesInput = Shapes::StructureShape.new(name: 'ListStateMachinesInput')
    ListStateMachinesOutput = Shapes::StructureShape.new(name: 'ListStateMachinesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    LogDestination = Shapes::StructureShape.new(name: 'LogDestination')
    LogDestinationList = Shapes::ListShape.new(name: 'LogDestinationList')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    MapIterationEventDetails = Shapes::StructureShape.new(name: 'MapIterationEventDetails')
    MapStateStartedEventDetails = Shapes::StructureShape.new(name: 'MapStateStartedEventDetails')
    MissingRequiredParameter = Shapes::StructureShape.new(name: 'MissingRequiredParameter')
    Name = Shapes::StringShape.new(name: 'Name')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    ReverseOrder = Shapes::BooleanShape.new(name: 'ReverseOrder')
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
    StartExecutionInput = Shapes::StructureShape.new(name: 'StartExecutionInput')
    StartExecutionOutput = Shapes::StructureShape.new(name: 'StartExecutionOutput')
    StateEnteredEventDetails = Shapes::StructureShape.new(name: 'StateEnteredEventDetails')
    StateExitedEventDetails = Shapes::StructureShape.new(name: 'StateExitedEventDetails')
    StateMachineAlreadyExists = Shapes::StructureShape.new(name: 'StateMachineAlreadyExists')
    StateMachineDeleting = Shapes::StructureShape.new(name: 'StateMachineDeleting')
    StateMachineDoesNotExist = Shapes::StructureShape.new(name: 'StateMachineDoesNotExist')
    StateMachineLimitExceeded = Shapes::StructureShape.new(name: 'StateMachineLimitExceeded')
    StateMachineList = Shapes::ListShape.new(name: 'StateMachineList')
    StateMachineListItem = Shapes::StructureShape.new(name: 'StateMachineListItem')
    StateMachineStatus = Shapes::StringShape.new(name: 'StateMachineStatus')
    StateMachineType = Shapes::StringShape.new(name: 'StateMachineType')
    StateMachineTypeNotSupported = Shapes::StructureShape.new(name: 'StateMachineTypeNotSupported')
    StopExecutionInput = Shapes::StructureShape.new(name: 'StopExecutionInput')
    StopExecutionOutput = Shapes::StructureShape.new(name: 'StopExecutionOutput')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
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
    TimeoutInSeconds = Shapes::IntegerShape.new(name: 'TimeoutInSeconds')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTags = Shapes::StructureShape.new(name: 'TooManyTags')
    TraceHeader = Shapes::StringShape.new(name: 'TraceHeader')
    TracingConfiguration = Shapes::StructureShape.new(name: 'TracingConfiguration')
    UnsignedInteger = Shapes::IntegerShape.new(name: 'UnsignedInteger')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateStateMachineInput = Shapes::StructureShape.new(name: 'UpdateStateMachineInput')
    UpdateStateMachineOutput = Shapes::StructureShape.new(name: 'UpdateStateMachineOutput')
    included = Shapes::BooleanShape.new(name: 'included')
    truncated = Shapes::BooleanShape.new(name: 'truncated')

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
    ActivityScheduledEventDetails.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "timeoutInSeconds", metadata: {"box"=>true}))
    ActivityScheduledEventDetails.add_member(:heartbeat_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "heartbeatInSeconds", metadata: {"box"=>true}))
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

    CloudWatchEventsExecutionDataDetails.add_member(:included, Shapes::ShapeRef.new(shape: included, location_name: "included"))
    CloudWatchEventsExecutionDataDetails.struct_class = Types::CloudWatchEventsExecutionDataDetails

    CloudWatchLogsLogGroup.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "logGroupArn"))
    CloudWatchLogsLogGroup.struct_class = Types::CloudWatchLogsLogGroup

    CreateActivityInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateActivityInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateActivityInput.struct_class = Types::CreateActivityInput

    CreateActivityOutput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    CreateActivityOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    CreateActivityOutput.struct_class = Types::CreateActivityOutput

    CreateStateMachineInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateStateMachineInput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    CreateStateMachineInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    CreateStateMachineInput.add_member(:type, Shapes::ShapeRef.new(shape: StateMachineType, location_name: "type"))
    CreateStateMachineInput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    CreateStateMachineInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateStateMachineInput.add_member(:tracing_configuration, Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: "tracingConfiguration"))
    CreateStateMachineInput.struct_class = Types::CreateStateMachineInput

    CreateStateMachineOutput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    CreateStateMachineOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    CreateStateMachineOutput.struct_class = Types::CreateStateMachineOutput

    DeleteActivityInput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    DeleteActivityInput.struct_class = Types::DeleteActivityInput

    DeleteActivityOutput.struct_class = Types::DeleteActivityOutput

    DeleteStateMachineInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    DeleteStateMachineInput.struct_class = Types::DeleteStateMachineInput

    DeleteStateMachineOutput.struct_class = Types::DeleteStateMachineOutput

    DescribeActivityInput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    DescribeActivityInput.struct_class = Types::DescribeActivityInput

    DescribeActivityOutput.add_member(:activity_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "activityArn"))
    DescribeActivityOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DescribeActivityOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    DescribeActivityOutput.struct_class = Types::DescribeActivityOutput

    DescribeExecutionInput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
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
    DescribeExecutionOutput.struct_class = Types::DescribeExecutionOutput

    DescribeStateMachineForExecutionInput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    DescribeStateMachineForExecutionInput.struct_class = Types::DescribeStateMachineForExecutionInput

    DescribeStateMachineForExecutionOutput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    DescribeStateMachineForExecutionOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DescribeStateMachineForExecutionOutput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    DescribeStateMachineForExecutionOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    DescribeStateMachineForExecutionOutput.add_member(:update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDate"))
    DescribeStateMachineForExecutionOutput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    DescribeStateMachineForExecutionOutput.add_member(:tracing_configuration, Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: "tracingConfiguration"))
    DescribeStateMachineForExecutionOutput.struct_class = Types::DescribeStateMachineForExecutionOutput

    DescribeStateMachineInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
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
    DescribeStateMachineOutput.struct_class = Types::DescribeStateMachineOutput

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
    ExecutionListItem.struct_class = Types::ExecutionListItem

    ExecutionStartedEventDetails.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    ExecutionStartedEventDetails.add_member(:input_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "inputDetails"))
    ExecutionStartedEventDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
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
    HistoryEvent.struct_class = Types::HistoryEvent

    HistoryEventExecutionDataDetails.add_member(:truncated, Shapes::ShapeRef.new(shape: truncated, location_name: "truncated"))
    HistoryEventExecutionDataDetails.struct_class = Types::HistoryEventExecutionDataDetails

    HistoryEventList.member = Shapes::ShapeRef.new(shape: HistoryEvent)

    InvalidArn.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidArn.struct_class = Types::InvalidArn

    InvalidDefinition.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidDefinition.struct_class = Types::InvalidDefinition

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

    LambdaFunctionFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    LambdaFunctionFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    LambdaFunctionFailedEventDetails.struct_class = Types::LambdaFunctionFailedEventDetails

    LambdaFunctionScheduleFailedEventDetails.add_member(:error, Shapes::ShapeRef.new(shape: SensitiveError, location_name: "error"))
    LambdaFunctionScheduleFailedEventDetails.add_member(:cause, Shapes::ShapeRef.new(shape: SensitiveCause, location_name: "cause"))
    LambdaFunctionScheduleFailedEventDetails.struct_class = Types::LambdaFunctionScheduleFailedEventDetails

    LambdaFunctionScheduledEventDetails.add_member(:resource, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resource"))
    LambdaFunctionScheduledEventDetails.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    LambdaFunctionScheduledEventDetails.add_member(:input_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "inputDetails"))
    LambdaFunctionScheduledEventDetails.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "timeoutInSeconds", metadata: {"box"=>true}))
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

    ListExecutionsInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    ListExecutionsInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "statusFilter"))
    ListExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListExecutionsPageToken, location_name: "nextToken"))
    ListExecutionsInput.struct_class = Types::ListExecutionsInput

    ListExecutionsOutput.add_member(:executions, Shapes::ShapeRef.new(shape: ExecutionList, required: true, location_name: "executions"))
    ListExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListExecutionsPageToken, location_name: "nextToken"))
    ListExecutionsOutput.struct_class = Types::ListExecutionsOutput

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

    MapStateStartedEventDetails.add_member(:length, Shapes::ShapeRef.new(shape: UnsignedInteger, location_name: "length"))
    MapStateStartedEventDetails.struct_class = Types::MapStateStartedEventDetails

    MissingRequiredParameter.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    MissingRequiredParameter.struct_class = Types::MissingRequiredParameter

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFound.add_member(:resource_name, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceName"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

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

    StartExecutionInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    StartExecutionInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartExecutionInput.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    StartExecutionInput.add_member(:trace_header, Shapes::ShapeRef.new(shape: TraceHeader, location_name: "traceHeader"))
    StartExecutionInput.struct_class = Types::StartExecutionInput

    StartExecutionOutput.add_member(:execution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "executionArn"))
    StartExecutionOutput.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    StartExecutionOutput.struct_class = Types::StartExecutionOutput

    StateEnteredEventDetails.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    StateEnteredEventDetails.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "input"))
    StateEnteredEventDetails.add_member(:input_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "inputDetails"))
    StateEnteredEventDetails.struct_class = Types::StateEnteredEventDetails

    StateExitedEventDetails.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    StateExitedEventDetails.add_member(:output, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "output"))
    StateExitedEventDetails.add_member(:output_details, Shapes::ShapeRef.new(shape: HistoryEventExecutionDataDetails, location_name: "outputDetails"))
    StateExitedEventDetails.struct_class = Types::StateExitedEventDetails

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
    TaskScheduledEventDetails.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "timeoutInSeconds", metadata: {"box"=>true}))
    TaskScheduledEventDetails.add_member(:heartbeat_in_seconds, Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: "heartbeatInSeconds", metadata: {"box"=>true}))
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

    TooManyTags.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TooManyTags.add_member(:resource_name, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceName"))
    TooManyTags.struct_class = Types::TooManyTags

    TracingConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "enabled"))
    TracingConfiguration.struct_class = Types::TracingConfiguration

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateStateMachineInput.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "stateMachineArn"))
    UpdateStateMachineInput.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, location_name: "definition"))
    UpdateStateMachineInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    UpdateStateMachineInput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    UpdateStateMachineInput.add_member(:tracing_configuration, Shapes::ShapeRef.new(shape: TracingConfiguration, location_name: "tracingConfiguration"))
    UpdateStateMachineInput.struct_class = Types::UpdateStateMachineInput

    UpdateStateMachineOutput.add_member(:update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDate"))
    UpdateStateMachineOutput.struct_class = Types::UpdateStateMachineOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-11-23"

      api.metadata = {
        "apiVersion" => "2016-11-23",
        "endpointPrefix" => "states",
        "jsonVersion" => "1.0",
        "protocol" => "json",
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidName)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTags)
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
      end)

      api.add_operation(:describe_state_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStateMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStateMachineInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStateMachineOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: StateMachineDoesNotExist)
      end)

      api.add_operation(:describe_state_machine_for_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStateMachineForExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStateMachineForExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStateMachineForExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:send_task_failure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendTaskFailure"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendTaskFailureInput)
        o.output = Shapes::ShapeRef.new(shape: SendTaskFailureOutput)
        o.errors << Shapes::ShapeRef.new(shape: TaskDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidToken)
        o.errors << Shapes::ShapeRef.new(shape: TaskTimedOut)
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
      end)

      api.add_operation(:stop_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StopExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ExecutionDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
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

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArn)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
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
      end)
    end

  end
end
