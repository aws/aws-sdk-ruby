# frozen_string_literal: true

# This is generated code!

module Aws::IoTEvents
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcknowledgeFlow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AcknowledgeFlow", name: "AcknowledgeFlow")
    AcknowledgeFlowEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotevents#AcknowledgeFlowEnabled", name: "AcknowledgeFlowEnabled")
    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#Action", name: "Action")
    Actions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#Actions", name: "Actions")
    AlarmAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AlarmAction", name: "AlarmAction")
    AlarmActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#AlarmActions", name: "AlarmActions")
    AlarmCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AlarmCapabilities", name: "AlarmCapabilities")
    AlarmEventActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AlarmEventActions", name: "AlarmEventActions")
    AlarmModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AlarmModelArn", name: "AlarmModelArn")
    AlarmModelDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AlarmModelDescription", name: "AlarmModelDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    AlarmModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AlarmModelName", name: "AlarmModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    AlarmModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#AlarmModelSummaries", name: "AlarmModelSummaries")
    AlarmModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AlarmModelSummary", name: "AlarmModelSummary")
    AlarmModelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AlarmModelVersion", name: "AlarmModelVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AlarmModelVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#AlarmModelVersionStatus", name: "AlarmModelVersionStatus")
    AlarmModelVersionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#AlarmModelVersionSummaries", name: "AlarmModelVersionSummaries")
    AlarmModelVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AlarmModelVersionSummary", name: "AlarmModelVersionSummary")
    AlarmNotification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AlarmNotification", name: "AlarmNotification")
    AlarmRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AlarmRule", name: "AlarmRule")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AnalysisId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AnalysisId", name: "AnalysisId")
    AnalysisMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AnalysisMessage", name: "AnalysisMessage")
    AnalysisResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AnalysisResult", name: "AnalysisResult")
    AnalysisResultLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#AnalysisResultLevel", name: "AnalysisResultLevel")
    AnalysisResultLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AnalysisResultLocation", name: "AnalysisResultLocation")
    AnalysisResultLocationPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AnalysisResultLocationPath", name: "AnalysisResultLocationPath")
    AnalysisResultLocations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#AnalysisResultLocations", name: "AnalysisResultLocations")
    AnalysisResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#AnalysisResults", name: "AnalysisResults")
    AnalysisStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#AnalysisStatus", name: "AnalysisStatus")
    AnalysisType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AnalysisType", name: "AnalysisType")
    AssetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetId", name: "AssetId")
    AssetModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetModelId", name: "AssetModelId")
    AssetPropertyAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyAlias", name: "AssetPropertyAlias")
    AssetPropertyBooleanValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyBooleanValue", name: "AssetPropertyBooleanValue")
    AssetPropertyDoubleValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyDoubleValue", name: "AssetPropertyDoubleValue")
    AssetPropertyEntryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyEntryId", name: "AssetPropertyEntryId")
    AssetPropertyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyId", name: "AssetPropertyId")
    AssetPropertyIntegerValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyIntegerValue", name: "AssetPropertyIntegerValue")
    AssetPropertyOffsetInNanos = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyOffsetInNanos", name: "AssetPropertyOffsetInNanos")
    AssetPropertyQuality = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyQuality", name: "AssetPropertyQuality")
    AssetPropertyStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyStringValue", name: "AssetPropertyStringValue")
    AssetPropertyTimeInSeconds = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AssetPropertyTimeInSeconds", name: "AssetPropertyTimeInSeconds")
    AssetPropertyTimestamp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AssetPropertyTimestamp", name: "AssetPropertyTimestamp")
    AssetPropertyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AssetPropertyValue", name: "AssetPropertyValue")
    AssetPropertyVariant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#AssetPropertyVariant", name: "AssetPropertyVariant")
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#Attribute", name: "Attribute")
    AttributeJsonPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#AttributeJsonPath", name: "AttributeJsonPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^((`[\\w\\- ]+`)|([\\w\\-]+))(\\.((`[\\w- ]+`)|([\\w\\-]+)))*$"})
    Attributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#Attributes", name: "Attributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ClearTimerAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ClearTimerAction", name: "ClearTimerAction")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#ComparisonOperator", name: "ComparisonOperator")
    Condition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#Condition", name: "Condition", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ContentExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#ContentExpression", name: "ContentExpression", traits: {"smithy.api#length" => {"min" => 1}})
    CreateAlarmModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#CreateAlarmModelRequest", name: "CreateAlarmModelRequest")
    CreateAlarmModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#CreateAlarmModelResponse", name: "CreateAlarmModelResponse")
    CreateDetectorModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#CreateDetectorModelRequest", name: "CreateDetectorModelRequest")
    CreateDetectorModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#CreateDetectorModelResponse", name: "CreateDetectorModelResponse")
    CreateInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#CreateInputRequest", name: "CreateInputRequest")
    CreateInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#CreateInputResponse", name: "CreateInputResponse")
    DeleteAlarmModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DeleteAlarmModelRequest", name: "DeleteAlarmModelRequest")
    DeleteAlarmModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DeleteAlarmModelResponse", name: "DeleteAlarmModelResponse")
    DeleteDetectorModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DeleteDetectorModelRequest", name: "DeleteDetectorModelRequest")
    DeleteDetectorModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DeleteDetectorModelResponse", name: "DeleteDetectorModelResponse")
    DeleteInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DeleteInputRequest", name: "DeleteInputRequest")
    DeleteInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DeleteInputResponse", name: "DeleteInputResponse")
    DeliveryStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DeliveryStreamName", name: "DeliveryStreamName")
    DescribeAlarmModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeAlarmModelRequest", name: "DescribeAlarmModelRequest")
    DescribeAlarmModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeAlarmModelResponse", name: "DescribeAlarmModelResponse")
    DescribeDetectorModelAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeDetectorModelAnalysisRequest", name: "DescribeDetectorModelAnalysisRequest")
    DescribeDetectorModelAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeDetectorModelAnalysisResponse", name: "DescribeDetectorModelAnalysisResponse")
    DescribeDetectorModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeDetectorModelRequest", name: "DescribeDetectorModelRequest")
    DescribeDetectorModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeDetectorModelResponse", name: "DescribeDetectorModelResponse")
    DescribeInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeInputRequest", name: "DescribeInputRequest")
    DescribeInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeInputResponse", name: "DescribeInputResponse")
    DescribeLoggingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeLoggingOptionsRequest", name: "DescribeLoggingOptionsRequest")
    DescribeLoggingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DescribeLoggingOptionsResponse", name: "DescribeLoggingOptionsResponse")
    DetectorDebugOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DetectorDebugOption", name: "DetectorDebugOption")
    DetectorDebugOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#DetectorDebugOptions", name: "DetectorDebugOptions", traits: {"smithy.api#length" => {"min" => 1}})
    DetectorModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DetectorModel", name: "DetectorModel")
    DetectorModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DetectorModelArn", name: "DetectorModelArn")
    DetectorModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DetectorModelConfiguration", name: "DetectorModelConfiguration")
    DetectorModelDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DetectorModelDefinition", name: "DetectorModelDefinition")
    DetectorModelDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DetectorModelDescription", name: "DetectorModelDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DetectorModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DetectorModelName", name: "DetectorModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    DetectorModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#DetectorModelSummaries", name: "DetectorModelSummaries")
    DetectorModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DetectorModelSummary", name: "DetectorModelSummary")
    DetectorModelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DetectorModelVersion", name: "DetectorModelVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DetectorModelVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#DetectorModelVersionStatus", name: "DetectorModelVersionStatus")
    DetectorModelVersionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#DetectorModelVersionSummaries", name: "DetectorModelVersionSummaries")
    DetectorModelVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DetectorModelVersionSummary", name: "DetectorModelVersionSummary")
    DisabledOnInitialization = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotevents#DisabledOnInitialization", name: "DisabledOnInitialization")
    DynamoDBAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DynamoDBAction", name: "DynamoDBAction")
    DynamoDBv2Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#DynamoDBv2Action", name: "DynamoDBv2Action")
    DynamoKeyField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DynamoKeyField", name: "DynamoKeyField")
    DynamoKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DynamoKeyType", name: "DynamoKeyType")
    DynamoKeyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DynamoKeyValue", name: "DynamoKeyValue")
    DynamoOperation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DynamoOperation", name: "DynamoOperation")
    DynamoTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#DynamoTableName", name: "DynamoTableName")
    EmailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#EmailConfiguration", name: "EmailConfiguration")
    EmailConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#EmailConfigurations", name: "EmailConfigurations", traits: {"smithy.api#length" => {"min" => 1}})
    EmailContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#EmailContent", name: "EmailContent")
    EmailRecipients = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#EmailRecipients", name: "EmailRecipients")
    EmailSubject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#EmailSubject", name: "EmailSubject")
    EvaluationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#EvaluationMethod", name: "EvaluationMethod")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#Event", name: "Event")
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#EventName", name: "EventName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    Events = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#Events", name: "Events")
    FirehoseAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#FirehoseAction", name: "FirehoseAction")
    FirehoseSeparator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#FirehoseSeparator", name: "FirehoseSeparator", traits: {"smithy.api#pattern" => "^([\\n\\t])|(\\r\\n)|(,)$"})
    FromEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#FromEmail", name: "FromEmail")
    GetDetectorModelAnalysisResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#GetDetectorModelAnalysisResultsRequest", name: "GetDetectorModelAnalysisResultsRequest")
    GetDetectorModelAnalysisResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#GetDetectorModelAnalysisResultsResponse", name: "GetDetectorModelAnalysisResultsResponse")
    IdentityStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#IdentityStoreId", name: "IdentityStoreId")
    InitializationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#InitializationConfiguration", name: "InitializationConfiguration")
    Input = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#Input", name: "Input")
    InputArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#InputArn", name: "InputArn")
    InputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#InputConfiguration", name: "InputConfiguration")
    InputDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#InputDefinition", name: "InputDefinition")
    InputDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#InputDescription", name: "InputDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    InputIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#InputIdentifier", name: "InputIdentifier")
    InputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#InputName", name: "InputName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    InputProperty = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#InputProperty", name: "InputProperty", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    InputStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#InputStatus", name: "InputStatus")
    InputSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#InputSummaries", name: "InputSummaries")
    InputSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#InputSummary", name: "InputSummary")
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IotEventsAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#IotEventsAction", name: "IotEventsAction")
    IotEventsInputIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#IotEventsInputIdentifier", name: "IotEventsInputIdentifier")
    IotSiteWiseAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#IotSiteWiseAction", name: "IotSiteWiseAction")
    IotSiteWiseAssetModelPropertyIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#IotSiteWiseAssetModelPropertyIdentifier", name: "IotSiteWiseAssetModelPropertyIdentifier")
    IotSiteWiseInputIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#IotSiteWiseInputIdentifier", name: "IotSiteWiseInputIdentifier")
    IotTopicPublishAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#IotTopicPublishAction", name: "IotTopicPublishAction")
    KeyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#KeyValue", name: "KeyValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_:]+$"})
    LambdaAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#LambdaAction", name: "LambdaAction")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListAlarmModelVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListAlarmModelVersionsRequest", name: "ListAlarmModelVersionsRequest")
    ListAlarmModelVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListAlarmModelVersionsResponse", name: "ListAlarmModelVersionsResponse")
    ListAlarmModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListAlarmModelsRequest", name: "ListAlarmModelsRequest")
    ListAlarmModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListAlarmModelsResponse", name: "ListAlarmModelsResponse")
    ListDetectorModelVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListDetectorModelVersionsRequest", name: "ListDetectorModelVersionsRequest")
    ListDetectorModelVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListDetectorModelVersionsResponse", name: "ListDetectorModelVersionsResponse")
    ListDetectorModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListDetectorModelsRequest", name: "ListDetectorModelsRequest")
    ListDetectorModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListDetectorModelsResponse", name: "ListDetectorModelsResponse")
    ListInputRoutingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListInputRoutingsRequest", name: "ListInputRoutingsRequest")
    ListInputRoutingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListInputRoutingsResponse", name: "ListInputRoutingsResponse")
    ListInputsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListInputsRequest", name: "ListInputsRequest")
    ListInputsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListInputsResponse", name: "ListInputsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LoggingEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotevents#LoggingEnabled", name: "LoggingEnabled", traits: {"smithy.api#default" => false})
    LoggingLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#LoggingLevel", name: "LoggingLevel")
    LoggingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#LoggingOptions", name: "LoggingOptions")
    MQTTTopic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#MQTTTopic", name: "MQTTTopic", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MaxAnalysisResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotevents#MaxAnalysisResults", name: "MaxAnalysisResults")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotevents#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#NextToken", name: "NextToken")
    NotificationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#NotificationAction", name: "NotificationAction")
    NotificationActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#NotificationActions", name: "NotificationActions", traits: {"smithy.api#length" => {"min" => 1}})
    NotificationAdditionalMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#NotificationAdditionalMessage", name: "NotificationAdditionalMessage")
    NotificationTargetActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#NotificationTargetActions", name: "NotificationTargetActions")
    OnEnterLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#OnEnterLifecycle", name: "OnEnterLifecycle")
    OnExitLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#OnExitLifecycle", name: "OnExitLifecycle")
    OnInputLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#OnInputLifecycle", name: "OnInputLifecycle")
    Payload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#Payload", name: "Payload")
    PayloadType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotevents#PayloadType", name: "PayloadType")
    PutLoggingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#PutLoggingOptionsRequest", name: "PutLoggingOptionsRequest")
    QueueUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#QueueUrl", name: "QueueUrl")
    RecipientDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#RecipientDetail", name: "RecipientDetail")
    RecipientDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#RecipientDetails", name: "RecipientDetails", traits: {"smithy.api#length" => {"min" => 1}})
    ResetTimerAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ResetTimerAction", name: "ResetTimerAction")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#ResourceName", name: "ResourceName")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoutedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#RoutedResource", name: "RoutedResource")
    RoutedResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#RoutedResources", name: "RoutedResources")
    SMSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#SMSConfiguration", name: "SMSConfiguration")
    SMSConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#SMSConfigurations", name: "SMSConfigurations", traits: {"smithy.api#length" => {"min" => 1}})
    SMSSenderId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#SMSSenderId", name: "SMSSenderId")
    SNSTopicPublishAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#SNSTopicPublishAction", name: "SNSTopicPublishAction")
    SSOIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#SSOIdentity", name: "SSOIdentity")
    SSOReferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#SSOReferenceId", name: "SSOReferenceId")
    Seconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotevents#Seconds", name: "Seconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 31622400}})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SetTimerAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#SetTimerAction", name: "SetTimerAction")
    SetVariableAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#SetVariableAction", name: "SetVariableAction")
    Severity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotevents#Severity", name: "Severity", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    SimpleRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#SimpleRule", name: "SimpleRule")
    SqsAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#SqsAction", name: "SqsAction")
    StartDetectorModelAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#StartDetectorModelAnalysisRequest", name: "StartDetectorModelAnalysisRequest")
    StartDetectorModelAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#StartDetectorModelAnalysisResponse", name: "StartDetectorModelAnalysisResponse")
    State = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#State", name: "State")
    StateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#StateName", name: "StateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    States = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#States", name: "States", traits: {"smithy.api#length" => {"min" => 1}})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#StatusMessage", name: "StatusMessage")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#TagKeys", name: "TagKeys")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#Tags", name: "Tags")
    Threshold = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#Threshold", name: "Threshold", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#TimerName", name: "TimerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotevents#Timestamp", name: "Timestamp")
    TransitionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#TransitionEvent", name: "TransitionEvent")
    TransitionEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotevents#TransitionEvents", name: "TransitionEvents")
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 501})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAlarmModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UpdateAlarmModelRequest", name: "UpdateAlarmModelRequest")
    UpdateAlarmModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UpdateAlarmModelResponse", name: "UpdateAlarmModelResponse")
    UpdateDetectorModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UpdateDetectorModelRequest", name: "UpdateDetectorModelRequest")
    UpdateDetectorModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UpdateDetectorModelResponse", name: "UpdateDetectorModelResponse")
    UpdateInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UpdateInputRequest", name: "UpdateInputRequest")
    UpdateInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotevents#UpdateInputResponse", name: "UpdateInputResponse")
    UseBase64 = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotevents#UseBase64", name: "UseBase64")
    VariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#VariableName", name: "VariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    VariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#VariableValue", name: "VariableValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#errorMessage", name: "ErrorMessage")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#resourceArn", name: "ResourceArn")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotevents#resourceId", name: "ResourceId")

    AcknowledgeFlow.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeFlowEnabled, location_name: "enabled", traits: {"smithy.api#required" => {}}))
    AcknowledgeFlow.type = Types::AcknowledgeFlow
    Action.add_member(:set_variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetVariableAction, location_name: "setVariable"))
    Action.add_member(:sns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicPublishAction, location_name: "sns"))
    Action.add_member(:iot_topic_publish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotTopicPublishAction, location_name: "iotTopicPublish"))
    Action.add_member(:set_timer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetTimerAction, location_name: "setTimer"))
    Action.add_member(:clear_timer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClearTimerAction, location_name: "clearTimer"))
    Action.add_member(:reset_timer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetTimerAction, location_name: "resetTimer"))
    Action.add_member(:lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAction, location_name: "lambda"))
    Action.add_member(:iot_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotEventsAction, location_name: "iotEvents"))
    Action.add_member(:sqs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqsAction, location_name: "sqs"))
    Action.add_member(:firehose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseAction, location_name: "firehose"))
    Action.add_member(:dynamo_db, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBAction, location_name: "dynamoDB"))
    Action.add_member(:dynamo_d_bv2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBv2Action, location_name: "dynamoDBv2"))
    Action.add_member(:iot_site_wise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseAction, location_name: "iotSiteWise"))
    Action.type = Types::Action
    Actions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action)
    AlarmAction.add_member(:sns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicPublishAction, location_name: "sns"))
    AlarmAction.add_member(:iot_topic_publish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotTopicPublishAction, location_name: "iotTopicPublish"))
    AlarmAction.add_member(:lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAction, location_name: "lambda"))
    AlarmAction.add_member(:iot_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotEventsAction, location_name: "iotEvents"))
    AlarmAction.add_member(:sqs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqsAction, location_name: "sqs"))
    AlarmAction.add_member(:firehose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseAction, location_name: "firehose"))
    AlarmAction.add_member(:dynamo_db, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBAction, location_name: "dynamoDB"))
    AlarmAction.add_member(:dynamo_d_bv2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBv2Action, location_name: "dynamoDBv2"))
    AlarmAction.add_member(:iot_site_wise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseAction, location_name: "iotSiteWise"))
    AlarmAction.type = Types::AlarmAction
    AlarmActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmAction)
    AlarmCapabilities.add_member(:initialization_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitializationConfiguration, location_name: "initializationConfiguration"))
    AlarmCapabilities.add_member(:acknowledge_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeFlow, location_name: "acknowledgeFlow"))
    AlarmCapabilities.type = Types::AlarmCapabilities
    AlarmEventActions.add_member(:alarm_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmActions, location_name: "alarmActions"))
    AlarmEventActions.type = Types::AlarmEventActions
    AlarmModelSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelSummary)
    AlarmModelSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AlarmModelSummary.add_member(:alarm_model_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: "alarmModelDescription"))
    AlarmModelSummary.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName"))
    AlarmModelSummary.type = Types::AlarmModelSummary
    AlarmModelVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AlarmModelVersionStatus.add_member(:activating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    AlarmModelVersionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AlarmModelVersionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AlarmModelVersionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionSummary)
    AlarmModelVersionSummary.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName"))
    AlarmModelVersionSummary.add_member(:alarm_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: "alarmModelArn"))
    AlarmModelVersionSummary.add_member(:alarm_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    AlarmModelVersionSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn"))
    AlarmModelVersionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AlarmModelVersionSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    AlarmModelVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: "status"))
    AlarmModelVersionSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    AlarmModelVersionSummary.type = Types::AlarmModelVersionSummary
    AlarmNotification.add_member(:notification_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationActions, location_name: "notificationActions"))
    AlarmNotification.type = Types::AlarmNotification
    AlarmRule.add_member(:simple_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleRule, location_name: "simpleRule"))
    AlarmRule.type = Types::AlarmRule
    AnalysisResult.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisType, location_name: "type"))
    AnalysisResult.add_member(:level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultLevel, location_name: "level"))
    AnalysisResult.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisMessage, location_name: "message"))
    AnalysisResult.add_member(:locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultLocations, location_name: "locations"))
    AnalysisResult.type = Types::AnalysisResult
    AnalysisResultLevel.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    AnalysisResultLevel.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    AnalysisResultLevel.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    AnalysisResultLocation.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultLocationPath, location_name: "path"))
    AnalysisResultLocation.type = Types::AnalysisResultLocation
    AnalysisResultLocations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultLocation)
    AnalysisResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResult)
    AnalysisStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    AnalysisStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    AnalysisStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AssetPropertyTimestamp.add_member(:time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyTimeInSeconds, location_name: "timeInSeconds", traits: {"smithy.api#required" => {}}))
    AssetPropertyTimestamp.add_member(:offset_in_nanos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyOffsetInNanos, location_name: "offsetInNanos"))
    AssetPropertyTimestamp.type = Types::AssetPropertyTimestamp
    AssetPropertyValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyVariant, location_name: "value"))
    AssetPropertyValue.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyTimestamp, location_name: "timestamp"))
    AssetPropertyValue.add_member(:quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyQuality, location_name: "quality"))
    AssetPropertyValue.type = Types::AssetPropertyValue
    AssetPropertyVariant.add_member(:string_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyStringValue, location_name: "stringValue"))
    AssetPropertyVariant.add_member(:integer_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyIntegerValue, location_name: "integerValue"))
    AssetPropertyVariant.add_member(:double_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyDoubleValue, location_name: "doubleValue"))
    AssetPropertyVariant.add_member(:boolean_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyBooleanValue, location_name: "booleanValue"))
    AssetPropertyVariant.type = Types::AssetPropertyVariant
    Attribute.add_member(:json_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "jsonPath", traits: {"smithy.api#required" => {}}))
    Attribute.type = Types::Attribute
    Attributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    ClearTimerAction.add_member(:timer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimerName, location_name: "timerName", traits: {"smithy.api#required" => {}}))
    ClearTimerAction.type = Types::ClearTimerAction
    ComparisonOperator.add_member(:greater, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER", traits: {"smithy.api#enumValue" => "GREATER"}))
    ComparisonOperator.add_member(:greater_or_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_OR_EQUAL"}))
    ComparisonOperator.add_member(:less, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS", traits: {"smithy.api#enumValue" => "LESS"}))
    ComparisonOperator.add_member(:less_or_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_OR_EQUAL", traits: {"smithy.api#enumValue" => "LESS_OR_EQUAL"}))
    ComparisonOperator.add_member(:equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL", traits: {"smithy.api#enumValue" => "EQUAL"}))
    ComparisonOperator.add_member(:not_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    CreateAlarmModelRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName", traits: {"smithy.api#required" => {}}))
    CreateAlarmModelRequest.add_member(:alarm_model_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: "alarmModelDescription"))
    CreateAlarmModelRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateAlarmModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAlarmModelRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "key"))
    CreateAlarmModelRequest.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    CreateAlarmModelRequest.add_member(:alarm_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmRule, location_name: "alarmRule", traits: {"smithy.api#required" => {}}))
    CreateAlarmModelRequest.add_member(:alarm_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNotification, location_name: "alarmNotification"))
    CreateAlarmModelRequest.add_member(:alarm_event_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: "alarmEventActions"))
    CreateAlarmModelRequest.add_member(:alarm_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: "alarmCapabilities"))
    CreateAlarmModelRequest.type = Types::CreateAlarmModelRequest
    CreateAlarmModelResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    CreateAlarmModelResponse.add_member(:alarm_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: "alarmModelArn"))
    CreateAlarmModelResponse.add_member(:alarm_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    CreateAlarmModelResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    CreateAlarmModelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: "status"))
    CreateAlarmModelResponse.type = Types::CreateAlarmModelResponse
    CreateDetectorModelRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName", traits: {"smithy.api#required" => {}}))
    CreateDetectorModelRequest.add_member(:detector_model_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: "detectorModelDefinition", traits: {"smithy.api#required" => {}}))
    CreateDetectorModelRequest.add_member(:detector_model_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: "detectorModelDescription"))
    CreateDetectorModelRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "key"))
    CreateDetectorModelRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateDetectorModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDetectorModelRequest.add_member(:evaluation_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: "evaluationMethod"))
    CreateDetectorModelRequest.type = Types::CreateDetectorModelRequest
    CreateDetectorModelResponse.add_member(:detector_model_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: "detectorModelConfiguration"))
    CreateDetectorModelResponse.type = Types::CreateDetectorModelResponse
    CreateInputRequest.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: "inputName", traits: {"smithy.api#required" => {}}))
    CreateInputRequest.add_member(:input_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription, location_name: "inputDescription"))
    CreateInputRequest.add_member(:input_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDefinition, location_name: "inputDefinition", traits: {"smithy.api#required" => {}}))
    CreateInputRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInputRequest.type = Types::CreateInputRequest
    CreateInputResponse.add_member(:input_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfiguration, location_name: "inputConfiguration"))
    CreateInputResponse.type = Types::CreateInputResponse
    DeleteAlarmModelRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAlarmModelRequest.type = Types::DeleteAlarmModelRequest
    DeleteAlarmModelResponse.type = Types::DeleteAlarmModelResponse
    DeleteDetectorModelRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDetectorModelRequest.type = Types::DeleteDetectorModelRequest
    DeleteDetectorModelResponse.type = Types::DeleteDetectorModelResponse
    DeleteInputRequest.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: "inputName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInputRequest.type = Types::DeleteInputRequest
    DeleteInputResponse.type = Types::DeleteInputResponse
    DescribeAlarmModelRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAlarmModelRequest.add_member(:alarm_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion", traits: {"smithy.api#httpQuery" => "version"}))
    DescribeAlarmModelRequest.type = Types::DescribeAlarmModelRequest
    DescribeAlarmModelResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DescribeAlarmModelResponse.add_member(:alarm_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: "alarmModelArn"))
    DescribeAlarmModelResponse.add_member(:alarm_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    DescribeAlarmModelResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DescribeAlarmModelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: "status"))
    DescribeAlarmModelResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    DescribeAlarmModelResponse.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName"))
    DescribeAlarmModelResponse.add_member(:alarm_model_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: "alarmModelDescription"))
    DescribeAlarmModelResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn"))
    DescribeAlarmModelResponse.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "key"))
    DescribeAlarmModelResponse.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    DescribeAlarmModelResponse.add_member(:alarm_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmRule, location_name: "alarmRule"))
    DescribeAlarmModelResponse.add_member(:alarm_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNotification, location_name: "alarmNotification"))
    DescribeAlarmModelResponse.add_member(:alarm_event_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: "alarmEventActions"))
    DescribeAlarmModelResponse.add_member(:alarm_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: "alarmCapabilities"))
    DescribeAlarmModelResponse.type = Types::DescribeAlarmModelResponse
    DescribeDetectorModelAnalysisRequest.add_member(:analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: "analysisId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDetectorModelAnalysisRequest.type = Types::DescribeDetectorModelAnalysisRequest
    DescribeDetectorModelAnalysisResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisStatus, location_name: "status"))
    DescribeDetectorModelAnalysisResponse.type = Types::DescribeDetectorModelAnalysisResponse
    DescribeDetectorModelRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDetectorModelRequest.add_member(:detector_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion", traits: {"smithy.api#httpQuery" => "version"}))
    DescribeDetectorModelRequest.type = Types::DescribeDetectorModelRequest
    DescribeDetectorModelResponse.add_member(:detector_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModel, location_name: "detectorModel"))
    DescribeDetectorModelResponse.type = Types::DescribeDetectorModelResponse
    DescribeInputRequest.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: "inputName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInputRequest.type = Types::DescribeInputRequest
    DescribeInputResponse.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    DescribeInputResponse.type = Types::DescribeInputResponse
    DescribeLoggingOptionsRequest.type = Types::DescribeLoggingOptionsRequest
    DescribeLoggingOptionsResponse.add_member(:logging_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingOptions, location_name: "loggingOptions"))
    DescribeLoggingOptionsResponse.type = Types::DescribeLoggingOptionsResponse
    DetectorDebugOption.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName", traits: {"smithy.api#required" => {}}))
    DetectorDebugOption.add_member(:key_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    DetectorDebugOption.type = Types::DetectorDebugOption
    DetectorDebugOptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorDebugOption)
    DetectorModel.add_member(:detector_model_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: "detectorModelDefinition"))
    DetectorModel.add_member(:detector_model_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: "detectorModelConfiguration"))
    DetectorModel.type = Types::DetectorModel
    DetectorModelConfiguration.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    DetectorModelConfiguration.add_member(:detector_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion"))
    DetectorModelConfiguration.add_member(:detector_model_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: "detectorModelDescription"))
    DetectorModelConfiguration.add_member(:detector_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelArn, location_name: "detectorModelArn"))
    DetectorModelConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn"))
    DetectorModelConfiguration.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DetectorModelConfiguration.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DetectorModelConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersionStatus, location_name: "status"))
    DetectorModelConfiguration.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeJsonPath, location_name: "key"))
    DetectorModelConfiguration.add_member(:evaluation_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: "evaluationMethod"))
    DetectorModelConfiguration.type = Types::DetectorModelConfiguration
    DetectorModelDefinition.add_member(:states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: States, location_name: "states", traits: {"smithy.api#required" => {}}))
    DetectorModelDefinition.add_member(:initial_state_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: "initialStateName", traits: {"smithy.api#required" => {}}))
    DetectorModelDefinition.type = Types::DetectorModelDefinition
    DetectorModelSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelSummary)
    DetectorModelSummary.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    DetectorModelSummary.add_member(:detector_model_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: "detectorModelDescription"))
    DetectorModelSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DetectorModelSummary.type = Types::DetectorModelSummary
    DetectorModelVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DetectorModelVersionStatus.add_member(:activating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    DetectorModelVersionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    DetectorModelVersionStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    DetectorModelVersionStatus.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    DetectorModelVersionStatus.add_member(:paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    DetectorModelVersionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DetectorModelVersionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersionSummary)
    DetectorModelVersionSummary.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    DetectorModelVersionSummary.add_member(:detector_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion"))
    DetectorModelVersionSummary.add_member(:detector_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelArn, location_name: "detectorModelArn"))
    DetectorModelVersionSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn"))
    DetectorModelVersionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DetectorModelVersionSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DetectorModelVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersionStatus, location_name: "status"))
    DetectorModelVersionSummary.add_member(:evaluation_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: "evaluationMethod"))
    DetectorModelVersionSummary.type = Types::DetectorModelVersionSummary
    DynamoDBAction.add_member(:hash_key_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyType, location_name: "hashKeyType"))
    DynamoDBAction.add_member(:hash_key_field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyField, location_name: "hashKeyField", traits: {"smithy.api#required" => {}}))
    DynamoDBAction.add_member(:hash_key_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyValue, location_name: "hashKeyValue", traits: {"smithy.api#required" => {}}))
    DynamoDBAction.add_member(:range_key_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyType, location_name: "rangeKeyType"))
    DynamoDBAction.add_member(:range_key_field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyField, location_name: "rangeKeyField"))
    DynamoDBAction.add_member(:range_key_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyValue, location_name: "rangeKeyValue"))
    DynamoDBAction.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoOperation, location_name: "operation"))
    DynamoDBAction.add_member(:payload_field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoKeyField, location_name: "payloadField"))
    DynamoDBAction.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoTableName, location_name: "tableName", traits: {"smithy.api#required" => {}}))
    DynamoDBAction.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    DynamoDBAction.type = Types::DynamoDBAction
    DynamoDBv2Action.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoTableName, location_name: "tableName", traits: {"smithy.api#required" => {}}))
    DynamoDBv2Action.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    DynamoDBv2Action.type = Types::DynamoDBv2Action
    EmailConfiguration.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FromEmail, location_name: "from", traits: {"smithy.api#required" => {}}))
    EmailConfiguration.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContent, location_name: "content"))
    EmailConfiguration.add_member(:recipients, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailRecipients, location_name: "recipients", traits: {"smithy.api#required" => {}}))
    EmailConfiguration.type = Types::EmailConfiguration
    EmailConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailConfiguration)
    EmailContent.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSubject, location_name: "subject"))
    EmailContent.add_member(:additional_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationAdditionalMessage, location_name: "additionalMessage"))
    EmailContent.type = Types::EmailContent
    EmailRecipients.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientDetails, location_name: "to"))
    EmailRecipients.type = Types::EmailRecipients
    EvaluationMethod.add_member(:batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BATCH", traits: {"smithy.api#enumValue" => "BATCH"}))
    EvaluationMethod.add_member(:serial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERIAL", traits: {"smithy.api#enumValue" => "SERIAL"}))
    Event.add_member(:event_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: "eventName", traits: {"smithy.api#required" => {}}))
    Event.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: "condition"))
    Event.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: "actions"))
    Event.type = Types::Event
    Events.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    FirehoseAction.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStreamName, location_name: "deliveryStreamName", traits: {"smithy.api#required" => {}}))
    FirehoseAction.add_member(:separator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseSeparator, location_name: "separator"))
    FirehoseAction.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    FirehoseAction.type = Types::FirehoseAction
    GetDetectorModelAnalysisResultsRequest.add_member(:analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: "analysisId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDetectorModelAnalysisResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetDetectorModelAnalysisResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxAnalysisResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetDetectorModelAnalysisResultsRequest.type = Types::GetDetectorModelAnalysisResultsRequest
    GetDetectorModelAnalysisResultsResponse.add_member(:analysis_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResults, location_name: "analysisResults"))
    GetDetectorModelAnalysisResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDetectorModelAnalysisResultsResponse.type = Types::GetDetectorModelAnalysisResultsResponse
    InitializationConfiguration.add_member(:disabled_on_initialization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOnInitialization, location_name: "disabledOnInitialization", traits: {"smithy.api#required" => {}}))
    InitializationConfiguration.type = Types::InitializationConfiguration
    Input.add_member(:input_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfiguration, location_name: "inputConfiguration"))
    Input.add_member(:input_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDefinition, location_name: "inputDefinition"))
    Input.type = Types::Input
    InputConfiguration.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: "inputName", traits: {"smithy.api#required" => {}}))
    InputConfiguration.add_member(:input_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription, location_name: "inputDescription"))
    InputConfiguration.add_member(:input_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputArn, location_name: "inputArn", traits: {"smithy.api#required" => {}}))
    InputConfiguration.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    InputConfiguration.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime", traits: {"smithy.api#required" => {}}))
    InputConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    InputConfiguration.type = Types::InputConfiguration
    InputDefinition.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes", traits: {"smithy.api#required" => {}}))
    InputDefinition.type = Types::InputDefinition
    InputIdentifier.add_member(:iot_events_input_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotEventsInputIdentifier, location_name: "iotEventsInputIdentifier"))
    InputIdentifier.add_member(:iot_site_wise_input_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseInputIdentifier, location_name: "iotSiteWiseInputIdentifier"))
    InputIdentifier.type = Types::InputIdentifier
    InputStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    InputStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    InputStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InputStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    InputSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSummary)
    InputSummary.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: "inputName"))
    InputSummary.add_member(:input_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription, location_name: "inputDescription"))
    InputSummary.add_member(:input_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputArn, location_name: "inputArn"))
    InputSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    InputSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    InputSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputStatus, location_name: "status"))
    InputSummary.type = Types::InputSummary
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    IotEventsAction.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: "inputName", traits: {"smithy.api#required" => {}}))
    IotEventsAction.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    IotEventsAction.type = Types::IotEventsAction
    IotEventsInputIdentifier.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: "inputName", traits: {"smithy.api#required" => {}}))
    IotEventsInputIdentifier.type = Types::IotEventsInputIdentifier
    IotSiteWiseAction.add_member(:entry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyEntryId, location_name: "entryId"))
    IotSiteWiseAction.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetId, location_name: "assetId"))
    IotSiteWiseAction.add_member(:property_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyId, location_name: "propertyId"))
    IotSiteWiseAction.add_member(:property_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    IotSiteWiseAction.add_member(:property_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValue, location_name: "propertyValue"))
    IotSiteWiseAction.type = Types::IotSiteWiseAction
    IotSiteWiseAssetModelPropertyIdentifier.add_member(:asset_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelId, location_name: "assetModelId", traits: {"smithy.api#required" => {}}))
    IotSiteWiseAssetModelPropertyIdentifier.add_member(:property_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyId, location_name: "propertyId", traits: {"smithy.api#required" => {}}))
    IotSiteWiseAssetModelPropertyIdentifier.type = Types::IotSiteWiseAssetModelPropertyIdentifier
    IotSiteWiseInputIdentifier.add_member(:iot_site_wise_asset_model_property_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseAssetModelPropertyIdentifier, location_name: "iotSiteWiseAssetModelPropertyIdentifier"))
    IotSiteWiseInputIdentifier.type = Types::IotSiteWiseInputIdentifier
    IotTopicPublishAction.add_member(:mqtt_topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MQTTTopic, location_name: "mqttTopic", traits: {"smithy.api#required" => {}}))
    IotTopicPublishAction.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    IotTopicPublishAction.type = Types::IotTopicPublishAction
    LambdaAction.add_member(:function_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "functionArn", traits: {"smithy.api#required" => {}}))
    LambdaAction.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    LambdaAction.type = Types::LambdaAction
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAlarmModelVersionsRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAlarmModelVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAlarmModelVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAlarmModelVersionsRequest.type = Types::ListAlarmModelVersionsRequest
    ListAlarmModelVersionsResponse.add_member(:alarm_model_version_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionSummaries, location_name: "alarmModelVersionSummaries"))
    ListAlarmModelVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlarmModelVersionsResponse.type = Types::ListAlarmModelVersionsResponse
    ListAlarmModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAlarmModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAlarmModelsRequest.type = Types::ListAlarmModelsRequest
    ListAlarmModelsResponse.add_member(:alarm_model_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelSummaries, location_name: "alarmModelSummaries"))
    ListAlarmModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlarmModelsResponse.type = Types::ListAlarmModelsResponse
    ListDetectorModelVersionsRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDetectorModelVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDetectorModelVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDetectorModelVersionsRequest.type = Types::ListDetectorModelVersionsRequest
    ListDetectorModelVersionsResponse.add_member(:detector_model_version_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersionSummaries, location_name: "detectorModelVersionSummaries"))
    ListDetectorModelVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDetectorModelVersionsResponse.type = Types::ListDetectorModelVersionsResponse
    ListDetectorModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDetectorModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDetectorModelsRequest.type = Types::ListDetectorModelsRequest
    ListDetectorModelsResponse.add_member(:detector_model_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelSummaries, location_name: "detectorModelSummaries"))
    ListDetectorModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDetectorModelsResponse.type = Types::ListDetectorModelsResponse
    ListInputRoutingsRequest.add_member(:input_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputIdentifier, location_name: "inputIdentifier", traits: {"smithy.api#required" => {}}))
    ListInputRoutingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListInputRoutingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInputRoutingsRequest.type = Types::ListInputRoutingsRequest
    ListInputRoutingsResponse.add_member(:routed_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoutedResources, location_name: "routedResources"))
    ListInputRoutingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInputRoutingsResponse.type = Types::ListInputRoutingsResponse
    ListInputsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInputsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListInputsRequest.type = Types::ListInputsRequest
    ListInputsResponse.add_member(:input_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputSummaries, location_name: "inputSummaries"))
    ListInputsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInputsResponse.type = Types::ListInputsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LoggingLevel.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggingLevel.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    LoggingLevel.add_member(:debug, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    LoggingOptions.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    LoggingOptions.add_member(:level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingLevel, location_name: "level", traits: {"smithy.api#required" => {}}))
    LoggingOptions.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingEnabled, location_name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    LoggingOptions.add_member(:detector_debug_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorDebugOptions, location_name: "detectorDebugOptions"))
    LoggingOptions.type = Types::LoggingOptions
    NotificationAction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTargetActions, location_name: "action", traits: {"smithy.api#required" => {}}))
    NotificationAction.add_member(:sms_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSConfigurations, location_name: "smsConfigurations"))
    NotificationAction.add_member(:email_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailConfigurations, location_name: "emailConfigurations"))
    NotificationAction.type = Types::NotificationAction
    NotificationActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationAction)
    NotificationTargetActions.add_member(:lambda_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAction, location_name: "lambdaAction"))
    NotificationTargetActions.type = Types::NotificationTargetActions
    OnEnterLifecycle.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: "events"))
    OnEnterLifecycle.type = Types::OnEnterLifecycle
    OnExitLifecycle.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: "events"))
    OnExitLifecycle.type = Types::OnExitLifecycle
    OnInputLifecycle.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: "events"))
    OnInputLifecycle.add_member(:transition_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionEvents, location_name: "transitionEvents"))
    OnInputLifecycle.type = Types::OnInputLifecycle
    Payload.add_member(:content_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentExpression, location_name: "contentExpression", traits: {"smithy.api#required" => {}}))
    Payload.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadType, location_name: "type", traits: {"smithy.api#required" => {}}))
    Payload.type = Types::Payload
    PayloadType.add_member(:string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    PayloadType.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    PutLoggingOptionsRequest.add_member(:logging_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingOptions, location_name: "loggingOptions", traits: {"smithy.api#required" => {}}))
    PutLoggingOptionsRequest.type = Types::PutLoggingOptionsRequest
    RecipientDetail.add_member(:sso_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSOIdentity, location_name: "ssoIdentity"))
    RecipientDetail.type = Types::RecipientDetail
    RecipientDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientDetail)
    ResetTimerAction.add_member(:timer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimerName, location_name: "timerName", traits: {"smithy.api#required" => {}}))
    ResetTimerAction.type = Types::ResetTimerAction
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ResourceAlreadyExistsException.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoutedResource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    RoutedResource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
    RoutedResource.type = Types::RoutedResource
    RoutedResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoutedResource)
    SMSConfiguration.add_member(:sender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSSenderId, location_name: "senderId"))
    SMSConfiguration.add_member(:additional_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationAdditionalMessage, location_name: "additionalMessage"))
    SMSConfiguration.add_member(:recipients, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientDetails, location_name: "recipients", traits: {"smithy.api#required" => {}}))
    SMSConfiguration.type = Types::SMSConfiguration
    SMSConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSConfiguration)
    SNSTopicPublishAction.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "targetArn", traits: {"smithy.api#required" => {}}))
    SNSTopicPublishAction.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    SNSTopicPublishAction.type = Types::SNSTopicPublishAction
    SSOIdentity.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "identityStoreId", traits: {"smithy.api#required" => {}}))
    SSOIdentity.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSOReferenceId, location_name: "userId"))
    SSOIdentity.type = Types::SSOIdentity
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SetTimerAction.add_member(:timer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimerName, location_name: "timerName", traits: {"smithy.api#required" => {}}))
    SetTimerAction.add_member(:seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Seconds, location_name: "seconds", traits: {"smithy.api#deprecated" => {"message" => "seconds is deprecated. You can use durationExpression for SetTimerAction. The value of seconds can be used as a string expression for durationExpression."}}))
    SetTimerAction.add_member(:duration_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: "durationExpression"))
    SetTimerAction.type = Types::SetTimerAction
    SetVariableAction.add_member(:variable_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName, location_name: "variableName", traits: {"smithy.api#required" => {}}))
    SetVariableAction.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    SetVariableAction.type = Types::SetVariableAction
    SimpleRule.add_member(:input_property, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputProperty, location_name: "inputProperty", traits: {"smithy.api#required" => {}}))
    SimpleRule.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparisonOperator", traits: {"smithy.api#required" => {}}))
    SimpleRule.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Threshold, location_name: "threshold", traits: {"smithy.api#required" => {}}))
    SimpleRule.type = Types::SimpleRule
    SqsAction.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueUrl, location_name: "queueUrl", traits: {"smithy.api#required" => {}}))
    SqsAction.add_member(:use_base64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UseBase64, location_name: "useBase64"))
    SqsAction.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    SqsAction.type = Types::SqsAction
    StartDetectorModelAnalysisRequest.add_member(:detector_model_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: "detectorModelDefinition", traits: {"smithy.api#required" => {}}))
    StartDetectorModelAnalysisRequest.type = Types::StartDetectorModelAnalysisRequest
    StartDetectorModelAnalysisResponse.add_member(:analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: "analysisId"))
    StartDetectorModelAnalysisResponse.type = Types::StartDetectorModelAnalysisResponse
    State.add_member(:state_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: "stateName", traits: {"smithy.api#required" => {}}))
    State.add_member(:on_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnInputLifecycle, location_name: "onInput"))
    State.add_member(:on_enter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnEnterLifecycle, location_name: "onEnter"))
    State.add_member(:on_exit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnExitLifecycle, location_name: "onExit"))
    State.type = Types::State
    States.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: State)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TransitionEvent.add_member(:event_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: "eventName", traits: {"smithy.api#required" => {}}))
    TransitionEvent.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: "condition", traits: {"smithy.api#required" => {}}))
    TransitionEvent.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: "actions"))
    TransitionEvent.add_member(:next_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: "nextState", traits: {"smithy.api#required" => {}}))
    TransitionEvent.type = Types::TransitionEvent
    TransitionEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionEvent)
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAlarmModelRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAlarmModelRequest.add_member(:alarm_model_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelDescription, location_name: "alarmModelDescription"))
    UpdateAlarmModelRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    UpdateAlarmModelRequest.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    UpdateAlarmModelRequest.add_member(:alarm_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmRule, location_name: "alarmRule", traits: {"smithy.api#required" => {}}))
    UpdateAlarmModelRequest.add_member(:alarm_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmNotification, location_name: "alarmNotification"))
    UpdateAlarmModelRequest.add_member(:alarm_event_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmEventActions, location_name: "alarmEventActions"))
    UpdateAlarmModelRequest.add_member(:alarm_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmCapabilities, location_name: "alarmCapabilities"))
    UpdateAlarmModelRequest.type = Types::UpdateAlarmModelRequest
    UpdateAlarmModelResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    UpdateAlarmModelResponse.add_member(:alarm_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelArn, location_name: "alarmModelArn"))
    UpdateAlarmModelResponse.add_member(:alarm_model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    UpdateAlarmModelResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    UpdateAlarmModelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersionStatus, location_name: "status"))
    UpdateAlarmModelResponse.type = Types::UpdateAlarmModelResponse
    UpdateDetectorModelRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDetectorModelRequest.add_member(:detector_model_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDefinition, location_name: "detectorModelDefinition", traits: {"smithy.api#required" => {}}))
    UpdateDetectorModelRequest.add_member(:detector_model_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelDescription, location_name: "detectorModelDescription"))
    UpdateDetectorModelRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    UpdateDetectorModelRequest.add_member(:evaluation_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMethod, location_name: "evaluationMethod"))
    UpdateDetectorModelRequest.type = Types::UpdateDetectorModelRequest
    UpdateDetectorModelResponse.add_member(:detector_model_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelConfiguration, location_name: "detectorModelConfiguration"))
    UpdateDetectorModelResponse.type = Types::UpdateDetectorModelResponse
    UpdateInputRequest.add_member(:input_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputName, location_name: "inputName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateInputRequest.add_member(:input_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDescription, location_name: "inputDescription"))
    UpdateInputRequest.add_member(:input_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDefinition, location_name: "inputDefinition", traits: {"smithy.api#required" => {}}))
    UpdateInputRequest.type = Types::UpdateInputRequest
    UpdateInputResponse.add_member(:input_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfiguration, location_name: "inputConfiguration"))
    UpdateInputResponse.type = Types::UpdateInputResponse

    IotColumboService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotevents#IotColumboService"
      service.name = "IotColumboService"
      service.version = "2018-07-27"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Events", "arnNamespace" => "iotevents", "cloudFormationName" => "IoTEvents", "cloudTrailEventSource" => "iotevents.amazonaws.com", "docId" => "iotevents-2018-07-27", "endpointPrefix" => "iotevents"}, "aws.auth#sigv4" => {"name" => "iotevents"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Events"}
      service.add_operation(:create_alarm_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#CreateAlarmModel"
        operation.name = "CreateAlarmModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlarmModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAlarmModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarm-models", "code" => 200}}
      end)
      service.add_operation(:create_detector_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#CreateDetectorModel"
        operation.name = "CreateDetectorModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDetectorModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDetectorModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector-models", "code" => 200}}
      end)
      service.add_operation(:create_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#CreateInput"
        operation.name = "CreateInput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/inputs", "code" => 201}}
      end)
      service.add_operation(:delete_alarm_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DeleteAlarmModel"
        operation.name = "DeleteAlarmModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlarmModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlarmModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/alarm-models/{alarmModelName}", "code" => 204}}
      end)
      service.add_operation(:delete_detector_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DeleteDetectorModel"
        operation.name = "DeleteDetectorModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector-models/{detectorModelName}", "code" => 204}}
      end)
      service.add_operation(:delete_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DeleteInput"
        operation.name = "DeleteInput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/inputs/{inputName}", "code" => 200}}
      end)
      service.add_operation(:describe_alarm_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeAlarmModel"
        operation.name = "DescribeAlarmModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarm-models/{alarmModelName}", "code" => 200}}
      end)
      service.add_operation(:describe_detector_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeDetectorModel"
        operation.name = "DescribeDetectorModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector-models/{detectorModelName}", "code" => 200}}
      end)
      service.add_operation(:describe_detector_model_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeDetectorModelAnalysis"
        operation.name = "DescribeDetectorModelAnalysis"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorModelAnalysisRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorModelAnalysisResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/analysis/detector-models/{analysisId}", "code" => 200}}
      end)
      service.add_operation(:describe_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeInput"
        operation.name = "DescribeInput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/inputs/{inputName}", "code" => 200}}
      end)
      service.add_operation(:describe_logging_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#DescribeLoggingOptions"
        operation.name = "DescribeLoggingOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingOptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingOptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:get_detector_model_analysis_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#GetDetectorModelAnalysisResults"
        operation.name = "GetDetectorModelAnalysisResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDetectorModelAnalysisResultsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDetectorModelAnalysisResultsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/analysis/detector-models/{analysisId}/results", "code" => 200}}
      end)
      service.add_operation(:list_alarm_model_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListAlarmModelVersions"
        operation.name = "ListAlarmModelVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmModelVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmModelVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarm-models/{alarmModelName}/versions", "code" => 200}}
      end)
      service.add_operation(:list_alarm_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListAlarmModels"
        operation.name = "ListAlarmModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarm-models", "code" => 200}}
      end)
      service.add_operation(:list_detector_model_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListDetectorModelVersions"
        operation.name = "ListDetectorModelVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorModelVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorModelVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector-models/{detectorModelName}/versions", "code" => 200}}
      end)
      service.add_operation(:list_detector_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListDetectorModels"
        operation.name = "ListDetectorModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector-models", "code" => 200}}
      end)
      service.add_operation(:list_input_routings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListInputRoutings"
        operation.name = "ListInputRoutings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInputRoutingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInputRoutingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/input-routings", "code" => 200}}
      end)
      service.add_operation(:list_inputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListInputs"
        operation.name = "ListInputs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInputsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInputsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/inputs", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:put_logging_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#PutLoggingOptions"
        operation.name = "PutLoggingOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:start_detector_model_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#StartDetectorModelAnalysis"
        operation.name = "StartDetectorModelAnalysis"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDetectorModelAnalysisRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDetectorModelAnalysisResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/analysis/detector-models", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:update_alarm_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#UpdateAlarmModel"
        operation.name = "UpdateAlarmModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAlarmModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAlarmModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarm-models/{alarmModelName}", "code" => 200}}
      end)
      service.add_operation(:update_detector_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#UpdateDetectorModel"
        operation.name = "UpdateDetectorModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector-models/{detectorModelName}", "code" => 200}}
      end)
      service.add_operation(:update_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotevents#UpdateInput"
        operation.name = "UpdateInput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/inputs/{inputName}", "code" => 200}}
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
