# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTEvents
  # @api private
  module ClientApi

    include Seahorse::Model

    Action = Shapes::StructureShape.new(name: 'Action')
    Actions = Shapes::ListShape.new(name: 'Actions')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AssetId = Shapes::StringShape.new(name: 'AssetId')
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
    Condition = Shapes::StringShape.new(name: 'Condition')
    ContentExpression = Shapes::StringShape.new(name: 'ContentExpression')
    CreateDetectorModelRequest = Shapes::StructureShape.new(name: 'CreateDetectorModelRequest')
    CreateDetectorModelResponse = Shapes::StructureShape.new(name: 'CreateDetectorModelResponse')
    CreateInputRequest = Shapes::StructureShape.new(name: 'CreateInputRequest')
    CreateInputResponse = Shapes::StructureShape.new(name: 'CreateInputResponse')
    DeleteDetectorModelRequest = Shapes::StructureShape.new(name: 'DeleteDetectorModelRequest')
    DeleteDetectorModelResponse = Shapes::StructureShape.new(name: 'DeleteDetectorModelResponse')
    DeleteInputRequest = Shapes::StructureShape.new(name: 'DeleteInputRequest')
    DeleteInputResponse = Shapes::StructureShape.new(name: 'DeleteInputResponse')
    DeliveryStreamName = Shapes::StringShape.new(name: 'DeliveryStreamName')
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
    DynamoDBAction = Shapes::StructureShape.new(name: 'DynamoDBAction')
    DynamoDBv2Action = Shapes::StructureShape.new(name: 'DynamoDBv2Action')
    DynamoKeyField = Shapes::StringShape.new(name: 'DynamoKeyField')
    DynamoKeyType = Shapes::StringShape.new(name: 'DynamoKeyType')
    DynamoKeyValue = Shapes::StringShape.new(name: 'DynamoKeyValue')
    DynamoOperation = Shapes::StringShape.new(name: 'DynamoOperation')
    DynamoTableName = Shapes::StringShape.new(name: 'DynamoTableName')
    EvaluationMethod = Shapes::StringShape.new(name: 'EvaluationMethod')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventName = Shapes::StringShape.new(name: 'EventName')
    Events = Shapes::ListShape.new(name: 'Events')
    FirehoseAction = Shapes::StructureShape.new(name: 'FirehoseAction')
    FirehoseSeparator = Shapes::StringShape.new(name: 'FirehoseSeparator')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputArn = Shapes::StringShape.new(name: 'InputArn')
    InputConfiguration = Shapes::StructureShape.new(name: 'InputConfiguration')
    InputDefinition = Shapes::StructureShape.new(name: 'InputDefinition')
    InputDescription = Shapes::StringShape.new(name: 'InputDescription')
    InputName = Shapes::StringShape.new(name: 'InputName')
    InputStatus = Shapes::StringShape.new(name: 'InputStatus')
    InputSummaries = Shapes::ListShape.new(name: 'InputSummaries')
    InputSummary = Shapes::StructureShape.new(name: 'InputSummary')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IotEventsAction = Shapes::StructureShape.new(name: 'IotEventsAction')
    IotSiteWiseAction = Shapes::StructureShape.new(name: 'IotSiteWiseAction')
    IotTopicPublishAction = Shapes::StructureShape.new(name: 'IotTopicPublishAction')
    KeyValue = Shapes::StringShape.new(name: 'KeyValue')
    LambdaAction = Shapes::StructureShape.new(name: 'LambdaAction')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDetectorModelVersionsRequest = Shapes::StructureShape.new(name: 'ListDetectorModelVersionsRequest')
    ListDetectorModelVersionsResponse = Shapes::StructureShape.new(name: 'ListDetectorModelVersionsResponse')
    ListDetectorModelsRequest = Shapes::StructureShape.new(name: 'ListDetectorModelsRequest')
    ListDetectorModelsResponse = Shapes::StructureShape.new(name: 'ListDetectorModelsResponse')
    ListInputsRequest = Shapes::StructureShape.new(name: 'ListInputsRequest')
    ListInputsResponse = Shapes::StructureShape.new(name: 'ListInputsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LoggingEnabled = Shapes::BooleanShape.new(name: 'LoggingEnabled')
    LoggingLevel = Shapes::StringShape.new(name: 'LoggingLevel')
    LoggingOptions = Shapes::StructureShape.new(name: 'LoggingOptions')
    MQTTTopic = Shapes::StringShape.new(name: 'MQTTTopic')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OnEnterLifecycle = Shapes::StructureShape.new(name: 'OnEnterLifecycle')
    OnExitLifecycle = Shapes::StructureShape.new(name: 'OnExitLifecycle')
    OnInputLifecycle = Shapes::StructureShape.new(name: 'OnInputLifecycle')
    Payload = Shapes::StructureShape.new(name: 'Payload')
    PayloadType = Shapes::StringShape.new(name: 'PayloadType')
    PutLoggingOptionsRequest = Shapes::StructureShape.new(name: 'PutLoggingOptionsRequest')
    QueueUrl = Shapes::StringShape.new(name: 'QueueUrl')
    ResetTimerAction = Shapes::StructureShape.new(name: 'ResetTimerAction')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SNSTopicPublishAction = Shapes::StructureShape.new(name: 'SNSTopicPublishAction')
    Seconds = Shapes::IntegerShape.new(name: 'Seconds')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetTimerAction = Shapes::StructureShape.new(name: 'SetTimerAction')
    SetVariableAction = Shapes::StructureShape.new(name: 'SetVariableAction')
    SqsAction = Shapes::StructureShape.new(name: 'SqsAction')
    State = Shapes::StructureShape.new(name: 'State')
    StateName = Shapes::StringShape.new(name: 'StateName')
    States = Shapes::ListShape.new(name: 'States')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimerName = Shapes::StringShape.new(name: 'TimerName')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransitionEvent = Shapes::StructureShape.new(name: 'TransitionEvent')
    TransitionEvents = Shapes::ListShape.new(name: 'TransitionEvents')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
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

    AssetPropertyTimestamp.add_member(:time_in_seconds, Shapes::ShapeRef.new(shape: AssetPropertyTimeInSeconds, required: true, location_name: "timeInSeconds"))
    AssetPropertyTimestamp.add_member(:offset_in_nanos, Shapes::ShapeRef.new(shape: AssetPropertyOffsetInNanos, location_name: "offsetInNanos"))
    AssetPropertyTimestamp.struct_class = Types::AssetPropertyTimestamp

    AssetPropertyValue.add_member(:value, Shapes::ShapeRef.new(shape: AssetPropertyVariant, required: true, location_name: "value"))
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

    DeleteDetectorModelRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    DeleteDetectorModelRequest.struct_class = Types::DeleteDetectorModelRequest

    DeleteDetectorModelResponse.struct_class = Types::DeleteDetectorModelResponse

    DeleteInputRequest.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location: "uri", location_name: "inputName"))
    DeleteInputRequest.struct_class = Types::DeleteInputRequest

    DeleteInputResponse.struct_class = Types::DeleteInputResponse

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

    Event.add_member(:event_name, Shapes::ShapeRef.new(shape: EventName, required: true, location_name: "eventName"))
    Event.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, location_name: "condition"))
    Event.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "actions"))
    Event.struct_class = Types::Event

    Events.member = Shapes::ShapeRef.new(shape: Event)

    FirehoseAction.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "deliveryStreamName"))
    FirehoseAction.add_member(:separator, Shapes::ShapeRef.new(shape: FirehoseSeparator, location_name: "separator"))
    FirehoseAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    FirehoseAction.struct_class = Types::FirehoseAction

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

    IotSiteWiseAction.add_member(:entry_id, Shapes::ShapeRef.new(shape: AssetPropertyEntryId, location_name: "entryId"))
    IotSiteWiseAction.add_member(:asset_id, Shapes::ShapeRef.new(shape: AssetId, location_name: "assetId"))
    IotSiteWiseAction.add_member(:property_id, Shapes::ShapeRef.new(shape: AssetPropertyId, location_name: "propertyId"))
    IotSiteWiseAction.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    IotSiteWiseAction.add_member(:property_value, Shapes::ShapeRef.new(shape: AssetPropertyValue, required: true, location_name: "propertyValue"))
    IotSiteWiseAction.struct_class = Types::IotSiteWiseAction

    IotTopicPublishAction.add_member(:mqtt_topic, Shapes::ShapeRef.new(shape: MQTTTopic, required: true, location_name: "mqttTopic"))
    IotTopicPublishAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    IotTopicPublishAction.struct_class = Types::IotTopicPublishAction

    LambdaAction.add_member(:function_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "functionArn"))
    LambdaAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    LambdaAction.struct_class = Types::LambdaAction

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

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

    SNSTopicPublishAction.add_member(:target_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "targetArn"))
    SNSTopicPublishAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    SNSTopicPublishAction.struct_class = Types::SNSTopicPublishAction

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SetTimerAction.add_member(:timer_name, Shapes::ShapeRef.new(shape: TimerName, required: true, location_name: "timerName"))
    SetTimerAction.add_member(:seconds, Shapes::ShapeRef.new(shape: Seconds, deprecated: true, location_name: "seconds", metadata: {"deprecatedMessage"=>"seconds is deprecated. You can use durationExpression for SetTimerAction. The value of seconds can be used as a string expression for durationExpression."}))
    SetTimerAction.add_member(:duration_expression, Shapes::ShapeRef.new(shape: VariableValue, location_name: "durationExpression"))
    SetTimerAction.struct_class = Types::SetTimerAction

    SetVariableAction.add_member(:variable_name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "variableName"))
    SetVariableAction.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    SetVariableAction.struct_class = Types::SetVariableAction

    SqsAction.add_member(:queue_url, Shapes::ShapeRef.new(shape: QueueUrl, required: true, location_name: "queueUrl"))
    SqsAction.add_member(:use_base_64, Shapes::ShapeRef.new(shape: UseBase64, location_name: "useBase64"))
    SqsAction.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    SqsAction.struct_class = Types::SqsAction

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
