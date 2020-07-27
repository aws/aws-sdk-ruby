# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FraudDetector
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BatchCreateVariableError = Shapes::StructureShape.new(name: 'BatchCreateVariableError')
    BatchCreateVariableErrorList = Shapes::ListShape.new(name: 'BatchCreateVariableErrorList')
    BatchCreateVariableRequest = Shapes::StructureShape.new(name: 'BatchCreateVariableRequest')
    BatchCreateVariableResult = Shapes::StructureShape.new(name: 'BatchCreateVariableResult')
    BatchGetVariableError = Shapes::StructureShape.new(name: 'BatchGetVariableError')
    BatchGetVariableErrorList = Shapes::ListShape.new(name: 'BatchGetVariableErrorList')
    BatchGetVariableRequest = Shapes::StructureShape.new(name: 'BatchGetVariableRequest')
    BatchGetVariableResult = Shapes::StructureShape.new(name: 'BatchGetVariableResult')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDetectorVersionRequest = Shapes::StructureShape.new(name: 'CreateDetectorVersionRequest')
    CreateDetectorVersionResult = Shapes::StructureShape.new(name: 'CreateDetectorVersionResult')
    CreateModelRequest = Shapes::StructureShape.new(name: 'CreateModelRequest')
    CreateModelResult = Shapes::StructureShape.new(name: 'CreateModelResult')
    CreateModelVersionRequest = Shapes::StructureShape.new(name: 'CreateModelVersionRequest')
    CreateModelVersionResult = Shapes::StructureShape.new(name: 'CreateModelVersionResult')
    CreateRuleRequest = Shapes::StructureShape.new(name: 'CreateRuleRequest')
    CreateRuleResult = Shapes::StructureShape.new(name: 'CreateRuleResult')
    CreateVariableRequest = Shapes::StructureShape.new(name: 'CreateVariableRequest')
    CreateVariableResult = Shapes::StructureShape.new(name: 'CreateVariableResult')
    CsvIndexToVariableMap = Shapes::MapShape.new(name: 'CsvIndexToVariableMap')
    DataSource = Shapes::StringShape.new(name: 'DataSource')
    DataType = Shapes::StringShape.new(name: 'DataType')
    DataValidationMetrics = Shapes::StructureShape.new(name: 'DataValidationMetrics')
    DeleteDetectorRequest = Shapes::StructureShape.new(name: 'DeleteDetectorRequest')
    DeleteDetectorResult = Shapes::StructureShape.new(name: 'DeleteDetectorResult')
    DeleteDetectorVersionRequest = Shapes::StructureShape.new(name: 'DeleteDetectorVersionRequest')
    DeleteDetectorVersionResult = Shapes::StructureShape.new(name: 'DeleteDetectorVersionResult')
    DeleteEventRequest = Shapes::StructureShape.new(name: 'DeleteEventRequest')
    DeleteEventResult = Shapes::StructureShape.new(name: 'DeleteEventResult')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DeleteRuleResult = Shapes::StructureShape.new(name: 'DeleteRuleResult')
    DescribeDetectorRequest = Shapes::StructureShape.new(name: 'DescribeDetectorRequest')
    DescribeDetectorResult = Shapes::StructureShape.new(name: 'DescribeDetectorResult')
    DescribeModelVersionsRequest = Shapes::StructureShape.new(name: 'DescribeModelVersionsRequest')
    DescribeModelVersionsResult = Shapes::StructureShape.new(name: 'DescribeModelVersionsResult')
    Detector = Shapes::StructureShape.new(name: 'Detector')
    DetectorList = Shapes::ListShape.new(name: 'DetectorList')
    DetectorVersionMaxResults = Shapes::IntegerShape.new(name: 'DetectorVersionMaxResults')
    DetectorVersionStatus = Shapes::StringShape.new(name: 'DetectorVersionStatus')
    DetectorVersionSummary = Shapes::StructureShape.new(name: 'DetectorVersionSummary')
    DetectorVersionSummaryList = Shapes::ListShape.new(name: 'DetectorVersionSummaryList')
    DetectorsMaxResults = Shapes::IntegerShape.new(name: 'DetectorsMaxResults')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityType = Shapes::StructureShape.new(name: 'EntityType')
    EventType = Shapes::StructureShape.new(name: 'EventType')
    EventVariableMap = Shapes::MapShape.new(name: 'EventVariableMap')
    ExternalEventsDetail = Shapes::StructureShape.new(name: 'ExternalEventsDetail')
    ExternalModel = Shapes::StructureShape.new(name: 'ExternalModel')
    ExternalModelEndpointDataBlobMap = Shapes::MapShape.new(name: 'ExternalModelEndpointDataBlobMap')
    ExternalModelList = Shapes::ListShape.new(name: 'ExternalModelList')
    ExternalModelsMaxResults = Shapes::IntegerShape.new(name: 'ExternalModelsMaxResults')
    FieldValidationMessage = Shapes::StructureShape.new(name: 'FieldValidationMessage')
    FileValidationMessage = Shapes::StructureShape.new(name: 'FileValidationMessage')
    GetDetectorVersionRequest = Shapes::StructureShape.new(name: 'GetDetectorVersionRequest')
    GetDetectorVersionResult = Shapes::StructureShape.new(name: 'GetDetectorVersionResult')
    GetDetectorsRequest = Shapes::StructureShape.new(name: 'GetDetectorsRequest')
    GetDetectorsResult = Shapes::StructureShape.new(name: 'GetDetectorsResult')
    GetEntityTypesRequest = Shapes::StructureShape.new(name: 'GetEntityTypesRequest')
    GetEntityTypesResult = Shapes::StructureShape.new(name: 'GetEntityTypesResult')
    GetEventPredictionRequest = Shapes::StructureShape.new(name: 'GetEventPredictionRequest')
    GetEventPredictionResult = Shapes::StructureShape.new(name: 'GetEventPredictionResult')
    GetEventTypesRequest = Shapes::StructureShape.new(name: 'GetEventTypesRequest')
    GetEventTypesResult = Shapes::StructureShape.new(name: 'GetEventTypesResult')
    GetExternalModelsRequest = Shapes::StructureShape.new(name: 'GetExternalModelsRequest')
    GetExternalModelsResult = Shapes::StructureShape.new(name: 'GetExternalModelsResult')
    GetKMSEncryptionKeyResult = Shapes::StructureShape.new(name: 'GetKMSEncryptionKeyResult')
    GetLabelsRequest = Shapes::StructureShape.new(name: 'GetLabelsRequest')
    GetLabelsResult = Shapes::StructureShape.new(name: 'GetLabelsResult')
    GetModelVersionRequest = Shapes::StructureShape.new(name: 'GetModelVersionRequest')
    GetModelVersionResult = Shapes::StructureShape.new(name: 'GetModelVersionResult')
    GetModelsRequest = Shapes::StructureShape.new(name: 'GetModelsRequest')
    GetModelsResult = Shapes::StructureShape.new(name: 'GetModelsResult')
    GetOutcomesRequest = Shapes::StructureShape.new(name: 'GetOutcomesRequest')
    GetOutcomesResult = Shapes::StructureShape.new(name: 'GetOutcomesResult')
    GetRulesRequest = Shapes::StructureShape.new(name: 'GetRulesRequest')
    GetRulesResult = Shapes::StructureShape.new(name: 'GetRulesResult')
    GetVariablesRequest = Shapes::StructureShape.new(name: 'GetVariablesRequest')
    GetVariablesResult = Shapes::StructureShape.new(name: 'GetVariablesResult')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JsonKeyToVariableMap = Shapes::MapShape.new(name: 'JsonKeyToVariableMap')
    KMSKey = Shapes::StructureShape.new(name: 'KMSKey')
    KmsEncryptionKeyArn = Shapes::StringShape.new(name: 'KmsEncryptionKeyArn')
    Label = Shapes::StructureShape.new(name: 'Label')
    LabelSchema = Shapes::StructureShape.new(name: 'LabelSchema')
    Language = Shapes::StringShape.new(name: 'Language')
    ListOfModelScores = Shapes::ListShape.new(name: 'ListOfModelScores')
    ListOfModelVersions = Shapes::ListShape.new(name: 'ListOfModelVersions')
    ListOfRuleResults = Shapes::ListShape.new(name: 'ListOfRuleResults')
    ListOfStrings = Shapes::ListShape.new(name: 'ListOfStrings')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    MetricDataPoint = Shapes::StructureShape.new(name: 'MetricDataPoint')
    Model = Shapes::StructureShape.new(name: 'Model')
    ModelEndpointDataBlob = Shapes::StructureShape.new(name: 'ModelEndpointDataBlob')
    ModelEndpointStatus = Shapes::StringShape.new(name: 'ModelEndpointStatus')
    ModelInputConfiguration = Shapes::StructureShape.new(name: 'ModelInputConfiguration')
    ModelInputDataFormat = Shapes::StringShape.new(name: 'ModelInputDataFormat')
    ModelOutputConfiguration = Shapes::StructureShape.new(name: 'ModelOutputConfiguration')
    ModelOutputDataFormat = Shapes::StringShape.new(name: 'ModelOutputDataFormat')
    ModelPredictionMap = Shapes::MapShape.new(name: 'ModelPredictionMap')
    ModelScores = Shapes::StructureShape.new(name: 'ModelScores')
    ModelSource = Shapes::StringShape.new(name: 'ModelSource')
    ModelTypeEnum = Shapes::StringShape.new(name: 'ModelTypeEnum')
    ModelVersion = Shapes::StructureShape.new(name: 'ModelVersion')
    ModelVersionDetail = Shapes::StructureShape.new(name: 'ModelVersionDetail')
    ModelVersionStatus = Shapes::StringShape.new(name: 'ModelVersionStatus')
    NameList = Shapes::ListShape.new(name: 'NameList')
    NonEmptyListOfStrings = Shapes::ListShape.new(name: 'NonEmptyListOfStrings')
    Outcome = Shapes::StructureShape.new(name: 'Outcome')
    OutcomeList = Shapes::ListShape.new(name: 'OutcomeList')
    OutcomesMaxResults = Shapes::IntegerShape.new(name: 'OutcomesMaxResults')
    PutDetectorRequest = Shapes::StructureShape.new(name: 'PutDetectorRequest')
    PutDetectorResult = Shapes::StructureShape.new(name: 'PutDetectorResult')
    PutEntityTypeRequest = Shapes::StructureShape.new(name: 'PutEntityTypeRequest')
    PutEntityTypeResult = Shapes::StructureShape.new(name: 'PutEntityTypeResult')
    PutEventTypeRequest = Shapes::StructureShape.new(name: 'PutEventTypeRequest')
    PutEventTypeResult = Shapes::StructureShape.new(name: 'PutEventTypeResult')
    PutExternalModelRequest = Shapes::StructureShape.new(name: 'PutExternalModelRequest')
    PutExternalModelResult = Shapes::StructureShape.new(name: 'PutExternalModelResult')
    PutKMSEncryptionKeyRequest = Shapes::StructureShape.new(name: 'PutKMSEncryptionKeyRequest')
    PutKMSEncryptionKeyResult = Shapes::StructureShape.new(name: 'PutKMSEncryptionKeyResult')
    PutLabelRequest = Shapes::StructureShape.new(name: 'PutLabelRequest')
    PutLabelResult = Shapes::StructureShape.new(name: 'PutLabelResult')
    PutOutcomeRequest = Shapes::StructureShape.new(name: 'PutOutcomeRequest')
    PutOutcomeResult = Shapes::StructureShape.new(name: 'PutOutcomeResult')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleDetail = Shapes::StructureShape.new(name: 'RuleDetail')
    RuleDetailList = Shapes::ListShape.new(name: 'RuleDetailList')
    RuleExecutionMode = Shapes::StringShape.new(name: 'RuleExecutionMode')
    RuleList = Shapes::ListShape.new(name: 'RuleList')
    RuleResult = Shapes::StructureShape.new(name: 'RuleResult')
    RulesMaxResults = Shapes::IntegerShape.new(name: 'RulesMaxResults')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagsMaxResults = Shapes::IntegerShape.new(name: 'TagsMaxResults')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TrainingDataSchema = Shapes::StructureShape.new(name: 'TrainingDataSchema')
    TrainingDataSourceEnum = Shapes::StringShape.new(name: 'TrainingDataSourceEnum')
    TrainingMetrics = Shapes::StructureShape.new(name: 'TrainingMetrics')
    TrainingResult = Shapes::StructureShape.new(name: 'TrainingResult')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateDetectorVersionMetadataRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionMetadataRequest')
    UpdateDetectorVersionMetadataResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionMetadataResult')
    UpdateDetectorVersionRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionRequest')
    UpdateDetectorVersionResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionResult')
    UpdateDetectorVersionStatusRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionStatusRequest')
    UpdateDetectorVersionStatusResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionStatusResult')
    UpdateModelRequest = Shapes::StructureShape.new(name: 'UpdateModelRequest')
    UpdateModelResult = Shapes::StructureShape.new(name: 'UpdateModelResult')
    UpdateModelVersionRequest = Shapes::StructureShape.new(name: 'UpdateModelVersionRequest')
    UpdateModelVersionResult = Shapes::StructureShape.new(name: 'UpdateModelVersionResult')
    UpdateModelVersionStatusRequest = Shapes::StructureShape.new(name: 'UpdateModelVersionStatusRequest')
    UpdateModelVersionStatusResult = Shapes::StructureShape.new(name: 'UpdateModelVersionStatusResult')
    UpdateRuleMetadataRequest = Shapes::StructureShape.new(name: 'UpdateRuleMetadataRequest')
    UpdateRuleMetadataResult = Shapes::StructureShape.new(name: 'UpdateRuleMetadataResult')
    UpdateRuleVersionRequest = Shapes::StructureShape.new(name: 'UpdateRuleVersionRequest')
    UpdateRuleVersionResult = Shapes::StructureShape.new(name: 'UpdateRuleVersionResult')
    UpdateVariableRequest = Shapes::StructureShape.new(name: 'UpdateVariableRequest')
    UpdateVariableResult = Shapes::StructureShape.new(name: 'UpdateVariableResult')
    UseEventVariables = Shapes::BooleanShape.new(name: 'UseEventVariables')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Variable = Shapes::StructureShape.new(name: 'Variable')
    VariableEntry = Shapes::StructureShape.new(name: 'VariableEntry')
    VariableEntryList = Shapes::ListShape.new(name: 'VariableEntryList')
    VariableList = Shapes::ListShape.new(name: 'VariableList')
    VariablesMaxResults = Shapes::IntegerShape.new(name: 'VariablesMaxResults')
    blob = Shapes::BlobShape.new(name: 'blob')
    contentType = Shapes::StringShape.new(name: 'contentType')
    description = Shapes::StringShape.new(name: 'description')
    entityTypeList = Shapes::ListShape.new(name: 'entityTypeList')
    entityTypesMaxResults = Shapes::IntegerShape.new(name: 'entityTypesMaxResults')
    eventTypeList = Shapes::ListShape.new(name: 'eventTypeList')
    eventTypesMaxResults = Shapes::IntegerShape.new(name: 'eventTypesMaxResults')
    fieldValidationMessageList = Shapes::ListShape.new(name: 'fieldValidationMessageList')
    fileValidationMessageList = Shapes::ListShape.new(name: 'fileValidationMessageList')
    float = Shapes::FloatShape.new(name: 'float')
    floatVersionString = Shapes::StringShape.new(name: 'floatVersionString')
    fraudDetectorArn = Shapes::StringShape.new(name: 'fraudDetectorArn')
    iamRoleArn = Shapes::StringShape.new(name: 'iamRoleArn')
    identifier = Shapes::StringShape.new(name: 'identifier')
    integer = Shapes::IntegerShape.new(name: 'integer')
    labelList = Shapes::ListShape.new(name: 'labelList')
    labelMapper = Shapes::MapShape.new(name: 'labelMapper')
    labelsMaxResults = Shapes::IntegerShape.new(name: 'labelsMaxResults')
    listOfEntities = Shapes::ListShape.new(name: 'listOfEntities')
    metricDataPointsList = Shapes::ListShape.new(name: 'metricDataPointsList')
    modelIdentifier = Shapes::StringShape.new(name: 'modelIdentifier')
    modelList = Shapes::ListShape.new(name: 'modelList')
    modelVersionDetailList = Shapes::ListShape.new(name: 'modelVersionDetailList')
    modelsMaxPageSize = Shapes::IntegerShape.new(name: 'modelsMaxPageSize')
    nonEmptyString = Shapes::StringShape.new(name: 'nonEmptyString')
    ruleExpression = Shapes::StringShape.new(name: 'ruleExpression')
    s3BucketLocation = Shapes::StringShape.new(name: 's3BucketLocation')
    sageMakerEndpointIdentifier = Shapes::StringShape.new(name: 'sageMakerEndpointIdentifier')
    string = Shapes::StringShape.new(name: 'string')
    tagKey = Shapes::StringShape.new(name: 'tagKey')
    tagKeyList = Shapes::ListShape.new(name: 'tagKeyList')
    tagList = Shapes::ListShape.new(name: 'tagList')
    tagValue = Shapes::StringShape.new(name: 'tagValue')
    time = Shapes::StringShape.new(name: 'time')
    variableName = Shapes::StringShape.new(name: 'variableName')
    variableValue = Shapes::StringShape.new(name: 'variableValue')
    wholeNumberVersionString = Shapes::StringShape.new(name: 'wholeNumberVersionString')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BatchCreateVariableError.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    BatchCreateVariableError.add_member(:code, Shapes::ShapeRef.new(shape: integer, location_name: "code"))
    BatchCreateVariableError.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    BatchCreateVariableError.struct_class = Types::BatchCreateVariableError

    BatchCreateVariableErrorList.member = Shapes::ShapeRef.new(shape: BatchCreateVariableError)

    BatchCreateVariableRequest.add_member(:variable_entries, Shapes::ShapeRef.new(shape: VariableEntryList, required: true, location_name: "variableEntries"))
    BatchCreateVariableRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    BatchCreateVariableRequest.struct_class = Types::BatchCreateVariableRequest

    BatchCreateVariableResult.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateVariableErrorList, location_name: "errors"))
    BatchCreateVariableResult.struct_class = Types::BatchCreateVariableResult

    BatchGetVariableError.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    BatchGetVariableError.add_member(:code, Shapes::ShapeRef.new(shape: integer, location_name: "code"))
    BatchGetVariableError.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    BatchGetVariableError.struct_class = Types::BatchGetVariableError

    BatchGetVariableErrorList.member = Shapes::ShapeRef.new(shape: BatchGetVariableError)

    BatchGetVariableRequest.add_member(:names, Shapes::ShapeRef.new(shape: NameList, required: true, location_name: "names"))
    BatchGetVariableRequest.struct_class = Types::BatchGetVariableRequest

    BatchGetVariableResult.add_member(:variables, Shapes::ShapeRef.new(shape: VariableList, location_name: "variables"))
    BatchGetVariableResult.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetVariableErrorList, location_name: "errors"))
    BatchGetVariableResult.struct_class = Types::BatchGetVariableResult

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    CreateDetectorVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateDetectorVersionRequest.add_member(:external_model_endpoints, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "externalModelEndpoints"))
    CreateDetectorVersionRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, required: true, location_name: "rules"))
    CreateDetectorVersionRequest.add_member(:model_versions, Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: "modelVersions"))
    CreateDetectorVersionRequest.add_member(:rule_execution_mode, Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: "ruleExecutionMode"))
    CreateDetectorVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateDetectorVersionRequest.struct_class = Types::CreateDetectorVersionRequest

    CreateDetectorVersionResult.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    CreateDetectorVersionResult.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "detectorVersionId"))
    CreateDetectorVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: "status"))
    CreateDetectorVersionResult.struct_class = Types::CreateDetectorVersionResult

    CreateModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    CreateModelRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    CreateModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateModelRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventTypeName"))
    CreateModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateModelRequest.struct_class = Types::CreateModelRequest

    CreateModelResult.struct_class = Types::CreateModelResult

    CreateModelVersionRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    CreateModelVersionRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    CreateModelVersionRequest.add_member(:training_data_source, Shapes::ShapeRef.new(shape: TrainingDataSourceEnum, required: true, location_name: "trainingDataSource"))
    CreateModelVersionRequest.add_member(:training_data_schema, Shapes::ShapeRef.new(shape: TrainingDataSchema, required: true, location_name: "trainingDataSchema"))
    CreateModelVersionRequest.add_member(:external_events_detail, Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: "externalEventsDetail"))
    CreateModelVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateModelVersionRequest.struct_class = Types::CreateModelVersionRequest

    CreateModelVersionResult.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    CreateModelVersionResult.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    CreateModelVersionResult.add_member(:model_version_number, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "modelVersionNumber"))
    CreateModelVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    CreateModelVersionResult.struct_class = Types::CreateModelVersionResult

    CreateRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "ruleId"))
    CreateRuleRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    CreateRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateRuleRequest.add_member(:expression, Shapes::ShapeRef.new(shape: ruleExpression, required: true, location_name: "expression"))
    CreateRuleRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, required: true, location_name: "language"))
    CreateRuleRequest.add_member(:outcomes, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, required: true, location_name: "outcomes"))
    CreateRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateRuleRequest.struct_class = Types::CreateRuleRequest

    CreateRuleResult.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, location_name: "rule"))
    CreateRuleResult.struct_class = Types::CreateRuleResult

    CreateVariableRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "name"))
    CreateVariableRequest.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, required: true, location_name: "dataType"))
    CreateVariableRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    CreateVariableRequest.add_member(:default_value, Shapes::ShapeRef.new(shape: string, required: true, location_name: "defaultValue"))
    CreateVariableRequest.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    CreateVariableRequest.add_member(:variable_type, Shapes::ShapeRef.new(shape: string, location_name: "variableType"))
    CreateVariableRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateVariableRequest.struct_class = Types::CreateVariableRequest

    CreateVariableResult.struct_class = Types::CreateVariableResult

    CsvIndexToVariableMap.key = Shapes::ShapeRef.new(shape: string)
    CsvIndexToVariableMap.value = Shapes::ShapeRef.new(shape: string)

    DataValidationMetrics.add_member(:file_level_messages, Shapes::ShapeRef.new(shape: fileValidationMessageList, location_name: "fileLevelMessages"))
    DataValidationMetrics.add_member(:field_level_messages, Shapes::ShapeRef.new(shape: fieldValidationMessageList, location_name: "fieldLevelMessages"))
    DataValidationMetrics.struct_class = Types::DataValidationMetrics

    DeleteDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DeleteDetectorRequest.struct_class = Types::DeleteDetectorRequest

    DeleteDetectorResult.struct_class = Types::DeleteDetectorResult

    DeleteDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DeleteDetectorVersionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "detectorVersionId"))
    DeleteDetectorVersionRequest.struct_class = Types::DeleteDetectorVersionRequest

    DeleteDetectorVersionResult.struct_class = Types::DeleteDetectorVersionResult

    DeleteEventRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventId"))
    DeleteEventRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventTypeName"))
    DeleteEventRequest.struct_class = Types::DeleteEventRequest

    DeleteEventResult.struct_class = Types::DeleteEventResult

    DeleteRuleRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DeleteRuleResult.struct_class = Types::DeleteRuleResult

    DescribeDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DescribeDetectorRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    DescribeDetectorRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DetectorVersionMaxResults, location_name: "maxResults"))
    DescribeDetectorRequest.struct_class = Types::DescribeDetectorRequest

    DescribeDetectorResult.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    DescribeDetectorResult.add_member(:detector_version_summaries, Shapes::ShapeRef.new(shape: DetectorVersionSummaryList, location_name: "detectorVersionSummaries"))
    DescribeDetectorResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    DescribeDetectorResult.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    DescribeDetectorResult.struct_class = Types::DescribeDetectorResult

    DescribeModelVersionsRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    DescribeModelVersionsRequest.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, location_name: "modelVersionNumber"))
    DescribeModelVersionsRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    DescribeModelVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    DescribeModelVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: modelsMaxPageSize, location_name: "maxResults"))
    DescribeModelVersionsRequest.struct_class = Types::DescribeModelVersionsRequest

    DescribeModelVersionsResult.add_member(:model_version_details, Shapes::ShapeRef.new(shape: modelVersionDetailList, location_name: "modelVersionDetails"))
    DescribeModelVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    DescribeModelVersionsResult.struct_class = Types::DescribeModelVersionsResult

    Detector.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    Detector.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Detector.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, location_name: "eventTypeName"))
    Detector.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Detector.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Detector.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    Detector.struct_class = Types::Detector

    DetectorList.member = Shapes::ShapeRef.new(shape: Detector)

    DetectorVersionSummary.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "detectorVersionId"))
    DetectorVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: "status"))
    DetectorVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    DetectorVersionSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    DetectorVersionSummary.struct_class = Types::DetectorVersionSummary

    DetectorVersionSummaryList.member = Shapes::ShapeRef.new(shape: DetectorVersionSummary)

    Entity.add_member(:entity_type, Shapes::ShapeRef.new(shape: string, required: true, location_name: "entityType"))
    Entity.add_member(:entity_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "entityId"))
    Entity.struct_class = Types::Entity

    EntityType.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    EntityType.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    EntityType.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    EntityType.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    EntityType.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    EntityType.struct_class = Types::EntityType

    EventType.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    EventType.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    EventType.add_member(:event_variables, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "eventVariables"))
    EventType.add_member(:labels, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "labels"))
    EventType.add_member(:entity_types, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: "entityTypes"))
    EventType.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    EventType.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    EventType.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    EventType.struct_class = Types::EventType

    EventVariableMap.key = Shapes::ShapeRef.new(shape: variableName)
    EventVariableMap.value = Shapes::ShapeRef.new(shape: variableValue)

    ExternalEventsDetail.add_member(:data_location, Shapes::ShapeRef.new(shape: s3BucketLocation, required: true, location_name: "dataLocation"))
    ExternalEventsDetail.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: iamRoleArn, required: true, location_name: "dataAccessRoleArn"))
    ExternalEventsDetail.struct_class = Types::ExternalEventsDetail

    ExternalModel.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: string, location_name: "modelEndpoint"))
    ExternalModel.add_member(:model_source, Shapes::ShapeRef.new(shape: ModelSource, location_name: "modelSource"))
    ExternalModel.add_member(:invoke_model_endpoint_role_arn, Shapes::ShapeRef.new(shape: string, location_name: "invokeModelEndpointRoleArn"))
    ExternalModel.add_member(:input_configuration, Shapes::ShapeRef.new(shape: ModelInputConfiguration, location_name: "inputConfiguration"))
    ExternalModel.add_member(:output_configuration, Shapes::ShapeRef.new(shape: ModelOutputConfiguration, location_name: "outputConfiguration"))
    ExternalModel.add_member(:model_endpoint_status, Shapes::ShapeRef.new(shape: ModelEndpointStatus, location_name: "modelEndpointStatus"))
    ExternalModel.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    ExternalModel.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    ExternalModel.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    ExternalModel.struct_class = Types::ExternalModel

    ExternalModelEndpointDataBlobMap.key = Shapes::ShapeRef.new(shape: string)
    ExternalModelEndpointDataBlobMap.value = Shapes::ShapeRef.new(shape: ModelEndpointDataBlob)

    ExternalModelList.member = Shapes::ShapeRef.new(shape: ExternalModel)

    FieldValidationMessage.add_member(:field_name, Shapes::ShapeRef.new(shape: string, location_name: "fieldName"))
    FieldValidationMessage.add_member(:identifier, Shapes::ShapeRef.new(shape: string, location_name: "identifier"))
    FieldValidationMessage.add_member(:title, Shapes::ShapeRef.new(shape: string, location_name: "title"))
    FieldValidationMessage.add_member(:content, Shapes::ShapeRef.new(shape: string, location_name: "content"))
    FieldValidationMessage.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "type"))
    FieldValidationMessage.struct_class = Types::FieldValidationMessage

    FileValidationMessage.add_member(:title, Shapes::ShapeRef.new(shape: string, location_name: "title"))
    FileValidationMessage.add_member(:content, Shapes::ShapeRef.new(shape: string, location_name: "content"))
    FileValidationMessage.add_member(:type, Shapes::ShapeRef.new(shape: string, location_name: "type"))
    FileValidationMessage.struct_class = Types::FileValidationMessage

    GetDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    GetDetectorVersionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "detectorVersionId"))
    GetDetectorVersionRequest.struct_class = Types::GetDetectorVersionRequest

    GetDetectorVersionResult.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    GetDetectorVersionResult.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "detectorVersionId"))
    GetDetectorVersionResult.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    GetDetectorVersionResult.add_member(:external_model_endpoints, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "externalModelEndpoints"))
    GetDetectorVersionResult.add_member(:model_versions, Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: "modelVersions"))
    GetDetectorVersionResult.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, location_name: "rules"))
    GetDetectorVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: "status"))
    GetDetectorVersionResult.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    GetDetectorVersionResult.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    GetDetectorVersionResult.add_member(:rule_execution_mode, Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: "ruleExecutionMode"))
    GetDetectorVersionResult.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    GetDetectorVersionResult.struct_class = Types::GetDetectorVersionResult

    GetDetectorsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    GetDetectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetDetectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DetectorsMaxResults, location_name: "maxResults"))
    GetDetectorsRequest.struct_class = Types::GetDetectorsRequest

    GetDetectorsResult.add_member(:detectors, Shapes::ShapeRef.new(shape: DetectorList, location_name: "detectors"))
    GetDetectorsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetDetectorsResult.struct_class = Types::GetDetectorsResult

    GetEntityTypesRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, location_name: "name"))
    GetEntityTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetEntityTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: entityTypesMaxResults, location_name: "maxResults"))
    GetEntityTypesRequest.struct_class = Types::GetEntityTypesRequest

    GetEntityTypesResult.add_member(:entity_types, Shapes::ShapeRef.new(shape: entityTypeList, location_name: "entityTypes"))
    GetEntityTypesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetEntityTypesResult.struct_class = Types::GetEntityTypesResult

    GetEventPredictionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "detectorId"))
    GetEventPredictionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "detectorVersionId"))
    GetEventPredictionRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventId"))
    GetEventPredictionRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventTypeName"))
    GetEventPredictionRequest.add_member(:entities, Shapes::ShapeRef.new(shape: listOfEntities, required: true, location_name: "entities"))
    GetEventPredictionRequest.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventTimestamp"))
    GetEventPredictionRequest.add_member(:event_variables, Shapes::ShapeRef.new(shape: EventVariableMap, required: true, location_name: "eventVariables"))
    GetEventPredictionRequest.add_member(:external_model_endpoint_data_blobs, Shapes::ShapeRef.new(shape: ExternalModelEndpointDataBlobMap, location_name: "externalModelEndpointDataBlobs"))
    GetEventPredictionRequest.struct_class = Types::GetEventPredictionRequest

    GetEventPredictionResult.add_member(:model_scores, Shapes::ShapeRef.new(shape: ListOfModelScores, location_name: "modelScores"))
    GetEventPredictionResult.add_member(:rule_results, Shapes::ShapeRef.new(shape: ListOfRuleResults, location_name: "ruleResults"))
    GetEventPredictionResult.struct_class = Types::GetEventPredictionResult

    GetEventTypesRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, location_name: "name"))
    GetEventTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetEventTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: eventTypesMaxResults, location_name: "maxResults"))
    GetEventTypesRequest.struct_class = Types::GetEventTypesRequest

    GetEventTypesResult.add_member(:event_types, Shapes::ShapeRef.new(shape: eventTypeList, location_name: "eventTypes"))
    GetEventTypesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetEventTypesResult.struct_class = Types::GetEventTypesResult

    GetExternalModelsRequest.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: string, location_name: "modelEndpoint"))
    GetExternalModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetExternalModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ExternalModelsMaxResults, location_name: "maxResults"))
    GetExternalModelsRequest.struct_class = Types::GetExternalModelsRequest

    GetExternalModelsResult.add_member(:external_models, Shapes::ShapeRef.new(shape: ExternalModelList, location_name: "externalModels"))
    GetExternalModelsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetExternalModelsResult.struct_class = Types::GetExternalModelsResult

    GetKMSEncryptionKeyResult.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "kmsKey"))
    GetKMSEncryptionKeyResult.struct_class = Types::GetKMSEncryptionKeyResult

    GetLabelsRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, location_name: "name"))
    GetLabelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetLabelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: labelsMaxResults, location_name: "maxResults"))
    GetLabelsRequest.struct_class = Types::GetLabelsRequest

    GetLabelsResult.add_member(:labels, Shapes::ShapeRef.new(shape: labelList, location_name: "labels"))
    GetLabelsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetLabelsResult.struct_class = Types::GetLabelsResult

    GetModelVersionRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    GetModelVersionRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    GetModelVersionRequest.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, required: true, location_name: "modelVersionNumber"))
    GetModelVersionRequest.struct_class = Types::GetModelVersionRequest

    GetModelVersionResult.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    GetModelVersionResult.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    GetModelVersionResult.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, location_name: "modelVersionNumber"))
    GetModelVersionResult.add_member(:training_data_source, Shapes::ShapeRef.new(shape: TrainingDataSourceEnum, location_name: "trainingDataSource"))
    GetModelVersionResult.add_member(:training_data_schema, Shapes::ShapeRef.new(shape: TrainingDataSchema, location_name: "trainingDataSchema"))
    GetModelVersionResult.add_member(:external_events_detail, Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: "externalEventsDetail"))
    GetModelVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    GetModelVersionResult.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    GetModelVersionResult.struct_class = Types::GetModelVersionResult

    GetModelsRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    GetModelsRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    GetModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: modelsMaxPageSize, location_name: "maxResults"))
    GetModelsRequest.struct_class = Types::GetModelsRequest

    GetModelsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetModelsResult.add_member(:models, Shapes::ShapeRef.new(shape: modelList, location_name: "models"))
    GetModelsResult.struct_class = Types::GetModelsResult

    GetOutcomesRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, location_name: "name"))
    GetOutcomesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetOutcomesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OutcomesMaxResults, location_name: "maxResults"))
    GetOutcomesRequest.struct_class = Types::GetOutcomesRequest

    GetOutcomesResult.add_member(:outcomes, Shapes::ShapeRef.new(shape: OutcomeList, location_name: "outcomes"))
    GetOutcomesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetOutcomesResult.struct_class = Types::GetOutcomesResult

    GetRulesRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, location_name: "ruleId"))
    GetRulesRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    GetRulesRequest.add_member(:rule_version, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "ruleVersion"))
    GetRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RulesMaxResults, location_name: "maxResults"))
    GetRulesRequest.struct_class = Types::GetRulesRequest

    GetRulesResult.add_member(:rule_details, Shapes::ShapeRef.new(shape: RuleDetailList, location_name: "ruleDetails"))
    GetRulesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetRulesResult.struct_class = Types::GetRulesResult

    GetVariablesRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    GetVariablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetVariablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: VariablesMaxResults, location_name: "maxResults"))
    GetVariablesRequest.struct_class = Types::GetVariablesRequest

    GetVariablesResult.add_member(:variables, Shapes::ShapeRef.new(shape: VariableList, location_name: "variables"))
    GetVariablesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetVariablesResult.struct_class = Types::GetVariablesResult

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    JsonKeyToVariableMap.key = Shapes::ShapeRef.new(shape: string)
    JsonKeyToVariableMap.value = Shapes::ShapeRef.new(shape: string)

    KMSKey.add_member(:kms_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsEncryptionKeyArn, location_name: "kmsEncryptionKeyArn"))
    KMSKey.struct_class = Types::KMSKey

    Label.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    Label.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Label.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Label.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Label.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    Label.struct_class = Types::Label

    LabelSchema.add_member(:label_mapper, Shapes::ShapeRef.new(shape: labelMapper, required: true, location_name: "labelMapper"))
    LabelSchema.struct_class = Types::LabelSchema

    ListOfModelScores.member = Shapes::ShapeRef.new(shape: ModelScores)

    ListOfModelVersions.member = Shapes::ShapeRef.new(shape: ModelVersion)

    ListOfRuleResults.member = Shapes::ShapeRef.new(shape: RuleResult)

    ListOfStrings.member = Shapes::ShapeRef.new(shape: string)

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, required: true, location_name: "resourceARN"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: TagsMaxResults, location_name: "maxResults"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    ListTagsForResourceResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    MetricDataPoint.add_member(:fpr, Shapes::ShapeRef.new(shape: float, location_name: "fpr"))
    MetricDataPoint.add_member(:precision, Shapes::ShapeRef.new(shape: float, location_name: "precision"))
    MetricDataPoint.add_member(:tpr, Shapes::ShapeRef.new(shape: float, location_name: "tpr"))
    MetricDataPoint.add_member(:threshold, Shapes::ShapeRef.new(shape: float, location_name: "threshold"))
    MetricDataPoint.struct_class = Types::MetricDataPoint

    Model.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    Model.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    Model.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Model.add_member(:event_type_name, Shapes::ShapeRef.new(shape: string, location_name: "eventTypeName"))
    Model.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Model.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Model.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    Model.struct_class = Types::Model

    ModelEndpointDataBlob.add_member(:byte_buffer, Shapes::ShapeRef.new(shape: blob, location_name: "byteBuffer"))
    ModelEndpointDataBlob.add_member(:content_type, Shapes::ShapeRef.new(shape: contentType, location_name: "contentType"))
    ModelEndpointDataBlob.struct_class = Types::ModelEndpointDataBlob

    ModelInputConfiguration.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, location_name: "eventTypeName"))
    ModelInputConfiguration.add_member(:format, Shapes::ShapeRef.new(shape: ModelInputDataFormat, location_name: "format"))
    ModelInputConfiguration.add_member(:use_event_variables, Shapes::ShapeRef.new(shape: UseEventVariables, required: true, location_name: "useEventVariables"))
    ModelInputConfiguration.add_member(:json_input_template, Shapes::ShapeRef.new(shape: string, location_name: "jsonInputTemplate"))
    ModelInputConfiguration.add_member(:csv_input_template, Shapes::ShapeRef.new(shape: string, location_name: "csvInputTemplate"))
    ModelInputConfiguration.struct_class = Types::ModelInputConfiguration

    ModelOutputConfiguration.add_member(:format, Shapes::ShapeRef.new(shape: ModelOutputDataFormat, required: true, location_name: "format"))
    ModelOutputConfiguration.add_member(:json_key_to_variable_map, Shapes::ShapeRef.new(shape: JsonKeyToVariableMap, location_name: "jsonKeyToVariableMap"))
    ModelOutputConfiguration.add_member(:csv_index_to_variable_map, Shapes::ShapeRef.new(shape: CsvIndexToVariableMap, location_name: "csvIndexToVariableMap"))
    ModelOutputConfiguration.struct_class = Types::ModelOutputConfiguration

    ModelPredictionMap.key = Shapes::ShapeRef.new(shape: string)
    ModelPredictionMap.value = Shapes::ShapeRef.new(shape: float)

    ModelScores.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, location_name: "modelVersion"))
    ModelScores.add_member(:scores, Shapes::ShapeRef.new(shape: ModelPredictionMap, location_name: "scores"))
    ModelScores.struct_class = Types::ModelScores

    ModelVersion.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    ModelVersion.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    ModelVersion.add_member(:model_version_number, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "modelVersionNumber"))
    ModelVersion.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    ModelVersion.struct_class = Types::ModelVersion

    ModelVersionDetail.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    ModelVersionDetail.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    ModelVersionDetail.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, location_name: "modelVersionNumber"))
    ModelVersionDetail.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    ModelVersionDetail.add_member(:training_data_source, Shapes::ShapeRef.new(shape: TrainingDataSourceEnum, location_name: "trainingDataSource"))
    ModelVersionDetail.add_member(:training_data_schema, Shapes::ShapeRef.new(shape: TrainingDataSchema, location_name: "trainingDataSchema"))
    ModelVersionDetail.add_member(:external_events_detail, Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: "externalEventsDetail"))
    ModelVersionDetail.add_member(:training_result, Shapes::ShapeRef.new(shape: TrainingResult, location_name: "trainingResult"))
    ModelVersionDetail.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    ModelVersionDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    ModelVersionDetail.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    ModelVersionDetail.struct_class = Types::ModelVersionDetail

    NameList.member = Shapes::ShapeRef.new(shape: string)

    NonEmptyListOfStrings.member = Shapes::ShapeRef.new(shape: string)

    Outcome.add_member(:name, Shapes::ShapeRef.new(shape: identifier, location_name: "name"))
    Outcome.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Outcome.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Outcome.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Outcome.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    Outcome.struct_class = Types::Outcome

    OutcomeList.member = Shapes::ShapeRef.new(shape: Outcome)

    PutDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    PutDetectorRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PutDetectorRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    PutDetectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    PutDetectorRequest.struct_class = Types::PutDetectorRequest

    PutDetectorResult.struct_class = Types::PutDetectorResult

    PutEntityTypeRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    PutEntityTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PutEntityTypeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    PutEntityTypeRequest.struct_class = Types::PutEntityTypeRequest

    PutEntityTypeResult.struct_class = Types::PutEntityTypeResult

    PutEventTypeRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    PutEventTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PutEventTypeRequest.add_member(:event_variables, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, required: true, location_name: "eventVariables"))
    PutEventTypeRequest.add_member(:labels, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "labels"))
    PutEventTypeRequest.add_member(:entity_types, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, required: true, location_name: "entityTypes"))
    PutEventTypeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    PutEventTypeRequest.struct_class = Types::PutEventTypeRequest

    PutEventTypeResult.struct_class = Types::PutEventTypeResult

    PutExternalModelRequest.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: sageMakerEndpointIdentifier, required: true, location_name: "modelEndpoint"))
    PutExternalModelRequest.add_member(:model_source, Shapes::ShapeRef.new(shape: ModelSource, required: true, location_name: "modelSource"))
    PutExternalModelRequest.add_member(:invoke_model_endpoint_role_arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "invokeModelEndpointRoleArn"))
    PutExternalModelRequest.add_member(:input_configuration, Shapes::ShapeRef.new(shape: ModelInputConfiguration, required: true, location_name: "inputConfiguration"))
    PutExternalModelRequest.add_member(:output_configuration, Shapes::ShapeRef.new(shape: ModelOutputConfiguration, required: true, location_name: "outputConfiguration"))
    PutExternalModelRequest.add_member(:model_endpoint_status, Shapes::ShapeRef.new(shape: ModelEndpointStatus, required: true, location_name: "modelEndpointStatus"))
    PutExternalModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    PutExternalModelRequest.struct_class = Types::PutExternalModelRequest

    PutExternalModelResult.struct_class = Types::PutExternalModelResult

    PutKMSEncryptionKeyRequest.add_member(:kms_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsEncryptionKeyArn, required: true, location_name: "kmsEncryptionKeyArn"))
    PutKMSEncryptionKeyRequest.struct_class = Types::PutKMSEncryptionKeyRequest

    PutKMSEncryptionKeyResult.struct_class = Types::PutKMSEncryptionKeyResult

    PutLabelRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    PutLabelRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PutLabelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    PutLabelRequest.struct_class = Types::PutLabelRequest

    PutLabelResult.struct_class = Types::PutLabelResult

    PutOutcomeRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    PutOutcomeRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PutOutcomeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    PutOutcomeRequest.struct_class = Types::PutOutcomeRequest

    PutOutcomeResult.struct_class = Types::PutOutcomeResult

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Rule.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    Rule.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "ruleId"))
    Rule.add_member(:rule_version, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "ruleVersion"))
    Rule.struct_class = Types::Rule

    RuleDetail.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, location_name: "ruleId"))
    RuleDetail.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    RuleDetail.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    RuleDetail.add_member(:rule_version, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "ruleVersion"))
    RuleDetail.add_member(:expression, Shapes::ShapeRef.new(shape: ruleExpression, location_name: "expression"))
    RuleDetail.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "language"))
    RuleDetail.add_member(:outcomes, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: "outcomes"))
    RuleDetail.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    RuleDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    RuleDetail.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    RuleDetail.struct_class = Types::RuleDetail

    RuleDetailList.member = Shapes::ShapeRef.new(shape: RuleDetail)

    RuleList.member = Shapes::ShapeRef.new(shape: Rule)

    RuleResult.add_member(:rule_id, Shapes::ShapeRef.new(shape: string, location_name: "ruleId"))
    RuleResult.add_member(:outcomes, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "outcomes"))
    RuleResult.struct_class = Types::RuleResult

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: tagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: tagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, required: true, location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.struct_class = Types::TagResourceResult

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrainingDataSchema.add_member(:model_variables, Shapes::ShapeRef.new(shape: ListOfStrings, required: true, location_name: "modelVariables"))
    TrainingDataSchema.add_member(:label_schema, Shapes::ShapeRef.new(shape: LabelSchema, required: true, location_name: "labelSchema"))
    TrainingDataSchema.struct_class = Types::TrainingDataSchema

    TrainingMetrics.add_member(:auc, Shapes::ShapeRef.new(shape: float, location_name: "auc"))
    TrainingMetrics.add_member(:metric_data_points, Shapes::ShapeRef.new(shape: metricDataPointsList, location_name: "metricDataPoints"))
    TrainingMetrics.struct_class = Types::TrainingMetrics

    TrainingResult.add_member(:data_validation_metrics, Shapes::ShapeRef.new(shape: DataValidationMetrics, location_name: "dataValidationMetrics"))
    TrainingResult.add_member(:training_metrics, Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    TrainingResult.struct_class = Types::TrainingResult

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, required: true, location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: tagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.struct_class = Types::UntagResourceResult

    UpdateDetectorVersionMetadataRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    UpdateDetectorVersionMetadataRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "detectorVersionId"))
    UpdateDetectorVersionMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, required: true, location_name: "description"))
    UpdateDetectorVersionMetadataRequest.struct_class = Types::UpdateDetectorVersionMetadataRequest

    UpdateDetectorVersionMetadataResult.struct_class = Types::UpdateDetectorVersionMetadataResult

    UpdateDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    UpdateDetectorVersionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "detectorVersionId"))
    UpdateDetectorVersionRequest.add_member(:external_model_endpoints, Shapes::ShapeRef.new(shape: ListOfStrings, required: true, location_name: "externalModelEndpoints"))
    UpdateDetectorVersionRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, required: true, location_name: "rules"))
    UpdateDetectorVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateDetectorVersionRequest.add_member(:model_versions, Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: "modelVersions"))
    UpdateDetectorVersionRequest.add_member(:rule_execution_mode, Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: "ruleExecutionMode"))
    UpdateDetectorVersionRequest.struct_class = Types::UpdateDetectorVersionRequest

    UpdateDetectorVersionResult.struct_class = Types::UpdateDetectorVersionResult

    UpdateDetectorVersionStatusRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    UpdateDetectorVersionStatusRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "detectorVersionId"))
    UpdateDetectorVersionStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, required: true, location_name: "status"))
    UpdateDetectorVersionStatusRequest.struct_class = Types::UpdateDetectorVersionStatusRequest

    UpdateDetectorVersionStatusResult.struct_class = Types::UpdateDetectorVersionStatusResult

    UpdateModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    UpdateModelRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    UpdateModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateModelRequest.struct_class = Types::UpdateModelRequest

    UpdateModelResult.struct_class = Types::UpdateModelResult

    UpdateModelVersionRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    UpdateModelVersionRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    UpdateModelVersionRequest.add_member(:major_version_number, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "majorVersionNumber"))
    UpdateModelVersionRequest.add_member(:external_events_detail, Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: "externalEventsDetail"))
    UpdateModelVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    UpdateModelVersionRequest.struct_class = Types::UpdateModelVersionRequest

    UpdateModelVersionResult.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    UpdateModelVersionResult.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    UpdateModelVersionResult.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, location_name: "modelVersionNumber"))
    UpdateModelVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    UpdateModelVersionResult.struct_class = Types::UpdateModelVersionResult

    UpdateModelVersionStatusRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    UpdateModelVersionStatusRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    UpdateModelVersionStatusRequest.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, required: true, location_name: "modelVersionNumber"))
    UpdateModelVersionStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: ModelVersionStatus, required: true, location_name: "status"))
    UpdateModelVersionStatusRequest.struct_class = Types::UpdateModelVersionStatusRequest

    UpdateModelVersionStatusResult.struct_class = Types::UpdateModelVersionStatusResult

    UpdateRuleMetadataRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    UpdateRuleMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, required: true, location_name: "description"))
    UpdateRuleMetadataRequest.struct_class = Types::UpdateRuleMetadataRequest

    UpdateRuleMetadataResult.struct_class = Types::UpdateRuleMetadataResult

    UpdateRuleVersionRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    UpdateRuleVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateRuleVersionRequest.add_member(:expression, Shapes::ShapeRef.new(shape: ruleExpression, required: true, location_name: "expression"))
    UpdateRuleVersionRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, required: true, location_name: "language"))
    UpdateRuleVersionRequest.add_member(:outcomes, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, required: true, location_name: "outcomes"))
    UpdateRuleVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    UpdateRuleVersionRequest.struct_class = Types::UpdateRuleVersionRequest

    UpdateRuleVersionResult.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, location_name: "rule"))
    UpdateRuleVersionResult.struct_class = Types::UpdateRuleVersionResult

    UpdateVariableRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "name"))
    UpdateVariableRequest.add_member(:default_value, Shapes::ShapeRef.new(shape: string, location_name: "defaultValue"))
    UpdateVariableRequest.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    UpdateVariableRequest.add_member(:variable_type, Shapes::ShapeRef.new(shape: string, location_name: "variableType"))
    UpdateVariableRequest.struct_class = Types::UpdateVariableRequest

    UpdateVariableResult.struct_class = Types::UpdateVariableResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    Variable.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    Variable.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    Variable.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    Variable.add_member(:default_value, Shapes::ShapeRef.new(shape: string, location_name: "defaultValue"))
    Variable.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    Variable.add_member(:variable_type, Shapes::ShapeRef.new(shape: string, location_name: "variableType"))
    Variable.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Variable.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Variable.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    Variable.struct_class = Types::Variable

    VariableEntry.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    VariableEntry.add_member(:data_type, Shapes::ShapeRef.new(shape: string, location_name: "dataType"))
    VariableEntry.add_member(:data_source, Shapes::ShapeRef.new(shape: string, location_name: "dataSource"))
    VariableEntry.add_member(:default_value, Shapes::ShapeRef.new(shape: string, location_name: "defaultValue"))
    VariableEntry.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    VariableEntry.add_member(:variable_type, Shapes::ShapeRef.new(shape: string, location_name: "variableType"))
    VariableEntry.struct_class = Types::VariableEntry

    VariableEntryList.member = Shapes::ShapeRef.new(shape: VariableEntry)

    VariableList.member = Shapes::ShapeRef.new(shape: Variable)

    entityTypeList.member = Shapes::ShapeRef.new(shape: EntityType)

    eventTypeList.member = Shapes::ShapeRef.new(shape: EventType)

    fieldValidationMessageList.member = Shapes::ShapeRef.new(shape: FieldValidationMessage)

    fileValidationMessageList.member = Shapes::ShapeRef.new(shape: FileValidationMessage)

    labelList.member = Shapes::ShapeRef.new(shape: Label)

    labelMapper.key = Shapes::ShapeRef.new(shape: string)
    labelMapper.value = Shapes::ShapeRef.new(shape: ListOfStrings)

    listOfEntities.member = Shapes::ShapeRef.new(shape: Entity)

    metricDataPointsList.member = Shapes::ShapeRef.new(shape: MetricDataPoint)

    modelList.member = Shapes::ShapeRef.new(shape: Model)

    modelVersionDetailList.member = Shapes::ShapeRef.new(shape: ModelVersionDetail)

    tagKeyList.member = Shapes::ShapeRef.new(shape: tagKey)

    tagList.member = Shapes::ShapeRef.new(shape: Tag)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-11-15"

      api.metadata = {
        "apiVersion" => "2019-11-15",
        "endpointPrefix" => "frauddetector",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Fraud Detector",
        "serviceId" => "FraudDetector",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSHawksNestServiceFacade",
        "uid" => "frauddetector-2019-11-15",
      }

      api.add_operation(:batch_create_variable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateVariable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateVariableRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateVariableResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_get_variable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetVariable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetVariableRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetVariableResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_detector_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDetectorVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDetectorVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDetectorVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_model_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_variable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVariable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVariableRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVariableResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDetectorResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_detector_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDetectorVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDetectorVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDetectorVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDetectorResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_model_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModelVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_detector_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDetectorVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDetectorVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDetectorVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDetectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDetectorsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_entity_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEntityTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEntityTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEntityTypesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_event_prediction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventPrediction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEventPredictionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventPredictionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_event_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEventTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventTypesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_external_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExternalModels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExternalModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExternalModelsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_kms_encryption_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKMSEncryptionKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetKMSEncryptionKeyResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_labels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLabels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLabelsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLabelsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_model_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetModelVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_outcomes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOutcomes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOutcomesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOutcomesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRulesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_variables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVariables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetVariablesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVariablesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDetectorResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_entity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEntityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEntityTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEntityTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_event_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEventType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEventTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_external_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutExternalModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutExternalModelRequest)
        o.output = Shapes::ShapeRef.new(shape: PutExternalModelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_kms_encryption_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutKMSEncryptionKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutKMSEncryptionKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutKMSEncryptionKeyResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLabelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_outcome, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutOutcome"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutOutcomeRequest)
        o.output = Shapes::ShapeRef.new(shape: PutOutcomeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_detector_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDetectorVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDetectorVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDetectorVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_detector_version_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDetectorVersionMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDetectorVersionMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDetectorVersionMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_detector_version_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDetectorVersionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDetectorVersionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDetectorVersionStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateModelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_model_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateModelVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateModelVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateModelVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_model_version_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateModelVersionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateModelVersionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateModelVersionStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_rule_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuleMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_rule_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuleVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_variable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVariable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVariableRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVariableResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
