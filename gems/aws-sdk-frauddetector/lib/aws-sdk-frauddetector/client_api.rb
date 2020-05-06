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
    CreateModelVersionRequest = Shapes::StructureShape.new(name: 'CreateModelVersionRequest')
    CreateModelVersionResult = Shapes::StructureShape.new(name: 'CreateModelVersionResult')
    CreateRuleRequest = Shapes::StructureShape.new(name: 'CreateRuleRequest')
    CreateRuleResult = Shapes::StructureShape.new(name: 'CreateRuleResult')
    CreateVariableRequest = Shapes::StructureShape.new(name: 'CreateVariableRequest')
    CreateVariableResult = Shapes::StructureShape.new(name: 'CreateVariableResult')
    CsvIndexToVariableMap = Shapes::MapShape.new(name: 'CsvIndexToVariableMap')
    DataSource = Shapes::StringShape.new(name: 'DataSource')
    DataType = Shapes::StringShape.new(name: 'DataType')
    DeleteDetectorRequest = Shapes::StructureShape.new(name: 'DeleteDetectorRequest')
    DeleteDetectorResult = Shapes::StructureShape.new(name: 'DeleteDetectorResult')
    DeleteDetectorVersionRequest = Shapes::StructureShape.new(name: 'DeleteDetectorVersionRequest')
    DeleteDetectorVersionResult = Shapes::StructureShape.new(name: 'DeleteDetectorVersionResult')
    DeleteEventRequest = Shapes::StructureShape.new(name: 'DeleteEventRequest')
    DeleteEventResult = Shapes::StructureShape.new(name: 'DeleteEventResult')
    DeleteRuleVersionRequest = Shapes::StructureShape.new(name: 'DeleteRuleVersionRequest')
    DeleteRuleVersionResult = Shapes::StructureShape.new(name: 'DeleteRuleVersionResult')
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
    EventAttributeMap = Shapes::MapShape.new(name: 'EventAttributeMap')
    ExternalModel = Shapes::StructureShape.new(name: 'ExternalModel')
    ExternalModelEndpointDataBlobMap = Shapes::MapShape.new(name: 'ExternalModelEndpointDataBlobMap')
    ExternalModelList = Shapes::ListShape.new(name: 'ExternalModelList')
    ExternalModelsMaxResults = Shapes::IntegerShape.new(name: 'ExternalModelsMaxResults')
    GetDetectorVersionRequest = Shapes::StructureShape.new(name: 'GetDetectorVersionRequest')
    GetDetectorVersionResult = Shapes::StructureShape.new(name: 'GetDetectorVersionResult')
    GetDetectorsRequest = Shapes::StructureShape.new(name: 'GetDetectorsRequest')
    GetDetectorsResult = Shapes::StructureShape.new(name: 'GetDetectorsResult')
    GetExternalModelsRequest = Shapes::StructureShape.new(name: 'GetExternalModelsRequest')
    GetExternalModelsResult = Shapes::StructureShape.new(name: 'GetExternalModelsResult')
    GetModelVersionRequest = Shapes::StructureShape.new(name: 'GetModelVersionRequest')
    GetModelVersionResult = Shapes::StructureShape.new(name: 'GetModelVersionResult')
    GetModelsRequest = Shapes::StructureShape.new(name: 'GetModelsRequest')
    GetModelsResult = Shapes::StructureShape.new(name: 'GetModelsResult')
    GetOutcomesRequest = Shapes::StructureShape.new(name: 'GetOutcomesRequest')
    GetOutcomesResult = Shapes::StructureShape.new(name: 'GetOutcomesResult')
    GetPredictionRequest = Shapes::StructureShape.new(name: 'GetPredictionRequest')
    GetPredictionResult = Shapes::StructureShape.new(name: 'GetPredictionResult')
    GetRulesRequest = Shapes::StructureShape.new(name: 'GetRulesRequest')
    GetRulesResult = Shapes::StructureShape.new(name: 'GetRulesResult')
    GetVariablesRequest = Shapes::StructureShape.new(name: 'GetVariablesRequest')
    GetVariablesResult = Shapes::StructureShape.new(name: 'GetVariablesResult')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsOpaque = Shapes::BooleanShape.new(name: 'IsOpaque')
    JsonKeyToVariableMap = Shapes::MapShape.new(name: 'JsonKeyToVariableMap')
    LabelMapper = Shapes::MapShape.new(name: 'LabelMapper')
    LabelSchema = Shapes::StructureShape.new(name: 'LabelSchema')
    Language = Shapes::StringShape.new(name: 'Language')
    ListOfModelScores = Shapes::ListShape.new(name: 'ListOfModelScores')
    ListOfModelVersions = Shapes::ListShape.new(name: 'ListOfModelVersions')
    ListOfRuleResults = Shapes::ListShape.new(name: 'ListOfRuleResults')
    ListOfStrings = Shapes::ListShape.new(name: 'ListOfStrings')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricsMap = Shapes::MapShape.new(name: 'MetricsMap')
    Model = Shapes::StructureShape.new(name: 'Model')
    ModelEndpointDataBlob = Shapes::StructureShape.new(name: 'ModelEndpointDataBlob')
    ModelEndpointStatus = Shapes::StringShape.new(name: 'ModelEndpointStatus')
    ModelInputConfiguration = Shapes::StructureShape.new(name: 'ModelInputConfiguration')
    ModelInputDataFormat = Shapes::StringShape.new(name: 'ModelInputDataFormat')
    ModelList = Shapes::ListShape.new(name: 'ModelList')
    ModelOutputConfiguration = Shapes::StructureShape.new(name: 'ModelOutputConfiguration')
    ModelOutputDataFormat = Shapes::StringShape.new(name: 'ModelOutputDataFormat')
    ModelPredictionMap = Shapes::MapShape.new(name: 'ModelPredictionMap')
    ModelScores = Shapes::StructureShape.new(name: 'ModelScores')
    ModelSource = Shapes::StringShape.new(name: 'ModelSource')
    ModelTypeEnum = Shapes::StringShape.new(name: 'ModelTypeEnum')
    ModelVariable = Shapes::StructureShape.new(name: 'ModelVariable')
    ModelVariableIndex = Shapes::IntegerShape.new(name: 'ModelVariableIndex')
    ModelVariablesList = Shapes::ListShape.new(name: 'ModelVariablesList')
    ModelVersion = Shapes::StructureShape.new(name: 'ModelVersion')
    ModelVersionDetail = Shapes::StructureShape.new(name: 'ModelVersionDetail')
    ModelVersionDetailList = Shapes::ListShape.new(name: 'ModelVersionDetailList')
    ModelVersionStatus = Shapes::StringShape.new(name: 'ModelVersionStatus')
    NameList = Shapes::ListShape.new(name: 'NameList')
    NonEmptyListOfStrings = Shapes::ListShape.new(name: 'NonEmptyListOfStrings')
    Outcome = Shapes::StructureShape.new(name: 'Outcome')
    OutcomeList = Shapes::ListShape.new(name: 'OutcomeList')
    OutcomesMaxResults = Shapes::IntegerShape.new(name: 'OutcomesMaxResults')
    PutDetectorRequest = Shapes::StructureShape.new(name: 'PutDetectorRequest')
    PutDetectorResult = Shapes::StructureShape.new(name: 'PutDetectorResult')
    PutExternalModelRequest = Shapes::StructureShape.new(name: 'PutExternalModelRequest')
    PutExternalModelResult = Shapes::StructureShape.new(name: 'PutExternalModelResult')
    PutModelRequest = Shapes::StructureShape.new(name: 'PutModelRequest')
    PutModelResult = Shapes::StructureShape.new(name: 'PutModelResult')
    PutOutcomeRequest = Shapes::StructureShape.new(name: 'PutOutcomeRequest')
    PutOutcomeResult = Shapes::StructureShape.new(name: 'PutOutcomeResult')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Role = Shapes::StructureShape.new(name: 'Role')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleDetail = Shapes::StructureShape.new(name: 'RuleDetail')
    RuleDetailList = Shapes::ListShape.new(name: 'RuleDetailList')
    RuleExecutionMode = Shapes::StringShape.new(name: 'RuleExecutionMode')
    RuleList = Shapes::ListShape.new(name: 'RuleList')
    RuleResult = Shapes::StructureShape.new(name: 'RuleResult')
    RulesMaxResults = Shapes::IntegerShape.new(name: 'RulesMaxResults')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TrainingDataSource = Shapes::StructureShape.new(name: 'TrainingDataSource')
    UpdateDetectorVersionMetadataRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionMetadataRequest')
    UpdateDetectorVersionMetadataResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionMetadataResult')
    UpdateDetectorVersionRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionRequest')
    UpdateDetectorVersionResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionResult')
    UpdateDetectorVersionStatusRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionStatusRequest')
    UpdateDetectorVersionStatusResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionStatusResult')
    UpdateModelVersionRequest = Shapes::StructureShape.new(name: 'UpdateModelVersionRequest')
    UpdateModelVersionResult = Shapes::StructureShape.new(name: 'UpdateModelVersionResult')
    UpdateRuleMetadataRequest = Shapes::StructureShape.new(name: 'UpdateRuleMetadataRequest')
    UpdateRuleMetadataResult = Shapes::StructureShape.new(name: 'UpdateRuleMetadataResult')
    UpdateRuleVersionRequest = Shapes::StructureShape.new(name: 'UpdateRuleVersionRequest')
    UpdateRuleVersionResult = Shapes::StructureShape.new(name: 'UpdateRuleVersionResult')
    UpdateVariableRequest = Shapes::StructureShape.new(name: 'UpdateVariableRequest')
    UpdateVariableResult = Shapes::StructureShape.new(name: 'UpdateVariableResult')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Variable = Shapes::StructureShape.new(name: 'Variable')
    VariableEntry = Shapes::StructureShape.new(name: 'VariableEntry')
    VariableEntryList = Shapes::ListShape.new(name: 'VariableEntryList')
    VariableList = Shapes::ListShape.new(name: 'VariableList')
    VariablesMaxResults = Shapes::IntegerShape.new(name: 'VariablesMaxResults')
    attributeKey = Shapes::StringShape.new(name: 'attributeKey')
    attributeValue = Shapes::StringShape.new(name: 'attributeValue')
    blob = Shapes::BlobShape.new(name: 'blob')
    contentType = Shapes::StringShape.new(name: 'contentType')
    description = Shapes::StringShape.new(name: 'description')
    float = Shapes::FloatShape.new(name: 'float')
    iamRoleArn = Shapes::StringShape.new(name: 'iamRoleArn')
    identifier = Shapes::StringShape.new(name: 'identifier')
    integer = Shapes::IntegerShape.new(name: 'integer')
    nonEmptyString = Shapes::StringShape.new(name: 'nonEmptyString')
    ruleExpression = Shapes::StringShape.new(name: 'ruleExpression')
    s3BucketLocation = Shapes::StringShape.new(name: 's3BucketLocation')
    string = Shapes::StringShape.new(name: 'string')
    time = Shapes::StringShape.new(name: 'time')

    BatchCreateVariableError.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    BatchCreateVariableError.add_member(:code, Shapes::ShapeRef.new(shape: integer, location_name: "code"))
    BatchCreateVariableError.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    BatchCreateVariableError.struct_class = Types::BatchCreateVariableError

    BatchCreateVariableErrorList.member = Shapes::ShapeRef.new(shape: BatchCreateVariableError)

    BatchCreateVariableRequest.add_member(:variable_entries, Shapes::ShapeRef.new(shape: VariableEntryList, required: true, location_name: "variableEntries"))
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
    CreateDetectorVersionRequest.struct_class = Types::CreateDetectorVersionRequest

    CreateDetectorVersionResult.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    CreateDetectorVersionResult.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "detectorVersionId"))
    CreateDetectorVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: "status"))
    CreateDetectorVersionResult.struct_class = Types::CreateDetectorVersionResult

    CreateModelVersionRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "modelId"))
    CreateModelVersionRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    CreateModelVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateModelVersionRequest.struct_class = Types::CreateModelVersionRequest

    CreateModelVersionResult.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, location_name: "modelId"))
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
    CreateRuleRequest.struct_class = Types::CreateRuleRequest

    CreateRuleResult.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, location_name: "rule"))
    CreateRuleResult.struct_class = Types::CreateRuleResult

    CreateVariableRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "name"))
    CreateVariableRequest.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, required: true, location_name: "dataType"))
    CreateVariableRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    CreateVariableRequest.add_member(:default_value, Shapes::ShapeRef.new(shape: string, required: true, location_name: "defaultValue"))
    CreateVariableRequest.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    CreateVariableRequest.add_member(:variable_type, Shapes::ShapeRef.new(shape: string, location_name: "variableType"))
    CreateVariableRequest.struct_class = Types::CreateVariableRequest

    CreateVariableResult.struct_class = Types::CreateVariableResult

    CsvIndexToVariableMap.key = Shapes::ShapeRef.new(shape: string)
    CsvIndexToVariableMap.value = Shapes::ShapeRef.new(shape: string)

    DeleteDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DeleteDetectorRequest.struct_class = Types::DeleteDetectorRequest

    DeleteDetectorResult.struct_class = Types::DeleteDetectorResult

    DeleteDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DeleteDetectorVersionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "detectorVersionId"))
    DeleteDetectorVersionRequest.struct_class = Types::DeleteDetectorVersionRequest

    DeleteDetectorVersionResult.struct_class = Types::DeleteDetectorVersionResult

    DeleteEventRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventId"))
    DeleteEventRequest.struct_class = Types::DeleteEventRequest

    DeleteEventResult.struct_class = Types::DeleteEventResult

    DeleteRuleVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DeleteRuleVersionRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "ruleId"))
    DeleteRuleVersionRequest.add_member(:rule_version, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "ruleVersion"))
    DeleteRuleVersionRequest.struct_class = Types::DeleteRuleVersionRequest

    DeleteRuleVersionResult.struct_class = Types::DeleteRuleVersionResult

    DescribeDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DescribeDetectorRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    DescribeDetectorRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DetectorVersionMaxResults, location_name: "maxResults"))
    DescribeDetectorRequest.struct_class = Types::DescribeDetectorRequest

    DescribeDetectorResult.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    DescribeDetectorResult.add_member(:detector_version_summaries, Shapes::ShapeRef.new(shape: DetectorVersionSummaryList, location_name: "detectorVersionSummaries"))
    DescribeDetectorResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    DescribeDetectorResult.struct_class = Types::DescribeDetectorResult

    DescribeModelVersionsRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, location_name: "modelId"))
    DescribeModelVersionsRequest.add_member(:model_version_number, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "modelVersionNumber"))
    DescribeModelVersionsRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    DescribeModelVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    DescribeModelVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeModelVersionsRequest.struct_class = Types::DescribeModelVersionsRequest

    DescribeModelVersionsResult.add_member(:model_version_details, Shapes::ShapeRef.new(shape: ModelVersionDetailList, location_name: "modelVersionDetails"))
    DescribeModelVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    DescribeModelVersionsResult.struct_class = Types::DescribeModelVersionsResult

    Detector.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    Detector.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Detector.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Detector.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Detector.struct_class = Types::Detector

    DetectorList.member = Shapes::ShapeRef.new(shape: Detector)

    DetectorVersionSummary.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "detectorVersionId"))
    DetectorVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: "status"))
    DetectorVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    DetectorVersionSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    DetectorVersionSummary.struct_class = Types::DetectorVersionSummary

    DetectorVersionSummaryList.member = Shapes::ShapeRef.new(shape: DetectorVersionSummary)

    EventAttributeMap.key = Shapes::ShapeRef.new(shape: attributeKey)
    EventAttributeMap.value = Shapes::ShapeRef.new(shape: attributeValue)

    ExternalModel.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: string, location_name: "modelEndpoint"))
    ExternalModel.add_member(:model_source, Shapes::ShapeRef.new(shape: ModelSource, location_name: "modelSource"))
    ExternalModel.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "role"))
    ExternalModel.add_member(:input_configuration, Shapes::ShapeRef.new(shape: ModelInputConfiguration, location_name: "inputConfiguration"))
    ExternalModel.add_member(:output_configuration, Shapes::ShapeRef.new(shape: ModelOutputConfiguration, location_name: "outputConfiguration"))
    ExternalModel.add_member(:model_endpoint_status, Shapes::ShapeRef.new(shape: ModelEndpointStatus, location_name: "modelEndpointStatus"))
    ExternalModel.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    ExternalModel.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    ExternalModel.struct_class = Types::ExternalModel

    ExternalModelEndpointDataBlobMap.key = Shapes::ShapeRef.new(shape: string)
    ExternalModelEndpointDataBlobMap.value = Shapes::ShapeRef.new(shape: ModelEndpointDataBlob)

    ExternalModelList.member = Shapes::ShapeRef.new(shape: ExternalModel)

    GetDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    GetDetectorVersionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "detectorVersionId"))
    GetDetectorVersionRequest.struct_class = Types::GetDetectorVersionRequest

    GetDetectorVersionResult.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    GetDetectorVersionResult.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "detectorVersionId"))
    GetDetectorVersionResult.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    GetDetectorVersionResult.add_member(:external_model_endpoints, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "externalModelEndpoints"))
    GetDetectorVersionResult.add_member(:model_versions, Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: "modelVersions"))
    GetDetectorVersionResult.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, location_name: "rules"))
    GetDetectorVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: "status"))
    GetDetectorVersionResult.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    GetDetectorVersionResult.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    GetDetectorVersionResult.add_member(:rule_execution_mode, Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: "ruleExecutionMode"))
    GetDetectorVersionResult.struct_class = Types::GetDetectorVersionResult

    GetDetectorsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    GetDetectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetDetectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DetectorsMaxResults, location_name: "maxResults"))
    GetDetectorsRequest.struct_class = Types::GetDetectorsRequest

    GetDetectorsResult.add_member(:detectors, Shapes::ShapeRef.new(shape: DetectorList, location_name: "detectors"))
    GetDetectorsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetDetectorsResult.struct_class = Types::GetDetectorsResult

    GetExternalModelsRequest.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: string, location_name: "modelEndpoint"))
    GetExternalModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetExternalModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ExternalModelsMaxResults, location_name: "maxResults"))
    GetExternalModelsRequest.struct_class = Types::GetExternalModelsRequest

    GetExternalModelsResult.add_member(:external_models, Shapes::ShapeRef.new(shape: ExternalModelList, location_name: "externalModels"))
    GetExternalModelsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetExternalModelsResult.struct_class = Types::GetExternalModelsResult

    GetModelVersionRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "modelId"))
    GetModelVersionRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    GetModelVersionRequest.add_member(:model_version_number, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "modelVersionNumber"))
    GetModelVersionRequest.struct_class = Types::GetModelVersionRequest

    GetModelVersionResult.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, location_name: "modelId"))
    GetModelVersionResult.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    GetModelVersionResult.add_member(:model_version_number, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "modelVersionNumber"))
    GetModelVersionResult.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    GetModelVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    GetModelVersionResult.struct_class = Types::GetModelVersionResult

    GetModelsRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    GetModelsRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, location_name: "modelId"))
    GetModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetModelsRequest.struct_class = Types::GetModelsRequest

    GetModelsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetModelsResult.add_member(:models, Shapes::ShapeRef.new(shape: ModelList, location_name: "models"))
    GetModelsResult.struct_class = Types::GetModelsResult

    GetOutcomesRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, location_name: "name"))
    GetOutcomesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetOutcomesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OutcomesMaxResults, location_name: "maxResults"))
    GetOutcomesRequest.struct_class = Types::GetOutcomesRequest

    GetOutcomesResult.add_member(:outcomes, Shapes::ShapeRef.new(shape: OutcomeList, location_name: "outcomes"))
    GetOutcomesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetOutcomesResult.struct_class = Types::GetOutcomesResult

    GetPredictionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "detectorId"))
    GetPredictionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: string, location_name: "detectorVersionId"))
    GetPredictionRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventId"))
    GetPredictionRequest.add_member(:event_attributes, Shapes::ShapeRef.new(shape: EventAttributeMap, location_name: "eventAttributes"))
    GetPredictionRequest.add_member(:external_model_endpoint_data_blobs, Shapes::ShapeRef.new(shape: ExternalModelEndpointDataBlobMap, location_name: "externalModelEndpointDataBlobs"))
    GetPredictionRequest.struct_class = Types::GetPredictionRequest

    GetPredictionResult.add_member(:outcomes, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "outcomes"))
    GetPredictionResult.add_member(:model_scores, Shapes::ShapeRef.new(shape: ListOfModelScores, location_name: "modelScores"))
    GetPredictionResult.add_member(:rule_results, Shapes::ShapeRef.new(shape: ListOfRuleResults, location_name: "ruleResults"))
    GetPredictionResult.struct_class = Types::GetPredictionResult

    GetRulesRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, location_name: "ruleId"))
    GetRulesRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    GetRulesRequest.add_member(:rule_version, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "ruleVersion"))
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

    LabelMapper.key = Shapes::ShapeRef.new(shape: string)
    LabelMapper.value = Shapes::ShapeRef.new(shape: ListOfStrings)

    LabelSchema.add_member(:label_key, Shapes::ShapeRef.new(shape: string, required: true, location_name: "labelKey"))
    LabelSchema.add_member(:label_mapper, Shapes::ShapeRef.new(shape: LabelMapper, required: true, location_name: "labelMapper"))
    LabelSchema.struct_class = Types::LabelSchema

    ListOfModelScores.member = Shapes::ShapeRef.new(shape: ModelScores)

    ListOfModelVersions.member = Shapes::ShapeRef.new(shape: ModelVersion)

    ListOfRuleResults.member = Shapes::ShapeRef.new(shape: RuleResult)

    ListOfStrings.member = Shapes::ShapeRef.new(shape: string)

    MetricsMap.key = Shapes::ShapeRef.new(shape: string)
    MetricsMap.value = Shapes::ShapeRef.new(shape: string)

    Model.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, location_name: "modelId"))
    Model.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    Model.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Model.add_member(:training_data_source, Shapes::ShapeRef.new(shape: TrainingDataSource, location_name: "trainingDataSource"))
    Model.add_member(:model_variables, Shapes::ShapeRef.new(shape: ModelVariablesList, location_name: "modelVariables"))
    Model.add_member(:label_schema, Shapes::ShapeRef.new(shape: LabelSchema, location_name: "labelSchema"))
    Model.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Model.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Model.struct_class = Types::Model

    ModelEndpointDataBlob.add_member(:byte_buffer, Shapes::ShapeRef.new(shape: blob, location_name: "byteBuffer"))
    ModelEndpointDataBlob.add_member(:content_type, Shapes::ShapeRef.new(shape: contentType, location_name: "contentType"))
    ModelEndpointDataBlob.struct_class = Types::ModelEndpointDataBlob

    ModelInputConfiguration.add_member(:format, Shapes::ShapeRef.new(shape: ModelInputDataFormat, location_name: "format"))
    ModelInputConfiguration.add_member(:is_opaque, Shapes::ShapeRef.new(shape: IsOpaque, required: true, location_name: "isOpaque"))
    ModelInputConfiguration.add_member(:json_input_template, Shapes::ShapeRef.new(shape: string, location_name: "jsonInputTemplate"))
    ModelInputConfiguration.add_member(:csv_input_template, Shapes::ShapeRef.new(shape: string, location_name: "csvInputTemplate"))
    ModelInputConfiguration.struct_class = Types::ModelInputConfiguration

    ModelList.member = Shapes::ShapeRef.new(shape: Model)

    ModelOutputConfiguration.add_member(:format, Shapes::ShapeRef.new(shape: ModelOutputDataFormat, required: true, location_name: "format"))
    ModelOutputConfiguration.add_member(:json_key_to_variable_map, Shapes::ShapeRef.new(shape: JsonKeyToVariableMap, location_name: "jsonKeyToVariableMap"))
    ModelOutputConfiguration.add_member(:csv_index_to_variable_map, Shapes::ShapeRef.new(shape: CsvIndexToVariableMap, location_name: "csvIndexToVariableMap"))
    ModelOutputConfiguration.struct_class = Types::ModelOutputConfiguration

    ModelPredictionMap.key = Shapes::ShapeRef.new(shape: string)
    ModelPredictionMap.value = Shapes::ShapeRef.new(shape: float)

    ModelScores.add_member(:model_version, Shapes::ShapeRef.new(shape: ModelVersion, location_name: "modelVersion"))
    ModelScores.add_member(:scores, Shapes::ShapeRef.new(shape: ModelPredictionMap, location_name: "scores"))
    ModelScores.struct_class = Types::ModelScores

    ModelVariable.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "name"))
    ModelVariable.add_member(:index, Shapes::ShapeRef.new(shape: ModelVariableIndex, location_name: "index"))
    ModelVariable.struct_class = Types::ModelVariable

    ModelVariablesList.member = Shapes::ShapeRef.new(shape: ModelVariable)

    ModelVersion.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "modelId"))
    ModelVersion.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    ModelVersion.add_member(:model_version_number, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "modelVersionNumber"))
    ModelVersion.struct_class = Types::ModelVersion

    ModelVersionDetail.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, location_name: "modelId"))
    ModelVersionDetail.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    ModelVersionDetail.add_member(:model_version_number, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "modelVersionNumber"))
    ModelVersionDetail.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    ModelVersionDetail.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    ModelVersionDetail.add_member(:training_data_source, Shapes::ShapeRef.new(shape: TrainingDataSource, location_name: "trainingDataSource"))
    ModelVersionDetail.add_member(:model_variables, Shapes::ShapeRef.new(shape: ModelVariablesList, location_name: "modelVariables"))
    ModelVersionDetail.add_member(:label_schema, Shapes::ShapeRef.new(shape: LabelSchema, location_name: "labelSchema"))
    ModelVersionDetail.add_member(:validation_metrics, Shapes::ShapeRef.new(shape: MetricsMap, location_name: "validationMetrics"))
    ModelVersionDetail.add_member(:training_metrics, Shapes::ShapeRef.new(shape: MetricsMap, location_name: "trainingMetrics"))
    ModelVersionDetail.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    ModelVersionDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    ModelVersionDetail.struct_class = Types::ModelVersionDetail

    ModelVersionDetailList.member = Shapes::ShapeRef.new(shape: ModelVersionDetail)

    NameList.member = Shapes::ShapeRef.new(shape: string)

    NonEmptyListOfStrings.member = Shapes::ShapeRef.new(shape: string)

    Outcome.add_member(:name, Shapes::ShapeRef.new(shape: identifier, location_name: "name"))
    Outcome.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Outcome.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Outcome.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Outcome.struct_class = Types::Outcome

    OutcomeList.member = Shapes::ShapeRef.new(shape: Outcome)

    PutDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    PutDetectorRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PutDetectorRequest.struct_class = Types::PutDetectorRequest

    PutDetectorResult.struct_class = Types::PutDetectorResult

    PutExternalModelRequest.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: string, required: true, location_name: "modelEndpoint"))
    PutExternalModelRequest.add_member(:model_source, Shapes::ShapeRef.new(shape: ModelSource, required: true, location_name: "modelSource"))
    PutExternalModelRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "role"))
    PutExternalModelRequest.add_member(:input_configuration, Shapes::ShapeRef.new(shape: ModelInputConfiguration, required: true, location_name: "inputConfiguration"))
    PutExternalModelRequest.add_member(:output_configuration, Shapes::ShapeRef.new(shape: ModelOutputConfiguration, required: true, location_name: "outputConfiguration"))
    PutExternalModelRequest.add_member(:model_endpoint_status, Shapes::ShapeRef.new(shape: ModelEndpointStatus, required: true, location_name: "modelEndpointStatus"))
    PutExternalModelRequest.struct_class = Types::PutExternalModelRequest

    PutExternalModelResult.struct_class = Types::PutExternalModelResult

    PutModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "modelId"))
    PutModelRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    PutModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PutModelRequest.add_member(:training_data_source, Shapes::ShapeRef.new(shape: TrainingDataSource, required: true, location_name: "trainingDataSource"))
    PutModelRequest.add_member(:model_variables, Shapes::ShapeRef.new(shape: ModelVariablesList, required: true, location_name: "modelVariables"))
    PutModelRequest.add_member(:label_schema, Shapes::ShapeRef.new(shape: LabelSchema, required: true, location_name: "labelSchema"))
    PutModelRequest.struct_class = Types::PutModelRequest

    PutModelResult.struct_class = Types::PutModelResult

    PutOutcomeRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    PutOutcomeRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    PutOutcomeRequest.struct_class = Types::PutOutcomeRequest

    PutOutcomeResult.struct_class = Types::PutOutcomeResult

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Role.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "arn"))
    Role.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "name"))
    Role.struct_class = Types::Role

    Rule.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    Rule.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "ruleId"))
    Rule.add_member(:rule_version, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "ruleVersion"))
    Rule.struct_class = Types::Rule

    RuleDetail.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, location_name: "ruleId"))
    RuleDetail.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    RuleDetail.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    RuleDetail.add_member(:rule_version, Shapes::ShapeRef.new(shape: nonEmptyString, location_name: "ruleVersion"))
    RuleDetail.add_member(:expression, Shapes::ShapeRef.new(shape: ruleExpression, location_name: "expression"))
    RuleDetail.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "language"))
    RuleDetail.add_member(:outcomes, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: "outcomes"))
    RuleDetail.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    RuleDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    RuleDetail.struct_class = Types::RuleDetail

    RuleDetailList.member = Shapes::ShapeRef.new(shape: RuleDetail)

    RuleList.member = Shapes::ShapeRef.new(shape: Rule)

    RuleResult.add_member(:rule_id, Shapes::ShapeRef.new(shape: string, location_name: "ruleId"))
    RuleResult.add_member(:outcomes, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "outcomes"))
    RuleResult.struct_class = Types::RuleResult

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrainingDataSource.add_member(:data_location, Shapes::ShapeRef.new(shape: s3BucketLocation, required: true, location_name: "dataLocation"))
    TrainingDataSource.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: iamRoleArn, required: true, location_name: "dataAccessRoleArn"))
    TrainingDataSource.struct_class = Types::TrainingDataSource

    UpdateDetectorVersionMetadataRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    UpdateDetectorVersionMetadataRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "detectorVersionId"))
    UpdateDetectorVersionMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, required: true, location_name: "description"))
    UpdateDetectorVersionMetadataRequest.struct_class = Types::UpdateDetectorVersionMetadataRequest

    UpdateDetectorVersionMetadataResult.struct_class = Types::UpdateDetectorVersionMetadataResult

    UpdateDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    UpdateDetectorVersionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "detectorVersionId"))
    UpdateDetectorVersionRequest.add_member(:external_model_endpoints, Shapes::ShapeRef.new(shape: ListOfStrings, required: true, location_name: "externalModelEndpoints"))
    UpdateDetectorVersionRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, required: true, location_name: "rules"))
    UpdateDetectorVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateDetectorVersionRequest.add_member(:model_versions, Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: "modelVersions"))
    UpdateDetectorVersionRequest.add_member(:rule_execution_mode, Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: "ruleExecutionMode"))
    UpdateDetectorVersionRequest.struct_class = Types::UpdateDetectorVersionRequest

    UpdateDetectorVersionResult.struct_class = Types::UpdateDetectorVersionResult

    UpdateDetectorVersionStatusRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    UpdateDetectorVersionStatusRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "detectorVersionId"))
    UpdateDetectorVersionStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, required: true, location_name: "status"))
    UpdateDetectorVersionStatusRequest.struct_class = Types::UpdateDetectorVersionStatusRequest

    UpdateDetectorVersionStatusResult.struct_class = Types::UpdateDetectorVersionStatusResult

    UpdateModelVersionRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "modelId"))
    UpdateModelVersionRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    UpdateModelVersionRequest.add_member(:model_version_number, Shapes::ShapeRef.new(shape: nonEmptyString, required: true, location_name: "modelVersionNumber"))
    UpdateModelVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, required: true, location_name: "description"))
    UpdateModelVersionRequest.add_member(:status, Shapes::ShapeRef.new(shape: ModelVersionStatus, required: true, location_name: "status"))
    UpdateModelVersionRequest.struct_class = Types::UpdateModelVersionRequest

    UpdateModelVersionResult.struct_class = Types::UpdateModelVersionResult

    UpdateRuleMetadataRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    UpdateRuleMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, required: true, location_name: "description"))
    UpdateRuleMetadataRequest.struct_class = Types::UpdateRuleMetadataRequest

    UpdateRuleMetadataResult.struct_class = Types::UpdateRuleMetadataResult

    UpdateRuleVersionRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    UpdateRuleVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateRuleVersionRequest.add_member(:expression, Shapes::ShapeRef.new(shape: ruleExpression, required: true, location_name: "expression"))
    UpdateRuleVersionRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, required: true, location_name: "language"))
    UpdateRuleVersionRequest.add_member(:outcomes, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, required: true, location_name: "outcomes"))
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
      end)

      api.add_operation(:create_model_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
      end)

      api.add_operation(:delete_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_rule_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuleVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_prediction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPrediction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPredictionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPredictionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
      end)

      api.add_operation(:put_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutModelRequest)
        o.output = Shapes::ShapeRef.new(shape: PutModelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
      end)

      api.add_operation(:update_model_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateModelVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateModelVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateModelVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
      end)
    end

  end
end
