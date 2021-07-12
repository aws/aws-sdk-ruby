# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTEvents
  # @api private
  module ClientApi

    include Seahorse::Model

    AcknowledgeFlow = Shapes::StructureShape.new(name: 'AcknowledgeFlow')
    AcknowledgeFlowEnabled = Shapes::BooleanShape.new(name: 'AcknowledgeFlowEnabled')
    Action = Shapes::StructureShape.new(name: 'Action')
    Actions = Shapes::ListShape.new(name: 'Actions')
    AlarmAction = Shapes::StructureShape.new(name: 'AlarmAction')
    AlarmActions = Shapes::ListShape.new(name: 'AlarmActions')
    AlarmCapabilities = Shapes::StructureShape.new(name: 'AlarmCapabilities')
    AlarmEventActions = Shapes::StructureShape.new(name: 'AlarmEventActions')
    AlarmModelArn = Shapes::StringShape.new(name: 'AlarmModelArn')
    AlarmModelDescription = Shapes::StringShape.new(name: 'AlarmModelDescription')
    AlarmModelName = Shapes::StringShape.new(name: 'AlarmModelName')
    AlarmModelSummaries = Shapes::ListShape.new(name: 'AlarmModelSummaries')
    AlarmModelSummary = Shapes::StructureShape.new(name: 'AlarmModelSummary')
    AlarmModelVersion = Shapes::StringShape.new(name: 'AlarmModelVersion')
    AlarmModelVersionStatus = Shapes::StringShape.new(name: 'AlarmModelVersionStatus')
    AlarmModelVersionSummaries = Shapes::ListShape.new(name: 'AlarmModelVersionSummaries')
    AlarmModelVersionSummary = Shapes::StructureShape.new(name: 'AlarmModelVersionSummary')
    AlarmNotification = Shapes::StructureShape.new(name: 'AlarmNotification')
    AlarmRule = Shapes::StructureShape.new(name: 'AlarmRule')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AnalysisId = Shapes::StringShape.new(name: 'AnalysisId')
    AnalysisMessage = Shapes::StringShape.new(name: 'AnalysisMessage')
    AnalysisResult = Shapes::StructureShape.new(name: 'AnalysisResult')
    AnalysisResultLevel = Shapes::StringShape.new(name: 'AnalysisResultLevel')
    AnalysisResultLocation = Shapes::StructureShape.new(name: 'AnalysisResultLocation')
    AnalysisResultLocationPath = Shapes::StringShape.new(name: 'AnalysisResultLocationPath')
    AnalysisResultLocations = Shapes::ListShape.new(name: 'AnalysisResultLocations')
    AnalysisResults = Shapes::ListShape.new(name: 'AnalysisResults')
    AnalysisStatus = Shapes::StringShape.new(name: 'AnalysisStatus')
    AnalysisType = Shapes::StringShape.new(name: 'AnalysisType')
    AssetId = Shapes::StringShape.new(name: 'AssetId')
    AssetModelId = Shapes::StringShape.new(name: 'AssetModelId')
    AssetPropertyAlias = Shapes::StringShape.new(name: 'AssetPropertyAlias')
    AssetPropertyBooleanValue = Shapes::StringShape.new(name: 'AssetPropertyBooleanValue')
    AssetPropertyDoubleValue = Shapes::StringShape.new(name: 'AssetPropertyDoubleValue')
    AssetPropertyEntryId = Shapes::StringShape.new(name: 'AssetPropertyEntryId')
    AssetPropertyId = Shapes::StringShape.new(name: 'AssetPropertyId')
    AssetPropertyIntegerValue = Shapes::StringShape.new(name: 'AssetPropertyIntegerValue')
    AssetPropertyOffsetInNanos = Shapes::StringShape.new(name: 'AssetPropertyOffsetInNanos')
    AssetPropertyQuality = Shapes::StringShape.new(name: 'AssetPropertyQuality')
    AssetPropertyStringValue = Shapes::StringShape.new(name: 'AssetPropertyStringValue')
    AssetPropertyTimeInSeconds = Shapes::StringShape.new(name: 'AssetPropertyTimeInSeconds')
    AssetPropertyTimestamp = Shapes::StructureShape.new(name: 'AssetPropertyTimestamp')
    AssetPropertyValue = Shapes::StructureShape.new(name: 'AssetPropertyValue')
    AssetPropertyVariant = Shapes::StructureShape.new(name: 'AssetPropertyVariant')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeJsonPath = Shapes::StringShape.new(name: 'AttributeJsonPath')
    Attributes = Shapes::ListShape.new(name: 'Attributes')
    ClearTimerAction = Shapes::StructureShape.new(name: 'ClearTimerAction')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    Condition = Shapes::StringShape.new(name: 'Condition')
    ContentExpression = Shapes::StringShape.new(name: 'ContentExpression')
    CreateAlarmModelRequest = Shapes::StructureShape.new(name: 'CreateAlarmModelRequest')
    CreateAlarmModelResponse = Shapes::StructureShape.new(name: 'CreateAlarmModelResponse')
    CreateDetectorModelRequest = Shapes::StructureShape.new(name: 'CreateDetectorModelRequest')
    CreateDetectorModelResponse = Shapes::StructureShape.new(name: 'CreateDetectorModelResponse')
    CreateInputRequest = Shapes::StructureShape.new(name: 'CreateInputRequest')
    CreateInputResponse = Shapes::StructureShape.new(name: 'CreateInputResponse')
    DeleteAlarmModelRequest = Shapes::StructureShape.new(name: 'DeleteAlarmModelRequest')
    DeleteAlarmModelResponse = Shapes::StructureShape.new(name: 'DeleteAlarmModelResponse')
    DeleteDetectorModelRequest = Shapes::StructureShape.new(name: 'DeleteDetectorModelRequest')
    DeleteDetectorModelResponse = Shapes::StructureShape.new(name: 'DeleteDetectorModelResponse')
    DeleteInputRequest = Shapes::StructureShape.new(name: 'DeleteInputRequest')
    DeleteInputResponse = Shapes::StructureShape.new(name: 'DeleteInputResponse')
    DeliveryStreamName = Shapes::StringShape.new(name: 'DeliveryStreamName')
    DescribeAlarmModelRequest = Shapes::StructureShape.new(name: 'DescribeAlarmModelRequest')
    DescribeAlarmModelResponse = Shapes::StructureShape.new(name: 'DescribeAlarmModelResponse')
    DescribeDetectorModelAnalysisRequest = Shapes::StructureShape.new(name: 'DescribeDetectorModelAnalysisRequest')
    DescribeDetectorModelAnalysisResponse = Shapes::StructureShape.new(name: 'DescribeDetectorModelAnalysisResponse')
    DescribeDetectorModelRequest = Shapes::StructureShape.new(name: 'DescribeDetectorModelRequest')
    DescribeDetectorModelResponse = Shapes::StructureShape.new(name: 'DescribeDetectorModelResponse')
    DescribeInputRequest = Shapes::StructureShape.new(name: 'DescribeInputRequest')
    DescribeInputResponse = Shapes::StructureShape.new(name: 'DescribeInputResponse')
    DescribeLoggingOptionsRequest = Shapes::StructureShape.new(name: 'DescribeLoggingOptionsRequest')
    DescribeLoggingOptionsResponse = Shapes::StructureShape.new(name: 'DescribeLoggingOptionsResponse')
    DetectorDebugOption = Shapes::StructureShape.new(name: 'DetectorDebugOption')
    DetectorDebugOptions = Shapes::ListShape.new(name: 'DetectorDebugOptions')
    DetectorModel = Shapes::StructureShape.new(name: 'DetectorModel')
    DetectorModelArn = Shapes::StringShape.new(name: 'DetectorModelArn')
    DetectorModelConfiguration = Shapes::StructureShape.new(name: 'DetectorModelConfiguration')
    DetectorModelDefinition = Shapes::StructureShape.new(name: 'DetectorModelDefinition')
    DetectorModelDescription = Shapes::StringShape.new(name: 'DetectorModelDescription')
    DetectorModelName = Shapes::StringShape.new(name: 'DetectorModelName')
    DetectorModelSummaries = Shapes::ListShape.new(name: 'DetectorModelSummaries')
    DetectorModelSummary = Shapes::StructureShape.new(name: 'DetectorModelSummary')
    DetectorModelVersion = Shapes::StringShape.new(name: 'DetectorModelVersion')
    DetectorModelVersionStatus = Shapes::StringShape.new(name: 'DetectorModelVersionStatus')
    DetectorModelVersionSummaries = Shapes::ListShape.new(name: 'DetectorModelVersionSummaries')
    DetectorModelVersionSummary = Shapes::StructureShape.new(name: 'DetectorModelVersionSummary')
    DisabledOnInitialization = Shapes::BooleanShape.new(name: 'DisabledOnInitialization')
    DynamoDBAction = Shapes::StructureShape.new(name: 'DynamoDBAction')
    DynamoDBv2Action = Shapes::StructureShape.new(name: 'DynamoDBv2Action')
    DynamoKeyField = Shapes::StringShape.new(name: 'DynamoKeyField')
    DynamoKeyType = Shapes::StringShape.new(name: 'DynamoKeyType')
    DynamoKeyValue = Shapes::StringShape.new(name: 'DynamoKeyValue')
    DynamoOperation = Shapes::StringShape.new(name: 'DynamoOperation')
    DynamoTableName = Shapes::StringShape.new(name: 'DynamoTableName')
    EmailConfiguration = Shapes::StructureShape.new(name: 'EmailConfiguration')
    EmailConfigurations = Shapes::ListShape.new(name: 'EmailConfigurations')
    EmailContent = Shapes::StructureShape.new(name: 'EmailContent')
    EmailRecipients = Shapes::StructureShape.new(name: 'EmailRecipients')
    EmailSubject = Shapes::StringShape.new(name: 'EmailSubject')
    EvaluationMethod = Shapes::StringShape.new(name: 'EvaluationMethod')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventName = Shapes::StringShape.new(name: 'EventName')
    Events = Shapes::ListShape.new(name: 'Events')
    FirehoseAction = Shapes::StructureShape.new(name: 'FirehoseAction')
    FirehoseSeparator = Shapes::StringShape.new(name: 'FirehoseSeparator')
    FromEmail = Shapes::StringShape.new(name: 'FromEmail')
    GetDetectorModelAnalysisResultsRequest = Shapes::StructureShape.new(name: 'GetDetectorModelAnalysisResultsRequest')
    GetDetectorModelAnalysisResultsResponse = Shapes::StructureShape.new(name: 'GetDetectorModelAnalysisResultsResponse')
    IdentityStoreId = Shapes::StringShape.new(name: 'IdentityStoreId')
    InitializationConfiguration = Shapes::StructureShape.new(name: 'InitializationConfiguration')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputArn = Shapes::StringShape.new(name: 'InputArn')
    InputConfiguration = Shapes::StructureShape.new(name: 'InputConfiguration')
    InputDefinition = Shapes::StructureShape.new(name: 'InputDefinition')
    InputDescription = Shapes::StringShape.new(name: 'InputDescription')
    InputIdentifier = Shapes::StructureShape.new(name: 'InputIdentifier')
    InputName = Shapes::StringShape.new(name: 'InputName')
    InputProperty = Shapes::StringShape.new(name: 'InputProperty')
    InputStatus = Shapes::StringShape.new(name: 'InputStatus')
    InputSummaries = Shapes::ListShape.new(name: 'InputSummaries')
    InputSummary = Shapes::StructureShape.new(name: 'InputSummary')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IotEventsAction = Shapes::StructureShape.new(name: 'IotEventsAction')
    IotEventsInputIdentifier = Shapes::StructureShape.new(name: 'IotEventsInputIdentifier')
    IotSiteWiseAction = Shapes::StructureShape.new(name: 'IotSiteWiseAction')
    IotSiteWiseAssetModelPropertyIdentifier = Shapes::StructureShape.new(name: 'IotSiteWiseAssetModelPropertyIdentifier')
    IotSiteWiseInputIdentifier = Shapes::StructureShape.new(name: 'IotSiteWiseInputIdentifier')
    IotTopicPublishAction = Shapes::StructureShape.new(name: 'IotTopicPublishAction')
    KeyValue = Shapes::StringShape.new(name: 'KeyValue')
    LambdaAction = Shapes::StructureShape.new(name: 'LambdaAction')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAlarmModelVersionsRequest = Shapes::StructureShape.new(name: 'ListAlarmModelVersionsRequest')
    ListAlarmModelVersionsResponse = Shapes::StructureShape.new(name: 'ListAlarmModelVersionsResponse')
    ListAlarmModelsRequest = Shapes::StructureShape.new(name: 'ListAlarmModelsRequest')
    ListAlarmModelsResponse = Shapes::StructureShape.new(name: 'ListAlarmModelsResponse')
    ListDetectorModelVersionsRequest = Shapes::StructureShape.new(name: 'ListDetectorModelVersionsRequest')
    ListDetectorModelVersionsResponse = Shapes::StructureShape.new(name: 'ListDetectorModelVersionsResponse')
    ListDetectorModelsRequest = Shapes::StructureShape.new(name: 'ListDetectorModelsRequest')
    ListDetectorModelsResponse = Shapes::StructureShape.new(name: 'ListDetectorModelsResponse')
    ListInputRoutingsRequest = Shapes::StructureShape.new(name: 'ListInputRoutingsRequest')
    ListInputRoutingsResponse = Shapes::StructureShape.new(name: 'ListInputRoutingsResponse')
    ListInputsRequest = Shapes::StructureShape.new(name: 'ListInputsRequest')
    ListInputsResponse = Shapes::StructureShape.new(name: 'ListInputsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LoggingEnabled = Shapes::BooleanShape.new(name: 'LoggingEnabled')
    LoggingLevel = Shapes::StringShape.new(name: 'LoggingLevel')
    LoggingOptions = Shapes::StructureShape.new(name: 'LoggingOptions')
    MQTTTopic = Shapes::StringShape.new(name: 'MQTTTopic')
    MaxAnalysisResults = Shapes::IntegerShape.new(name: 'MaxAnalysisResults')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotificationAction = Shapes::StructureShape.new(name: 'NotificationAction')
    NotificationActions = Shapes::ListShape.new(name: 'NotificationActions')
    NotificationAdditionalMessage = Shapes::StringShape.new(name: 'NotificationAdditionalMessage')
    NotificationTargetActions = Shapes::StructureShape.new(name: 'NotificationTargetActions')
    OnEnterLifecycle = Shapes::StructureShape.new(name: 'OnEnterLifecycle')
    OnExitLifecycle = Shapes::StructureShape.new(name: 'OnExitLifecycle')
    OnInputLifecycle = Shapes::StructureShape.new(name: 'OnInputLifecycle')
    Payload = Shapes::StructureShape.new(name: 'Payload')
    PayloadType = Shapes::StringShape.new(name: 'PayloadType')
    PutLoggingOptionsRequest = Shapes::StructureShape.new(name: 'PutLoggingOptionsRequest')
    QueueUrl = Shapes::StringShape.new(name: 'QueueUrl')
    RecipientDetail = Shapes::StructureShape.new(name: 'RecipientDetail')
    RecipientDetails = Shapes::ListShape.new(name: 'RecipientDetails')
    ResetTimerAction = Shapes::StructureShape.new(name: 'ResetTimerAction')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoutedResource = Shapes::StructureShape.new(name: 'RoutedResource')
    RoutedResources = Shapes::ListShape.new(name: 'RoutedResources')
    SMSConfiguration = Shapes::StructureShape.new(name: 'SMSConfiguration')
    SMSConfigurations = Shapes::ListShape.new(name: 'SMSConfigurations')
    SMSSenderId = Shapes::StringShape.new(name: 'SMSSenderId')
    SNSTopicPublishAction = Shapes::StructureShape.new(name: 'SNSTopicPublishAction')
    SSOIdentity = Shapes::StructureShape.new(name: 'SSOIdentity')
    SSOReferenceId = Shapes::StringShape.new(name: 'SSOReferenceId')
    Seconds = Shapes::IntegerShape.new(name: 'Seconds')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetTimerAction = Shapes::StructureShape.new(name: 'SetTimerAction')
    SetVariableAction = Shapes::StructureShape.new(name: 'SetVariableAction')
    Severity = Shapes::IntegerShape.new(name: 'Severity')
    SimpleRule = Shapes::StructureShape.new(name: 'SimpleRule')
    SqsAction = Shapes::StructureShape.new(name: 'SqsAction')
    StartDetectorModelAnalysisRequest = Shapes::StructureShape.new(name: 'StartDetectorModelAnalysisRequest')
    StartDetectorModelAnalysisResponse = Shapes::StructureShape.new(name: 'StartDetectorModelAnalysisResponse')
    State = Shapes::StructureShape.new(name: 'State')
    StateName = Shapes::StringShape.new(name: 'StateName')
    States = Shapes::ListShape.new(name: 'States')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    Threshold = Shapes::StringShape.new(name: 'Threshold')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimerName = Shapes::StringShape.new(name: 'TimerName')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransitionEvent = Shapes::StructureShape.new(name: 'TransitionEvent')
    TransitionEvents = Shapes::ListShape.new(name: 'TransitionEvents')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAlarmModelRequest = Shapes::StructureShape.new(name: 'UpdateAlarmModelRequest')
    UpdateAlarmModelResponse = Shapes::StructureShape.new(name: 'UpdateAlarmModelResponse')
    UpdateDetectorModelRequest = Shapes::StructureShape.new(name: 'UpdateDetectorModelRequest')
    UpdateDetectorModelResponse = Shapes::StructureShape.new(name: 'UpdateDetectorModelResponse')
    UpdateInputRequest = Shapes::StructureShape.new(name: 'UpdateInputRequest')
    UpdateInputResponse = Shapes::StructureShape.new(name: 'UpdateInputResponse')
    UseBase64 = Shapes::BooleanShape.new(name: 'UseBase64')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    VariableValue = Shapes::StringShape.new(name: 'VariableValue')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    resourceArn = Shapes::StringShape.new(name: 'resourceArn')
    resourceId = Shapes::StringShape.new(name: 'resourceId')

    AcknowledgeFlow.add_member(:enabled, Shapes::ShapeRef.new(shape: AcknowledgeFlowEnabled, required: true, location_name: "enabled"))
    AcknowledgeFlow.struct_class = Types::AcknowledgeFlow

    Action.add_member(:set_variable, Shapes::ShapeRef.new(shape: SetVariableAction, location_name: "setVariable"))
    Action.add_member(:sns, Shapes::ShapeRef.new(shape: SNSTopicPublishAction, location_name: "sns"))
    Action.add_member(:iot_topic_publish, Shapes::ShapeRef.new(shape: IotTopicPublishAction, location_name: "iotTopicPublish"))
    Action.add_member(:set_timer, Shapes::ShapeRef.new(shape: SetTimerAction, location_name: "setTimer"))
    Action.add_member(:clear_timer, Shapes::ShapeRef.new(shape: ClearTimerAction, location_name: "clearTimer"))
    Action.add_member(:reset_timer, Shapes::ShapeRef.new(shape: ResetTimerAction, location_name: "resetTimer"))
    Action.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaAction, location_name: "lambda"))
    Action.add_member(:iot_events, Shapes::ShapeRef.new(shape: IotEventsAction, location_name: "iotEvents"))
    Action.add_member(:sqs, Shapes::ShapeRef.new(shape: SqsAction, location_name: "sqs"))
    Action.add_member(:firehose, Shapes::ShapeRef.new(shape: FirehoseAction, location_name: "firehose"))
    Action.add_member(:dynamo_db, Shapes::ShapeRef.new(shape: DynamoDBAction, location_name: "dynamoDB"))
    Action.add_member(:dynamo_d_bv_2, Shapes::ShapeRef.new(shape: DynamoDBv2Action, location_name: "dynamoDBv2"))
    Action.add_member(:iot_site_wise, Shapes::ShapeRef.new(shape: IotSiteWiseAction, location_name: "iotSiteWise"))
    Action.struct_class = Types::Action

    Actions.member = Shapes::ShapeRef.new(shape: Action)

    AlarmAction.add_member(:sns, Shapes::ShapeRef.new(shape: SNSTopicPublishAction, location_name: "sns"))
    AlarmAction.add_member(:iot_topic_publish, Shapes::ShapeRef.new(shape: IotTopicPublishAction, location_name: "iotTopicPublish"))
    AlarmAction.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaAction, location_name: "lambda"))
    AlarmAction.add_member(:iot_events, Shapes::ShapeRef.new(shape: IotEventsAction, location_name: "iotEvents"))
    AlarmAction.add_member(:sqs, Shapes::ShapeRef.new(shape: SqsAction, location_name: "sqs"))
    AlarmAction.add_member(:firehose, Shapes::ShapeRef.new(shape: FirehoseAction, location_name: "firehose"))
    AlarmAction.add_member(:dynamo_db, Shapes::ShapeRef.new(shape: DynamoDBAction, location_name: "dynamoDB"))
    AlarmAction.add_member(:dynamo_d_bv_2, Shapes::ShapeRef.new(shape: DynamoDBv2Action, location_name: "dynamoDBv2"))
    AlarmAction.add_member(:iot_site_wise, Shapes::ShapeRef.new(shape: IotSiteWiseAction, location_name: "iotSiteWise"))
    AlarmAction.struct_class = Types::AlarmAction

    AlarmActions.member = Shapes::ShapeRef.new(shape: AlarmAction)

    AlarmCapabilities.add_member(:initialization_configuration, Shapes::ShapeRef.new(shape: InitializationConfiguration, location_name: "initializationConfiguration"))
    AlarmCapabilities.add_member(:acknowledge_flow, Shapes::ShapeRef.new(shape: AcknowledgeFlow, location_name: "acknowledgeFlow"))
    AlarmCapabilities.struct_class = Types::AlarmCapabilities

    AlarmEventActions.add_member(:alarm_actions, Shapes::ShapeRef.new(shape: AlarmActions, location_name: "alarmActions"))
    AlarmEventActions.struct_class = Types::AlarmEventActions

    AlarmModelSummaries.member = Shapes::ShapeRef.new(shape: AlarmModelSummary)

    AlarmModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AlarmModelSummary.add_member(:alarm_model_description, Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: "alarmModelDescription"))
    AlarmModelSummary.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName"))
    AlarmModelSummary.struct_class = Types::AlarmModelSummary

    AlarmModelVersionSummaries.member = Shapes::ShapeRef.new(shape: AlarmModelVersionSummary)

    AlarmModelVersionSummary.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName"))
    AlarmModelVersionSummary.add_member(:alarm_model_arn, Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: "alarmModelArn"))
    AlarmModelVersionSummary.add_member(:alarm_model_version, Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    AlarmModelVersionSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn"))
    AlarmModelVersionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AlarmModelVersionSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    AlarmModelVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: "status"))
    AlarmModelVersionSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    AlarmModelVersionSummary.struct_class = Types::AlarmModelVersionSummary

    AlarmNotification.add_member(:notification_actions, Shapes::ShapeRef.new(shape: NotificationActions, location_name: "notificationActions"))
    AlarmNotification.struct_class = Types::AlarmNotification

    AlarmRule.add_member(:simple_rule, Shapes::ShapeRef.new(shape: SimpleRule, location_name: "simpleRule"))
    AlarmRule.struct_class = Types::AlarmRule

    AnalysisResult.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisType, location_name: "type"))
    AnalysisResult.add_member(:level, Shapes::ShapeRef.new(shape: AnalysisResultLevel, location_name: "level"))
    AnalysisResult.add_member(:message, Shapes::ShapeRef.new(shape: AnalysisMessage, location_name: "message"))
    AnalysisResult.add_member(:locations, Shapes::ShapeRef.new(shape: AnalysisResultLocations, location_name: "locations"))
    AnalysisResult.struct_class = Types::AnalysisResult

    AnalysisResultLocation.add_member(:path, Shapes::ShapeRef.new(shape: AnalysisResultLocationPath, location_name: "path"))
    AnalysisResultLocation.struct_class = Types::AnalysisResultLocation

    AnalysisResultLocations.member = Shapes::ShapeRef.new(shape: AnalysisResultLocation)

    AnalysisResults.member = Shapes::ShapeRef.new(shape: AnalysisResult)

    AssetPropertyTimestamp.add_member(:time_in_seconds, Shapes::ShapeRef.new(shape: AssetPropertyTimeInSeconds, required: true, location_name: "timeInSeconds"))
    AssetPropertyTimestamp.add_member(:offset_in_nanos, Shapes::ShapeRef.new(shape: AssetPropertyOffsetInNanos, location_name: "offsetInNanos"))
    AssetPropertyTimestamp.struct_class = Types::AssetPropertyTimestamp

    AssetPropertyValue.add_member(:value, Shapes::ShapeRef.new(shape: AssetPropertyVariant, location_name: "value"))
    AssetPropertyValue.add_member(:timestamp, Shapes::ShapeRef.new(shape: AssetPropertyTimestamp, location_name: "timestamp"))
    AssetPropertyValue.add_member(:quality, Shapes::ShapeRef.new(shape: AssetPropertyQuality, location_name: "quality"))
    AssetPropertyValue.struct_class = Types::AssetPropertyValue

    AssetPropertyVariant.add_member(:string_value, Shapes::ShapeRef.new(shape: AssetPropertyStringValue, location_name: "stringValue"))
    AssetPropertyVariant.add_member(:integer_value, Shapes::ShapeRef.new(shape: AssetPropertyIntegerValue, location_name: "integerValue"))
    AssetPropertyVariant.add_member(:double_value, Shapes::ShapeRef.new(shape: AssetPropertyDoubleValue, location_name: "doubleValue"))
    AssetPropertyVariant.add_member(:boolean_value, Shapes::ShapeRef.new(shape: AssetPropertyBooleanValue, location_name: "booleanValue"))
    AssetPropertyVariant.struct_class = Types::AssetPropertyVariant

    Attribute.add_member(:json_path, Shapes::ShapeRef.new(shape: AttributeJsonPath, required: true, location_name: "jsonPath"))
    Attribute.struct_class = Types::Attribute

    Attributes.member = Shapes::ShapeRef.new(shape: Attribute)

    ClearTimerAction.add_member(:timer_name, Shapes::ShapeRef.new(shape: TimerName, required: true, location_name: "timerName"))
    ClearTimerAction.struct_class = Types::ClearTimerAction

    CreateAlarmModelRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location_name: "alarmModelName"))
    CreateAlarmModelRequest.add_member(:alarm_model_description, Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: "alarmModelDescription"))
    CreateAlarmModelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "roleArn"))
    CreateAlarmModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAlarmModelRequest.add_member(:key, Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "key"))
    CreateAlarmModelRequest.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    CreateAlarmModelRequest.add_member(:alarm_rule, Shapes::ShapeRef.new(shape: AlarmRule, required: true, location_name: "alarmRule"))
    CreateAlarmModelRequest.add_member(:alarm_notification, Shapes::ShapeRef.new(shape: AlarmNotification, location_name: "alarmNotification"))
    CreateAlarmModelRequest.add_member(:alarm_event_actions, Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: "alarmEventActions"))
    CreateAlarmModelRequest.add_member(:alarm_capabilities, Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: "alarmCapabilities"))
    CreateAlarmModelRequest.struct_class = Types::CreateAlarmModelRequest

    CreateAlarmModelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    CreateAlarmModelResponse.add_member(:alarm_model_arn, Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: "alarmModelArn"))
    CreateAlarmModelResponse.add_member(:alarm_model_version, Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    CreateAlarmModelResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    CreateAlarmModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: "status"))
    CreateAlarmModelResponse.struct_class = Types::CreateAlarmModelResponse

    CreateDetectorModelRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location_name: "detectorModelName"))
    CreateDetectorModelRequest.add_member(:detector_model_definition, Shapes::ShapeRef.new(shape: DetectorModelDefinition, required: true, location_name: "detectorModelDefinition"))
    CreateDetectorModelRequest.add_member(:detector_model_description, Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: "detectorModelDescription"))
    CreateDetectorModelRequest.add_member(:key, Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "key"))
    CreateDetectorModelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "roleArn"))
    CreateDetectorModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDetectorModelRequest.add_member(:evaluation_method, Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: "evaluationMethod"))
    CreateDetectorModelRequest.struct_class = Types::CreateDetectorModelRequest

    CreateDetectorModelResponse.add_member(:detector_model_configuration, Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: "detectorModelConfiguration"))
    CreateDetectorModelResponse.struct_class = Types::CreateDetectorModelResponse

    CreateInputRequest.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location_name: "inputName"))
    CreateInputRequest.add_member(:input_description, Shapes::ShapeRef.new(shape: InputDescription, location_name: "inputDescription"))
    CreateInputRequest.add_member(:input_definition, Shapes::ShapeRef.new(shape: InputDefinition, required: true, location_name: "inputDefinition"))
    CreateInputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInputRequest.struct_class = Types::CreateInputRequest

    CreateInputResponse.add_member(:input_configuration, Shapes::ShapeRef.new(shape: InputConfiguration, location_name: "inputConfiguration"))
    CreateInputResponse.struct_class = Types::CreateInputResponse

    DeleteAlarmModelRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location: "uri", location_name: "alarmModelName"))
    DeleteAlarmModelRequest.struct_class = Types::DeleteAlarmModelRequest

    DeleteAlarmModelResponse.struct_class = Types::DeleteAlarmModelResponse

    DeleteDetectorModelRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    DeleteDetectorModelRequest.struct_class = Types::DeleteDetectorModelRequest

    DeleteDetectorModelResponse.struct_class = Types::DeleteDetectorModelResponse

    DeleteInputRequest.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location: "uri", location_name: "inputName"))
    DeleteInputRequest.struct_class = Types::DeleteInputRequest

    DeleteInputResponse.struct_class = Types::DeleteInputResponse

    DescribeAlarmModelRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location: "uri", location_name: "alarmModelName"))
    DescribeAlarmModelRequest.add_member(:alarm_model_version, Shapes::ShapeRef.new(shape: AlarmModelVersion, location: "querystring", location_name: "version"))
    DescribeAlarmModelRequest.struct_class = Types::DescribeAlarmModelRequest

    DescribeAlarmModelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DescribeAlarmModelResponse.add_member(:alarm_model_arn, Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: "alarmModelArn"))
    DescribeAlarmModelResponse.add_member(:alarm_model_version, Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    DescribeAlarmModelResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DescribeAlarmModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: "status"))
    DescribeAlarmModelResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    DescribeAlarmModelResponse.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName"))
    DescribeAlarmModelResponse.add_member(:alarm_model_description, Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: "alarmModelDescription"))
    DescribeAlarmModelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn"))
    DescribeAlarmModelResponse.add_member(:key, Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "key"))
    DescribeAlarmModelResponse.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    DescribeAlarmModelResponse.add_member(:alarm_rule, Shapes::ShapeRef.new(shape: AlarmRule, location_name: "alarmRule"))
    DescribeAlarmModelResponse.add_member(:alarm_notification, Shapes::ShapeRef.new(shape: AlarmNotification, location_name: "alarmNotification"))
    DescribeAlarmModelResponse.add_member(:alarm_event_actions, Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: "alarmEventActions"))
    DescribeAlarmModelResponse.add_member(:alarm_capabilities, Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: "alarmCapabilities"))
    DescribeAlarmModelResponse.struct_class = Types::DescribeAlarmModelResponse

    DescribeDetectorModelAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: AnalysisId, required: true, location: "uri", location_name: "analysisId"))
    DescribeDetectorModelAnalysisRequest.struct_class = Types::DescribeDetectorModelAnalysisRequest

    DescribeDetectorModelAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: AnalysisStatus, location_name: "status"))
    DescribeDetectorModelAnalysisResponse.struct_class = Types::DescribeDetectorModelAnalysisResponse

    DescribeDetectorModelRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    DescribeDetectorModelRequest.add_member(:detector_model_version, Shapes::ShapeRef.new(shape: DetectorModelVersion, location: "querystring", location_name: "version"))
    DescribeDetectorModelRequest.struct_class = Types::DescribeDetectorModelRequest

    DescribeDetectorModelResponse.add_member(:detector_model, Shapes::ShapeRef.new(shape: DetectorModel, location_name: "detectorModel"))
    DescribeDetectorModelResponse.struct_class = Types::DescribeDetectorModelResponse

    DescribeInputRequest.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location: "uri", location_name: "inputName"))
    DescribeInputRequest.struct_class = Types::DescribeInputRequest

    DescribeInputResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    DescribeInputResponse.struct_class = Types::DescribeInputResponse

    DescribeLoggingOptionsRequest.struct_class = Types::DescribeLoggingOptionsRequest

    DescribeLoggingOptionsResponse.add_member(:logging_options, Shapes::ShapeRef.new(shape: LoggingOptions, location_name: "loggingOptions"))
    DescribeLoggingOptionsResponse.struct_class = Types::DescribeLoggingOptionsResponse

    DetectorDebugOption.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location_name: "detectorModelName"))
    DetectorDebugOption.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    DetectorDebugOption.struct_class = Types::DetectorDebugOption

    DetectorDebugOptions.member = Shapes::ShapeRef.new(shape: DetectorDebugOption)

    DetectorModel.add_member(:detector_model_definition, Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: "detectorModelDefinition"))
    DetectorModel.add_member(:detector_model_configuration, Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: "detectorModelConfiguration"))
    DetectorModel.struct_class = Types::DetectorModel

    DetectorModelConfiguration.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    DetectorModelConfiguration.add_member(:detector_model_version, Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion"))
    DetectorModelConfiguration.add_member(:detector_model_description, Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: "detectorModelDescription"))
    DetectorModelConfiguration.add_member(:detector_model_arn, Shapes::ShapeRef.new(shape: DetectorModelArn, location_name: "detectorModelArn"))
    DetectorModelConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn"))
    DetectorModelConfiguration.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DetectorModelConfiguration.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DetectorModelConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: DetectorModelVersionStatus, location_name: "status"))
    DetectorModelConfiguration.add_member(:key, Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "key"))
    DetectorModelConfiguration.add_member(:evaluation_method, Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: "evaluationMethod"))
    DetectorModelConfiguration.struct_class = Types::DetectorModelConfiguration

    DetectorModelDefinition.add_member(:states, Shapes::ShapeRef.new(shape: States, required: true, location_name: "states"))
    DetectorModelDefinition.add_member(:initial_state_name, Shapes::ShapeRef.new(shape: StateName, required: true, location_name: "initialStateName"))
    DetectorModelDefinition.struct_class = Types::DetectorModelDefinition

    DetectorModelSummaries.member = Shapes::ShapeRef.new(shape: DetectorModelSummary)

    DetectorModelSummary.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    DetectorModelSummary.add_member(:detector_model_description, Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: "detectorModelDescription"))
    DetectorModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DetectorModelSummary.struct_class = Types::DetectorModelSummary

    DetectorModelVersionSummaries.member = Shapes::ShapeRef.new(shape: DetectorModelVersionSummary)

    DetectorModelVersionSummary.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    DetectorModelVersionSummary.add_member(:detector_model_version, Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion"))
    DetectorModelVersionSummary.add_member(:detector_model_arn, Shapes::ShapeRef.new(shape: DetectorModelArn, location_name: "detectorModelArn"))
    DetectorModelVersionSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn"))
    DetectorModelVersionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DetectorModelVersionSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DetectorModelVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: DetectorModelVersionStatus, location_name: "status"))
    DetectorModelVersionSummary.add_member(:evaluation_method, Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: "evaluationMethod"))
    DetectorModelVersionSummary.struct_class = Types::DetectorModelVersionSummary

    DynamoDBAction.add_member(:hash_key_type, Shapes::ShapeRef.new(shape: DynamoKeyType, location_name: "hashKeyType"))
    DynamoDBAction.add_member(:hash_key_field, Shapes::ShapeRef.new(shape: DynamoKeyField, required: true, location_name: "hashKeyField"))
    DynamoDBAction.add_member(:hash_key_value, Shapes::ShapeRef.new(shape: DynamoKeyValue, required: true, location_name: "hashKeyValue"))
    DynamoDBAction.add_member(:range_key_type, Shapes::ShapeRef.new(shape: DynamoKeyType, location_name: "rangeKeyType"))
    DynamoDBAction.add_member(:range_key_field, Shapes::ShapeRef.new(shape: DynamoKeyField, location_name: "rangeKeyField"))
    DynamoDBAction.add_member(:range_key_value, Shapes::ShapeRef.new(shape: DynamoKeyValue, location_name: "rangeKeyValue"))
    DynamoDBAction.add_member(:operation, Shapes::ShapeRef.new(shape: DynamoOperation, location_name: "operation"))
    DynamoDBAction.add_member(:payload_field, Shapes::ShapeRef.new(shape: DynamoKeyField, location_name: "payloadField"))
    DynamoDBAction.add_member(:table_name, Shapes::ShapeRef.new(shape: DynamoTableName, required: true, location_name: "tableName"))
    DynamoDBAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    DynamoDBAction.struct_class = Types::DynamoDBAction

    DynamoDBv2Action.add_member(:table_name, Shapes::ShapeRef.new(shape: DynamoTableName, required: true, location_name: "tableName"))
    DynamoDBv2Action.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    DynamoDBv2Action.struct_class = Types::DynamoDBv2Action

    EmailConfiguration.add_member(:from, Shapes::ShapeRef.new(shape: FromEmail, required: true, location_name: "from"))
    EmailConfiguration.add_member(:content, Shapes::ShapeRef.new(shape: EmailContent, location_name: "content"))
    EmailConfiguration.add_member(:recipients, Shapes::ShapeRef.new(shape: EmailRecipients, required: true, location_name: "recipients"))
    EmailConfiguration.struct_class = Types::EmailConfiguration

    EmailConfigurations.member = Shapes::ShapeRef.new(shape: EmailConfiguration)

    EmailContent.add_member(:subject, Shapes::ShapeRef.new(shape: EmailSubject, location_name: "subject"))
    EmailContent.add_member(:additional_message, Shapes::ShapeRef.new(shape: NotificationAdditionalMessage, location_name: "additionalMessage"))
    EmailContent.struct_class = Types::EmailContent

    EmailRecipients.add_member(:to, Shapes::ShapeRef.new(shape: RecipientDetails, location_name: "to"))
    EmailRecipients.struct_class = Types::EmailRecipients

    Event.add_member(:event_name, Shapes::ShapeRef.new(shape: EventName, required: true, location_name: "eventName"))
    Event.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, location_name: "condition"))
    Event.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "actions"))
    Event.struct_class = Types::Event

    Events.member = Shapes::ShapeRef.new(shape: Event)

    FirehoseAction.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "deliveryStreamName"))
    FirehoseAction.add_member(:separator, Shapes::ShapeRef.new(shape: FirehoseSeparator, location_name: "separator"))
    FirehoseAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    FirehoseAction.struct_class = Types::FirehoseAction

    GetDetectorModelAnalysisResultsRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: AnalysisId, required: true, location: "uri", location_name: "analysisId"))
    GetDetectorModelAnalysisResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetDetectorModelAnalysisResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxAnalysisResults, location: "querystring", location_name: "maxResults"))
    GetDetectorModelAnalysisResultsRequest.struct_class = Types::GetDetectorModelAnalysisResultsRequest

    GetDetectorModelAnalysisResultsResponse.add_member(:analysis_results, Shapes::ShapeRef.new(shape: AnalysisResults, location_name: "analysisResults"))
    GetDetectorModelAnalysisResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDetectorModelAnalysisResultsResponse.struct_class = Types::GetDetectorModelAnalysisResultsResponse

    InitializationConfiguration.add_member(:disabled_on_initialization, Shapes::ShapeRef.new(shape: DisabledOnInitialization, required: true, location_name: "disabledOnInitialization"))
    InitializationConfiguration.struct_class = Types::InitializationConfiguration

    Input.add_member(:input_configuration, Shapes::ShapeRef.new(shape: InputConfiguration, location_name: "inputConfiguration"))
    Input.add_member(:input_definition, Shapes::ShapeRef.new(shape: InputDefinition, location_name: "inputDefinition"))
    Input.struct_class = Types::Input

    InputConfiguration.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location_name: "inputName"))
    InputConfiguration.add_member(:input_description, Shapes::ShapeRef.new(shape: InputDescription, location_name: "inputDescription"))
    InputConfiguration.add_member(:input_arn, Shapes::ShapeRef.new(shape: InputArn, required: true, location_name: "inputArn"))
    InputConfiguration.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    InputConfiguration.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateTime"))
    InputConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: InputStatus, required: true, location_name: "status"))
    InputConfiguration.struct_class = Types::InputConfiguration

    InputDefinition.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "attributes"))
    InputDefinition.struct_class = Types::InputDefinition

    InputIdentifier.add_member(:iot_events_input_identifier, Shapes::ShapeRef.new(shape: IotEventsInputIdentifier, location_name: "iotEventsInputIdentifier"))
    InputIdentifier.add_member(:iot_site_wise_input_identifier, Shapes::ShapeRef.new(shape: IotSiteWiseInputIdentifier, location_name: "iotSiteWiseInputIdentifier"))
    InputIdentifier.struct_class = Types::InputIdentifier

    InputSummaries.member = Shapes::ShapeRef.new(shape: InputSummary)

    InputSummary.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, location_name: "inputName"))
    InputSummary.add_member(:input_description, Shapes::ShapeRef.new(shape: InputDescription, location_name: "inputDescription"))
    InputSummary.add_member(:input_arn, Shapes::ShapeRef.new(shape: InputArn, location_name: "inputArn"))
    InputSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    InputSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    InputSummary.add_member(:status, Shapes::ShapeRef.new(shape: InputStatus, location_name: "status"))
    InputSummary.struct_class = Types::InputSummary

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    IotEventsAction.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location_name: "inputName"))
    IotEventsAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    IotEventsAction.struct_class = Types::IotEventsAction

    IotEventsInputIdentifier.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location_name: "inputName"))
    IotEventsInputIdentifier.struct_class = Types::IotEventsInputIdentifier

    IotSiteWiseAction.add_member(:entry_id, Shapes::ShapeRef.new(shape: AssetPropertyEntryId, location_name: "entryId"))
    IotSiteWiseAction.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "assetId"))
    IotSiteWiseAction.add_member(:property_id, Shapes::ShapeRef.new(shape: AssetPropertyId, location_name: "propertyId"))
    IotSiteWiseAction.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    IotSiteWiseAction.add_member(:property_value, Shapes::ShapeRef.new(shape: AssetPropertyValue, location_name: "propertyValue"))
    IotSiteWiseAction.struct_class = Types::IotSiteWiseAction

    IotSiteWiseAssetModelPropertyIdentifier.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: AssetModelId, required: true, location_name: "assetModelId"))
    IotSiteWiseAssetModelPropertyIdentifier.add_member(:property_id, Shapes::ShapeRef.new(shape: AssetPropertyId, required: true, location_name: "propertyId"))
    IotSiteWiseAssetModelPropertyIdentifier.struct_class = Types::IotSiteWiseAssetModelPropertyIdentifier

    IotSiteWiseInputIdentifier.add_member(:iot_site_wise_asset_model_property_identifier, Shapes::ShapeRef.new(shape: IotSiteWiseAssetModelPropertyIdentifier, location_name: "iotSiteWiseAssetModelPropertyIdentifier"))
    IotSiteWiseInputIdentifier.struct_class = Types::IotSiteWiseInputIdentifier

    IotTopicPublishAction.add_member(:mqtt_topic, Shapes::ShapeRef.new(shape: MQTTTopic, required: true, location_name: "mqttTopic"))
    IotTopicPublishAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    IotTopicPublishAction.struct_class = Types::IotTopicPublishAction

    LambdaAction.add_member(:function_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "functionArn"))
    LambdaAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    LambdaAction.struct_class = Types::LambdaAction

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAlarmModelVersionsRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location: "uri", location_name: "alarmModelName"))
    ListAlarmModelVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAlarmModelVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAlarmModelVersionsRequest.struct_class = Types::ListAlarmModelVersionsRequest

    ListAlarmModelVersionsResponse.add_member(:alarm_model_version_summaries, Shapes::ShapeRef.new(shape: AlarmModelVersionSummaries, location_name: "alarmModelVersionSummaries"))
    ListAlarmModelVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlarmModelVersionsResponse.struct_class = Types::ListAlarmModelVersionsResponse

    ListAlarmModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAlarmModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAlarmModelsRequest.struct_class = Types::ListAlarmModelsRequest

    ListAlarmModelsResponse.add_member(:alarm_model_summaries, Shapes::ShapeRef.new(shape: AlarmModelSummaries, location_name: "alarmModelSummaries"))
    ListAlarmModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlarmModelsResponse.struct_class = Types::ListAlarmModelsResponse

    ListDetectorModelVersionsRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    ListDetectorModelVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDetectorModelVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDetectorModelVersionsRequest.struct_class = Types::ListDetectorModelVersionsRequest

    ListDetectorModelVersionsResponse.add_member(:detector_model_version_summaries, Shapes::ShapeRef.new(shape: DetectorModelVersionSummaries, location_name: "detectorModelVersionSummaries"))
    ListDetectorModelVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDetectorModelVersionsResponse.struct_class = Types::ListDetectorModelVersionsResponse

    ListDetectorModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDetectorModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDetectorModelsRequest.struct_class = Types::ListDetectorModelsRequest

    ListDetectorModelsResponse.add_member(:detector_model_summaries, Shapes::ShapeRef.new(shape: DetectorModelSummaries, location_name: "detectorModelSummaries"))
    ListDetectorModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDetectorModelsResponse.struct_class = Types::ListDetectorModelsResponse

    ListInputRoutingsRequest.add_member(:input_identifier, Shapes::ShapeRef.new(shape: InputIdentifier, required: true, location_name: "inputIdentifier"))
    ListInputRoutingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListInputRoutingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInputRoutingsRequest.struct_class = Types::ListInputRoutingsRequest

    ListInputRoutingsResponse.add_member(:routed_resources, Shapes::ShapeRef.new(shape: RoutedResources, location_name: "routedResources"))
    ListInputRoutingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInputRoutingsResponse.struct_class = Types::ListInputRoutingsResponse

    ListInputsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInputsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputsRequest.struct_class = Types::ListInputsRequest

    ListInputsResponse.add_member(:input_summaries, Shapes::ShapeRef.new(shape: InputSummaries, location_name: "inputSummaries"))
    ListInputsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInputsResponse.struct_class = Types::ListInputsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingOptions.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "roleArn"))
    LoggingOptions.add_member(:level, Shapes::ShapeRef.new(shape: LoggingLevel, required: true, location_name: "level"))
    LoggingOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: LoggingEnabled, required: true, location_name: "enabled"))
    LoggingOptions.add_member(:detector_debug_options, Shapes::ShapeRef.new(shape: DetectorDebugOptions, location_name: "detectorDebugOptions"))
    LoggingOptions.struct_class = Types::LoggingOptions

    NotificationAction.add_member(:action, Shapes::ShapeRef.new(shape: NotificationTargetActions, required: true, location_name: "action"))
    NotificationAction.add_member(:sms_configurations, Shapes::ShapeRef.new(shape: SMSConfigurations, location_name: "smsConfigurations"))
    NotificationAction.add_member(:email_configurations, Shapes::ShapeRef.new(shape: EmailConfigurations, location_name: "emailConfigurations"))
    NotificationAction.struct_class = Types::NotificationAction

    NotificationActions.member = Shapes::ShapeRef.new(shape: NotificationAction)

    NotificationTargetActions.add_member(:lambda_action, Shapes::ShapeRef.new(shape: LambdaAction, location_name: "lambdaAction"))
    NotificationTargetActions.struct_class = Types::NotificationTargetActions

    OnEnterLifecycle.add_member(:events, Shapes::ShapeRef.new(shape: Events, location_name: "events"))
    OnEnterLifecycle.struct_class = Types::OnEnterLifecycle

    OnExitLifecycle.add_member(:events, Shapes::ShapeRef.new(shape: Events, location_name: "events"))
    OnExitLifecycle.struct_class = Types::OnExitLifecycle

    OnInputLifecycle.add_member(:events, Shapes::ShapeRef.new(shape: Events, location_name: "events"))
    OnInputLifecycle.add_member(:transition_events, Shapes::ShapeRef.new(shape: TransitionEvents, location_name: "transitionEvents"))
    OnInputLifecycle.struct_class = Types::OnInputLifecycle

    Payload.add_member(:content_expression, Shapes::ShapeRef.new(shape: ContentExpression, required: true, location_name: "contentExpression"))
    Payload.add_member(:type, Shapes::ShapeRef.new(shape: PayloadType, required: true, location_name: "type"))
    Payload.struct_class = Types::Payload

    PutLoggingOptionsRequest.add_member(:logging_options, Shapes::ShapeRef.new(shape: LoggingOptions, required: true, location_name: "loggingOptions"))
    PutLoggingOptionsRequest.struct_class = Types::PutLoggingOptionsRequest

    RecipientDetail.add_member(:sso_identity, Shapes::ShapeRef.new(shape: SSOIdentity, location_name: "ssoIdentity"))
    RecipientDetail.struct_class = Types::RecipientDetail

    RecipientDetails.member = Shapes::ShapeRef.new(shape: RecipientDetail)

    ResetTimerAction.add_member(:timer_name, Shapes::ShapeRef.new(shape: TimerName, required: true, location_name: "timerName"))
    ResetTimerAction.struct_class = Types::ResetTimerAction

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceAlreadyExistsException.add_member(:resource_id, Shapes::ShapeRef.new(shape: resourceId, location_name: "resourceId"))
    ResourceAlreadyExistsException.add_member(:resource_arn, Shapes::ShapeRef.new(shape: resourceArn, location_name: "resourceArn"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoutedResource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    RoutedResource.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
    RoutedResource.struct_class = Types::RoutedResource

    RoutedResources.member = Shapes::ShapeRef.new(shape: RoutedResource)

    SMSConfiguration.add_member(:sender_id, Shapes::ShapeRef.new(shape: SMSSenderId, location_name: "senderId"))
    SMSConfiguration.add_member(:additional_message, Shapes::ShapeRef.new(shape: NotificationAdditionalMessage, location_name: "additionalMessage"))
    SMSConfiguration.add_member(:recipients, Shapes::ShapeRef.new(shape: RecipientDetails, required: true, location_name: "recipients"))
    SMSConfiguration.struct_class = Types::SMSConfiguration

    SMSConfigurations.member = Shapes::ShapeRef.new(shape: SMSConfiguration)

    SNSTopicPublishAction.add_member(:target_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "targetArn"))
    SNSTopicPublishAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    SNSTopicPublishAction.struct_class = Types::SNSTopicPublishAction

    SSOIdentity.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "identityStoreId"))
    SSOIdentity.add_member(:user_id, Shapes::ShapeRef.new(shape: SSOReferenceId, location_name: "userId"))
    SSOIdentity.struct_class = Types::SSOIdentity

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SetTimerAction.add_member(:timer_name, Shapes::ShapeRef.new(shape: TimerName, required: true, location_name: "timerName"))
    SetTimerAction.add_member(:seconds, Shapes::ShapeRef.new(shape: Seconds, deprecated: true, location_name: "seconds", metadata: {"deprecatedMessage"=>"seconds is deprecated. You can use durationExpression for SetTimerAction. The value of seconds can be used as a string expression for durationExpression."}))
    SetTimerAction.add_member(:duration_expression, Shapes::ShapeRef.new(shape: VariableValue, location_name: "durationExpression"))
    SetTimerAction.struct_class = Types::SetTimerAction

    SetVariableAction.add_member(:variable_name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "variableName"))
    SetVariableAction.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    SetVariableAction.struct_class = Types::SetVariableAction

    SimpleRule.add_member(:input_property, Shapes::ShapeRef.new(shape: InputProperty, required: true, location_name: "inputProperty"))
    SimpleRule.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "comparisonOperator"))
    SimpleRule.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, required: true, location_name: "threshold"))
    SimpleRule.struct_class = Types::SimpleRule

    SqsAction.add_member(:queue_url, Shapes::ShapeRef.new(shape: QueueUrl, required: true, location_name: "queueUrl"))
    SqsAction.add_member(:use_base_64, Shapes::ShapeRef.new(shape: UseBase64, location_name: "useBase64"))
    SqsAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    SqsAction.struct_class = Types::SqsAction

    StartDetectorModelAnalysisRequest.add_member(:detector_model_definition, Shapes::ShapeRef.new(shape: DetectorModelDefinition, required: true, location_name: "detectorModelDefinition"))
    StartDetectorModelAnalysisRequest.struct_class = Types::StartDetectorModelAnalysisRequest

    StartDetectorModelAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: AnalysisId, location_name: "analysisId"))
    StartDetectorModelAnalysisResponse.struct_class = Types::StartDetectorModelAnalysisResponse

    State.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, required: true, location_name: "stateName"))
    State.add_member(:on_input, Shapes::ShapeRef.new(shape: OnInputLifecycle, location_name: "onInput"))
    State.add_member(:on_enter, Shapes::ShapeRef.new(shape: OnEnterLifecycle, location_name: "onEnter"))
    State.add_member(:on_exit, Shapes::ShapeRef.new(shape: OnExitLifecycle, location_name: "onExit"))
    State.struct_class = Types::State

    States.member = Shapes::ShapeRef.new(shape: State)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TransitionEvent.add_member(:event_name, Shapes::ShapeRef.new(shape: EventName, required: true, location_name: "eventName"))
    TransitionEvent.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, required: true, location_name: "condition"))
    TransitionEvent.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "actions"))
    TransitionEvent.add_member(:next_state, Shapes::ShapeRef.new(shape: StateName, required: true, location_name: "nextState"))
    TransitionEvent.struct_class = Types::TransitionEvent

    TransitionEvents.member = Shapes::ShapeRef.new(shape: TransitionEvent)

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAlarmModelRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location: "uri", location_name: "alarmModelName"))
    UpdateAlarmModelRequest.add_member(:alarm_model_description, Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: "alarmModelDescription"))
    UpdateAlarmModelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "roleArn"))
    UpdateAlarmModelRequest.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    UpdateAlarmModelRequest.add_member(:alarm_rule, Shapes::ShapeRef.new(shape: AlarmRule, required: true, location_name: "alarmRule"))
    UpdateAlarmModelRequest.add_member(:alarm_notification, Shapes::ShapeRef.new(shape: AlarmNotification, location_name: "alarmNotification"))
    UpdateAlarmModelRequest.add_member(:alarm_event_actions, Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: "alarmEventActions"))
    UpdateAlarmModelRequest.add_member(:alarm_capabilities, Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: "alarmCapabilities"))
    UpdateAlarmModelRequest.struct_class = Types::UpdateAlarmModelRequest

    UpdateAlarmModelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    UpdateAlarmModelResponse.add_member(:alarm_model_arn, Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: "alarmModelArn"))
    UpdateAlarmModelResponse.add_member(:alarm_model_version, Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    UpdateAlarmModelResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    UpdateAlarmModelResponse.add_member(:status, Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: "status"))
    UpdateAlarmModelResponse.struct_class = Types::UpdateAlarmModelResponse

    UpdateDetectorModelRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    UpdateDetectorModelRequest.add_member(:detector_model_definition, Shapes::ShapeRef.new(shape: DetectorModelDefinition, required: true, location_name: "detectorModelDefinition"))
    UpdateDetectorModelRequest.add_member(:detector_model_description, Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: "detectorModelDescription"))
    UpdateDetectorModelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "roleArn"))
    UpdateDetectorModelRequest.add_member(:evaluation_method, Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: "evaluationMethod"))
    UpdateDetectorModelRequest.struct_class = Types::UpdateDetectorModelRequest

    UpdateDetectorModelResponse.add_member(:detector_model_configuration, Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: "detectorModelConfiguration"))
    UpdateDetectorModelResponse.struct_class = Types::UpdateDetectorModelResponse

    UpdateInputRequest.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location: "uri", location_name: "inputName"))
    UpdateInputRequest.add_member(:input_description, Shapes::ShapeRef.new(shape: InputDescription, location_name: "inputDescription"))
    UpdateInputRequest.add_member(:input_definition, Shapes::ShapeRef.new(shape: InputDefinition, required: true, location_name: "inputDefinition"))
    UpdateInputRequest.struct_class = Types::UpdateInputRequest

    UpdateInputResponse.add_member(:input_configuration, Shapes::ShapeRef.new(shape: InputConfiguration, location_name: "inputConfiguration"))
    UpdateInputResponse.struct_class = Types::UpdateInputResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-07-27"

      api.metadata = {
        "apiVersion" => "2018-07-27",
        "endpointPrefix" => "iotevents",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT Events",
        "serviceId" => "IoT Events",
        "signatureVersion" => "v4",
        "signingName" => "iotevents",
        "uid" => "iotevents-2018-07-27",
      }

      api.add_operation(:create_alarm_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlarmModel"
        o.http_method = "POST"
        o.http_request_uri = "/alarm-models"
        o.input = Shapes::ShapeRef.new(shape: CreateAlarmModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAlarmModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_detector_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDetectorModel"
        o.http_method = "POST"
        o.http_request_uri = "/detector-models"
        o.input = Shapes::ShapeRef.new(shape: CreateDetectorModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDetectorModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInput"
        o.http_method = "POST"
        o.http_request_uri = "/inputs"
        o.input = Shapes::ShapeRef.new(shape: CreateInputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:delete_alarm_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlarmModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/alarm-models/{alarmModelName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlarmModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAlarmModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_detector_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDetectorModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector-models/{detectorModelName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDetectorModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDetectorModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInput"
        o.http_method = "DELETE"
        o.http_request_uri = "/inputs/{inputName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:describe_alarm_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlarmModel"
        o.http_method = "GET"
        o.http_request_uri = "/alarm-models/{alarmModelName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlarmModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlarmModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_detector_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDetectorModel"
        o.http_method = "GET"
        o.http_request_uri = "/detector-models/{detectorModelName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDetectorModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDetectorModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_detector_model_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDetectorModelAnalysis"
        o.http_method = "GET"
        o.http_request_uri = "/analysis/detector-models/{analysisId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDetectorModelAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDetectorModelAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInput"
        o.http_method = "GET"
        o.http_request_uri = "/inputs/{inputName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoggingOptions"
        o.http_method = "GET"
        o.http_request_uri = "/logging"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:get_detector_model_analysis_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDetectorModelAnalysisResults"
        o.http_method = "GET"
        o.http_request_uri = "/analysis/detector-models/{analysisId}/results"
        o.input = Shapes::ShapeRef.new(shape: GetDetectorModelAnalysisResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDetectorModelAnalysisResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_alarm_model_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlarmModelVersions"
        o.http_method = "GET"
        o.http_request_uri = "/alarm-models/{alarmModelName}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListAlarmModelVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAlarmModelVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_alarm_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlarmModels"
        o.http_method = "GET"
        o.http_request_uri = "/alarm-models"
        o.input = Shapes::ShapeRef.new(shape: ListAlarmModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAlarmModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_detector_model_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDetectorModelVersions"
        o.http_method = "GET"
        o.http_request_uri = "/detector-models/{detectorModelName}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListDetectorModelVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDetectorModelVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_detector_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDetectorModels"
        o.http_method = "GET"
        o.http_request_uri = "/detector-models"
        o.input = Shapes::ShapeRef.new(shape: ListDetectorModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDetectorModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_input_routings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputRoutings"
        o.http_method = "POST"
        o.http_request_uri = "/input-routings"
        o.input = Shapes::ShapeRef.new(shape: ListInputRoutingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputRoutingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_inputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputs"
        o.http_method = "GET"
        o.http_request_uri = "/inputs"
        o.input = Shapes::ShapeRef.new(shape: ListInputsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:put_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLoggingOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/logging"
        o.input = Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:start_detector_model_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDetectorModelAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/analysis/detector-models/"
        o.input = Shapes::ShapeRef.new(shape: StartDetectorModelAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDetectorModelAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_alarm_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAlarmModel"
        o.http_method = "POST"
        o.http_request_uri = "/alarm-models/{alarmModelName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAlarmModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAlarmModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_detector_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDetectorModel"
        o.http_method = "POST"
        o.http_request_uri = "/detector-models/{detectorModelName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDetectorModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDetectorModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInput"
        o.http_method = "PUT"
        o.http_request_uri = "/inputs/{inputName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)
    end

  end
end
