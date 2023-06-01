# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FraudDetector
  # @api private
  module ClientApi

    include Seahorse::Model

    ATIMetricDataPoint = Shapes::StructureShape.new(name: 'ATIMetricDataPoint')
    ATIMetricDataPointsList = Shapes::ListShape.new(name: 'ATIMetricDataPointsList')
    ATIModelPerformance = Shapes::StructureShape.new(name: 'ATIModelPerformance')
    ATITrainingMetricsValue = Shapes::StructureShape.new(name: 'ATITrainingMetricsValue')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AggregatedLogOddsMetric = Shapes::StructureShape.new(name: 'AggregatedLogOddsMetric')
    AggregatedVariablesImpactExplanation = Shapes::StructureShape.new(name: 'AggregatedVariablesImpactExplanation')
    AggregatedVariablesImportanceMetrics = Shapes::StructureShape.new(name: 'AggregatedVariablesImportanceMetrics')
    AllowDenyList = Shapes::StructureShape.new(name: 'AllowDenyList')
    AllowDenyLists = Shapes::ListShape.new(name: 'AllowDenyLists')
    AsyncJobStatus = Shapes::StringShape.new(name: 'AsyncJobStatus')
    BatchCreateVariableError = Shapes::StructureShape.new(name: 'BatchCreateVariableError')
    BatchCreateVariableErrorList = Shapes::ListShape.new(name: 'BatchCreateVariableErrorList')
    BatchCreateVariableRequest = Shapes::StructureShape.new(name: 'BatchCreateVariableRequest')
    BatchCreateVariableResult = Shapes::StructureShape.new(name: 'BatchCreateVariableResult')
    BatchGetVariableError = Shapes::StructureShape.new(name: 'BatchGetVariableError')
    BatchGetVariableErrorList = Shapes::ListShape.new(name: 'BatchGetVariableErrorList')
    BatchGetVariableRequest = Shapes::StructureShape.new(name: 'BatchGetVariableRequest')
    BatchGetVariableResult = Shapes::StructureShape.new(name: 'BatchGetVariableResult')
    BatchImport = Shapes::StructureShape.new(name: 'BatchImport')
    BatchImportList = Shapes::ListShape.new(name: 'BatchImportList')
    BatchPrediction = Shapes::StructureShape.new(name: 'BatchPrediction')
    BatchPredictionList = Shapes::ListShape.new(name: 'BatchPredictionList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelBatchImportJobRequest = Shapes::StructureShape.new(name: 'CancelBatchImportJobRequest')
    CancelBatchImportJobResult = Shapes::StructureShape.new(name: 'CancelBatchImportJobResult')
    CancelBatchPredictionJobRequest = Shapes::StructureShape.new(name: 'CancelBatchPredictionJobRequest')
    CancelBatchPredictionJobResult = Shapes::StructureShape.new(name: 'CancelBatchPredictionJobResult')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateBatchImportJobRequest = Shapes::StructureShape.new(name: 'CreateBatchImportJobRequest')
    CreateBatchImportJobResult = Shapes::StructureShape.new(name: 'CreateBatchImportJobResult')
    CreateBatchPredictionJobRequest = Shapes::StructureShape.new(name: 'CreateBatchPredictionJobRequest')
    CreateBatchPredictionJobResult = Shapes::StructureShape.new(name: 'CreateBatchPredictionJobResult')
    CreateDetectorVersionRequest = Shapes::StructureShape.new(name: 'CreateDetectorVersionRequest')
    CreateDetectorVersionResult = Shapes::StructureShape.new(name: 'CreateDetectorVersionResult')
    CreateListRequest = Shapes::StructureShape.new(name: 'CreateListRequest')
    CreateListResult = Shapes::StructureShape.new(name: 'CreateListResult')
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
    DeleteAuditHistory = Shapes::BooleanShape.new(name: 'DeleteAuditHistory')
    DeleteBatchImportJobRequest = Shapes::StructureShape.new(name: 'DeleteBatchImportJobRequest')
    DeleteBatchImportJobResult = Shapes::StructureShape.new(name: 'DeleteBatchImportJobResult')
    DeleteBatchPredictionJobRequest = Shapes::StructureShape.new(name: 'DeleteBatchPredictionJobRequest')
    DeleteBatchPredictionJobResult = Shapes::StructureShape.new(name: 'DeleteBatchPredictionJobResult')
    DeleteDetectorRequest = Shapes::StructureShape.new(name: 'DeleteDetectorRequest')
    DeleteDetectorResult = Shapes::StructureShape.new(name: 'DeleteDetectorResult')
    DeleteDetectorVersionRequest = Shapes::StructureShape.new(name: 'DeleteDetectorVersionRequest')
    DeleteDetectorVersionResult = Shapes::StructureShape.new(name: 'DeleteDetectorVersionResult')
    DeleteEntityTypeRequest = Shapes::StructureShape.new(name: 'DeleteEntityTypeRequest')
    DeleteEntityTypeResult = Shapes::StructureShape.new(name: 'DeleteEntityTypeResult')
    DeleteEventRequest = Shapes::StructureShape.new(name: 'DeleteEventRequest')
    DeleteEventResult = Shapes::StructureShape.new(name: 'DeleteEventResult')
    DeleteEventTypeRequest = Shapes::StructureShape.new(name: 'DeleteEventTypeRequest')
    DeleteEventTypeResult = Shapes::StructureShape.new(name: 'DeleteEventTypeResult')
    DeleteEventsByEventTypeRequest = Shapes::StructureShape.new(name: 'DeleteEventsByEventTypeRequest')
    DeleteEventsByEventTypeResult = Shapes::StructureShape.new(name: 'DeleteEventsByEventTypeResult')
    DeleteExternalModelRequest = Shapes::StructureShape.new(name: 'DeleteExternalModelRequest')
    DeleteExternalModelResult = Shapes::StructureShape.new(name: 'DeleteExternalModelResult')
    DeleteLabelRequest = Shapes::StructureShape.new(name: 'DeleteLabelRequest')
    DeleteLabelResult = Shapes::StructureShape.new(name: 'DeleteLabelResult')
    DeleteListRequest = Shapes::StructureShape.new(name: 'DeleteListRequest')
    DeleteListResult = Shapes::StructureShape.new(name: 'DeleteListResult')
    DeleteModelRequest = Shapes::StructureShape.new(name: 'DeleteModelRequest')
    DeleteModelResult = Shapes::StructureShape.new(name: 'DeleteModelResult')
    DeleteModelVersionRequest = Shapes::StructureShape.new(name: 'DeleteModelVersionRequest')
    DeleteModelVersionResult = Shapes::StructureShape.new(name: 'DeleteModelVersionResult')
    DeleteOutcomeRequest = Shapes::StructureShape.new(name: 'DeleteOutcomeRequest')
    DeleteOutcomeResult = Shapes::StructureShape.new(name: 'DeleteOutcomeResult')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DeleteRuleResult = Shapes::StructureShape.new(name: 'DeleteRuleResult')
    DeleteVariableRequest = Shapes::StructureShape.new(name: 'DeleteVariableRequest')
    DeleteVariableResult = Shapes::StructureShape.new(name: 'DeleteVariableResult')
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
    Elements = Shapes::StringShape.new(name: 'Elements')
    ElementsList = Shapes::ListShape.new(name: 'ElementsList')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityType = Shapes::StructureShape.new(name: 'EntityType')
    EvaluatedExternalModel = Shapes::StructureShape.new(name: 'EvaluatedExternalModel')
    EvaluatedModelVersion = Shapes::StructureShape.new(name: 'EvaluatedModelVersion')
    EvaluatedRule = Shapes::StructureShape.new(name: 'EvaluatedRule')
    EvaluatedRuleList = Shapes::ListShape.new(name: 'EvaluatedRuleList')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventAttributeMap = Shapes::MapShape.new(name: 'EventAttributeMap')
    EventIngestion = Shapes::StringShape.new(name: 'EventIngestion')
    EventOrchestration = Shapes::StructureShape.new(name: 'EventOrchestration')
    EventPredictionSummary = Shapes::StructureShape.new(name: 'EventPredictionSummary')
    EventPredictionsMaxResults = Shapes::IntegerShape.new(name: 'EventPredictionsMaxResults')
    EventType = Shapes::StructureShape.new(name: 'EventType')
    EventVariableMap = Shapes::MapShape.new(name: 'EventVariableMap')
    EventVariableSummary = Shapes::StructureShape.new(name: 'EventVariableSummary')
    ExternalEventsDetail = Shapes::StructureShape.new(name: 'ExternalEventsDetail')
    ExternalModel = Shapes::StructureShape.new(name: 'ExternalModel')
    ExternalModelEndpointDataBlobMap = Shapes::MapShape.new(name: 'ExternalModelEndpointDataBlobMap')
    ExternalModelList = Shapes::ListShape.new(name: 'ExternalModelList')
    ExternalModelOutputs = Shapes::StructureShape.new(name: 'ExternalModelOutputs')
    ExternalModelPredictionMap = Shapes::MapShape.new(name: 'ExternalModelPredictionMap')
    ExternalModelSummary = Shapes::StructureShape.new(name: 'ExternalModelSummary')
    ExternalModelsMaxResults = Shapes::IntegerShape.new(name: 'ExternalModelsMaxResults')
    FieldValidationMessage = Shapes::StructureShape.new(name: 'FieldValidationMessage')
    FileValidationMessage = Shapes::StructureShape.new(name: 'FileValidationMessage')
    FilterCondition = Shapes::StructureShape.new(name: 'FilterCondition')
    GetBatchImportJobsRequest = Shapes::StructureShape.new(name: 'GetBatchImportJobsRequest')
    GetBatchImportJobsResult = Shapes::StructureShape.new(name: 'GetBatchImportJobsResult')
    GetBatchPredictionJobsRequest = Shapes::StructureShape.new(name: 'GetBatchPredictionJobsRequest')
    GetBatchPredictionJobsResult = Shapes::StructureShape.new(name: 'GetBatchPredictionJobsResult')
    GetDeleteEventsByEventTypeStatusRequest = Shapes::StructureShape.new(name: 'GetDeleteEventsByEventTypeStatusRequest')
    GetDeleteEventsByEventTypeStatusResult = Shapes::StructureShape.new(name: 'GetDeleteEventsByEventTypeStatusResult')
    GetDetectorVersionRequest = Shapes::StructureShape.new(name: 'GetDetectorVersionRequest')
    GetDetectorVersionResult = Shapes::StructureShape.new(name: 'GetDetectorVersionResult')
    GetDetectorsRequest = Shapes::StructureShape.new(name: 'GetDetectorsRequest')
    GetDetectorsResult = Shapes::StructureShape.new(name: 'GetDetectorsResult')
    GetEntityTypesRequest = Shapes::StructureShape.new(name: 'GetEntityTypesRequest')
    GetEntityTypesResult = Shapes::StructureShape.new(name: 'GetEntityTypesResult')
    GetEventPredictionMetadataRequest = Shapes::StructureShape.new(name: 'GetEventPredictionMetadataRequest')
    GetEventPredictionMetadataResult = Shapes::StructureShape.new(name: 'GetEventPredictionMetadataResult')
    GetEventPredictionRequest = Shapes::StructureShape.new(name: 'GetEventPredictionRequest')
    GetEventPredictionResult = Shapes::StructureShape.new(name: 'GetEventPredictionResult')
    GetEventRequest = Shapes::StructureShape.new(name: 'GetEventRequest')
    GetEventResult = Shapes::StructureShape.new(name: 'GetEventResult')
    GetEventTypesRequest = Shapes::StructureShape.new(name: 'GetEventTypesRequest')
    GetEventTypesResult = Shapes::StructureShape.new(name: 'GetEventTypesResult')
    GetExternalModelsRequest = Shapes::StructureShape.new(name: 'GetExternalModelsRequest')
    GetExternalModelsResult = Shapes::StructureShape.new(name: 'GetExternalModelsResult')
    GetKMSEncryptionKeyResult = Shapes::StructureShape.new(name: 'GetKMSEncryptionKeyResult')
    GetLabelsRequest = Shapes::StructureShape.new(name: 'GetLabelsRequest')
    GetLabelsResult = Shapes::StructureShape.new(name: 'GetLabelsResult')
    GetListElementsRequest = Shapes::StructureShape.new(name: 'GetListElementsRequest')
    GetListElementsResult = Shapes::StructureShape.new(name: 'GetListElementsResult')
    GetListsMetadataRequest = Shapes::StructureShape.new(name: 'GetListsMetadataRequest')
    GetListsMetadataResult = Shapes::StructureShape.new(name: 'GetListsMetadataResult')
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
    IngestedEventStatistics = Shapes::StructureShape.new(name: 'IngestedEventStatistics')
    IngestedEventsDetail = Shapes::StructureShape.new(name: 'IngestedEventsDetail')
    IngestedEventsTimeWindow = Shapes::StructureShape.new(name: 'IngestedEventsTimeWindow')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JsonKeyToVariableMap = Shapes::MapShape.new(name: 'JsonKeyToVariableMap')
    KMSKey = Shapes::StructureShape.new(name: 'KMSKey')
    KmsEncryptionKeyArn = Shapes::StringShape.new(name: 'KmsEncryptionKeyArn')
    Label = Shapes::StructureShape.new(name: 'Label')
    LabelSchema = Shapes::StructureShape.new(name: 'LabelSchema')
    Language = Shapes::StringShape.new(name: 'Language')
    ListEventPredictionsRequest = Shapes::StructureShape.new(name: 'ListEventPredictionsRequest')
    ListEventPredictionsResult = Shapes::StructureShape.new(name: 'ListEventPredictionsResult')
    ListOfAggregatedLogOddsMetrics = Shapes::ListShape.new(name: 'ListOfAggregatedLogOddsMetrics')
    ListOfAggregatedVariablesImpactExplanations = Shapes::ListShape.new(name: 'ListOfAggregatedVariablesImpactExplanations')
    ListOfEvaluatedExternalModels = Shapes::ListShape.new(name: 'ListOfEvaluatedExternalModels')
    ListOfEvaluatedModelVersions = Shapes::ListShape.new(name: 'ListOfEvaluatedModelVersions')
    ListOfEventPredictionSummaries = Shapes::ListShape.new(name: 'ListOfEventPredictionSummaries')
    ListOfEventVariableSummaries = Shapes::ListShape.new(name: 'ListOfEventVariableSummaries')
    ListOfExternalModelOutputs = Shapes::ListShape.new(name: 'ListOfExternalModelOutputs')
    ListOfLogOddsMetrics = Shapes::ListShape.new(name: 'ListOfLogOddsMetrics')
    ListOfModelScores = Shapes::ListShape.new(name: 'ListOfModelScores')
    ListOfModelVersionEvaluations = Shapes::ListShape.new(name: 'ListOfModelVersionEvaluations')
    ListOfModelVersions = Shapes::ListShape.new(name: 'ListOfModelVersions')
    ListOfRuleResults = Shapes::ListShape.new(name: 'ListOfRuleResults')
    ListOfStrings = Shapes::ListShape.new(name: 'ListOfStrings')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    ListUpdateMode = Shapes::StringShape.new(name: 'ListUpdateMode')
    ListsElementsMaxResults = Shapes::IntegerShape.new(name: 'ListsElementsMaxResults')
    ListsMetadataMaxResults = Shapes::IntegerShape.new(name: 'ListsMetadataMaxResults')
    LogOddsMetric = Shapes::StructureShape.new(name: 'LogOddsMetric')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MapOfStrings = Shapes::MapShape.new(name: 'MapOfStrings')
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
    ModelVersionEvaluation = Shapes::StructureShape.new(name: 'ModelVersionEvaluation')
    ModelVersionStatus = Shapes::StringShape.new(name: 'ModelVersionStatus')
    NameList = Shapes::ListShape.new(name: 'NameList')
    NonEmptyListOfStrings = Shapes::ListShape.new(name: 'NonEmptyListOfStrings')
    OFIMetricDataPoint = Shapes::StructureShape.new(name: 'OFIMetricDataPoint')
    OFIMetricDataPointsList = Shapes::ListShape.new(name: 'OFIMetricDataPointsList')
    OFIModelPerformance = Shapes::StructureShape.new(name: 'OFIModelPerformance')
    OFITrainingMetricsValue = Shapes::StructureShape.new(name: 'OFITrainingMetricsValue')
    Outcome = Shapes::StructureShape.new(name: 'Outcome')
    OutcomeList = Shapes::ListShape.new(name: 'OutcomeList')
    OutcomesMaxResults = Shapes::IntegerShape.new(name: 'OutcomesMaxResults')
    PredictionExplanations = Shapes::StructureShape.new(name: 'PredictionExplanations')
    PredictionTimeRange = Shapes::StructureShape.new(name: 'PredictionTimeRange')
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
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleDetail = Shapes::StructureShape.new(name: 'RuleDetail')
    RuleDetailList = Shapes::ListShape.new(name: 'RuleDetailList')
    RuleExecutionMode = Shapes::StringShape.new(name: 'RuleExecutionMode')
    RuleList = Shapes::ListShape.new(name: 'RuleList')
    RuleResult = Shapes::StructureShape.new(name: 'RuleResult')
    RulesMaxResults = Shapes::IntegerShape.new(name: 'RulesMaxResults')
    SendEventRequest = Shapes::StructureShape.new(name: 'SendEventRequest')
    SendEventResult = Shapes::StructureShape.new(name: 'SendEventResult')
    TFIMetricDataPoint = Shapes::StructureShape.new(name: 'TFIMetricDataPoint')
    TFIMetricDataPointsList = Shapes::ListShape.new(name: 'TFIMetricDataPointsList')
    TFIModelPerformance = Shapes::StructureShape.new(name: 'TFIModelPerformance')
    TFITrainingMetricsValue = Shapes::StructureShape.new(name: 'TFITrainingMetricsValue')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagsMaxResults = Shapes::IntegerShape.new(name: 'TagsMaxResults')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TrainingDataSchema = Shapes::StructureShape.new(name: 'TrainingDataSchema')
    TrainingDataSourceEnum = Shapes::StringShape.new(name: 'TrainingDataSourceEnum')
    TrainingMetrics = Shapes::StructureShape.new(name: 'TrainingMetrics')
    TrainingMetricsV2 = Shapes::StructureShape.new(name: 'TrainingMetricsV2')
    TrainingResult = Shapes::StructureShape.new(name: 'TrainingResult')
    TrainingResultV2 = Shapes::StructureShape.new(name: 'TrainingResultV2')
    UncertaintyRange = Shapes::StructureShape.new(name: 'UncertaintyRange')
    UnlabeledEventsTreatment = Shapes::StringShape.new(name: 'UnlabeledEventsTreatment')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateDetectorVersionMetadataRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionMetadataRequest')
    UpdateDetectorVersionMetadataResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionMetadataResult')
    UpdateDetectorVersionRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionRequest')
    UpdateDetectorVersionResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionResult')
    UpdateDetectorVersionStatusRequest = Shapes::StructureShape.new(name: 'UpdateDetectorVersionStatusRequest')
    UpdateDetectorVersionStatusResult = Shapes::StructureShape.new(name: 'UpdateDetectorVersionStatusResult')
    UpdateEventLabelRequest = Shapes::StructureShape.new(name: 'UpdateEventLabelRequest')
    UpdateEventLabelResult = Shapes::StructureShape.new(name: 'UpdateEventLabelResult')
    UpdateListRequest = Shapes::StructureShape.new(name: 'UpdateListRequest')
    UpdateListResult = Shapes::StructureShape.new(name: 'UpdateListResult')
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
    VariableImpactExplanation = Shapes::StructureShape.new(name: 'VariableImpactExplanation')
    VariableImportanceMetrics = Shapes::StructureShape.new(name: 'VariableImportanceMetrics')
    VariableList = Shapes::ListShape.new(name: 'VariableList')
    VariablesMaxResults = Shapes::IntegerShape.new(name: 'VariablesMaxResults')
    attributeKey = Shapes::StringShape.new(name: 'attributeKey')
    attributeValue = Shapes::StringShape.new(name: 'attributeValue')
    batchImportsMaxPageSize = Shapes::IntegerShape.new(name: 'batchImportsMaxPageSize')
    batchPredictionsMaxPageSize = Shapes::IntegerShape.new(name: 'batchPredictionsMaxPageSize')
    blob = Shapes::BlobShape.new(name: 'blob')
    contentType = Shapes::StringShape.new(name: 'contentType')
    description = Shapes::StringShape.new(name: 'description')
    entityRestrictedString = Shapes::StringShape.new(name: 'entityRestrictedString')
    entityTypeList = Shapes::ListShape.new(name: 'entityTypeList')
    entityTypesMaxResults = Shapes::IntegerShape.new(name: 'entityTypesMaxResults')
    eventTypeList = Shapes::ListShape.new(name: 'eventTypeList')
    eventTypesMaxResults = Shapes::IntegerShape.new(name: 'eventTypesMaxResults')
    fieldValidationMessageList = Shapes::ListShape.new(name: 'fieldValidationMessageList')
    fileValidationMessageList = Shapes::ListShape.new(name: 'fileValidationMessageList')
    filterString = Shapes::StringShape.new(name: 'filterString')
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
    listOfVariableImpactExplanations = Shapes::ListShape.new(name: 'listOfVariableImpactExplanations')
    metricDataPointsList = Shapes::ListShape.new(name: 'metricDataPointsList')
    modelIdentifier = Shapes::StringShape.new(name: 'modelIdentifier')
    modelInputTemplate = Shapes::StringShape.new(name: 'modelInputTemplate')
    modelList = Shapes::ListShape.new(name: 'modelList')
    modelVersionDetailList = Shapes::ListShape.new(name: 'modelVersionDetailList')
    modelsMaxPageSize = Shapes::IntegerShape.new(name: 'modelsMaxPageSize')
    nextToken = Shapes::StringShape.new(name: 'nextToken')
    noDashIdentifier = Shapes::StringShape.new(name: 'noDashIdentifier')
    ruleExpression = Shapes::StringShape.new(name: 'ruleExpression')
    s3BucketLocation = Shapes::StringShape.new(name: 's3BucketLocation')
    sageMakerEndpointIdentifier = Shapes::StringShape.new(name: 'sageMakerEndpointIdentifier')
    sensitiveString = Shapes::StringShape.new(name: 'sensitiveString')
    string = Shapes::StringShape.new(name: 'string')
    tagKey = Shapes::StringShape.new(name: 'tagKey')
    tagKeyList = Shapes::ListShape.new(name: 'tagKeyList')
    tagList = Shapes::ListShape.new(name: 'tagList')
    tagValue = Shapes::StringShape.new(name: 'tagValue')
    time = Shapes::StringShape.new(name: 'time')
    utcTimestampISO8601 = Shapes::StringShape.new(name: 'utcTimestampISO8601')
    variableName = Shapes::StringShape.new(name: 'variableName')
    variableType = Shapes::StringShape.new(name: 'variableType')
    variableValue = Shapes::StringShape.new(name: 'variableValue')
    wholeNumberVersionString = Shapes::StringShape.new(name: 'wholeNumberVersionString')

    ATIMetricDataPoint.add_member(:cr, Shapes::ShapeRef.new(shape: float, location_name: "cr"))
    ATIMetricDataPoint.add_member(:adr, Shapes::ShapeRef.new(shape: float, location_name: "adr"))
    ATIMetricDataPoint.add_member(:threshold, Shapes::ShapeRef.new(shape: float, location_name: "threshold"))
    ATIMetricDataPoint.add_member(:atodr, Shapes::ShapeRef.new(shape: float, location_name: "atodr"))
    ATIMetricDataPoint.struct_class = Types::ATIMetricDataPoint

    ATIMetricDataPointsList.member = Shapes::ShapeRef.new(shape: ATIMetricDataPoint)

    ATIModelPerformance.add_member(:asi, Shapes::ShapeRef.new(shape: float, location_name: "asi"))
    ATIModelPerformance.struct_class = Types::ATIModelPerformance

    ATITrainingMetricsValue.add_member(:metric_data_points, Shapes::ShapeRef.new(shape: ATIMetricDataPointsList, location_name: "metricDataPoints"))
    ATITrainingMetricsValue.add_member(:model_performance, Shapes::ShapeRef.new(shape: ATIModelPerformance, location_name: "modelPerformance"))
    ATITrainingMetricsValue.struct_class = Types::ATITrainingMetricsValue

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AggregatedLogOddsMetric.add_member(:variable_names, Shapes::ShapeRef.new(shape: ListOfStrings, required: true, location_name: "variableNames"))
    AggregatedLogOddsMetric.add_member(:aggregated_variables_importance, Shapes::ShapeRef.new(shape: float, required: true, location_name: "aggregatedVariablesImportance"))
    AggregatedLogOddsMetric.struct_class = Types::AggregatedLogOddsMetric

    AggregatedVariablesImpactExplanation.add_member(:event_variable_names, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "eventVariableNames"))
    AggregatedVariablesImpactExplanation.add_member(:relative_impact, Shapes::ShapeRef.new(shape: string, location_name: "relativeImpact"))
    AggregatedVariablesImpactExplanation.add_member(:log_odds_impact, Shapes::ShapeRef.new(shape: float, location_name: "logOddsImpact"))
    AggregatedVariablesImpactExplanation.struct_class = Types::AggregatedVariablesImpactExplanation

    AggregatedVariablesImportanceMetrics.add_member(:log_odds_metrics, Shapes::ShapeRef.new(shape: ListOfAggregatedLogOddsMetrics, location_name: "logOddsMetrics"))
    AggregatedVariablesImportanceMetrics.struct_class = Types::AggregatedVariablesImportanceMetrics

    AllowDenyList.add_member(:name, Shapes::ShapeRef.new(shape: noDashIdentifier, required: true, location_name: "name"))
    AllowDenyList.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    AllowDenyList.add_member(:variable_type, Shapes::ShapeRef.new(shape: variableType, location_name: "variableType"))
    AllowDenyList.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    AllowDenyList.add_member(:updated_time, Shapes::ShapeRef.new(shape: time, location_name: "updatedTime"))
    AllowDenyList.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    AllowDenyList.struct_class = Types::AllowDenyList

    AllowDenyLists.member = Shapes::ShapeRef.new(shape: AllowDenyList)

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

    BatchImport.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, location_name: "jobId"))
    BatchImport.add_member(:status, Shapes::ShapeRef.new(shape: AsyncJobStatus, location_name: "status"))
    BatchImport.add_member(:failure_reason, Shapes::ShapeRef.new(shape: string, location_name: "failureReason"))
    BatchImport.add_member(:start_time, Shapes::ShapeRef.new(shape: time, location_name: "startTime"))
    BatchImport.add_member(:completion_time, Shapes::ShapeRef.new(shape: time, location_name: "completionTime"))
    BatchImport.add_member(:input_path, Shapes::ShapeRef.new(shape: s3BucketLocation, location_name: "inputPath"))
    BatchImport.add_member(:output_path, Shapes::ShapeRef.new(shape: s3BucketLocation, location_name: "outputPath"))
    BatchImport.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, location_name: "eventTypeName"))
    BatchImport.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: iamRoleArn, location_name: "iamRoleArn"))
    BatchImport.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    BatchImport.add_member(:processed_records_count, Shapes::ShapeRef.new(shape: Integer, location_name: "processedRecordsCount"))
    BatchImport.add_member(:failed_records_count, Shapes::ShapeRef.new(shape: Integer, location_name: "failedRecordsCount"))
    BatchImport.add_member(:total_records_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalRecordsCount"))
    BatchImport.struct_class = Types::BatchImport

    BatchImportList.member = Shapes::ShapeRef.new(shape: BatchImport)

    BatchPrediction.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, location_name: "jobId"))
    BatchPrediction.add_member(:status, Shapes::ShapeRef.new(shape: AsyncJobStatus, location_name: "status"))
    BatchPrediction.add_member(:failure_reason, Shapes::ShapeRef.new(shape: string, location_name: "failureReason"))
    BatchPrediction.add_member(:start_time, Shapes::ShapeRef.new(shape: time, location_name: "startTime"))
    BatchPrediction.add_member(:completion_time, Shapes::ShapeRef.new(shape: time, location_name: "completionTime"))
    BatchPrediction.add_member(:last_heartbeat_time, Shapes::ShapeRef.new(shape: time, location_name: "lastHeartbeatTime"))
    BatchPrediction.add_member(:input_path, Shapes::ShapeRef.new(shape: s3BucketLocation, location_name: "inputPath"))
    BatchPrediction.add_member(:output_path, Shapes::ShapeRef.new(shape: s3BucketLocation, location_name: "outputPath"))
    BatchPrediction.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, location_name: "eventTypeName"))
    BatchPrediction.add_member(:detector_name, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorName"))
    BatchPrediction.add_member(:detector_version, Shapes::ShapeRef.new(shape: floatVersionString, location_name: "detectorVersion"))
    BatchPrediction.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: iamRoleArn, location_name: "iamRoleArn"))
    BatchPrediction.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    BatchPrediction.add_member(:processed_records_count, Shapes::ShapeRef.new(shape: Integer, location_name: "processedRecordsCount"))
    BatchPrediction.add_member(:total_records_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalRecordsCount"))
    BatchPrediction.struct_class = Types::BatchPrediction

    BatchPredictionList.member = Shapes::ShapeRef.new(shape: BatchPrediction)

    CancelBatchImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "jobId"))
    CancelBatchImportJobRequest.struct_class = Types::CancelBatchImportJobRequest

    CancelBatchImportJobResult.struct_class = Types::CancelBatchImportJobResult

    CancelBatchPredictionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "jobId"))
    CancelBatchPredictionJobRequest.struct_class = Types::CancelBatchPredictionJobRequest

    CancelBatchPredictionJobResult.struct_class = Types::CancelBatchPredictionJobResult

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateBatchImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "jobId"))
    CreateBatchImportJobRequest.add_member(:input_path, Shapes::ShapeRef.new(shape: s3BucketLocation, required: true, location_name: "inputPath"))
    CreateBatchImportJobRequest.add_member(:output_path, Shapes::ShapeRef.new(shape: s3BucketLocation, required: true, location_name: "outputPath"))
    CreateBatchImportJobRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    CreateBatchImportJobRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: iamRoleArn, required: true, location_name: "iamRoleArn"))
    CreateBatchImportJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateBatchImportJobRequest.struct_class = Types::CreateBatchImportJobRequest

    CreateBatchImportJobResult.struct_class = Types::CreateBatchImportJobResult

    CreateBatchPredictionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "jobId"))
    CreateBatchPredictionJobRequest.add_member(:input_path, Shapes::ShapeRef.new(shape: s3BucketLocation, required: true, location_name: "inputPath"))
    CreateBatchPredictionJobRequest.add_member(:output_path, Shapes::ShapeRef.new(shape: s3BucketLocation, required: true, location_name: "outputPath"))
    CreateBatchPredictionJobRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    CreateBatchPredictionJobRequest.add_member(:detector_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorName"))
    CreateBatchPredictionJobRequest.add_member(:detector_version, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "detectorVersion"))
    CreateBatchPredictionJobRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: iamRoleArn, required: true, location_name: "iamRoleArn"))
    CreateBatchPredictionJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateBatchPredictionJobRequest.struct_class = Types::CreateBatchPredictionJobRequest

    CreateBatchPredictionJobResult.struct_class = Types::CreateBatchPredictionJobResult

    CreateDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    CreateDetectorVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateDetectorVersionRequest.add_member(:external_model_endpoints, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "externalModelEndpoints"))
    CreateDetectorVersionRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, required: true, location_name: "rules"))
    CreateDetectorVersionRequest.add_member(:model_versions, Shapes::ShapeRef.new(shape: ListOfModelVersions, location_name: "modelVersions"))
    CreateDetectorVersionRequest.add_member(:rule_execution_mode, Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: "ruleExecutionMode"))
    CreateDetectorVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateDetectorVersionRequest.struct_class = Types::CreateDetectorVersionRequest

    CreateDetectorVersionResult.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    CreateDetectorVersionResult.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "detectorVersionId"))
    CreateDetectorVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: "status"))
    CreateDetectorVersionResult.struct_class = Types::CreateDetectorVersionResult

    CreateListRequest.add_member(:name, Shapes::ShapeRef.new(shape: noDashIdentifier, required: true, location_name: "name"))
    CreateListRequest.add_member(:elements, Shapes::ShapeRef.new(shape: ElementsList, location_name: "elements"))
    CreateListRequest.add_member(:variable_type, Shapes::ShapeRef.new(shape: variableType, location_name: "variableType"))
    CreateListRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateListRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateListRequest.struct_class = Types::CreateListRequest

    CreateListResult.struct_class = Types::CreateListResult

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
    CreateModelVersionRequest.add_member(:ingested_events_detail, Shapes::ShapeRef.new(shape: IngestedEventsDetail, location_name: "ingestedEventsDetail"))
    CreateModelVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreateModelVersionRequest.struct_class = Types::CreateModelVersionRequest

    CreateModelVersionResult.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    CreateModelVersionResult.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    CreateModelVersionResult.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, location_name: "modelVersionNumber"))
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

    DeleteBatchImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "jobId"))
    DeleteBatchImportJobRequest.struct_class = Types::DeleteBatchImportJobRequest

    DeleteBatchImportJobResult.struct_class = Types::DeleteBatchImportJobResult

    DeleteBatchPredictionJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "jobId"))
    DeleteBatchPredictionJobRequest.struct_class = Types::DeleteBatchPredictionJobRequest

    DeleteBatchPredictionJobResult.struct_class = Types::DeleteBatchPredictionJobResult

    DeleteDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DeleteDetectorRequest.struct_class = Types::DeleteDetectorRequest

    DeleteDetectorResult.struct_class = Types::DeleteDetectorResult

    DeleteDetectorVersionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    DeleteDetectorVersionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "detectorVersionId"))
    DeleteDetectorVersionRequest.struct_class = Types::DeleteDetectorVersionRequest

    DeleteDetectorVersionResult.struct_class = Types::DeleteDetectorVersionResult

    DeleteEntityTypeRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    DeleteEntityTypeRequest.struct_class = Types::DeleteEntityTypeRequest

    DeleteEntityTypeResult.struct_class = Types::DeleteEntityTypeResult

    DeleteEventRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventId"))
    DeleteEventRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    DeleteEventRequest.add_member(:delete_audit_history, Shapes::ShapeRef.new(shape: DeleteAuditHistory, location_name: "deleteAuditHistory"))
    DeleteEventRequest.struct_class = Types::DeleteEventRequest

    DeleteEventResult.struct_class = Types::DeleteEventResult

    DeleteEventTypeRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    DeleteEventTypeRequest.struct_class = Types::DeleteEventTypeRequest

    DeleteEventTypeResult.struct_class = Types::DeleteEventTypeResult

    DeleteEventsByEventTypeRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    DeleteEventsByEventTypeRequest.struct_class = Types::DeleteEventsByEventTypeRequest

    DeleteEventsByEventTypeResult.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, location_name: "eventTypeName"))
    DeleteEventsByEventTypeResult.add_member(:events_deletion_status, Shapes::ShapeRef.new(shape: string, location_name: "eventsDeletionStatus"))
    DeleteEventsByEventTypeResult.struct_class = Types::DeleteEventsByEventTypeResult

    DeleteExternalModelRequest.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: sageMakerEndpointIdentifier, required: true, location_name: "modelEndpoint"))
    DeleteExternalModelRequest.struct_class = Types::DeleteExternalModelRequest

    DeleteExternalModelResult.struct_class = Types::DeleteExternalModelResult

    DeleteLabelRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    DeleteLabelRequest.struct_class = Types::DeleteLabelRequest

    DeleteLabelResult.struct_class = Types::DeleteLabelResult

    DeleteListRequest.add_member(:name, Shapes::ShapeRef.new(shape: noDashIdentifier, required: true, location_name: "name"))
    DeleteListRequest.struct_class = Types::DeleteListRequest

    DeleteListResult.struct_class = Types::DeleteListResult

    DeleteModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    DeleteModelRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    DeleteModelRequest.struct_class = Types::DeleteModelRequest

    DeleteModelResult.struct_class = Types::DeleteModelResult

    DeleteModelVersionRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    DeleteModelVersionRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    DeleteModelVersionRequest.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, required: true, location_name: "modelVersionNumber"))
    DeleteModelVersionRequest.struct_class = Types::DeleteModelVersionRequest

    DeleteModelVersionResult.struct_class = Types::DeleteModelVersionResult

    DeleteOutcomeRequest.add_member(:name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "name"))
    DeleteOutcomeRequest.struct_class = Types::DeleteOutcomeRequest

    DeleteOutcomeResult.struct_class = Types::DeleteOutcomeResult

    DeleteRuleRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DeleteRuleResult.struct_class = Types::DeleteRuleResult

    DeleteVariableRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "name"))
    DeleteVariableRequest.struct_class = Types::DeleteVariableRequest

    DeleteVariableResult.struct_class = Types::DeleteVariableResult

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

    DetectorVersionSummary.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "detectorVersionId"))
    DetectorVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: DetectorVersionStatus, location_name: "status"))
    DetectorVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    DetectorVersionSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    DetectorVersionSummary.struct_class = Types::DetectorVersionSummary

    DetectorVersionSummaryList.member = Shapes::ShapeRef.new(shape: DetectorVersionSummary)

    ElementsList.member = Shapes::ShapeRef.new(shape: Elements)

    Entity.add_member(:entity_type, Shapes::ShapeRef.new(shape: string, required: true, location_name: "entityType"))
    Entity.add_member(:entity_id, Shapes::ShapeRef.new(shape: entityRestrictedString, required: true, location_name: "entityId"))
    Entity.struct_class = Types::Entity

    EntityType.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    EntityType.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    EntityType.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    EntityType.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    EntityType.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    EntityType.struct_class = Types::EntityType

    EvaluatedExternalModel.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: string, location_name: "modelEndpoint"))
    EvaluatedExternalModel.add_member(:use_event_variables, Shapes::ShapeRef.new(shape: Boolean, location_name: "useEventVariables"))
    EvaluatedExternalModel.add_member(:input_variables, Shapes::ShapeRef.new(shape: MapOfStrings, location_name: "inputVariables"))
    EvaluatedExternalModel.add_member(:output_variables, Shapes::ShapeRef.new(shape: MapOfStrings, location_name: "outputVariables"))
    EvaluatedExternalModel.struct_class = Types::EvaluatedExternalModel

    EvaluatedModelVersion.add_member(:model_id, Shapes::ShapeRef.new(shape: string, location_name: "modelId"))
    EvaluatedModelVersion.add_member(:model_version, Shapes::ShapeRef.new(shape: string, location_name: "modelVersion"))
    EvaluatedModelVersion.add_member(:model_type, Shapes::ShapeRef.new(shape: string, location_name: "modelType"))
    EvaluatedModelVersion.add_member(:evaluations, Shapes::ShapeRef.new(shape: ListOfModelVersionEvaluations, location_name: "evaluations"))
    EvaluatedModelVersion.struct_class = Types::EvaluatedModelVersion

    EvaluatedRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: identifier, location_name: "ruleId"))
    EvaluatedRule.add_member(:rule_version, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "ruleVersion"))
    EvaluatedRule.add_member(:expression, Shapes::ShapeRef.new(shape: sensitiveString, location_name: "expression"))
    EvaluatedRule.add_member(:expression_with_values, Shapes::ShapeRef.new(shape: sensitiveString, location_name: "expressionWithValues"))
    EvaluatedRule.add_member(:outcomes, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "outcomes"))
    EvaluatedRule.add_member(:evaluated, Shapes::ShapeRef.new(shape: Boolean, location_name: "evaluated"))
    EvaluatedRule.add_member(:matched, Shapes::ShapeRef.new(shape: Boolean, location_name: "matched"))
    EvaluatedRule.struct_class = Types::EvaluatedRule

    EvaluatedRuleList.member = Shapes::ShapeRef.new(shape: EvaluatedRule)

    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: string, location_name: "eventId"))
    Event.add_member(:event_type_name, Shapes::ShapeRef.new(shape: string, location_name: "eventTypeName"))
    Event.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: string, location_name: "eventTimestamp"))
    Event.add_member(:event_variables, Shapes::ShapeRef.new(shape: EventAttributeMap, location_name: "eventVariables"))
    Event.add_member(:current_label, Shapes::ShapeRef.new(shape: string, location_name: "currentLabel"))
    Event.add_member(:label_timestamp, Shapes::ShapeRef.new(shape: string, location_name: "labelTimestamp"))
    Event.add_member(:entities, Shapes::ShapeRef.new(shape: listOfEntities, location_name: "entities"))
    Event.struct_class = Types::Event

    EventAttributeMap.key = Shapes::ShapeRef.new(shape: attributeKey)
    EventAttributeMap.value = Shapes::ShapeRef.new(shape: attributeValue)

    EventOrchestration.add_member(:event_bridge_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "eventBridgeEnabled"))
    EventOrchestration.struct_class = Types::EventOrchestration

    EventPredictionSummary.add_member(:event_id, Shapes::ShapeRef.new(shape: identifier, location_name: "eventId"))
    EventPredictionSummary.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, location_name: "eventTypeName"))
    EventPredictionSummary.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: time, location_name: "eventTimestamp"))
    EventPredictionSummary.add_member(:prediction_timestamp, Shapes::ShapeRef.new(shape: time, location_name: "predictionTimestamp"))
    EventPredictionSummary.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    EventPredictionSummary.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "detectorVersionId"))
    EventPredictionSummary.struct_class = Types::EventPredictionSummary

    EventType.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    EventType.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    EventType.add_member(:event_variables, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "eventVariables"))
    EventType.add_member(:labels, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "labels"))
    EventType.add_member(:entity_types, Shapes::ShapeRef.new(shape: NonEmptyListOfStrings, location_name: "entityTypes"))
    EventType.add_member(:event_ingestion, Shapes::ShapeRef.new(shape: EventIngestion, location_name: "eventIngestion"))
    EventType.add_member(:ingested_event_statistics, Shapes::ShapeRef.new(shape: IngestedEventStatistics, location_name: "ingestedEventStatistics"))
    EventType.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    EventType.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    EventType.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    EventType.add_member(:event_orchestration, Shapes::ShapeRef.new(shape: EventOrchestration, location_name: "eventOrchestration"))
    EventType.struct_class = Types::EventType

    EventVariableMap.key = Shapes::ShapeRef.new(shape: variableName)
    EventVariableMap.value = Shapes::ShapeRef.new(shape: variableValue)

    EventVariableSummary.add_member(:name, Shapes::ShapeRef.new(shape: sensitiveString, location_name: "name"))
    EventVariableSummary.add_member(:value, Shapes::ShapeRef.new(shape: sensitiveString, location_name: "value"))
    EventVariableSummary.add_member(:source, Shapes::ShapeRef.new(shape: sensitiveString, location_name: "source"))
    EventVariableSummary.struct_class = Types::EventVariableSummary

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

    ExternalModelEndpointDataBlobMap.key = Shapes::ShapeRef.new(shape: sageMakerEndpointIdentifier)
    ExternalModelEndpointDataBlobMap.value = Shapes::ShapeRef.new(shape: ModelEndpointDataBlob)

    ExternalModelList.member = Shapes::ShapeRef.new(shape: ExternalModel)

    ExternalModelOutputs.add_member(:external_model, Shapes::ShapeRef.new(shape: ExternalModelSummary, location_name: "externalModel"))
    ExternalModelOutputs.add_member(:outputs, Shapes::ShapeRef.new(shape: ExternalModelPredictionMap, location_name: "outputs"))
    ExternalModelOutputs.struct_class = Types::ExternalModelOutputs

    ExternalModelPredictionMap.key = Shapes::ShapeRef.new(shape: string)
    ExternalModelPredictionMap.value = Shapes::ShapeRef.new(shape: string)

    ExternalModelSummary.add_member(:model_endpoint, Shapes::ShapeRef.new(shape: string, location_name: "modelEndpoint"))
    ExternalModelSummary.add_member(:model_source, Shapes::ShapeRef.new(shape: ModelSource, location_name: "modelSource"))
    ExternalModelSummary.struct_class = Types::ExternalModelSummary

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

    FilterCondition.add_member(:value, Shapes::ShapeRef.new(shape: filterString, location_name: "value"))
    FilterCondition.struct_class = Types::FilterCondition

    GetBatchImportJobsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, location_name: "jobId"))
    GetBatchImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: batchImportsMaxPageSize, location_name: "maxResults"))
    GetBatchImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetBatchImportJobsRequest.struct_class = Types::GetBatchImportJobsRequest

    GetBatchImportJobsResult.add_member(:batch_imports, Shapes::ShapeRef.new(shape: BatchImportList, location_name: "batchImports"))
    GetBatchImportJobsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetBatchImportJobsResult.struct_class = Types::GetBatchImportJobsResult

    GetBatchPredictionJobsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: identifier, location_name: "jobId"))
    GetBatchPredictionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: batchPredictionsMaxPageSize, location_name: "maxResults"))
    GetBatchPredictionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetBatchPredictionJobsRequest.struct_class = Types::GetBatchPredictionJobsRequest

    GetBatchPredictionJobsResult.add_member(:batch_predictions, Shapes::ShapeRef.new(shape: BatchPredictionList, location_name: "batchPredictions"))
    GetBatchPredictionJobsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    GetBatchPredictionJobsResult.struct_class = Types::GetBatchPredictionJobsResult

    GetDeleteEventsByEventTypeStatusRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    GetDeleteEventsByEventTypeStatusRequest.struct_class = Types::GetDeleteEventsByEventTypeStatusRequest

    GetDeleteEventsByEventTypeStatusResult.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, location_name: "eventTypeName"))
    GetDeleteEventsByEventTypeStatusResult.add_member(:events_deletion_status, Shapes::ShapeRef.new(shape: AsyncJobStatus, location_name: "eventsDeletionStatus"))
    GetDeleteEventsByEventTypeStatusResult.struct_class = Types::GetDeleteEventsByEventTypeStatusResult

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

    GetEventPredictionMetadataRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventId"))
    GetEventPredictionMetadataRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    GetEventPredictionMetadataRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "detectorId"))
    GetEventPredictionMetadataRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "detectorVersionId"))
    GetEventPredictionMetadataRequest.add_member(:prediction_timestamp, Shapes::ShapeRef.new(shape: time, required: true, location_name: "predictionTimestamp"))
    GetEventPredictionMetadataRequest.struct_class = Types::GetEventPredictionMetadataRequest

    GetEventPredictionMetadataResult.add_member(:event_id, Shapes::ShapeRef.new(shape: identifier, location_name: "eventId"))
    GetEventPredictionMetadataResult.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, location_name: "eventTypeName"))
    GetEventPredictionMetadataResult.add_member(:entity_id, Shapes::ShapeRef.new(shape: string, location_name: "entityId"))
    GetEventPredictionMetadataResult.add_member(:entity_type, Shapes::ShapeRef.new(shape: string, location_name: "entityType"))
    GetEventPredictionMetadataResult.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: time, location_name: "eventTimestamp"))
    GetEventPredictionMetadataResult.add_member(:detector_id, Shapes::ShapeRef.new(shape: identifier, location_name: "detectorId"))
    GetEventPredictionMetadataResult.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "detectorVersionId"))
    GetEventPredictionMetadataResult.add_member(:detector_version_status, Shapes::ShapeRef.new(shape: string, location_name: "detectorVersionStatus"))
    GetEventPredictionMetadataResult.add_member(:event_variables, Shapes::ShapeRef.new(shape: ListOfEventVariableSummaries, location_name: "eventVariables"))
    GetEventPredictionMetadataResult.add_member(:rules, Shapes::ShapeRef.new(shape: EvaluatedRuleList, location_name: "rules"))
    GetEventPredictionMetadataResult.add_member(:rule_execution_mode, Shapes::ShapeRef.new(shape: RuleExecutionMode, location_name: "ruleExecutionMode"))
    GetEventPredictionMetadataResult.add_member(:outcomes, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "outcomes"))
    GetEventPredictionMetadataResult.add_member(:evaluated_model_versions, Shapes::ShapeRef.new(shape: ListOfEvaluatedModelVersions, location_name: "evaluatedModelVersions"))
    GetEventPredictionMetadataResult.add_member(:evaluated_external_models, Shapes::ShapeRef.new(shape: ListOfEvaluatedExternalModels, location_name: "evaluatedExternalModels"))
    GetEventPredictionMetadataResult.add_member(:prediction_timestamp, Shapes::ShapeRef.new(shape: time, location_name: "predictionTimestamp"))
    GetEventPredictionMetadataResult.struct_class = Types::GetEventPredictionMetadataResult

    GetEventPredictionRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "detectorId"))
    GetEventPredictionRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: wholeNumberVersionString, location_name: "detectorVersionId"))
    GetEventPredictionRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventId"))
    GetEventPredictionRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventTypeName"))
    GetEventPredictionRequest.add_member(:entities, Shapes::ShapeRef.new(shape: listOfEntities, required: true, location_name: "entities"))
    GetEventPredictionRequest.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: utcTimestampISO8601, required: true, location_name: "eventTimestamp"))
    GetEventPredictionRequest.add_member(:event_variables, Shapes::ShapeRef.new(shape: EventVariableMap, required: true, location_name: "eventVariables"))
    GetEventPredictionRequest.add_member(:external_model_endpoint_data_blobs, Shapes::ShapeRef.new(shape: ExternalModelEndpointDataBlobMap, location_name: "externalModelEndpointDataBlobs"))
    GetEventPredictionRequest.struct_class = Types::GetEventPredictionRequest

    GetEventPredictionResult.add_member(:model_scores, Shapes::ShapeRef.new(shape: ListOfModelScores, location_name: "modelScores"))
    GetEventPredictionResult.add_member(:rule_results, Shapes::ShapeRef.new(shape: ListOfRuleResults, location_name: "ruleResults"))
    GetEventPredictionResult.add_member(:external_model_outputs, Shapes::ShapeRef.new(shape: ListOfExternalModelOutputs, location_name: "externalModelOutputs"))
    GetEventPredictionResult.struct_class = Types::GetEventPredictionResult

    GetEventRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventId"))
    GetEventRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "eventTypeName"))
    GetEventRequest.struct_class = Types::GetEventRequest

    GetEventResult.add_member(:event, Shapes::ShapeRef.new(shape: Event, location_name: "event"))
    GetEventResult.struct_class = Types::GetEventResult

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

    GetListElementsRequest.add_member(:name, Shapes::ShapeRef.new(shape: noDashIdentifier, required: true, location_name: "name"))
    GetListElementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    GetListElementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListsElementsMaxResults, location_name: "maxResults"))
    GetListElementsRequest.struct_class = Types::GetListElementsRequest

    GetListElementsResult.add_member(:elements, Shapes::ShapeRef.new(shape: ElementsList, location_name: "elements"))
    GetListElementsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    GetListElementsResult.struct_class = Types::GetListElementsResult

    GetListsMetadataRequest.add_member(:name, Shapes::ShapeRef.new(shape: noDashIdentifier, location_name: "name"))
    GetListsMetadataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    GetListsMetadataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListsMetadataMaxResults, location_name: "maxResults"))
    GetListsMetadataRequest.struct_class = Types::GetListsMetadataRequest

    GetListsMetadataResult.add_member(:lists, Shapes::ShapeRef.new(shape: AllowDenyLists, location_name: "lists"))
    GetListsMetadataResult.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    GetListsMetadataResult.struct_class = Types::GetListsMetadataResult

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
    GetModelVersionResult.add_member(:ingested_events_detail, Shapes::ShapeRef.new(shape: IngestedEventsDetail, location_name: "ingestedEventsDetail"))
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

    IngestedEventStatistics.add_member(:number_of_events, Shapes::ShapeRef.new(shape: Long, location_name: "numberOfEvents"))
    IngestedEventStatistics.add_member(:event_data_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "eventDataSizeInBytes"))
    IngestedEventStatistics.add_member(:least_recent_event, Shapes::ShapeRef.new(shape: time, location_name: "leastRecentEvent"))
    IngestedEventStatistics.add_member(:most_recent_event, Shapes::ShapeRef.new(shape: time, location_name: "mostRecentEvent"))
    IngestedEventStatistics.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    IngestedEventStatistics.struct_class = Types::IngestedEventStatistics

    IngestedEventsDetail.add_member(:ingested_events_time_window, Shapes::ShapeRef.new(shape: IngestedEventsTimeWindow, required: true, location_name: "ingestedEventsTimeWindow"))
    IngestedEventsDetail.struct_class = Types::IngestedEventsDetail

    IngestedEventsTimeWindow.add_member(:start_time, Shapes::ShapeRef.new(shape: time, required: true, location_name: "startTime"))
    IngestedEventsTimeWindow.add_member(:end_time, Shapes::ShapeRef.new(shape: time, required: true, location_name: "endTime"))
    IngestedEventsTimeWindow.struct_class = Types::IngestedEventsTimeWindow

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

    LabelSchema.add_member(:label_mapper, Shapes::ShapeRef.new(shape: labelMapper, location_name: "labelMapper"))
    LabelSchema.add_member(:unlabeled_events_treatment, Shapes::ShapeRef.new(shape: UnlabeledEventsTreatment, location_name: "unlabeledEventsTreatment"))
    LabelSchema.struct_class = Types::LabelSchema

    ListEventPredictionsRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "eventId"))
    ListEventPredictionsRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "eventType"))
    ListEventPredictionsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "detectorId"))
    ListEventPredictionsRequest.add_member(:detector_version_id, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "detectorVersionId"))
    ListEventPredictionsRequest.add_member(:prediction_time_range, Shapes::ShapeRef.new(shape: PredictionTimeRange, location_name: "predictionTimeRange"))
    ListEventPredictionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    ListEventPredictionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: EventPredictionsMaxResults, location_name: "maxResults"))
    ListEventPredictionsRequest.struct_class = Types::ListEventPredictionsRequest

    ListEventPredictionsResult.add_member(:event_prediction_summaries, Shapes::ShapeRef.new(shape: ListOfEventPredictionSummaries, location_name: "eventPredictionSummaries"))
    ListEventPredictionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "nextToken"))
    ListEventPredictionsResult.struct_class = Types::ListEventPredictionsResult

    ListOfAggregatedLogOddsMetrics.member = Shapes::ShapeRef.new(shape: AggregatedLogOddsMetric)

    ListOfAggregatedVariablesImpactExplanations.member = Shapes::ShapeRef.new(shape: AggregatedVariablesImpactExplanation)

    ListOfEvaluatedExternalModels.member = Shapes::ShapeRef.new(shape: EvaluatedExternalModel)

    ListOfEvaluatedModelVersions.member = Shapes::ShapeRef.new(shape: EvaluatedModelVersion)

    ListOfEventPredictionSummaries.member = Shapes::ShapeRef.new(shape: EventPredictionSummary)

    ListOfEventVariableSummaries.member = Shapes::ShapeRef.new(shape: EventVariableSummary)

    ListOfExternalModelOutputs.member = Shapes::ShapeRef.new(shape: ExternalModelOutputs)

    ListOfLogOddsMetrics.member = Shapes::ShapeRef.new(shape: LogOddsMetric)

    ListOfModelScores.member = Shapes::ShapeRef.new(shape: ModelScores)

    ListOfModelVersionEvaluations.member = Shapes::ShapeRef.new(shape: ModelVersionEvaluation)

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

    LogOddsMetric.add_member(:variable_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "variableName"))
    LogOddsMetric.add_member(:variable_type, Shapes::ShapeRef.new(shape: string, required: true, location_name: "variableType"))
    LogOddsMetric.add_member(:variable_importance, Shapes::ShapeRef.new(shape: float, required: true, location_name: "variableImportance"))
    LogOddsMetric.struct_class = Types::LogOddsMetric

    MapOfStrings.key = Shapes::ShapeRef.new(shape: string)
    MapOfStrings.value = Shapes::ShapeRef.new(shape: string)

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
    ModelInputConfiguration.add_member(:json_input_template, Shapes::ShapeRef.new(shape: modelInputTemplate, location_name: "jsonInputTemplate"))
    ModelInputConfiguration.add_member(:csv_input_template, Shapes::ShapeRef.new(shape: modelInputTemplate, location_name: "csvInputTemplate"))
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
    ModelVersion.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, required: true, location_name: "modelVersionNumber"))
    ModelVersion.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    ModelVersion.struct_class = Types::ModelVersion

    ModelVersionDetail.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, location_name: "modelId"))
    ModelVersionDetail.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, location_name: "modelType"))
    ModelVersionDetail.add_member(:model_version_number, Shapes::ShapeRef.new(shape: floatVersionString, location_name: "modelVersionNumber"))
    ModelVersionDetail.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "status"))
    ModelVersionDetail.add_member(:training_data_source, Shapes::ShapeRef.new(shape: TrainingDataSourceEnum, location_name: "trainingDataSource"))
    ModelVersionDetail.add_member(:training_data_schema, Shapes::ShapeRef.new(shape: TrainingDataSchema, location_name: "trainingDataSchema"))
    ModelVersionDetail.add_member(:external_events_detail, Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: "externalEventsDetail"))
    ModelVersionDetail.add_member(:ingested_events_detail, Shapes::ShapeRef.new(shape: IngestedEventsDetail, location_name: "ingestedEventsDetail"))
    ModelVersionDetail.add_member(:training_result, Shapes::ShapeRef.new(shape: TrainingResult, location_name: "trainingResult"))
    ModelVersionDetail.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    ModelVersionDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    ModelVersionDetail.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    ModelVersionDetail.add_member(:training_result_v2, Shapes::ShapeRef.new(shape: TrainingResultV2, location_name: "trainingResultV2"))
    ModelVersionDetail.struct_class = Types::ModelVersionDetail

    ModelVersionEvaluation.add_member(:output_variable_name, Shapes::ShapeRef.new(shape: string, location_name: "outputVariableName"))
    ModelVersionEvaluation.add_member(:evaluation_score, Shapes::ShapeRef.new(shape: string, location_name: "evaluationScore"))
    ModelVersionEvaluation.add_member(:prediction_explanations, Shapes::ShapeRef.new(shape: PredictionExplanations, location_name: "predictionExplanations"))
    ModelVersionEvaluation.struct_class = Types::ModelVersionEvaluation

    NameList.member = Shapes::ShapeRef.new(shape: string)

    NonEmptyListOfStrings.member = Shapes::ShapeRef.new(shape: string)

    OFIMetricDataPoint.add_member(:fpr, Shapes::ShapeRef.new(shape: float, location_name: "fpr"))
    OFIMetricDataPoint.add_member(:precision, Shapes::ShapeRef.new(shape: float, location_name: "precision"))
    OFIMetricDataPoint.add_member(:tpr, Shapes::ShapeRef.new(shape: float, location_name: "tpr"))
    OFIMetricDataPoint.add_member(:threshold, Shapes::ShapeRef.new(shape: float, location_name: "threshold"))
    OFIMetricDataPoint.struct_class = Types::OFIMetricDataPoint

    OFIMetricDataPointsList.member = Shapes::ShapeRef.new(shape: OFIMetricDataPoint)

    OFIModelPerformance.add_member(:auc, Shapes::ShapeRef.new(shape: float, location_name: "auc"))
    OFIModelPerformance.add_member(:uncertainty_range, Shapes::ShapeRef.new(shape: UncertaintyRange, location_name: "uncertaintyRange"))
    OFIModelPerformance.struct_class = Types::OFIModelPerformance

    OFITrainingMetricsValue.add_member(:metric_data_points, Shapes::ShapeRef.new(shape: OFIMetricDataPointsList, location_name: "metricDataPoints"))
    OFITrainingMetricsValue.add_member(:model_performance, Shapes::ShapeRef.new(shape: OFIModelPerformance, location_name: "modelPerformance"))
    OFITrainingMetricsValue.struct_class = Types::OFITrainingMetricsValue

    Outcome.add_member(:name, Shapes::ShapeRef.new(shape: identifier, location_name: "name"))
    Outcome.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Outcome.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: time, location_name: "lastUpdatedTime"))
    Outcome.add_member(:created_time, Shapes::ShapeRef.new(shape: time, location_name: "createdTime"))
    Outcome.add_member(:arn, Shapes::ShapeRef.new(shape: fraudDetectorArn, location_name: "arn"))
    Outcome.struct_class = Types::Outcome

    OutcomeList.member = Shapes::ShapeRef.new(shape: Outcome)

    PredictionExplanations.add_member(:variable_impact_explanations, Shapes::ShapeRef.new(shape: listOfVariableImpactExplanations, location_name: "variableImpactExplanations"))
    PredictionExplanations.add_member(:aggregated_variables_impact_explanations, Shapes::ShapeRef.new(shape: ListOfAggregatedVariablesImpactExplanations, location_name: "aggregatedVariablesImpactExplanations"))
    PredictionExplanations.struct_class = Types::PredictionExplanations

    PredictionTimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: time, required: true, location_name: "startTime"))
    PredictionTimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: time, required: true, location_name: "endTime"))
    PredictionTimeRange.struct_class = Types::PredictionTimeRange

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
    PutEventTypeRequest.add_member(:event_ingestion, Shapes::ShapeRef.new(shape: EventIngestion, location_name: "eventIngestion"))
    PutEventTypeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    PutEventTypeRequest.add_member(:event_orchestration, Shapes::ShapeRef.new(shape: EventOrchestration, location_name: "eventOrchestration"))
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

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

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

    SendEventRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventId"))
    SendEventRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    SendEventRequest.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: utcTimestampISO8601, required: true, location_name: "eventTimestamp"))
    SendEventRequest.add_member(:event_variables, Shapes::ShapeRef.new(shape: EventVariableMap, required: true, location_name: "eventVariables"))
    SendEventRequest.add_member(:assigned_label, Shapes::ShapeRef.new(shape: identifier, location_name: "assignedLabel"))
    SendEventRequest.add_member(:label_timestamp, Shapes::ShapeRef.new(shape: utcTimestampISO8601, location_name: "labelTimestamp"))
    SendEventRequest.add_member(:entities, Shapes::ShapeRef.new(shape: listOfEntities, required: true, location_name: "entities"))
    SendEventRequest.struct_class = Types::SendEventRequest

    SendEventResult.struct_class = Types::SendEventResult

    TFIMetricDataPoint.add_member(:fpr, Shapes::ShapeRef.new(shape: float, location_name: "fpr"))
    TFIMetricDataPoint.add_member(:precision, Shapes::ShapeRef.new(shape: float, location_name: "precision"))
    TFIMetricDataPoint.add_member(:tpr, Shapes::ShapeRef.new(shape: float, location_name: "tpr"))
    TFIMetricDataPoint.add_member(:threshold, Shapes::ShapeRef.new(shape: float, location_name: "threshold"))
    TFIMetricDataPoint.struct_class = Types::TFIMetricDataPoint

    TFIMetricDataPointsList.member = Shapes::ShapeRef.new(shape: TFIMetricDataPoint)

    TFIModelPerformance.add_member(:auc, Shapes::ShapeRef.new(shape: float, location_name: "auc"))
    TFIModelPerformance.add_member(:uncertainty_range, Shapes::ShapeRef.new(shape: UncertaintyRange, location_name: "uncertaintyRange"))
    TFIModelPerformance.struct_class = Types::TFIModelPerformance

    TFITrainingMetricsValue.add_member(:metric_data_points, Shapes::ShapeRef.new(shape: TFIMetricDataPointsList, location_name: "metricDataPoints"))
    TFITrainingMetricsValue.add_member(:model_performance, Shapes::ShapeRef.new(shape: TFIModelPerformance, location_name: "modelPerformance"))
    TFITrainingMetricsValue.struct_class = Types::TFITrainingMetricsValue

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
    TrainingDataSchema.add_member(:label_schema, Shapes::ShapeRef.new(shape: LabelSchema, location_name: "labelSchema"))
    TrainingDataSchema.struct_class = Types::TrainingDataSchema

    TrainingMetrics.add_member(:auc, Shapes::ShapeRef.new(shape: float, location_name: "auc"))
    TrainingMetrics.add_member(:metric_data_points, Shapes::ShapeRef.new(shape: metricDataPointsList, location_name: "metricDataPoints"))
    TrainingMetrics.struct_class = Types::TrainingMetrics

    TrainingMetricsV2.add_member(:ofi, Shapes::ShapeRef.new(shape: OFITrainingMetricsValue, location_name: "ofi"))
    TrainingMetricsV2.add_member(:tfi, Shapes::ShapeRef.new(shape: TFITrainingMetricsValue, location_name: "tfi"))
    TrainingMetricsV2.add_member(:ati, Shapes::ShapeRef.new(shape: ATITrainingMetricsValue, location_name: "ati"))
    TrainingMetricsV2.struct_class = Types::TrainingMetricsV2

    TrainingResult.add_member(:data_validation_metrics, Shapes::ShapeRef.new(shape: DataValidationMetrics, location_name: "dataValidationMetrics"))
    TrainingResult.add_member(:training_metrics, Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    TrainingResult.add_member(:variable_importance_metrics, Shapes::ShapeRef.new(shape: VariableImportanceMetrics, location_name: "variableImportanceMetrics"))
    TrainingResult.struct_class = Types::TrainingResult

    TrainingResultV2.add_member(:data_validation_metrics, Shapes::ShapeRef.new(shape: DataValidationMetrics, location_name: "dataValidationMetrics"))
    TrainingResultV2.add_member(:training_metrics_v2, Shapes::ShapeRef.new(shape: TrainingMetricsV2, location_name: "trainingMetricsV2"))
    TrainingResultV2.add_member(:variable_importance_metrics, Shapes::ShapeRef.new(shape: VariableImportanceMetrics, location_name: "variableImportanceMetrics"))
    TrainingResultV2.add_member(:aggregated_variables_importance_metrics, Shapes::ShapeRef.new(shape: AggregatedVariablesImportanceMetrics, location_name: "aggregatedVariablesImportanceMetrics"))
    TrainingResultV2.struct_class = Types::TrainingResultV2

    UncertaintyRange.add_member(:lower_bound_value, Shapes::ShapeRef.new(shape: float, required: true, location_name: "lowerBoundValue"))
    UncertaintyRange.add_member(:upper_bound_value, Shapes::ShapeRef.new(shape: float, required: true, location_name: "upperBoundValue"))
    UncertaintyRange.struct_class = Types::UncertaintyRange

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

    UpdateEventLabelRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventId"))
    UpdateEventLabelRequest.add_member(:event_type_name, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "eventTypeName"))
    UpdateEventLabelRequest.add_member(:assigned_label, Shapes::ShapeRef.new(shape: identifier, required: true, location_name: "assignedLabel"))
    UpdateEventLabelRequest.add_member(:label_timestamp, Shapes::ShapeRef.new(shape: utcTimestampISO8601, required: true, location_name: "labelTimestamp"))
    UpdateEventLabelRequest.struct_class = Types::UpdateEventLabelRequest

    UpdateEventLabelResult.struct_class = Types::UpdateEventLabelResult

    UpdateListRequest.add_member(:name, Shapes::ShapeRef.new(shape: noDashIdentifier, required: true, location_name: "name"))
    UpdateListRequest.add_member(:elements, Shapes::ShapeRef.new(shape: ElementsList, location_name: "elements"))
    UpdateListRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateListRequest.add_member(:update_mode, Shapes::ShapeRef.new(shape: ListUpdateMode, location_name: "updateMode"))
    UpdateListRequest.add_member(:variable_type, Shapes::ShapeRef.new(shape: variableType, location_name: "variableType"))
    UpdateListRequest.struct_class = Types::UpdateListRequest

    UpdateListResult.struct_class = Types::UpdateListResult

    UpdateModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    UpdateModelRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    UpdateModelRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateModelRequest.struct_class = Types::UpdateModelRequest

    UpdateModelResult.struct_class = Types::UpdateModelResult

    UpdateModelVersionRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: modelIdentifier, required: true, location_name: "modelId"))
    UpdateModelVersionRequest.add_member(:model_type, Shapes::ShapeRef.new(shape: ModelTypeEnum, required: true, location_name: "modelType"))
    UpdateModelVersionRequest.add_member(:major_version_number, Shapes::ShapeRef.new(shape: wholeNumberVersionString, required: true, location_name: "majorVersionNumber"))
    UpdateModelVersionRequest.add_member(:external_events_detail, Shapes::ShapeRef.new(shape: ExternalEventsDetail, location_name: "externalEventsDetail"))
    UpdateModelVersionRequest.add_member(:ingested_events_detail, Shapes::ShapeRef.new(shape: IngestedEventsDetail, location_name: "ingestedEventsDetail"))
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

    VariableImpactExplanation.add_member(:event_variable_name, Shapes::ShapeRef.new(shape: string, location_name: "eventVariableName"))
    VariableImpactExplanation.add_member(:relative_impact, Shapes::ShapeRef.new(shape: string, location_name: "relativeImpact"))
    VariableImpactExplanation.add_member(:log_odds_impact, Shapes::ShapeRef.new(shape: float, location_name: "logOddsImpact"))
    VariableImpactExplanation.struct_class = Types::VariableImpactExplanation

    VariableImportanceMetrics.add_member(:log_odds_metrics, Shapes::ShapeRef.new(shape: ListOfLogOddsMetrics, location_name: "logOddsMetrics"))
    VariableImportanceMetrics.struct_class = Types::VariableImportanceMetrics

    VariableList.member = Shapes::ShapeRef.new(shape: Variable)

    entityTypeList.member = Shapes::ShapeRef.new(shape: EntityType)

    eventTypeList.member = Shapes::ShapeRef.new(shape: EventType)

    fieldValidationMessageList.member = Shapes::ShapeRef.new(shape: FieldValidationMessage)

    fileValidationMessageList.member = Shapes::ShapeRef.new(shape: FileValidationMessage)

    labelList.member = Shapes::ShapeRef.new(shape: Label)

    labelMapper.key = Shapes::ShapeRef.new(shape: string)
    labelMapper.value = Shapes::ShapeRef.new(shape: ListOfStrings)

    listOfEntities.member = Shapes::ShapeRef.new(shape: Entity)

    listOfVariableImpactExplanations.member = Shapes::ShapeRef.new(shape: VariableImpactExplanation)

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

      api.add_operation(:cancel_batch_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelBatchImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelBatchImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelBatchImportJobResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:cancel_batch_prediction_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelBatchPredictionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelBatchPredictionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelBatchPredictionJobResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_batch_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBatchImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBatchImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBatchImportJobResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_batch_prediction_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBatchPredictionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBatchPredictionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBatchPredictionJobResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:create_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateListRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateListResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:delete_batch_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBatchImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBatchImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBatchImportJobResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_batch_prediction_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBatchPredictionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBatchPredictionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBatchPredictionJobResult)
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

      api.add_operation(:delete_entity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEntityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEntityTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEntityTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_event_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_events_by_event_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventsByEventType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventsByEventTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventsByEventTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_external_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExternalModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteExternalModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteExternalModelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLabelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteListRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteListResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteModelResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_model_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteModelVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_outcome, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOutcome"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOutcomeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOutcomeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_variable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVariable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVariableRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVariableResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_batch_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBatchImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBatchImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBatchImportJobsResult)
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

      api.add_operation(:get_batch_prediction_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBatchPredictionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBatchPredictionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBatchPredictionJobsResult)
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

      api.add_operation(:get_delete_events_by_event_type_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeleteEventsByEventTypeStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeleteEventsByEventTypeStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeleteEventsByEventTypeStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEventRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:get_event_prediction_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventPredictionMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEventPredictionMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventPredictionMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_list_elements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetListElements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetListElementsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetListElementsResult)
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

      api.add_operation(:get_lists_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetListsMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetListsMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetListsMetadataResult)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:list_event_predictions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventPredictions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventPredictionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventPredictionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_entity_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEntityType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEntityTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEntityTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_event_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEventType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEventTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLabelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:send_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendEventRequest)
        o.output = Shapes::ShapeRef.new(shape: SendEventResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_event_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventLabelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventLabelResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateListRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateListResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
