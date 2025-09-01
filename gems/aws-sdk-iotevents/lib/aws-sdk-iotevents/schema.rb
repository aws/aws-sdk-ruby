# frozen_string_literal: true

# This is generated code!

module Aws::IoTEvents
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcknowledgeFlow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AcknowledgeFlow', name: 'AcknowledgeFlow')
    AcknowledgeFlowEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotevents#AcknowledgeFlowEnabled', name: 'AcknowledgeFlowEnabled')
    Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#Action', name: 'Action')
    Actions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#Actions', name: 'Actions')
    AlarmAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AlarmAction', name: 'AlarmAction')
    AlarmActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#AlarmActions', name: 'AlarmActions')
    AlarmCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AlarmCapabilities', name: 'AlarmCapabilities')
    AlarmEventActions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AlarmEventActions', name: 'AlarmEventActions')
    AlarmModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AlarmModelArn', name: 'AlarmModelArn')
    AlarmModelDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AlarmModelDescription', name: 'AlarmModelDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    AlarmModelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AlarmModelName', name: 'AlarmModelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    AlarmModelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#AlarmModelSummaries', name: 'AlarmModelSummaries')
    AlarmModelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AlarmModelSummary', name: 'AlarmModelSummary')
    AlarmModelVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AlarmModelVersion', name: 'AlarmModelVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AlarmModelVersionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#AlarmModelVersionStatus', name: 'AlarmModelVersionStatus')
    AlarmModelVersionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#AlarmModelVersionSummaries', name: 'AlarmModelVersionSummaries')
    AlarmModelVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AlarmModelVersionSummary', name: 'AlarmModelVersionSummary')
    AlarmNotification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AlarmNotification', name: 'AlarmNotification')
    AlarmRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AlarmRule', name: 'AlarmRule')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AnalysisId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AnalysisId', name: 'AnalysisId')
    AnalysisMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AnalysisMessage', name: 'AnalysisMessage')
    AnalysisResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AnalysisResult', name: 'AnalysisResult')
    AnalysisResultLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#AnalysisResultLevel', name: 'AnalysisResultLevel')
    AnalysisResultLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AnalysisResultLocation', name: 'AnalysisResultLocation')
    AnalysisResultLocationPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AnalysisResultLocationPath', name: 'AnalysisResultLocationPath')
    AnalysisResultLocations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#AnalysisResultLocations', name: 'AnalysisResultLocations')
    AnalysisResults = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#AnalysisResults', name: 'AnalysisResults')
    AnalysisStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#AnalysisStatus', name: 'AnalysisStatus')
    AnalysisType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AnalysisType', name: 'AnalysisType')
    AssetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetId', name: 'AssetId')
    AssetModelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetModelId', name: 'AssetModelId')
    AssetPropertyAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyAlias', name: 'AssetPropertyAlias')
    AssetPropertyBooleanValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyBooleanValue', name: 'AssetPropertyBooleanValue')
    AssetPropertyDoubleValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyDoubleValue', name: 'AssetPropertyDoubleValue')
    AssetPropertyEntryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyEntryId', name: 'AssetPropertyEntryId')
    AssetPropertyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyId', name: 'AssetPropertyId')
    AssetPropertyIntegerValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyIntegerValue', name: 'AssetPropertyIntegerValue')
    AssetPropertyOffsetInNanos = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyOffsetInNanos', name: 'AssetPropertyOffsetInNanos')
    AssetPropertyQuality = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyQuality', name: 'AssetPropertyQuality')
    AssetPropertyStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyStringValue', name: 'AssetPropertyStringValue')
    AssetPropertyTimeInSeconds = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AssetPropertyTimeInSeconds', name: 'AssetPropertyTimeInSeconds')
    AssetPropertyTimestamp = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AssetPropertyTimestamp', name: 'AssetPropertyTimestamp')
    AssetPropertyValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AssetPropertyValue', name: 'AssetPropertyValue')
    AssetPropertyVariant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#AssetPropertyVariant', name: 'AssetPropertyVariant')
    Attribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#Attribute', name: 'Attribute')
    AttributeJsonPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#AttributeJsonPath', name: 'AttributeJsonPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^((`[\\w\\- ]+`)|([\\w\\-]+))(\\.((`[\\w- ]+`)|([\\w\\-]+)))*$"})
    Attributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#Attributes', name: 'Attributes', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ClearTimerAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ClearTimerAction', name: 'ClearTimerAction')
    ComparisonOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#ComparisonOperator', name: 'ComparisonOperator')
    Condition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#Condition', name: 'Condition', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ContentExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#ContentExpression', name: 'ContentExpression', traits: {"smithy.api#length" => {"min" => 1}})
    CreateAlarmModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#CreateAlarmModelRequest', name: 'CreateAlarmModelRequest')
    CreateAlarmModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#CreateAlarmModelResponse', name: 'CreateAlarmModelResponse')
    CreateDetectorModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#CreateDetectorModelRequest', name: 'CreateDetectorModelRequest')
    CreateDetectorModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#CreateDetectorModelResponse', name: 'CreateDetectorModelResponse')
    CreateInputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#CreateInputRequest', name: 'CreateInputRequest')
    CreateInputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#CreateInputResponse', name: 'CreateInputResponse')
    DeleteAlarmModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DeleteAlarmModelRequest', name: 'DeleteAlarmModelRequest')
    DeleteAlarmModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DeleteAlarmModelResponse', name: 'DeleteAlarmModelResponse')
    DeleteDetectorModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DeleteDetectorModelRequest', name: 'DeleteDetectorModelRequest')
    DeleteDetectorModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DeleteDetectorModelResponse', name: 'DeleteDetectorModelResponse')
    DeleteInputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DeleteInputRequest', name: 'DeleteInputRequest')
    DeleteInputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DeleteInputResponse', name: 'DeleteInputResponse')
    DeliveryStreamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DeliveryStreamName', name: 'DeliveryStreamName')
    DescribeAlarmModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeAlarmModelRequest', name: 'DescribeAlarmModelRequest')
    DescribeAlarmModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeAlarmModelResponse', name: 'DescribeAlarmModelResponse')
    DescribeDetectorModelAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeDetectorModelAnalysisRequest', name: 'DescribeDetectorModelAnalysisRequest')
    DescribeDetectorModelAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeDetectorModelAnalysisResponse', name: 'DescribeDetectorModelAnalysisResponse')
    DescribeDetectorModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeDetectorModelRequest', name: 'DescribeDetectorModelRequest')
    DescribeDetectorModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeDetectorModelResponse', name: 'DescribeDetectorModelResponse')
    DescribeInputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeInputRequest', name: 'DescribeInputRequest')
    DescribeInputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeInputResponse', name: 'DescribeInputResponse')
    DescribeLoggingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeLoggingOptionsRequest', name: 'DescribeLoggingOptionsRequest')
    DescribeLoggingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DescribeLoggingOptionsResponse', name: 'DescribeLoggingOptionsResponse')
    DetectorDebugOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DetectorDebugOption', name: 'DetectorDebugOption')
    DetectorDebugOptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#DetectorDebugOptions', name: 'DetectorDebugOptions', traits: {"smithy.api#length" => {"min" => 1}})
    DetectorModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DetectorModel', name: 'DetectorModel')
    DetectorModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DetectorModelArn', name: 'DetectorModelArn')
    DetectorModelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DetectorModelConfiguration', name: 'DetectorModelConfiguration')
    DetectorModelDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DetectorModelDefinition', name: 'DetectorModelDefinition')
    DetectorModelDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DetectorModelDescription', name: 'DetectorModelDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DetectorModelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DetectorModelName', name: 'DetectorModelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    DetectorModelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#DetectorModelSummaries', name: 'DetectorModelSummaries')
    DetectorModelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DetectorModelSummary', name: 'DetectorModelSummary')
    DetectorModelVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DetectorModelVersion', name: 'DetectorModelVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DetectorModelVersionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#DetectorModelVersionStatus', name: 'DetectorModelVersionStatus')
    DetectorModelVersionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#DetectorModelVersionSummaries', name: 'DetectorModelVersionSummaries')
    DetectorModelVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DetectorModelVersionSummary', name: 'DetectorModelVersionSummary')
    DisabledOnInitialization = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotevents#DisabledOnInitialization', name: 'DisabledOnInitialization')
    DynamoDBAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DynamoDBAction', name: 'DynamoDBAction')
    DynamoDBv2Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#DynamoDBv2Action', name: 'DynamoDBv2Action')
    DynamoKeyField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DynamoKeyField', name: 'DynamoKeyField')
    DynamoKeyType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DynamoKeyType', name: 'DynamoKeyType')
    DynamoKeyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DynamoKeyValue', name: 'DynamoKeyValue')
    DynamoOperation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DynamoOperation', name: 'DynamoOperation')
    DynamoTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#DynamoTableName', name: 'DynamoTableName')
    EmailConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#EmailConfiguration', name: 'EmailConfiguration')
    EmailConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#EmailConfigurations', name: 'EmailConfigurations', traits: {"smithy.api#length" => {"min" => 1}})
    EmailContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#EmailContent', name: 'EmailContent')
    EmailRecipients = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#EmailRecipients', name: 'EmailRecipients')
    EmailSubject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#EmailSubject', name: 'EmailSubject')
    EvaluationMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#EvaluationMethod', name: 'EvaluationMethod')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#Event', name: 'Event')
    EventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#EventName', name: 'EventName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    Events = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#Events', name: 'Events')
    FirehoseAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#FirehoseAction', name: 'FirehoseAction')
    FirehoseSeparator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#FirehoseSeparator', name: 'FirehoseSeparator', traits: {"smithy.api#pattern" => "^([\\n\\t])|(\\r\\n)|(,)$"})
    FromEmail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#FromEmail', name: 'FromEmail')
    GetDetectorModelAnalysisResultsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#GetDetectorModelAnalysisResultsRequest', name: 'GetDetectorModelAnalysisResultsRequest')
    GetDetectorModelAnalysisResultsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#GetDetectorModelAnalysisResultsResponse', name: 'GetDetectorModelAnalysisResultsResponse')
    IdentityStoreId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#IdentityStoreId', name: 'IdentityStoreId')
    InitializationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#InitializationConfiguration', name: 'InitializationConfiguration')
    Input = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#Input', name: 'Input')
    InputArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#InputArn', name: 'InputArn')
    InputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#InputConfiguration', name: 'InputConfiguration')
    InputDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#InputDefinition', name: 'InputDefinition')
    InputDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#InputDescription', name: 'InputDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    InputIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#InputIdentifier', name: 'InputIdentifier')
    InputName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#InputName', name: 'InputName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    InputProperty = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#InputProperty', name: 'InputProperty', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    InputStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#InputStatus', name: 'InputStatus')
    InputSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#InputSummaries', name: 'InputSummaries')
    InputSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#InputSummary', name: 'InputSummary')
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IotEventsAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#IotEventsAction', name: 'IotEventsAction')
    IotEventsInputIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#IotEventsInputIdentifier', name: 'IotEventsInputIdentifier')
    IotSiteWiseAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#IotSiteWiseAction', name: 'IotSiteWiseAction')
    IotSiteWiseAssetModelPropertyIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#IotSiteWiseAssetModelPropertyIdentifier', name: 'IotSiteWiseAssetModelPropertyIdentifier')
    IotSiteWiseInputIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#IotSiteWiseInputIdentifier', name: 'IotSiteWiseInputIdentifier')
    IotTopicPublishAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#IotTopicPublishAction', name: 'IotTopicPublishAction')
    KeyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#KeyValue', name: 'KeyValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_:]+$"})
    LambdaAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#LambdaAction', name: 'LambdaAction')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListAlarmModelVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListAlarmModelVersionsRequest', name: 'ListAlarmModelVersionsRequest')
    ListAlarmModelVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListAlarmModelVersionsResponse', name: 'ListAlarmModelVersionsResponse')
    ListAlarmModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListAlarmModelsRequest', name: 'ListAlarmModelsRequest')
    ListAlarmModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListAlarmModelsResponse', name: 'ListAlarmModelsResponse')
    ListDetectorModelVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListDetectorModelVersionsRequest', name: 'ListDetectorModelVersionsRequest')
    ListDetectorModelVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListDetectorModelVersionsResponse', name: 'ListDetectorModelVersionsResponse')
    ListDetectorModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListDetectorModelsRequest', name: 'ListDetectorModelsRequest')
    ListDetectorModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListDetectorModelsResponse', name: 'ListDetectorModelsResponse')
    ListInputRoutingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListInputRoutingsRequest', name: 'ListInputRoutingsRequest')
    ListInputRoutingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListInputRoutingsResponse', name: 'ListInputRoutingsResponse')
    ListInputsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListInputsRequest', name: 'ListInputsRequest')
    ListInputsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListInputsResponse', name: 'ListInputsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LoggingEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotevents#LoggingEnabled', name: 'LoggingEnabled', traits: {"smithy.api#default" => false})
    LoggingLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#LoggingLevel', name: 'LoggingLevel')
    LoggingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#LoggingOptions', name: 'LoggingOptions')
    MQTTTopic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#MQTTTopic', name: 'MQTTTopic', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MaxAnalysisResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotevents#MaxAnalysisResults', name: 'MaxAnalysisResults')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotevents#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#NextToken', name: 'NextToken')
    NotificationAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#NotificationAction', name: 'NotificationAction')
    NotificationActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#NotificationActions', name: 'NotificationActions', traits: {"smithy.api#length" => {"min" => 1}})
    NotificationAdditionalMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#NotificationAdditionalMessage', name: 'NotificationAdditionalMessage')
    NotificationTargetActions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#NotificationTargetActions', name: 'NotificationTargetActions')
    OnEnterLifecycle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#OnEnterLifecycle', name: 'OnEnterLifecycle')
    OnExitLifecycle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#OnExitLifecycle', name: 'OnExitLifecycle')
    OnInputLifecycle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#OnInputLifecycle', name: 'OnInputLifecycle')
    Payload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#Payload', name: 'Payload')
    PayloadType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotevents#PayloadType', name: 'PayloadType')
    PutLoggingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#PutLoggingOptionsRequest', name: 'PutLoggingOptionsRequest')
    QueueUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#QueueUrl', name: 'QueueUrl')
    RecipientDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#RecipientDetail', name: 'RecipientDetail')
    RecipientDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#RecipientDetails', name: 'RecipientDetails', traits: {"smithy.api#length" => {"min" => 1}})
    ResetTimerAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ResetTimerAction', name: 'ResetTimerAction')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#ResourceName', name: 'ResourceName')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoutedResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#RoutedResource', name: 'RoutedResource')
    RoutedResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#RoutedResources', name: 'RoutedResources')
    SMSConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#SMSConfiguration', name: 'SMSConfiguration')
    SMSConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#SMSConfigurations', name: 'SMSConfigurations', traits: {"smithy.api#length" => {"min" => 1}})
    SMSSenderId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#SMSSenderId', name: 'SMSSenderId')
    SNSTopicPublishAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#SNSTopicPublishAction', name: 'SNSTopicPublishAction')
    SSOIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#SSOIdentity', name: 'SSOIdentity')
    SSOReferenceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#SSOReferenceId', name: 'SSOReferenceId')
    Seconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotevents#Seconds', name: 'Seconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 31622400}})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SetTimerAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#SetTimerAction', name: 'SetTimerAction')
    SetVariableAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#SetVariableAction', name: 'SetVariableAction')
    Severity = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotevents#Severity', name: 'Severity', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    SimpleRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#SimpleRule', name: 'SimpleRule')
    SqsAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#SqsAction', name: 'SqsAction')
    StartDetectorModelAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#StartDetectorModelAnalysisRequest', name: 'StartDetectorModelAnalysisRequest')
    StartDetectorModelAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#StartDetectorModelAnalysisResponse', name: 'StartDetectorModelAnalysisResponse')
    State = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#State', name: 'State')
    StateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#StateName', name: 'StateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    States = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#States', name: 'States', traits: {"smithy.api#length" => {"min" => 1}})
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#StatusMessage', name: 'StatusMessage')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#TagKeys', name: 'TagKeys')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#Tags', name: 'Tags')
    Threshold = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#Threshold', name: 'Threshold', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#TimerName', name: 'TimerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotevents#Timestamp', name: 'Timestamp')
    TransitionEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#TransitionEvent', name: 'TransitionEvent')
    TransitionEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotevents#TransitionEvents', name: 'TransitionEvents')
    UnsupportedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 501})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAlarmModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UpdateAlarmModelRequest', name: 'UpdateAlarmModelRequest')
    UpdateAlarmModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UpdateAlarmModelResponse', name: 'UpdateAlarmModelResponse')
    UpdateDetectorModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UpdateDetectorModelRequest', name: 'UpdateDetectorModelRequest')
    UpdateDetectorModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UpdateDetectorModelResponse', name: 'UpdateDetectorModelResponse')
    UpdateInputRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UpdateInputRequest', name: 'UpdateInputRequest')
    UpdateInputResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotevents#UpdateInputResponse', name: 'UpdateInputResponse')
    UseBase64 = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotevents#UseBase64', name: 'UseBase64')
    VariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#VariableName', name: 'VariableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    VariableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#VariableValue', name: 'VariableValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#errorMessage', name: 'ErrorMessage')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#resourceArn', name: 'ResourceArn')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotevents#resourceId', name: 'ResourceId')

    AcknowledgeFlow.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeFlowEnabled, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>The value must be <code>TRUE</code> or <code>FALSE</code>. If <code>TRUE</code>, you\n      receive a notification when the alarm state changes. You must choose to acknowledge the\n      notification before the alarm state can return to <code>NORMAL</code>. If <code>FALSE</code>,\n      you won't receive notifications. The alarm automatically changes to the <code>NORMAL</code>\n      state when the input property value returns to the specified range.</p>", "smithy.api#required" => {}}))
    AcknowledgeFlow.type = Types::AcknowledgeFlow
    Action.add_member(:set_variable, Smithy::Schema::Shapes::ShapeRef.new(shape: SetVariableAction, location_name: 'setVariable', traits: {"smithy.api#documentation" => "<p>Sets a variable to a specified value.</p>"}))
    Action.add_member(:sns, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicPublishAction, location_name: 'sns', traits: {"smithy.api#documentation" => "<p>Sends an Amazon SNS message.</p>"}))
    Action.add_member(:iot_topic_publish, Smithy::Schema::Shapes::ShapeRef.new(shape: IotTopicPublishAction, location_name: 'iotTopicPublish', traits: {"smithy.api#documentation" => "<p>Publishes an MQTT message with the given topic to the AWS IoT message broker.</p>"}))
    Action.add_member(:set_timer, Smithy::Schema::Shapes::ShapeRef.new(shape: SetTimerAction, location_name: 'setTimer', traits: {"smithy.api#documentation" => "<p>Information needed to set the timer.</p>"}))
    Action.add_member(:clear_timer, Smithy::Schema::Shapes::ShapeRef.new(shape: ClearTimerAction, location_name: 'clearTimer', traits: {"smithy.api#documentation" => "<p>Information needed to clear the timer.</p>"}))
    Action.add_member(:reset_timer, Smithy::Schema::Shapes::ShapeRef.new(shape: ResetTimerAction, location_name: 'resetTimer', traits: {"smithy.api#documentation" => "<p>Information needed to reset the timer.</p>"}))
    Action.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAction, location_name: 'lambda', traits: {"smithy.api#documentation" => "<p>Calls a Lambda function, passing in information about the detector model instance and the\n      event that triggered the action.</p>"}))
    Action.add_member(:iot_events, Smithy::Schema::Shapes::ShapeRef.new(shape: IotEventsAction, location_name: 'iotEvents', traits: {"smithy.api#documentation" => "<p>Sends AWS IoT Events input, which passes information about the detector model instance and the\n      event that triggered the action.</p>"}))
    Action.add_member(:sqs, Smithy::Schema::Shapes::ShapeRef.new(shape: SqsAction, location_name: 'sqs', traits: {"smithy.api#documentation" => "<p>Sends information about the detector model instance and the event that triggered the\n      action to an Amazon SQS queue.</p>"}))
    Action.add_member(:firehose, Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseAction, location_name: 'firehose', traits: {"smithy.api#documentation" => "<p>Sends information about the detector model instance and the event that triggered the\n      action to an Amazon Kinesis Data Firehose delivery stream.</p>"}))
    Action.add_member(:dynamo_db, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBAction, location_name: 'dynamoDB', traits: {"smithy.api#documentation" => "<p>Writes to the DynamoDB table that you created. The default action payload contains all\n      attribute-value pairs that have the information about the detector model instance and the\n      event that triggered the action. You can customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. One column of the\n      DynamoDB table receives all attribute-value pairs in the payload that you specify. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html\">Actions</a> in\n        <i>AWS IoT Events Developer Guide</i>.</p>"}))
    Action.add_member(:dynamo_d_bv2, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBv2Action, location_name: 'dynamoDBv2', traits: {"smithy.api#documentation" => "<p>Writes to the DynamoDB table that you created. The default action payload contains all\n      attribute-value pairs that have the information about the detector model instance and the\n      event that triggered the action. You can customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. A separate column of\n      the DynamoDB table receives one attribute-value pair in the payload that you specify. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html\">Actions</a> in\n        <i>AWS IoT Events Developer Guide</i>.</p>"}))
    Action.add_member(:iot_site_wise, Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseAction, location_name: 'iotSiteWise', traits: {"smithy.api#documentation" => "<p>Sends information about the detector model instance and the event that triggered the\n      action to an asset property in AWS IoT SiteWise .</p>"}))
    Action.type = Types::Action
    Actions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Action)
    AlarmAction.add_member(:sns, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicPublishAction, location_name: 'sns'))
    AlarmAction.add_member(:iot_topic_publish, Smithy::Schema::Shapes::ShapeRef.new(shape: IotTopicPublishAction, location_name: 'iotTopicPublish'))
    AlarmAction.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAction, location_name: 'lambda'))
    AlarmAction.add_member(:iot_events, Smithy::Schema::Shapes::ShapeRef.new(shape: IotEventsAction, location_name: 'iotEvents'))
    AlarmAction.add_member(:sqs, Smithy::Schema::Shapes::ShapeRef.new(shape: SqsAction, location_name: 'sqs'))
    AlarmAction.add_member(:firehose, Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseAction, location_name: 'firehose'))
    AlarmAction.add_member(:dynamo_db, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBAction, location_name: 'dynamoDB'))
    AlarmAction.add_member(:dynamo_d_bv2, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBv2Action, location_name: 'dynamoDBv2'))
    AlarmAction.add_member(:iot_site_wise, Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseAction, location_name: 'iotSiteWise'))
    AlarmAction.type = Types::AlarmAction
    AlarmActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmAction)
    AlarmCapabilities.add_member(:initialization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InitializationConfiguration, location_name: 'initializationConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the default alarm state. \nThe configuration applies to all alarms that were created based on this alarm model.</p>"}))
    AlarmCapabilities.add_member(:acknowledge_flow, Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeFlow, location_name: 'acknowledgeFlow', traits: {"smithy.api#documentation" => "<p>Specifies whether to get notified for alarm state changes.</p>"}))
    AlarmCapabilities.type = Types::AlarmCapabilities
    AlarmEventActions.add_member(:alarm_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmActions, location_name: 'alarmActions', traits: {"smithy.api#documentation" => "<p>Specifies one or more supported actions to receive notifications when the alarm state\n      changes.</p>"}))
    AlarmEventActions.type = Types::AlarmEventActions
    AlarmModelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelSummary)
    AlarmModelSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was created, in the Unix epoch format.</p>"}))
    AlarmModelSummary.add_member(:alarm_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: 'alarmModelDescription', traits: {"smithy.api#documentation" => "<p>The description of the alarm model.</p>"}))
    AlarmModelSummary.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>"}))
    AlarmModelSummary.type = Types::AlarmModelSummary
    AlarmModelVersionStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AlarmModelVersionStatus.add_member(:activating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATING', traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    AlarmModelVersionStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AlarmModelVersionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AlarmModelVersionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionSummary)
    AlarmModelVersionSummary.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>"}))
    AlarmModelVersionSummary.add_member(:alarm_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: 'alarmModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"}))
    AlarmModelVersionSummary.add_member(:alarm_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: 'alarmModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the alarm model.</p>"}))
    AlarmModelVersionSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"}))
    AlarmModelVersionSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was created, in the Unix epoch format.</p>"}))
    AlarmModelVersionSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was last updated, in the Unix epoch format.</p>"}))
    AlarmModelVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the alarm model. The status can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. \n        Activating an alarm model can take up to a few minutes.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. \n\t  Check your alarm model information and update the alarm model.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information \n        and try again.</p>\n            </li>\n         </ul>"}))
    AlarmModelVersionSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>\n      Contains information about the status of the alarm model version.\n    </p>"}))
    AlarmModelVersionSummary.type = Types::AlarmModelVersionSummary
    AlarmNotification.add_member(:notification_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationActions, location_name: 'notificationActions', traits: {"smithy.api#documentation" => "<p>Contains the notification settings of an alarm model. \nThe settings apply to all alarms that were created based on this alarm model.</p>"}))
    AlarmNotification.type = Types::AlarmNotification
    AlarmRule.add_member(:simple_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleRule, location_name: 'simpleRule', traits: {"smithy.api#documentation" => "<p>A rule that compares an input property value to a threshold value with a comparison operator.</p>"}))
    AlarmRule.type = Types::AlarmRule
    AnalysisResult.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the analysis result. Analyses fall into the following types based on the\n      validators used to generate the analysis result:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>supported-actions</code> - You must specify AWS IoT Events supported actions that work\n          with other AWS services in a supported AWS Region.</p>\n            </li>\n            <li>\n               <p>\n                  <code>service-limits</code> - Resources or API operations can't exceed service\n          quotas (also known as limits). Update your detector model or request a quota\n          increase.</p>\n            </li>\n            <li>\n               <p>\n                  <code>structure</code> - The detector model must follow a structure that AWS IoT Events\n          supports. </p>\n            </li>\n            <li>\n               <p>\n                  <code>expression-syntax</code> - Your expression must follow the required\n          syntax.</p>\n            </li>\n            <li>\n               <p>\n                  <code>data-type</code> - Data types referenced in the detector model must be\n          compatible.</p>\n            </li>\n            <li>\n               <p>\n                  <code>referenced-data</code> - You must define the data referenced in your detector\n          model before you can use the data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>referenced-resource</code> - Resources that the detector model uses must be\n          available.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html\">Running detector model\n        analyses</a> in the <i>AWS IoT Events Developer Guide</i>.</p>"}))
    AnalysisResult.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The severity level of the analysis result. Based on the severity level, analysis results\n      fall into three general categories:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INFO</code> - An information result tells you about a significant field in your\n          detector model. This type of result usually doesn't require immediate action.</p>\n            </li>\n            <li>\n               <p>\n                  <code>WARNING</code> - A warning result draws special attention to fields that might cause issues for your detector model. \n          We recommend that you review warnings and take necessary actions\n          before you use your detector model in production environments. Otherwise, the detector\n          model might not work as expected.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ERROR</code> - An error result notifies you about a problem found in your\n          detector model. You must fix all errors before you can publish your detector model.</p>\n            </li>\n         </ul>"}))
    AnalysisResult.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Contains additional information about the analysis result.</p>"}))
    AnalysisResult.add_member(:locations, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultLocations, location_name: 'locations', traits: {"smithy.api#documentation" => "<p>Contains one or more locations that you can use to locate the fields in your detector\n      model that the analysis result references.</p>"}))
    AnalysisResult.type = Types::AnalysisResult
    AnalysisResultLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    AnalysisResultLevel.add_member(:warning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING', traits: {"smithy.api#enumValue" => "WARNING"}))
    AnalysisResultLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    AnalysisResultLocation.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultLocationPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://github.com/json-path/JsonPath\">JsonPath</a> expression that\n      identifies the error field in your detector model.</p>"}))
    AnalysisResultLocation.type = Types::AnalysisResultLocation
    AnalysisResultLocations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultLocation)
    AnalysisResults.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResult)
    AnalysisStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    AnalysisStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    AnalysisStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssetPropertyTimestamp.add_member(:time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyTimeInSeconds, location_name: 'timeInSeconds', traits: {"smithy.api#documentation" => "<p>The timestamp, in seconds, in the Unix epoch format. The valid range is between\n      1-31556889864403199.</p>", "smithy.api#required" => {}}))
    AssetPropertyTimestamp.add_member(:offset_in_nanos, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyOffsetInNanos, location_name: 'offsetInNanos', traits: {"smithy.api#documentation" => "<p>The nanosecond offset converted from <code>timeInSeconds</code>. The valid range is\n      between 0-999999999.</p>"}))
    AssetPropertyTimestamp.type = Types::AssetPropertyTimestamp
    AssetPropertyValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyVariant, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value to send to an asset property.</p>"}))
    AssetPropertyValue.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyTimestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp associated with the asset property value. The default is the current event\n      time.</p>"}))
    AssetPropertyValue.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyQuality, location_name: 'quality', traits: {"smithy.api#documentation" => "<p>The quality of the asset property value. The value must be <code>'GOOD'</code>,\n        <code>'BAD'</code>, or <code>'UNCERTAIN'</code>.</p>"}))
    AssetPropertyValue.type = Types::AssetPropertyValue
    AssetPropertyVariant.add_member(:string_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyStringValue, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>The asset property value is a string. You must use an expression, and the evaluated result\n      should be a string.</p>"}))
    AssetPropertyVariant.add_member(:integer_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyIntegerValue, location_name: 'integerValue', traits: {"smithy.api#documentation" => "<p>The asset property value is an integer. You must use an expression, and the evaluated\n      result should be an integer.</p>"}))
    AssetPropertyVariant.add_member(:double_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyDoubleValue, location_name: 'doubleValue', traits: {"smithy.api#documentation" => "<p>The asset property value is a double. You must use an expression, and the evaluated result\n      should be a double.</p>"}))
    AssetPropertyVariant.add_member(:boolean_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyBooleanValue, location_name: 'booleanValue', traits: {"smithy.api#documentation" => "<p>The asset property value is a Boolean value that must be <code>'TRUE'</code> or\n        <code>'FALSE'</code>. You must use an expression, and the evaluated result should be a\n      Boolean value.</p>"}))
    AssetPropertyVariant.type = Types::AssetPropertyVariant
    Attribute.add_member(:json_path, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: 'jsonPath', traits: {"smithy.api#documentation" => "<p>An expression that specifies an attribute-value pair in a JSON structure. Use this to\n      specify an attribute from the JSON payload that is made available by the input. Inputs are\n      derived from messages sent to AWS IoT Events (<code>BatchPutMessage</code>). Each such message contains\n      a JSON payload. The attribute (and its paired value) specified here are available for use in\n      the <code>condition</code> expressions used by detectors. </p>\n         <p>Syntax: <code><field-name>.<field-name>...</code>\n         </p>", "smithy.api#required" => {}}))
    Attribute.type = Types::Attribute
    Attributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    ClearTimerAction.add_member(:timer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimerName, location_name: 'timerName', traits: {"smithy.api#documentation" => "<p>The name of the timer to clear.</p>", "smithy.api#required" => {}}))
    ClearTimerAction.type = Types::ClearTimerAction
    ComparisonOperator.add_member(:greater, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER', traits: {"smithy.api#enumValue" => "GREATER"}))
    ComparisonOperator.add_member(:greater_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_OR_EQUAL', traits: {"smithy.api#enumValue" => "GREATER_OR_EQUAL"}))
    ComparisonOperator.add_member(:less, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS', traits: {"smithy.api#enumValue" => "LESS"}))
    ComparisonOperator.add_member(:less_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_OR_EQUAL', traits: {"smithy.api#enumValue" => "LESS_OR_EQUAL"}))
    ComparisonOperator.add_member(:equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUAL', traits: {"smithy.api#enumValue" => "EQUAL"}))
    ComparisonOperator.add_member(:not_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUAL', traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    CreateAlarmModelRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>A unique name that helps you identify the alarm model. You can't change this name after\n      you create the alarm model.</p>", "smithy.api#required" => {}}))
    CreateAlarmModelRequest.add_member(:alarm_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: 'alarmModelDescription', traits: {"smithy.api#documentation" => "<p>A description that tells you what the alarm model detects.</p>"}))
    CreateAlarmModelRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>", "smithy.api#required" => {}}))
    CreateAlarmModelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the alarm model. The tags help you\n      manage the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/tagging-iotevents.html\">Tagging your AWS IoT Events\n        resources</a> in the <i>AWS IoT Events Developer Guide</i>.</p>\n         <p>You can create up to 50 tags for one alarm model.</p>"}))
    CreateAlarmModelRequest.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: 'key', traits: {"smithy.api#documentation" => "<p>An input attribute used as a key to create an alarm. \nAWS IoT Events routes <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html\">inputs</a> \nassociated with this key to the alarm.</p>"}))
    CreateAlarmModelRequest.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>A non-negative integer that reflects the severity level of the alarm.</p>"}))
    CreateAlarmModelRequest.add_member(:alarm_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmRule, location_name: 'alarmRule', traits: {"smithy.api#documentation" => "<p>Defines when your alarm is invoked.</p>", "smithy.api#required" => {}}))
    CreateAlarmModelRequest.add_member(:alarm_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNotification, location_name: 'alarmNotification', traits: {"smithy.api#documentation" => "<p>Contains information about one or more notification actions.</p>"}))
    CreateAlarmModelRequest.add_member(:alarm_event_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: 'alarmEventActions', traits: {"smithy.api#documentation" => "<p>Contains information about one or more alarm actions.</p>"}))
    CreateAlarmModelRequest.add_member(:alarm_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: 'alarmCapabilities', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of alarm state changes.</p>"}))
    CreateAlarmModelRequest.type = Types::CreateAlarmModelRequest
    CreateAlarmModelResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was created, in the Unix epoch format.</p>"}))
    CreateAlarmModelResponse.add_member(:alarm_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: 'alarmModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"}))
    CreateAlarmModelResponse.add_member(:alarm_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: 'alarmModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the alarm model.</p>"}))
    CreateAlarmModelResponse.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was last updated, in the Unix epoch format.</p>"}))
    CreateAlarmModelResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the alarm model. The status can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. \n        Activating an alarm model can take up to a few minutes.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. \n\t  Check your alarm model information and update the alarm model.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information \n        and try again.</p>\n            </li>\n         </ul>"}))
    CreateAlarmModelResponse.type = Types::CreateAlarmModelResponse
    CreateDetectorModelRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model.</p>", "smithy.api#required" => {}}))
    CreateDetectorModelRequest.add_member(:detector_model_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: 'detectorModelDefinition', traits: {"smithy.api#documentation" => "<p>Information that defines how the detectors operate.</p>", "smithy.api#required" => {}}))
    CreateDetectorModelRequest.add_member(:detector_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: 'detectorModelDescription', traits: {"smithy.api#documentation" => "<p>A brief description of the detector model.</p>"}))
    CreateDetectorModelRequest.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The input attribute key used to identify a device or system to create a detector (an\n      instance of the detector model) and then to route each input received to the appropriate\n      detector (instance). This parameter uses a JSON-path expression in the message payload of each\n      input to specify the attribute-value pair that is used to identify the device associated with\n      the input.</p>"}))
    CreateDetectorModelRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>", "smithy.api#required" => {}}))
    CreateDetectorModelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the detector model.</p>"}))
    CreateDetectorModelRequest.add_member(:evaluation_method, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: 'evaluationMethod', traits: {"smithy.api#documentation" => "<p>Information about the order in which events are evaluated and how actions are executed.\n    </p>"}))
    CreateDetectorModelRequest.type = Types::CreateDetectorModelRequest
    CreateDetectorModelResponse.add_member(:detector_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: 'detectorModelConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how the detector model is configured.</p>"}))
    CreateDetectorModelResponse.type = Types::CreateDetectorModelResponse
    CreateInputRequest.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name you want to give to the input.</p>", "smithy.api#required" => {}}))
    CreateInputRequest.add_member(:input_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription, location_name: 'inputDescription', traits: {"smithy.api#documentation" => "<p>A brief description of the input.</p>"}))
    CreateInputRequest.add_member(:input_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDefinition, location_name: 'inputDefinition', traits: {"smithy.api#documentation" => "<p>The definition of the input.</p>", "smithy.api#required" => {}}))
    CreateInputRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the input.</p>"}))
    CreateInputRequest.type = Types::CreateInputRequest
    CreateInputResponse.add_member(:input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfiguration, location_name: 'inputConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the configuration of the input.</p>"}))
    CreateInputResponse.type = Types::CreateInputResponse
    DeleteAlarmModelRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAlarmModelRequest.type = Types::DeleteAlarmModelRequest
    DeleteAlarmModelResponse.type = Types::DeleteAlarmModelResponse
    DeleteDetectorModelRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDetectorModelRequest.type = Types::DeleteDetectorModelRequest
    DeleteDetectorModelResponse.type = Types::DeleteDetectorModelResponse
    DeleteInputRequest.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name of the input to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInputRequest.type = Types::DeleteInputRequest
    DeleteInputResponse.type = Types::DeleteInputResponse
    DescribeAlarmModelRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAlarmModelRequest.add_member(:alarm_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: 'alarmModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the alarm model.</p>", "smithy.api#httpQuery" => "version"}))
    DescribeAlarmModelRequest.type = Types::DescribeAlarmModelRequest
    DescribeAlarmModelResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was created, in the Unix epoch format.</p>"}))
    DescribeAlarmModelResponse.add_member(:alarm_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: 'alarmModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"}))
    DescribeAlarmModelResponse.add_member(:alarm_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: 'alarmModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the alarm model.</p>"}))
    DescribeAlarmModelResponse.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was last updated, in the Unix epoch format.</p>"}))
    DescribeAlarmModelResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the alarm model. The status can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. \n        Activating an alarm model can take up to a few minutes.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. \n\t  Check your alarm model information and update the alarm model.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information \n        and try again.</p>\n            </li>\n         </ul>"}))
    DescribeAlarmModelResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>\n      Contains information about the status of the alarm model.\n    </p>"}))
    DescribeAlarmModelResponse.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>"}))
    DescribeAlarmModelResponse.add_member(:alarm_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: 'alarmModelDescription', traits: {"smithy.api#documentation" => "<p>The description of the alarm model.</p>"}))
    DescribeAlarmModelResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"}))
    DescribeAlarmModelResponse.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: 'key', traits: {"smithy.api#documentation" => "<p>An input attribute used as a key to create an alarm. \nAWS IoT Events routes <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html\">inputs</a> \nassociated with this key to the alarm.</p>"}))
    DescribeAlarmModelResponse.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>A non-negative integer that reflects the severity level of the alarm.</p>"}))
    DescribeAlarmModelResponse.add_member(:alarm_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmRule, location_name: 'alarmRule', traits: {"smithy.api#documentation" => "<p>Defines when your alarm is invoked.</p>"}))
    DescribeAlarmModelResponse.add_member(:alarm_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNotification, location_name: 'alarmNotification', traits: {"smithy.api#documentation" => "<p>Contains information about one or more notification actions.</p>"}))
    DescribeAlarmModelResponse.add_member(:alarm_event_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: 'alarmEventActions', traits: {"smithy.api#documentation" => "<p>Contains information about one or more alarm actions.</p>"}))
    DescribeAlarmModelResponse.add_member(:alarm_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: 'alarmCapabilities', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of alarm state changes.</p>"}))
    DescribeAlarmModelResponse.type = Types::DescribeAlarmModelResponse
    DescribeDetectorModelAnalysisRequest.add_member(:analysis_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: 'analysisId', traits: {"smithy.api#documentation" => "<p>The ID of the analysis result that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDetectorModelAnalysisRequest.type = Types::DescribeDetectorModelAnalysisRequest
    DescribeDetectorModelAnalysisResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the analysis activity. The status can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>RUNNING</code> - AWS IoT Events is analyzing your detector model. This process can take\n          several minutes to complete.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETE</code> - AWS IoT Events finished analyzing your detector model.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - AWS IoT Events couldn't analyze your detector model. Try again\n          later.</p>\n            </li>\n         </ul>"}))
    DescribeDetectorModelAnalysisResponse.type = Types::DescribeDetectorModelAnalysisResponse
    DescribeDetectorModelRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDetectorModelRequest.add_member(:detector_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: 'detectorModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the detector model.</p>", "smithy.api#httpQuery" => "version"}))
    DescribeDetectorModelRequest.type = Types::DescribeDetectorModelRequest
    DescribeDetectorModelResponse.add_member(:detector_model, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModel, location_name: 'detectorModel', traits: {"smithy.api#documentation" => "<p>Information about the detector model.</p>"}))
    DescribeDetectorModelResponse.type = Types::DescribeDetectorModelResponse
    DescribeInputRequest.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name of the input.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInputRequest.type = Types::DescribeInputRequest
    DescribeInputResponse.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: 'input', traits: {"smithy.api#documentation" => "<p>Information about the input.</p>"}))
    DescribeInputResponse.type = Types::DescribeInputResponse
    DescribeLoggingOptionsRequest.type = Types::DescribeLoggingOptionsRequest
    DescribeLoggingOptionsResponse.add_member(:logging_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingOptions, location_name: 'loggingOptions', traits: {"smithy.api#documentation" => "<p>The current settings of the AWS IoT Events logging options.</p>"}))
    DescribeLoggingOptionsResponse.type = Types::DescribeLoggingOptionsResponse
    DetectorDebugOption.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model.</p>", "smithy.api#required" => {}}))
    DetectorDebugOption.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the input attribute key used to create the detector (the instance of the\n      detector model).</p>"}))
    DetectorDebugOption.type = Types::DetectorDebugOption
    DetectorDebugOptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorDebugOption)
    DetectorModel.add_member(:detector_model_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: 'detectorModelDefinition', traits: {"smithy.api#documentation" => "<p>Information that defines how a detector operates.</p>"}))
    DetectorModel.add_member(:detector_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: 'detectorModelConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how the detector is configured.</p>"}))
    DetectorModel.type = Types::DetectorModel
    DetectorModelConfiguration.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model.</p>"}))
    DetectorModelConfiguration.add_member(:detector_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: 'detectorModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the detector model.</p>"}))
    DetectorModelConfiguration.add_member(:detector_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: 'detectorModelDescription', traits: {"smithy.api#documentation" => "<p>A brief description of the detector model.</p>"}))
    DetectorModelConfiguration.add_member(:detector_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelArn, location_name: 'detectorModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector model.</p>"}))
    DetectorModelConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>"}))
    DetectorModelConfiguration.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the detector model was created.</p>"}))
    DetectorModelConfiguration.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the detector model was last updated.</p>"}))
    DetectorModelConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the detector model.</p>"}))
    DetectorModelConfiguration.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The value used to identify a detector instance. When a device or system sends input, a new\n      detector instance with a unique key value is created. AWS IoT Events can continue to route input to its\n      corresponding detector instance based on this identifying information. </p>\n         <p>This parameter uses a JSON-path expression to select the attribute-value pair in the\n      message payload that is used for identification. To route the message to the correct detector\n      instance, the device must send a message payload that contains the same\n      attribute-value.</p>"}))
    DetectorModelConfiguration.add_member(:evaluation_method, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: 'evaluationMethod', traits: {"smithy.api#documentation" => "<p>Information about the order in which events are evaluated and how actions are executed.\n    </p>"}))
    DetectorModelConfiguration.type = Types::DetectorModelConfiguration
    DetectorModelDefinition.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: States, location_name: 'states', traits: {"smithy.api#documentation" => "<p>Information about the states of the detector.</p>", "smithy.api#required" => {}}))
    DetectorModelDefinition.add_member(:initial_state_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'initialStateName', traits: {"smithy.api#documentation" => "<p>The state that is entered at the creation of each detector (instance).</p>", "smithy.api#required" => {}}))
    DetectorModelDefinition.type = Types::DetectorModelDefinition
    DetectorModelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelSummary)
    DetectorModelSummary.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model.</p>"}))
    DetectorModelSummary.add_member(:detector_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: 'detectorModelDescription', traits: {"smithy.api#documentation" => "<p>A brief description of the detector model.</p>"}))
    DetectorModelSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the detector model was created.</p>"}))
    DetectorModelSummary.type = Types::DetectorModelSummary
    DetectorModelVersionStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DetectorModelVersionStatus.add_member(:activating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATING', traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    DetectorModelVersionStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    DetectorModelVersionStatus.add_member(:deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    DetectorModelVersionStatus.add_member(:draft, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFT', traits: {"smithy.api#enumValue" => "DRAFT"}))
    DetectorModelVersionStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    DetectorModelVersionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DetectorModelVersionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersionSummary)
    DetectorModelVersionSummary.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model.</p>"}))
    DetectorModelVersionSummary.add_member(:detector_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: 'detectorModelVersion', traits: {"smithy.api#documentation" => "<p>The ID of the detector model version.</p>"}))
    DetectorModelVersionSummary.add_member(:detector_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelArn, location_name: 'detectorModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the detector model version.</p>"}))
    DetectorModelVersionSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants the detector model permission to perform its tasks.</p>"}))
    DetectorModelVersionSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the detector model version was created.</p>"}))
    DetectorModelVersionSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the detector model version was updated.</p>"}))
    DetectorModelVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the detector model version.</p>"}))
    DetectorModelVersionSummary.add_member(:evaluation_method, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: 'evaluationMethod', traits: {"smithy.api#documentation" => "<p>Information about the order in which events are evaluated and how actions are executed.\n    </p>"}))
    DetectorModelVersionSummary.type = Types::DetectorModelVersionSummary
    DynamoDBAction.add_member(:hash_key_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyType, location_name: 'hashKeyType', traits: {"smithy.api#documentation" => "<p>The data type for the hash key (also called the partition key). You can specify the\n      following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>'STRING'</code> - The hash key is a string.</p>\n            </li>\n            <li>\n               <p>\n                  <code>'NUMBER'</code> - The hash key is a number.</p>\n            </li>\n         </ul>\n         <p>If you don't specify <code>hashKeyType</code>, the default value is\n      <code>'STRING'</code>.</p>"}))
    DynamoDBAction.add_member(:hash_key_field, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyField, location_name: 'hashKeyField', traits: {"smithy.api#documentation" => "<p>The name of the hash key (also called the partition key). The <code>hashKeyField</code>\n      value must match the partition key of the target DynamoDB table.</p>", "smithy.api#required" => {}}))
    DynamoDBAction.add_member(:hash_key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyValue, location_name: 'hashKeyValue', traits: {"smithy.api#documentation" => "<p>The value of the hash key (also called the partition key).</p>", "smithy.api#required" => {}}))
    DynamoDBAction.add_member(:range_key_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyType, location_name: 'rangeKeyType', traits: {"smithy.api#documentation" => "<p>The data type for the range key (also called the sort key), You can specify the following\n      values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>'STRING'</code> - The range key is a string.</p>\n            </li>\n            <li>\n               <p>\n                  <code>'NUMBER'</code> - The range key is number.</p>\n            </li>\n         </ul>\n         <p>If you don't specify <code>rangeKeyField</code>, the default value is\n        <code>'STRING'</code>.</p>"}))
    DynamoDBAction.add_member(:range_key_field, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyField, location_name: 'rangeKeyField', traits: {"smithy.api#documentation" => "<p>The name of the range key (also called the sort key). The <code>rangeKeyField</code> value\n      must match the sort key of the target DynamoDB table. </p>"}))
    DynamoDBAction.add_member(:range_key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyValue, location_name: 'rangeKeyValue', traits: {"smithy.api#documentation" => "<p>The value of the range key (also called the sort key).</p>"}))
    DynamoDBAction.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoOperation, location_name: 'operation', traits: {"smithy.api#documentation" => "<p>The type of operation to perform. You can specify the following values: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>'INSERT'</code> - Insert data as a new item into the DynamoDB table. This item uses\n          the specified hash key as a partition key. If you specified a range key, the item uses the\n          range key as a sort key.</p>\n            </li>\n            <li>\n               <p>\n                  <code>'UPDATE'</code> - Update an existing item of the DynamoDB table with new data. This\n          item's partition key must match the specified hash key. If you specified a range key, the\n          range key must match the item's sort key.</p>\n            </li>\n            <li>\n               <p>\n                  <code>'DELETE'</code> - Delete an existing item of the DynamoDB table. This item's\n          partition key must match the specified hash key. If you specified a range key, the range\n          key must match the item's sort key.</p>\n            </li>\n         </ul>\n         <p>If you don't specify this parameter, AWS IoT Events triggers the <code>'INSERT'</code>\n      operation.</p>"}))
    DynamoDBAction.add_member(:payload_field, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyField, location_name: 'payloadField', traits: {"smithy.api#documentation" => "<p>The name of the DynamoDB column that receives the action payload.</p>\n         <p>If you don't specify this parameter, the name of the DynamoDB column is\n      <code>payload</code>.</p>"}))
    DynamoDBAction.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoTableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the DynamoDB table. The <code>tableName</code> value must match the table name of\n      the target DynamoDB table. </p>", "smithy.api#required" => {}}))
    DynamoDBAction.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload'))
    DynamoDBAction.type = Types::DynamoDBAction
    DynamoDBv2Action.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoTableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the DynamoDB table.</p>", "smithy.api#required" => {}}))
    DynamoDBv2Action.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload'))
    DynamoDBv2Action.type = Types::DynamoDBv2Action
    EmailConfiguration.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: FromEmail, location_name: 'from', traits: {"smithy.api#documentation" => "<p>The email address that sends emails.</p>\n         <important>\n            <p>If you use the AWS IoT Events managed AWS Lambda function to manage your emails, you must <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html\">verify\n          the email address that sends emails in Amazon SES</a>.</p>\n         </important>", "smithy.api#required" => {}}))
    EmailConfiguration.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>Contains the subject and message of an email.</p>"}))
    EmailConfiguration.add_member(:recipients, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailRecipients, location_name: 'recipients', traits: {"smithy.api#documentation" => "<p>Contains the information of one or more recipients who receive the emails.</p>\n         <important>\n            <p>You must <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html\">add the users that receive emails to your AWS SSO store</a>.</p>\n         </important>", "smithy.api#required" => {}}))
    EmailConfiguration.type = Types::EmailConfiguration
    EmailConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailConfiguration)
    EmailContent.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSubject, location_name: 'subject', traits: {"smithy.api#documentation" => "<p>The subject of the email.</p>"}))
    EmailContent.add_member(:additional_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationAdditionalMessage, location_name: 'additionalMessage', traits: {"smithy.api#documentation" => "<p>The message that you want to send. The message can be up to 200 characters.</p>"}))
    EmailContent.type = Types::EmailContent
    EmailRecipients.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientDetails, location_name: 'to', traits: {"smithy.api#documentation" => "<p>Specifies one or more recipients who receive the email.</p>"}))
    EmailRecipients.type = Types::EmailRecipients
    EvaluationMethod.add_member(:batch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BATCH', traits: {"smithy.api#enumValue" => "BATCH"}))
    EvaluationMethod.add_member(:serial, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERIAL', traits: {"smithy.api#enumValue" => "SERIAL"}))
    Event.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'eventName', traits: {"smithy.api#documentation" => "<p>The name of the event.</p>", "smithy.api#required" => {}}))
    Event.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>Optional. The Boolean expression that, when TRUE, causes the <code>actions</code> to be\n      performed. If not present, the actions are performed (=TRUE). If the expression result is not\n      a Boolean value, the actions are not performed (=FALSE).</p>"}))
    Event.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions to be performed.</p>"}))
    Event.type = Types::Event
    Events.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    FirehoseAction.add_member(:delivery_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStreamName, location_name: 'deliveryStreamName', traits: {"smithy.api#documentation" => "<p>The name of the Kinesis Data Firehose delivery stream where the data is written.</p>", "smithy.api#required" => {}}))
    FirehoseAction.add_member(:separator, Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseSeparator, location_name: 'separator', traits: {"smithy.api#documentation" => "<p>A character separator that is used to separate records written to the Kinesis Data\n      Firehose delivery stream. Valid values are: '\\n' (newline), '\\t' (tab), '\\r\\n' (Windows\n      newline), ',' (comma).</p>"}))
    FirehoseAction.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>You can configure the action payload when you send a message to an Amazon Kinesis Data Firehose delivery\n      stream.</p>"}))
    FirehoseAction.type = Types::FirehoseAction
    GetDetectorModelAnalysisResultsRequest.add_member(:analysis_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: 'analysisId', traits: {"smithy.api#documentation" => "<p>The ID of the analysis result that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDetectorModelAnalysisResultsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetDetectorModelAnalysisResultsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxAnalysisResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetDetectorModelAnalysisResultsRequest.type = Types::GetDetectorModelAnalysisResultsRequest
    GetDetectorModelAnalysisResultsResponse.add_member(:analysis_results, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResults, location_name: 'analysisResults', traits: {"smithy.api#documentation" => "<p>Contains information about one or more analysis results.</p>"}))
    GetDetectorModelAnalysisResultsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.</p>"}))
    GetDetectorModelAnalysisResultsResponse.type = Types::GetDetectorModelAnalysisResultsResponse
    InitializationConfiguration.add_member(:disabled_on_initialization, Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOnInitialization, location_name: 'disabledOnInitialization', traits: {"smithy.api#documentation" => "<p>The value must be <code>TRUE</code> or <code>FALSE</code>. If <code>FALSE</code>, all\n      alarm instances created based on the alarm model are activated. The default value is\n        <code>TRUE</code>.</p>", "smithy.api#required" => {}}))
    InitializationConfiguration.type = Types::InitializationConfiguration
    Input.add_member(:input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfiguration, location_name: 'inputConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the configuration of an input.</p>"}))
    Input.add_member(:input_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDefinition, location_name: 'inputDefinition', traits: {"smithy.api#documentation" => "<p>The definition of the input.</p>"}))
    Input.type = Types::Input
    InputConfiguration.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name of the input.</p>", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:input_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription, location_name: 'inputDescription', traits: {"smithy.api#documentation" => "<p>A brief description of the input.</p>"}))
    InputConfiguration.add_member(:input_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InputArn, location_name: 'inputArn', traits: {"smithy.api#documentation" => "<p>The ARN of the input.</p>", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the input was created.</p>", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the input was updated.</p>", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the input.</p>", "smithy.api#required" => {}}))
    InputConfiguration.type = Types::InputConfiguration
    InputDefinition.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The attributes from the JSON payload that are made available by the input. Inputs are\n      derived from messages sent to the AWS IoT Events system using <code>BatchPutMessage</code>. Each such\n      message contains a JSON payload, and those attributes (and their paired values) specified here\n      are available for use in the <code>condition</code> expressions used by detectors that monitor\n      this input. </p>", "smithy.api#required" => {}}))
    InputDefinition.type = Types::InputDefinition
    InputIdentifier.add_member(:iot_events_input_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: IotEventsInputIdentifier, location_name: 'iotEventsInputIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifier of the input routed to AWS IoT Events.\n    </p>"}))
    InputIdentifier.add_member(:iot_site_wise_input_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseInputIdentifier, location_name: 'iotSiteWiseInputIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifer of the input routed from AWS IoT SiteWise.\n    </p>"}))
    InputIdentifier.type = Types::InputIdentifier
    InputStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    InputStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    InputStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InputStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    InputSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputSummary)
    InputSummary.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name of the input.</p>"}))
    InputSummary.add_member(:input_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription, location_name: 'inputDescription', traits: {"smithy.api#documentation" => "<p>A brief description of the input.</p>"}))
    InputSummary.add_member(:input_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InputArn, location_name: 'inputArn', traits: {"smithy.api#documentation" => "<p>The ARN of the input.</p>"}))
    InputSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the input was created.</p>"}))
    InputSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the input was updated.</p>"}))
    InputSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InputStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the input.</p>"}))
    InputSummary.type = Types::InputSummary
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    InvalidRequestException.type = Types::InvalidRequestException
    IotEventsAction.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name of the AWS IoT Events input where the data is sent.</p>", "smithy.api#required" => {}}))
    IotEventsAction.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>You can configure the action payload when you send a message to an AWS IoT Events input.</p>"}))
    IotEventsAction.type = Types::IotEventsAction
    IotEventsInputIdentifier.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>\n      The name of the input routed to AWS IoT Events.\n    </p>", "smithy.api#required" => {}}))
    IotEventsInputIdentifier.type = Types::IotEventsInputIdentifier
    IotSiteWiseAction.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyEntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>A unique identifier for this entry. You can use the entry ID to track which data entry\n      causes an error in case of failure. The default is a new unique identifier.</p>"}))
    IotSiteWiseAction.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset that has the specified property.</p>"}))
    IotSiteWiseAction.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyId, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property.</p>"}))
    IotSiteWiseAction.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias of the asset property.</p>"}))
    IotSiteWiseAction.add_member(:property_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValue, location_name: 'propertyValue', traits: {"smithy.api#documentation" => "<p>The value to send to the asset property. This value contains timestamp, quality, and value\n      (TQV) information. </p>"}))
    IotSiteWiseAction.type = Types::IotSiteWiseAction
    IotSiteWiseAssetModelPropertyIdentifier.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelId, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>\n      The ID of the AWS IoT SiteWise asset model. \n    </p>", "smithy.api#required" => {}}))
    IotSiteWiseAssetModelPropertyIdentifier.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyId, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>\n      The ID of the AWS IoT SiteWise asset property.\n    </p>", "smithy.api#required" => {}}))
    IotSiteWiseAssetModelPropertyIdentifier.type = Types::IotSiteWiseAssetModelPropertyIdentifier
    IotSiteWiseInputIdentifier.add_member(:iot_site_wise_asset_model_property_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseAssetModelPropertyIdentifier, location_name: 'iotSiteWiseAssetModelPropertyIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifier of the AWS IoT SiteWise asset model property.\n    </p>"}))
    IotSiteWiseInputIdentifier.type = Types::IotSiteWiseInputIdentifier
    IotTopicPublishAction.add_member(:mqtt_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: MQTTTopic, location_name: 'mqttTopic', traits: {"smithy.api#documentation" => "<p>The MQTT topic of the message. You can use a string expression that includes variables\n        (<code>$variable.<variable-name></code>) and input values\n        (<code>$input.<input-name>.<path-to-datum></code>) as the topic string.</p>", "smithy.api#required" => {}}))
    IotTopicPublishAction.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>You can configure the action payload when you publish a message to an AWS IoT Core\n      topic.</p>"}))
    IotTopicPublishAction.type = Types::IotTopicPublishAction
    LambdaAction.add_member(:function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'functionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Lambda function that is executed.</p>", "smithy.api#required" => {}}))
    LambdaAction.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>You can configure the action payload when you send a message to a Lambda function.</p>"}))
    LambdaAction.type = Types::LambdaAction
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListAlarmModelVersionsRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAlarmModelVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAlarmModelVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAlarmModelVersionsRequest.type = Types::ListAlarmModelVersionsRequest
    ListAlarmModelVersionsResponse.add_member(:alarm_model_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionSummaries, location_name: 'alarmModelVersionSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each alarm model version.</p>"}))
    ListAlarmModelVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.</p>"}))
    ListAlarmModelVersionsResponse.type = Types::ListAlarmModelVersionsResponse
    ListAlarmModelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAlarmModelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAlarmModelsRequest.type = Types::ListAlarmModelsRequest
    ListAlarmModelsResponse.add_member(:alarm_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelSummaries, location_name: 'alarmModelSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each alarm model.</p>"}))
    ListAlarmModelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.</p>"}))
    ListAlarmModelsResponse.type = Types::ListAlarmModelsResponse
    ListDetectorModelVersionsRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model whose versions are returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDetectorModelVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDetectorModelVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDetectorModelVersionsRequest.type = Types::ListDetectorModelVersionsRequest
    ListDetectorModelVersionsResponse.add_member(:detector_model_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersionSummaries, location_name: 'detectorModelVersionSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the detector model versions.</p>"}))
    ListDetectorModelVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.</p>"}))
    ListDetectorModelVersionsResponse.type = Types::ListDetectorModelVersionsResponse
    ListDetectorModelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDetectorModelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDetectorModelsRequest.type = Types::ListDetectorModelsRequest
    ListDetectorModelsResponse.add_member(:detector_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelSummaries, location_name: 'detectorModelSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the detector models.</p>"}))
    ListDetectorModelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.</p>"}))
    ListDetectorModelsResponse.type = Types::ListDetectorModelsResponse
    ListInputRoutingsRequest.add_member(:input_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: InputIdentifier, location_name: 'inputIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifer of the routed input.\n    </p>", "smithy.api#required" => {}}))
    ListInputRoutingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n      The maximum number of results to be returned per request.\n    </p>"}))
    ListInputRoutingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n      The token that you can use to return the next set of results.\n    </p>"}))
    ListInputRoutingsRequest.type = Types::ListInputRoutingsRequest
    ListInputRoutingsResponse.add_member(:routed_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutedResources, location_name: 'routedResources', traits: {"smithy.api#documentation" => "<p>\n      Summary information about the routed resources.\n    </p>"}))
    ListInputRoutingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n      The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.\n    </p>"}))
    ListInputRoutingsResponse.type = Types::ListInputRoutingsResponse
    ListInputsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListInputsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListInputsRequest.type = Types::ListInputsRequest
    ListInputsResponse.add_member(:input_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InputSummaries, location_name: 'inputSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the inputs.</p>"}))
    ListInputsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.</p>"}))
    ListInputsResponse.type = Types::ListInputsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags assigned to the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LoggingLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggingLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    LoggingLevel.add_member(:debug, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    LoggingOptions.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants permission to AWS IoT Events to perform logging.</p>", "smithy.api#required" => {}}))
    LoggingOptions.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The logging level.</p>", "smithy.api#required" => {}}))
    LoggingOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingEnabled, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If TRUE, logging is enabled for AWS IoT Events.</p>", "smithy.api#required" => {}}))
    LoggingOptions.add_member(:detector_debug_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorDebugOptions, location_name: 'detectorDebugOptions', traits: {"smithy.api#documentation" => "<p>Information that identifies those detector models and their detectors (instances) for\n      which the logging level is given.</p>"}))
    LoggingOptions.type = Types::LoggingOptions
    NotificationAction.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTargetActions, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Specifies an AWS Lambda function to manage alarm notifications. \nYou can create one or use the <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html\">AWS Lambda function provided by AWS IoT Events</a>.</p>", "smithy.api#required" => {}}))
    NotificationAction.add_member(:sms_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSConfigurations, location_name: 'smsConfigurations', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of SMS notifications.</p>"}))
    NotificationAction.add_member(:email_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailConfigurations, location_name: 'emailConfigurations', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of email notifications.</p>"}))
    NotificationAction.type = Types::NotificationAction
    NotificationActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationAction)
    NotificationTargetActions.add_member(:lambda_action, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAction, location_name: 'lambdaAction'))
    NotificationTargetActions.type = Types::NotificationTargetActions
    OnEnterLifecycle.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: 'events', traits: {"smithy.api#documentation" => "<p>Specifies the actions that are performed when the state is entered and the\n        <code>condition</code> is <code>TRUE</code>.</p>"}))
    OnEnterLifecycle.type = Types::OnEnterLifecycle
    OnExitLifecycle.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: 'events', traits: {"smithy.api#documentation" => "<p>Specifies the <code>actions</code> that are performed when the state is exited and the\n        <code>condition</code> is <code>TRUE</code>.</p>"}))
    OnExitLifecycle.type = Types::OnExitLifecycle
    OnInputLifecycle.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: 'events', traits: {"smithy.api#documentation" => "<p>Specifies the actions performed when the <code>condition</code> evaluates to TRUE.</p>"}))
    OnInputLifecycle.add_member(:transition_events, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionEvents, location_name: 'transitionEvents', traits: {"smithy.api#documentation" => "<p>Specifies the actions performed, and the next state entered, when a <code>condition</code>\n      evaluates to TRUE.</p>"}))
    OnInputLifecycle.type = Types::OnInputLifecycle
    Payload.add_member(:content_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentExpression, location_name: 'contentExpression', traits: {"smithy.api#documentation" => "<p>The content of the payload. You can use a string expression that includes quoted strings\n        (<code>'<string>'</code>), variables (<code>$variable.<variable-name></code>),\n      input values (<code>$input.<input-name>.<path-to-datum></code>), string\n      concatenations, and quoted strings that contain <code>${}</code> as the content. The\n      recommended maximum size of a content expression is 1 KB.</p>", "smithy.api#required" => {}}))
    Payload.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The value of the payload type can be either <code>STRING</code> or\n      <code>JSON</code>.</p>", "smithy.api#required" => {}}))
    Payload.type = Types::Payload
    PayloadType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    PayloadType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    PutLoggingOptionsRequest.add_member(:logging_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingOptions, location_name: 'loggingOptions', traits: {"smithy.api#documentation" => "<p>The new values of the AWS IoT Events logging options.</p>", "smithy.api#required" => {}}))
    PutLoggingOptionsRequest.type = Types::PutLoggingOptionsRequest
    RecipientDetail.add_member(:sso_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: SSOIdentity, location_name: 'ssoIdentity', traits: {"smithy.api#documentation" => "<p>The AWS Single Sign-On (AWS SSO) authentication information.</p>"}))
    RecipientDetail.type = Types::RecipientDetail
    RecipientDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientDetail)
    ResetTimerAction.add_member(:timer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimerName, location_name: 'timerName', traits: {"smithy.api#documentation" => "<p>The name of the timer to reset.</p>", "smithy.api#required" => {}}))
    ResetTimerAction.type = Types::ResetTimerAction
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ResourceAlreadyExistsException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ResourceAlreadyExistsException.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoutedResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>\n      The name of the routed resource.  \n    </p>"}))
    RoutedResource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the routed resource. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.\n    </p>"}))
    RoutedResource.type = Types::RoutedResource
    RoutedResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RoutedResource)
    SMSConfiguration.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSSenderId, location_name: 'senderId', traits: {"smithy.api#documentation" => "<p>The sender ID.</p>"}))
    SMSConfiguration.add_member(:additional_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationAdditionalMessage, location_name: 'additionalMessage', traits: {"smithy.api#documentation" => "<p>The message that you want to send. The message can be up to 200 characters.</p>"}))
    SMSConfiguration.add_member(:recipients, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientDetails, location_name: 'recipients', traits: {"smithy.api#documentation" => "<p>Specifies one or more recipients who receive the message.</p>\n         <important>\n            <p>You must <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html\">add the users that receive SMS messages to your AWS SSO store</a>.</p>\n         </important>", "smithy.api#required" => {}}))
    SMSConfiguration.type = Types::SMSConfiguration
    SMSConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SMSConfiguration)
    SNSTopicPublishAction.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon SNS target where the message is sent.</p>", "smithy.api#required" => {}}))
    SNSTopicPublishAction.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>You can configure the action payload when you send a message as an Amazon SNS push\n      notification.</p>"}))
    SNSTopicPublishAction.type = Types::SNSTopicPublishAction
    SSOIdentity.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: 'identityStoreId', traits: {"smithy.api#documentation" => "<p>The ID of the AWS SSO identity store.</p>", "smithy.api#required" => {}}))
    SSOIdentity.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SSOReferenceId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>"}))
    SSOIdentity.type = Types::SSOIdentity
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SetTimerAction.add_member(:timer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimerName, location_name: 'timerName', traits: {"smithy.api#documentation" => "<p>The name of the timer.</p>", "smithy.api#required" => {}}))
    SetTimerAction.add_member(:seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Seconds, location_name: 'seconds', traits: {"smithy.api#deprecated" => {"message" => "seconds is deprecated. You can use durationExpression for SetTimerAction. The value of seconds can be used as a string expression for durationExpression."}, "smithy.api#documentation" => "<p>The number of seconds until the timer expires. The minimum value is 60 seconds to ensure\n      accuracy. The maximum value is 31622400 seconds. </p>"}))
    SetTimerAction.add_member(:duration_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'durationExpression', traits: {"smithy.api#documentation" => "<p>The duration of the timer, in seconds. You can use a string expression that includes\n      numbers, variables (<code>$variable.<variable-name></code>), and input values\n        (<code>$input.<input-name>.<path-to-datum></code>) as the duration. The range of\n      the duration is 1-31622400 seconds. To ensure accuracy, the minimum duration is 60 seconds.\n      The evaluated result of the duration is rounded down to the nearest whole number. </p>"}))
    SetTimerAction.type = Types::SetTimerAction
    SetVariableAction.add_member(:variable_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName, location_name: 'variableName', traits: {"smithy.api#documentation" => "<p>The name of the variable.</p>", "smithy.api#required" => {}}))
    SetVariableAction.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The new value of the variable.</p>", "smithy.api#required" => {}}))
    SetVariableAction.type = Types::SetVariableAction
    SimpleRule.add_member(:input_property, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProperty, location_name: 'inputProperty', traits: {"smithy.api#documentation" => "<p>The value on the left side of the comparison operator. You can specify an AWS IoT Events input\n      attribute as an input property.</p>", "smithy.api#required" => {}}))
    SimpleRule.add_member(:comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'comparisonOperator', traits: {"smithy.api#documentation" => "<p>The comparison operator.</p>", "smithy.api#required" => {}}))
    SimpleRule.add_member(:threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Threshold, location_name: 'threshold', traits: {"smithy.api#documentation" => "<p>The value on the right side of the comparison operator. You can enter a number or specify\n      an AWS IoT Events input attribute.</p>", "smithy.api#required" => {}}))
    SimpleRule.type = Types::SimpleRule
    SqsAction.add_member(:queue_url, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueUrl, location_name: 'queueUrl', traits: {"smithy.api#documentation" => "<p>The URL of the SQS queue where the data is written.</p>", "smithy.api#required" => {}}))
    SqsAction.add_member(:use_base64, Smithy::Schema::Shapes::ShapeRef.new(shape: UseBase64, location_name: 'useBase64', traits: {"smithy.api#documentation" => "<p>Set this to TRUE if you want the data to be base-64 encoded before it is written to the\n      queue. Otherwise, set this to FALSE.</p>"}))
    SqsAction.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>You can configure the action payload when you send a message to an Amazon SQS\n      queue.</p>"}))
    SqsAction.type = Types::SqsAction
    StartDetectorModelAnalysisRequest.add_member(:detector_model_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: 'detectorModelDefinition', traits: {"smithy.api#required" => {}}))
    StartDetectorModelAnalysisRequest.type = Types::StartDetectorModelAnalysisRequest
    StartDetectorModelAnalysisResponse.add_member(:analysis_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: 'analysisId', traits: {"smithy.api#documentation" => "<p>The ID that you can use to retrieve the analysis result.</p>"}))
    StartDetectorModelAnalysisResponse.type = Types::StartDetectorModelAnalysisResponse
    State.add_member(:state_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'stateName', traits: {"smithy.api#documentation" => "<p>The name of the state.</p>", "smithy.api#required" => {}}))
    State.add_member(:on_input, Smithy::Schema::Shapes::ShapeRef.new(shape: OnInputLifecycle, location_name: 'onInput', traits: {"smithy.api#documentation" => "<p>When an input is received and the <code>condition</code> is TRUE, perform the specified\n        <code>actions</code>.</p>"}))
    State.add_member(:on_enter, Smithy::Schema::Shapes::ShapeRef.new(shape: OnEnterLifecycle, location_name: 'onEnter', traits: {"smithy.api#documentation" => "<p>When entering this state, perform these <code>actions</code> if the <code>condition</code>\n      is TRUE.</p>"}))
    State.add_member(:on_exit, Smithy::Schema::Shapes::ShapeRef.new(shape: OnExitLifecycle, location_name: 'onExit', traits: {"smithy.api#documentation" => "<p>When exiting this state, perform these <code>actions</code> if the specified\n        <code>condition</code> is <code>TRUE</code>.</p>"}))
    State.type = Types::State
    States.member = Smithy::Schema::Shapes::ShapeRef.new(shape: State)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag's key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag's value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The new or modified tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    TransitionEvent.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'eventName', traits: {"smithy.api#documentation" => "<p>The name of the transition event.</p>", "smithy.api#required" => {}}))
    TransitionEvent.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>Required. A Boolean expression that when TRUE causes the actions to be performed and the\n        <code>nextState</code> to be entered.</p>", "smithy.api#required" => {}}))
    TransitionEvent.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions to be performed.</p>"}))
    TransitionEvent.add_member(:next_state, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'nextState', traits: {"smithy.api#documentation" => "<p>The next state to enter.</p>", "smithy.api#required" => {}}))
    TransitionEvent.type = Types::TransitionEvent
    TransitionEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionEvent)
    UnsupportedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of the keys of the tags to be removed from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAlarmModelRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAlarmModelRequest.add_member(:alarm_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: 'alarmModelDescription', traits: {"smithy.api#documentation" => "<p>The description of the alarm model.</p>"}))
    UpdateAlarmModelRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>", "smithy.api#required" => {}}))
    UpdateAlarmModelRequest.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>A non-negative integer that reflects the severity level of the alarm.</p>"}))
    UpdateAlarmModelRequest.add_member(:alarm_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmRule, location_name: 'alarmRule', traits: {"smithy.api#documentation" => "<p>Defines when your alarm is invoked.</p>", "smithy.api#required" => {}}))
    UpdateAlarmModelRequest.add_member(:alarm_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNotification, location_name: 'alarmNotification', traits: {"smithy.api#documentation" => "<p>Contains information about one or more notification actions.</p>"}))
    UpdateAlarmModelRequest.add_member(:alarm_event_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: 'alarmEventActions', traits: {"smithy.api#documentation" => "<p>Contains information about one or more alarm actions.</p>"}))
    UpdateAlarmModelRequest.add_member(:alarm_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: 'alarmCapabilities', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of alarm state changes.</p>"}))
    UpdateAlarmModelRequest.type = Types::UpdateAlarmModelRequest
    UpdateAlarmModelResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was created, in the Unix epoch format.</p>"}))
    UpdateAlarmModelResponse.add_member(:alarm_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: 'alarmModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"}))
    UpdateAlarmModelResponse.add_member(:alarm_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: 'alarmModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the alarm model.</p>"}))
    UpdateAlarmModelResponse.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the alarm model was last updated, in the Unix epoch format.</p>"}))
    UpdateAlarmModelResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the alarm model. The status can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. \n        Activating an alarm model can take up to a few minutes.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. \n\t  Check your alarm model information and update the alarm model.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information \n        and try again.</p>\n            </li>\n         </ul>"}))
    UpdateAlarmModelResponse.type = Types::UpdateAlarmModelResponse
    UpdateDetectorModelRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model that is updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDetectorModelRequest.add_member(:detector_model_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: 'detectorModelDefinition', traits: {"smithy.api#documentation" => "<p>Information that defines how a detector operates.</p>", "smithy.api#required" => {}}))
    UpdateDetectorModelRequest.add_member(:detector_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: 'detectorModelDescription', traits: {"smithy.api#documentation" => "<p>A brief description of the detector model.</p>"}))
    UpdateDetectorModelRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>", "smithy.api#required" => {}}))
    UpdateDetectorModelRequest.add_member(:evaluation_method, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: 'evaluationMethod', traits: {"smithy.api#documentation" => "<p>Information about the order in which events are evaluated and how actions are executed.\n    </p>"}))
    UpdateDetectorModelRequest.type = Types::UpdateDetectorModelRequest
    UpdateDetectorModelResponse.add_member(:detector_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: 'detectorModelConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how the detector model is configured.</p>"}))
    UpdateDetectorModelResponse.type = Types::UpdateDetectorModelResponse
    UpdateInputRequest.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name of the input you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateInputRequest.add_member(:input_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription, location_name: 'inputDescription', traits: {"smithy.api#documentation" => "<p>A brief description of the input.</p>"}))
    UpdateInputRequest.add_member(:input_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDefinition, location_name: 'inputDefinition', traits: {"smithy.api#documentation" => "<p>The definition of the input.</p>", "smithy.api#required" => {}}))
    UpdateInputRequest.type = Types::UpdateInputRequest
    UpdateInputResponse.add_member(:input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfiguration, location_name: 'inputConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the configuration of the input.</p>"}))
    UpdateInputResponse.type = Types::UpdateInputResponse

    IotColumboService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotevents#IotColumboService"
      service.name = "IotColumboService"
      service.version = "2018-07-27"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Events", "arnNamespace" => "iotevents", "cloudFormationName" => "IoTEvents", "cloudTrailEventSource" => "iotevents.amazonaws.com", "docId" => "iotevents-2018-07-27", "endpointPrefix" => "iotevents"}, "aws.auth#sigv4" => {"name" => "iotevents"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Events"}
      service.add_operation(:create_alarm_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#CreateAlarmModel"
        operation.name = "CreateAlarmModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlarmModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlarmModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarm-models", "code" => 200}}
      end)
      service.add_operation(:create_detector_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#CreateDetectorModel"
        operation.name = "CreateDetectorModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDetectorModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDetectorModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector-models", "code" => 200}}
      end)
      service.add_operation(:create_input, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#CreateInput"
        operation.name = "CreateInput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/inputs", "code" => 201}}
      end)
      service.add_operation(:delete_alarm_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DeleteAlarmModel"
        operation.name = "DeleteAlarmModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlarmModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlarmModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/alarm-models/{alarmModelName}", "code" => 204}}
      end)
      service.add_operation(:delete_detector_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DeleteDetectorModel"
        operation.name = "DeleteDetectorModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector-models/{detectorModelName}", "code" => 204}}
      end)
      service.add_operation(:delete_input, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DeleteInput"
        operation.name = "DeleteInput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/inputs/{inputName}", "code" => 200}}
      end)
      service.add_operation(:describe_alarm_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeAlarmModel"
        operation.name = "DescribeAlarmModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarm-models/{alarmModelName}", "code" => 200}}
      end)
      service.add_operation(:describe_detector_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeDetectorModel"
        operation.name = "DescribeDetectorModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector-models/{detectorModelName}", "code" => 200}}
      end)
      service.add_operation(:describe_detector_model_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeDetectorModelAnalysis"
        operation.name = "DescribeDetectorModelAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorModelAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorModelAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/analysis/detector-models/{analysisId}", "code" => 200}}
      end)
      service.add_operation(:describe_input, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeInput"
        operation.name = "DescribeInput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/inputs/{inputName}", "code" => 200}}
      end)
      service.add_operation(:describe_logging_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeLoggingOptions"
        operation.name = "DescribeLoggingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:get_detector_model_analysis_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#GetDetectorModelAnalysisResults"
        operation.name = "GetDetectorModelAnalysisResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDetectorModelAnalysisResultsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDetectorModelAnalysisResultsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/analysis/detector-models/{analysisId}/results", "code" => 200}}
      end)
      service.add_operation(:list_alarm_model_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListAlarmModelVersions"
        operation.name = "ListAlarmModelVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmModelVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmModelVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarm-models/{alarmModelName}/versions", "code" => 200}}
      end)
      service.add_operation(:list_alarm_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListAlarmModels"
        operation.name = "ListAlarmModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarm-models", "code" => 200}}
      end)
      service.add_operation(:list_detector_model_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListDetectorModelVersions"
        operation.name = "ListDetectorModelVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorModelVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorModelVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector-models/{detectorModelName}/versions", "code" => 200}}
      end)
      service.add_operation(:list_detector_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListDetectorModels"
        operation.name = "ListDetectorModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector-models", "code" => 200}}
      end)
      service.add_operation(:list_input_routings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListInputRoutings"
        operation.name = "ListInputRoutings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInputRoutingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInputRoutingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/input-routings", "code" => 200}}
      end)
      service.add_operation(:list_inputs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListInputs"
        operation.name = "ListInputs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInputsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInputsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/inputs", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:put_logging_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#PutLoggingOptions"
        operation.name = "PutLoggingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:start_detector_model_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#StartDetectorModelAnalysis"
        operation.name = "StartDetectorModelAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDetectorModelAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDetectorModelAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/analysis/detector-models", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:update_alarm_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#UpdateAlarmModel"
        operation.name = "UpdateAlarmModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAlarmModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAlarmModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarm-models/{alarmModelName}", "code" => 200}}
      end)
      service.add_operation(:update_detector_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#UpdateDetectorModel"
        operation.name = "UpdateDetectorModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector-models/{detectorModelName}", "code" => 200}}
      end)
      service.add_operation(:update_input, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#UpdateInput"
        operation.name = "UpdateInput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInputRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInputResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/inputs/{inputName}", "code" => 200}}
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
